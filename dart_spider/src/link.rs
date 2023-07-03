use std::{collections::HashMap, sync::Arc};

use spider_client::{
    message::{AbsoluteDatasetPath, DatasetData, Message, RouterMessage, UiMessage, UiPageList},
    Relation, Role, SpiderClient, SpiderId2048,
};
use tokio::{
    runtime::{Builder, Runtime},
    select,
    sync::{
        mpsc::{channel, Receiver, Sender},
        Notify,
    },
    task::JoinHandle,
};

use flutter_rust_bridge::StreamSink;

use crate::ui::{DartUiInput, DartUiPage};

#[derive(Debug)]
pub enum ToProcessor {
    // Connection management
    Connect(String),
    Disconnect,

    // Input
    Input {
        page_id: String,
        element_id: String,
        dataset_indices: Vec<u32>,
        input: DartUiInput,
    },
}

#[derive(Debug)]
pub enum ToUi {
    Initialized,
    Connected,
    Disconnected,
    SetPageOrder { pages: Vec<String> },
    SetPage { page: DartUiPage },
}

pub struct LinkProcessorParts {
    pub runtime: Runtime,
    pub processor_handle: JoinHandle<()>,
    pub sender: Sender<ToProcessor>,
    pub installed: Arc<Notify>,
}

pub struct LinkProcessor {
    sender: StreamSink<ToUi>,
    receiver: Receiver<ToProcessor>,
    // State
    client: SpiderClient,
    page_set: UiPageList,
    datasets: HashMap<AbsoluteDatasetPath, Vec<DatasetData>>,
}

impl LinkProcessor {
    pub fn create(stream_sink: StreamSink<ToUi>) -> LinkProcessorParts {
        let (processor_tx, processor_rx) = channel(50);

        println!("Creating client");
        let mut client = SpiderClient::new();

        // TEMP: LOAD BASE RELATION FROM FILE
        println!("Reading spider_keyfile.json");
        if !client.has_host_relation() {
            // let path = PathBuf::from("spider_keyfile.json");

            // let data = std::fs::read_to_string(&path).expect("spider_keyfile.json should exist");
            let data = include_str!("spider_keyfile.json");
            let id: SpiderId2048 =
                serde_json::from_str(&data).expect("Failed to deserialize spiderid");
            let host = Relation {
                id,
                role: Role::Peer,
            };
            client.set_host_relation(host);
        }
        // END TEMP

        let processor = LinkProcessor {
            sender: stream_sink,
            receiver: processor_rx,
            // State
            client,
            page_set: UiPageList::new(),
            datasets: HashMap::new(),
        };

        println!("Creating runtime");
        let runtime = Builder::new_multi_thread()
            .enable_all()
            .thread_name("dart_spider processor runtime")
            .build()
            .expect("failed to start tokio runtime");

        let notify = Arc::new(Notify::new());
        let notify_inner = notify.clone();
        let processor_handle = runtime.spawn(async { processor.run(notify_inner).await });

        println!("Done");
        LinkProcessorParts {
            runtime,
            processor_handle,
            sender: processor_tx,
            installed: notify,
        }
    }

    async fn run(mut self, notify: Arc<Notify>) {
        // wait until the channel has been installed into the global option
        notify.notified().await;
        self.sender.add(ToUi::Initialized);

        loop {
            println!("looping!");
            select! {
                cmd = self.receiver.recv() => {
                    let cmd = cmd.expect("connection to flutter should live");
                    println!("From flutter: {:?}", cmd);
                    match cmd {
                        // Connection management
                        ToProcessor::Connect(addr) => {
                            self.connect(addr).await;
                        },
                        ToProcessor::Disconnect => {
                            self.client.disconnect().await;
                            self.sender.add(ToUi::Disconnected);
                        },

                        // Input
                        ToProcessor::Input{ page_id, element_id, dataset_indices, input } => {
                            if let Some(id) = SpiderId2048::from_base64(page_id) {
                                let dataset_indices = dataset_indices.iter().map(|x|*x as usize).collect();
                                self.client.send(Message::Ui(UiMessage::InputFor(id, element_id, dataset_indices, input.into()))).await;
                            }
                        },
                    }
                },
                msg = self.client.recv(), if self.client.is_connected() => {
                    println!("From base: {:?}", msg);
                    if msg.is_none(){
                        // disconnected
                        println!("Disconnected!");
                    }else{
                        match msg.unwrap() {
                            Message::Ui(msg) => {
                                self.handle_ui(msg).await;
                            },
                            Message::Dataset(_) => {},
                            Message::Router(_) => {},
                        }
                    }
                }
            }
        }
    }

    async fn connect(&mut self, addr: String) {
        println!("attempting connection to {addr}");
        if self.client.is_connected() {
            println!("was already connected");
            return; // disconnect before connect
        }
        if self.client.connect_to(addr).await {
            println!("connected");
            self.sender.add(ToUi::Connected);
            // since we are connected, need to register as a ui
            // set name
            let msg = RouterMessage::SetIdentityProperty("name".into(), "GUI".into());
            let msg = Message::Router(msg);
            self.client.send(msg).await;

            // subscribe to ui
            let msg = Message::Ui(UiMessage::Subscribe);
            self.client.send(msg).await;
        } else {
            println!("failed");
        }
    }

    async fn handle_ui(&mut self, msg: UiMessage) {
        match msg {
            UiMessage::Subscribe => {}
            UiMessage::Pages(pages) => {
                self.page_set.clear();
                self.page_set.add_pages(pages);
                self.update_ui_pages();
                self.update_ui_page_list();
            }
            UiMessage::GetPage(_) => {}
            UiMessage::Page(page) => {
                let id = page.id().clone();
                let is_new = self.page_set.upsert_page(page).is_none();
                self.update_ui_page(&id);
                if is_new {
                    self.update_ui_page_list();
                }
            }
            UiMessage::UpdateElementsFor(id, updates) => {
                match self.page_set.get_page_mut(&id) {
                    Some(page) => {
                        page.apply_changes(updates);
                        self.update_ui_page(&id);
                    }
                    None => {} // No page, skip update
                }
            }
            UiMessage::Dataset(path, dataset) => {
                self.datasets.insert(path, dataset);
                // IMPROVEMENT: re-render affected pages only (based on dataset path)
                self.update_ui_pages();
            }
            UiMessage::InputFor(_, _, _, _) => {}

            UiMessage::SetPage(_) => {}
            UiMessage::ClearPage => {}
            UiMessage::UpdateElements(_) => {}
            UiMessage::Input(_, _, _) => {}
        }
    }

    fn update_ui_page_list(&self) {
        let pages = self
            .page_set
            .get_mgr_vec()
            .iter()
            .map(|e| e.get_page().id().to_base64())
            .collect();
        self.sender.add(ToUi::SetPageOrder { pages });
    }

    fn update_ui_page(&self, id: &SpiderId2048) {
        if let Some(mgr) = self.page_set.get_page(id) {
            let page = DartUiPage::build(mgr.get_page(), &self.datasets);
            self.sender.add(ToUi::SetPage { page });
        }
    }
    fn update_ui_pages(&self) {
        for mgr in self.page_set.get_mgr_vec() {
            let id = mgr.get_page().id();
            self.update_ui_page(id);
        }
    }
}

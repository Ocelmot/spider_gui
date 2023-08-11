use std::{collections::HashMap, sync::Arc, path::PathBuf, time::Duration};

use spider_client::{
    message::{AbsoluteDatasetPath, DatasetData, Message, RouterMessage, UiMessage, UiPageList},
    Relation, SpiderId2048, SpiderClientBuilder, ClientResponse, beacon_lookout_many, Link,
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

use crate::{ui::{DartUiInput, DartUiPage}, link_state::LinkState};

#[derive(Debug)]
pub enum ToProcessor {
    // Connection management
    Pair(String),
    Unpair,

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
    SetId(String),
    Unpaired,
    // first string is name, second is base64 of its key
    Pairs{ relations: Vec<(String, String)>},
    Connecting {msg: String},
    Pending{approved: bool},
    Connected,
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
    link_state: LinkState,
    page_set: UiPageList,
    datasets: HashMap<AbsoluteDatasetPath, Vec<DatasetData>>,
}

impl LinkProcessor {
    pub fn create(stream_sink: StreamSink<ToUi>, config_path: String) -> LinkProcessorParts {
        let (processor_tx, processor_rx) = channel(50);

        println!("Creating client");

        let mut path = PathBuf::from(config_path);
        path.push("spider_config.json");
        let client_builder = SpiderClientBuilder::load_or_set(&path, |builder|{
            
        });
        let sig = client_builder.self_relation().id.to_base64();
        let sig: String = sig.chars().skip(sig.len().saturating_sub(15)).collect();
        stream_sink.add(ToUi::SetId(sig));
        let link_state = LinkState::new(client_builder);
        

        let processor = LinkProcessor {
            sender: stream_sink,
            receiver: processor_rx,
            // State
            link_state,
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

        // Initialize pair/connect
        if self.link_state.is_paired() {
            self.link_state.connect().await;
            self.sender.add(ToUi::Connecting { msg: String::from("Connecting...") });
        } else {
            self.sender.add(ToUi::Unpaired);
        }

        loop {
            println!("looping!");
            select! {
                cmd = self.receiver.recv() => {
                    let cmd = cmd.expect("connection to flutter should live");
                    println!("From flutter: {:?}", cmd);
                    match cmd {
                        // Connection management
                        ToProcessor::Pair(key) => {
                            if let Some(relation) = Relation::peer_from_base_64(key){
                                self.link_state.pair(relation);
                                self.link_state.connect().await;
                                self.sender.add(ToUi::Connecting { msg: String::from("Connecting...") });    
                            }
                        },
                        ToProcessor::Unpair => {
                            self.link_state.unpair().await;
                            self.sender.add(ToUi::Unpaired);
                        },

                        // Input
                        ToProcessor::Input{ page_id, element_id, dataset_indices, input } => {
                            if let Some(id) = SpiderId2048::from_base64(page_id) {
                                let dataset_indices = dataset_indices.iter().map(|x|*x as usize).collect();
                                self.link_state.send(Message::Ui(UiMessage::InputFor(id, element_id, dataset_indices, input.into()))).await;
                            }
                        },
                    }
                },
                addrs = beacon_lookout_many(Duration::from_secs(5)), if !self.link_state.is_paired() => {
                    // if the link is not paired, search for possible bases
                    let mut relations = Vec::new();
                    for addr in addrs {
                        match Link::key_request(addr).await {
                            Some(key_request) => {
                                let name = key_request.name;
                                let key = key_request.key.to_base64();
                                relations.push((name, key));
                            }
                            None => {}
                        }
                    }
                    self.sender.add(ToUi::Pairs { relations });
                },
                msg = self.link_state.recv(), if self.link_state.is_connected() => {
                    println!("From base: {:?}", msg);
                    println!("link_state: {:?}", self.link_state);
                    match msg {
                        Some(msg) => {
                            match msg {
                                ClientResponse::Message(Message::Ui(msg)) => {
                                    self.handle_ui(msg).await;
                                },
                                ClientResponse::Message(Message::Router(RouterMessage::Pending)) => {
                                    self.sender.add(ToUi::Pending{approved: false});
                                },
                                ClientResponse::Message(Message::Router(RouterMessage::Approved)) => {
                                    self.sender.add(ToUi::Pending{approved: true});
                                },
                                ClientResponse::Connected => {
                                    println!("connected");
                                    self.sender.add(ToUi::Connected);
                                    // since we are connected, need to register as a ui
                                    // set name
                                    let msg = RouterMessage::SetIdentityProperty("name".into(), "GUI".into());
                                    let msg = Message::Router(msg);
                                    self.link_state.send(msg).await;

                                    // subscribe to ui
                                    let msg = Message::Ui(UiMessage::Subscribe);
                                    self.link_state.send(msg).await;
                                },
                                ClientResponse::Disconnected => {
                                    // Move Ui to loading screen as
                                    // link will attempt to reconnect
                                    self.sender.add(ToUi::Connecting { msg: "Reconnecting...".into() });
                                }
                                ClientResponse::Denied(_) =>{
                                    self.sender.add(ToUi::Unpaired);
                                }
                                ClientResponse::Terminated(builder) => {
                                    // Should only occur on exit
                                    builder.save();
                                    return;
                                }
                                _ => {}
                            }
                        },
                        None => {},
                    }
                }
            }
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

use std::{collections::HashMap, path::PathBuf, sync::Arc};

use log::{debug, info, trace, warn};
use spider_client::{
    ClientResponse, SpiderClientBuilder, link::{
        Relation, SpiderId2048, discovery::{AdvertEvent, Discoverer, get_discovery}, message::{
            AbsoluteDatasetPath, DatasetData, Invite, Message, RouterMessage, UiMessage, UiPageList
        }, transports::{iroh::IROH_SCHEME, tcp::TCP_SCHEME}
    }
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

use crate::{
    dart_spider::error::{ErrorKind, ProblemWrap},
    frb_generated::StreamSink,
};

use crate::dart_spider::ui::{DartUiInput, DartUiPage};

use super::error::GuiClientResult;

#[derive(Debug)]
pub enum ToProcessor {
    // Connection management
    Pair(String),
    Unpair,

    GenerateInvite,
    AcceptInvite(String),

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
    GeneratedInvite(String),

    BaseFound {
        // Key is base64 of the id
        key: String,
        // Name is the base's identified name (or NoName, if none provided)
        name: String,
    },
    BaseLost{
        // Key is base64 of the id
        key: String,
    },
    Connecting {
        msg: String,
    },
    Status {
        msg: String,
    },
    Pending {
        approved: bool,
    },
    Connected,
    SetPageOrder {
        pages: Vec<String>,
    },
    SetPage {
        page: DartUiPage,
    },
    Error {
        msg: String,
        fatal: bool,
    },
}

pub struct LinkProcessorParts {
    pub runtime: Runtime,
    pub processor_handle: JoinHandle<GuiClientResult>,
    pub sender: Sender<ToProcessor>,
    pub installed: Arc<Notify>,
}

pub struct LinkProcessor {
    sender: StreamSink<ToUi>,
    receiver: Receiver<ToProcessor>,
    // State
    page_set: UiPageList,
    datasets: HashMap<AbsoluteDatasetPath, Vec<DatasetData>>,
}

impl LinkProcessor {
    pub fn create(
        stream_sink: StreamSink<ToUi>,
        config_path: String,
    ) -> GuiClientResult<LinkProcessorParts> {
        let (processor_tx, processor_rx) = channel(50);
        info!("Creating client");

        info!("Creating runtime");
        let runtime = Builder::new_multi_thread()
            .enable_all()
            .thread_name("dart_spider processor runtime")
            .build()
            .expect("failed to start tokio runtime");

        let notify = Arc::new(Notify::new());
        let notify_inner = notify.clone();
        let processor_handle = runtime.spawn(async move {
            let mut path = PathBuf::from(config_path.clone());
            path.push("spider_config.json");
            info!("Loading config from path: {:?}", path);
            let mut client_builder = SpiderClientBuilder::load_or_set(&path, |_builder| {})
                .await
                .wrap()?;
            client_builder.auto_reconnect(true);
            client_builder.enable_transport(TCP_SCHEME.to_string());
            client_builder.enable_transport(IROH_SCHEME.to_string());

            let sig = client_builder.self_relation().sig();
            stream_sink.add(ToUi::SetId(sig))?;

            let mut processor = LinkProcessor {
                sender: stream_sink,
                receiver: processor_rx,
                // State
                page_set: UiPageList::new(),
                datasets: HashMap::new(),
            };

            client_builder.veilid_root(Some(config_path.into()));
            match processor.run(client_builder, notify_inner).await {
                Ok(_) => Ok(()),
                Err(e) => {
                    warn!("Client encountered an error:\n{}", e.to_string());
                    let _ = processor.sender.add(ToUi::Error {
                        msg: e.to_string(),
                        fatal: true,
                    });
                    Err(e)
                }
            }
        });

        info!("Done");
        Ok(LinkProcessorParts {
            runtime,
            processor_handle,
            sender: processor_tx,
            installed: notify,
        })
    }

    async fn run(
        &mut self,
        client_builder: SpiderClientBuilder,
        notify: Arc<Notify>,
    ) -> GuiClientResult {
        // wait until the channel has been installed into the global option
        notify.notified().await;

        // Send initial state to UI
        let mut paired = false;
        let mut discoverer = None;
        let beacon_port = client_builder.beacon_port();
        if client_builder.has_host_relation() {
            debug!("Link is paired, connecting...");
            self.sender.add(ToUi::Connecting {
                msg: String::from("Connecting..."),
            })?;
            paired = true;
        } else {
            debug!("Link is unpaired");
            self.sender.add(ToUi::Unpaired)?;
            discoverer = Some(get_discovery(beacon_port));
        }

        // Create the client channel
        let mut client = client_builder.start(true).await.wrap()?;
        if paired {
            client.connect().await.wrap()?;
        }
        

        // process messages
        loop {
            debug!("looping!");
            select! {
                cmd = self.receiver.recv() => {
                    let cmd = cmd.wrap_problem(ErrorKind::Closed)?;
                    info!("From flutter: {:?}", cmd);
                    match cmd {
                        // Connection management
                        ToProcessor::Pair(key) => {
                            // If the pairing string is an ip address, try to pair to the device at that addr
                            let socket_addr = if let Ok(socket_addr) = key.parse::<std::net::SocketAddr>(){
                                Some(socket_addr)
                            } else if let Ok(ip_addr) = key.parse::<std::net::IpAddr>(){
                                Some(std::net::SocketAddr::new(ip_addr, 1930))
                            } else {
                                None
                            };

                            if let Some(addr) = socket_addr {
                                client.try_pair_addr(addr).await.wrap()?;
                                client.connect().await.wrap()?;
                            }

                            // If the pairing string is a key, try to connect through the beacon
                            if let Some(rel) = Relation::peer_from_base_64(key){
                                client.pair(rel).await.wrap()?;
                                client.connect().await.wrap()?;
                            }
                        },
                        ToProcessor::Unpair => {
                            client.unpair().await.wrap()?;
                        },
                        ToProcessor::GenerateInvite => {
                            let msg = Message::Router(RouterMessage::GenerateInvite);
                            client.send(msg).await.wrap()?;
                        }
                        ToProcessor::AcceptInvite(invite_str) => {
                            match Invite::decode(invite_str).wrap() {
                                Ok(invite) => {
                                    let msg = Message::Router(RouterMessage::Invite(invite));
                                    client.send(msg).await.wrap()?;
                                },
                                Err(e) =>{
                                    self.sender.add(ToUi::Error { msg: e.to_string(), fatal: false })?;
                                },
                            }
                        }
                        // Input
                        ToProcessor::Input{ page_id, element_id, dataset_indices, input } => {
                            if let Some(id) = SpiderId2048::from_base64(page_id) {
                                let dataset_indices = dataset_indices.iter().map(|x|*x as usize).collect();
                                let msg = Message::Ui(UiMessage::InputFor(id, element_id, dataset_indices, input.into()));
                                client.send(msg).await.wrap()?;
                            }
                        },
                    }
                },
                event = opt_next_addr(discoverer.as_mut()), if !paired => {
                    // if the link is not paired, search for possible bases
                    match event{
                        AdvertEvent::Found(base_advert) => {
                            // If the event does not contain a key, it would not be possible to pair.
                            if let Some(key) = base_advert.id {
                                let name = base_advert.name.unwrap_or(String::from("NoName"));
                                debug!("Sending potential base `{}`", name);
                                self.sender.add(ToUi::BaseFound {
                                    name: name,
                                    key: key.to_base64()
                                })?;
                            }
                        },
                        AdvertEvent::Lost(base_advert) => {
                            if let Some(key) = base_advert.id {
                                self.sender.add(ToUi::BaseLost { key: key.to_base64() })?;
                            }
                        },
                    }
                },
                msg = client.recv() => {
                    trace!("From base: {:?}", msg);
                    let msg = msg.wrap_problem_msg(ErrorKind::Closed, "The client channel has failed")?;

                    match msg {
                        ClientResponse::Message(Message::Ui(msg), _) => {
                            self.handle_ui(msg).await?;
                        },
                        ClientResponse::Message(Message::Router(RouterMessage::Invite(invite)), _) => {
                            self.sender.add(ToUi::GeneratedInvite(invite.encode()))?;
                        }
                        ClientResponse::Message(Message::Router(RouterMessage::Pending), _) => {
                            self.sender.add(ToUi::Pending{approved: false})?;
                        },
                        ClientResponse::Message(Message::Router(RouterMessage::Approved), _) => {
                            self.sender.add(ToUi::Pending{approved: true})?;
                        },
                        ClientResponse::Paired => {
                            trace!("Paired from client");
                            paired = true;
                            discoverer = None;
                            self.sender.add(ToUi::Connecting { msg: String::from("Connecting...") })?;
                        }
                        ClientResponse::Connected(_) => {
                            info!("Connected");
                            self.sender.add(ToUi::Connected)?;
                            // since we are connected, need to register as a ui
                            // set name
                            let msg = RouterMessage::SetIdentityProperty("name".into(), "GUI".into());
                            let msg = Message::Router(msg);
                            client.send(msg).await.wrap()?;

                            // subscribe to ui
                            let msg = Message::Ui(UiMessage::Subscribe);
                            client.send(msg).await.wrap()?;
                        },
                        ClientResponse::Disconnected => {
                            // Move Ui to loading screen as
                            // link will attempt to reconnect
                            self.sender.add(ToUi::Connecting { msg: "Reconnecting...".into() })?;
                        }
                        ClientResponse::Unpaired(_rel) => {
                            trace!("Unpair from client");
                            paired = false;
                            discoverer = Some(get_discovery(beacon_port));
                            self.sender.add(ToUi::Unpaired)?;
                        }
                        ClientResponse::Terminated(builder) => {
                            // Should only occur on exit
                            builder.save().await.wrap()?;
                            return Ok(());
                        }
                        _ => {}
                    }
                }
            }
        }
    }

    async fn handle_ui(&mut self, msg: UiMessage) -> GuiClientResult {
        match msg {
            UiMessage::Subscribe => {}
            UiMessage::Pages(pages) => {
                self.page_set.clear();
                self.page_set.add_pages(pages);
                self.update_ui_pages()?;
                self.update_ui_page_list()?;
            }
            UiMessage::GetPage(_) => {}
            UiMessage::Page(page) => {
                let id = page.id().clone();
                let is_new = self.page_set.upsert_page(page).is_none();
                self.update_ui_page(&id)?;
                if is_new {
                    self.update_ui_page_list()?;
                }
            }
            UiMessage::UpdateElementsFor(id, updates) => {
                match self.page_set.get_page_mut(&id) {
                    Some(page) => {
                        page.apply_changes(updates);
                        self.update_ui_page(&id)?;
                    }
                    None => {} // No page, skip update
                }
            }
            UiMessage::Dataset(path, dataset) => {
                self.datasets.insert(path, dataset);
                // IMPROVEMENT: re-render affected pages only (based on dataset path)
                self.update_ui_pages()?;
            }
            UiMessage::InputFor(_, _, _, _) => {}

            UiMessage::SetPage(_) => {}
            UiMessage::ClearPage => {}
            UiMessage::UpdateElements(_) => {}
            UiMessage::Input(_, _, _) => {}
        }
        Ok(())
    }

    fn update_ui_page_list(&self) -> GuiClientResult {
        let pages = self
            .page_set
            .get_mgr_vec()
            .iter()
            .map(|e| e.get_page().id().to_base64())
            .collect();
        self.sender.add(ToUi::SetPageOrder { pages })?;
        Ok(())
    }

    fn update_ui_page(&self, id: &SpiderId2048) -> GuiClientResult {
        if let Some(mgr) = self.page_set.get_page(id) {
            let page = DartUiPage::build(mgr.get_page(), &self.datasets);
            self.sender.add(ToUi::SetPage { page })?;
        }
        Ok(())
    }
    fn update_ui_pages(&self) -> GuiClientResult {
        for mgr in self.page_set.get_mgr_vec() {
            let id = mgr.get_page().id();
            self.update_ui_page(id)?;
        }
        Ok(())
    }
}

async fn opt_next_addr(d: Option<&mut Box<dyn Discoverer>>) -> AdvertEvent {
    match d {
        Some(d) => d.next_addr().await,
        None => std::future::pending().await,
    }
}

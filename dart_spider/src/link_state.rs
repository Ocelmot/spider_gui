use spider_client::{
    message::Message, ClientChannel, ClientResponse, Relation, SpiderClientBuilder,
};

#[derive(Debug)]
pub enum LinkState {
    Unpaired(SpiderClientBuilder),
    Paired(SpiderClientBuilder),
    Connected(ClientChannel),
}

impl LinkState {
    pub fn new(builder: SpiderClientBuilder) -> Self {
        if builder.has_host_relation() {
            LinkState::Paired(builder)
        } else {
            LinkState::Unpaired(builder)
        }
    }

    pub fn is_paired(&self) -> bool {
        match self {
            LinkState::Unpaired(_) => false,
            LinkState::Paired(_) => true,
            LinkState::Connected(_) => true,
        }
    }
    pub fn is_connected(&self) -> bool {
        match self {
            LinkState::Unpaired(_) => false,
            LinkState::Paired(_) => false,
            LinkState::Connected(_) => true,
        }
    }

    pub fn pair(&mut self, host_relation: Relation) {
        match self {
            LinkState::Unpaired( builder) => {
                builder.set_host_relation(host_relation);
                builder.save();
                *self = LinkState::Paired(builder.clone());
            }
            LinkState::Paired(builder) => {
                builder.set_host_relation(host_relation);
                builder.save();
            }
            LinkState::Connected(_) => {} // Already paired
        }
    }
    pub async fn unpair(&mut self) {
        self.terminate().await; // disconnect to unpair
        match self {
            LinkState::Unpaired(_) => {} // already unpaired
            LinkState::Paired(builder) => {
                builder.clear_host_relation();
                builder.save();
                *self = LinkState::Unpaired(builder.clone());
            }
            LinkState::Connected(_) => {}
        }
    }

    pub async fn connect(&mut self) {
        match self {
            LinkState::Unpaired(_) => {} // cant connect without a paired base
            LinkState::Paired(builder) => {
                let client = builder.clone().start(true);
                *self = LinkState::Connected(client);
            }
            LinkState::Connected(_) => {} // Already connected
        }
    }
    pub async fn disconnect(&mut self) {
        match self {
            LinkState::Unpaired(_) => {} // Not connected
            LinkState::Paired(_) => {}   // Not connected,
            LinkState::Connected(client) => {
                client.terminate().await;
            }
        }
    }
    pub async fn terminate(&mut self) {
        match self {
            LinkState::Unpaired(_) => {} // Not connected
            LinkState::Paired(_) => {}   // Not connected,
            LinkState::Connected(client) => {
                client.terminate().await;
                while let Some(_) = self.recv().await {}
            }
        }
    }

    pub async fn send(&mut self, msg: Message) {
        match self {
            LinkState::Unpaired(_) => {}
            LinkState::Paired(_) => (),
            LinkState::Connected(client) => {
                client.send(msg).await;
            }
        }
    }

    pub async fn recv(&mut self) -> Option<ClientResponse> {
        match self {
            LinkState::Unpaired(_) => None,
            LinkState::Paired(_) => None,
            LinkState::Connected(client) => match client.recv().await {
                Some(msg) => {
                    if let ClientResponse::Terminated(builder) = &msg {
                        *self = LinkState::Paired(builder.clone());
                    }
                    if let ClientResponse::Denied(builder) = &msg {
                        builder.save();
                        *self = LinkState::Unpaired(builder.clone());
                    }
                    Some(msg)
                }
                None => None,
            },
        }
    }
}

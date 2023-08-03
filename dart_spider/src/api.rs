use flutter_rust_bridge::StreamSink;
use std::sync::Mutex;

use crate::link::{LinkProcessor, LinkProcessorParts, ToProcessor, ToUi};

static LINK_PROCESSOR_PARTS: Mutex<Option<LinkProcessorParts>> = Mutex::new(None);

pub fn test_text() -> String {
    String::from("<RUST STRING!>")
}

pub fn init(stream_sink: StreamSink<ToUi>, config_path: String) {
    // start the processor and get the read and write channels
    let lpp = LinkProcessor::create(stream_sink, config_path);

    // install LinkProcessorParts into the global
    let mut x = LINK_PROCESSOR_PARTS.lock().expect("Lock is not poisoned");
    let notify = lpp.installed.clone();
    *x = Some(lpp);
    drop(x);
    notify.notify_one();
    println!("Installed");
}

pub fn write(msg: ToProcessor) {
    println!("Writing: {:?}", msg);
    let lpp = LINK_PROCESSOR_PARTS.lock().expect("Lock is not poisoned");
    match lpp.as_ref() {
        Some(lpp) => {
            lpp.sender.blocking_send(msg).expect("Write failed to send");
        }
        None => {
            drop(lpp);
            panic!("Init should be called before write");
        }
    }
    println!("Writing done");
}

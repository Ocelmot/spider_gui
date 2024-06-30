use log::info;

#[cfg(target_os = "android")]
use log::LevelFilter;

use crate::frb_generated::StreamSink;
use std::sync::Mutex;

pub use crate::dart_spider::link::{LinkProcessor, LinkProcessorParts, ToProcessor, ToUi};

static LINK_PROCESSOR_PARTS: Mutex<Option<LinkProcessorParts>> = Mutex::new(None);

#[flutter_rust_bridge::frb(init)]
pub fn init_app() {
    // flutter_rust_bridge::setup_default_user_utils();

    // Setup logging
    #[cfg(target_os = "android")]
    {
        let mut builder = android_logger::FilterBuilder::new();
        builder.filter_module("spider_client", LevelFilter::Debug);
        builder.filter_module("veilid_core", LevelFilter::Warn);
        builder.filter_module("rust_lib_spider_gui", LevelFilter::Debug);
        builder.filter_module("spider_link", LevelFilter::Debug);
        

        let _ = android_logger::init_once(
            android_logger::Config::default()
                .with_max_level(LevelFilter::max())
                .with_filter(builder.build())
                .format(|buf, record| writeln!(buf, "{}: {}", record.level(), record.args())),
        );
    }

    #[cfg(target_os = "ios")]
    let _ = oslog::OsLogger::new("frb_user")
        .level_filter(log::LevelFilter::Info)
        .init();

    // #[cfg(wasm)]
    // let _ = crate::misc::web_utils::WebConsoleLogger::init();
}

#[flutter_rust_bridge::frb(sync)]
pub fn init_rust(stream_sink: StreamSink<ToUi>, config_path: String) {
    // start the processor and get the read and write channels
    let lpp = LinkProcessor::create(stream_sink, config_path);

    // install LinkProcessorParts into the global
    let mut x = LINK_PROCESSOR_PARTS.lock().expect("Lock is not poisoned");
    let notify = lpp.installed.clone();
    *x = Some(lpp);
    drop(x);
    notify.notify_one();
    info!("Installed");
}

#[flutter_rust_bridge::frb(sync)]
pub fn write(msg: ToProcessor) {
    info!("Writing: {:?}", msg);
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
    info!("Writing done");
}

#[cfg(target_os = "android")]
use jni::{objects::JClass, objects::JObject, JNIEnv};

#[cfg(target_os = "android")]
#[no_mangle]
#[allow(non_snake_case)]
pub extern "system" fn Java_com_spider_spider_1gui_MainActivity_init_1android(
    env: JNIEnv,
    _class: JClass,
    ctx: JObject,
) {
    veilid_core::veilid_core_setup_android(env, ctx);
}

use log::info;

use crate::{frb_generated::StreamSink, logging_trace};
use std::sync::{atomic::AtomicBool, Mutex};

pub use crate::dart_spider::link::{LinkProcessor, LinkProcessorParts, ToProcessor, ToUi};

static INITIALIZED: AtomicBool = AtomicBool::new(false);
static LINK_PROCESSOR_PARTS: Mutex<Option<LinkProcessorParts>> = Mutex::new(None);

#[flutter_rust_bridge::frb(sync)]
pub fn init_rust(stream_sink: StreamSink<ToUi>, config_path: String) {
    let loggers = init_logging();
    info!("init_loggers = {}", loggers);

    // start the processor and get the read and write channels
    let lpp = LinkProcessor::create(stream_sink, config_path)
        .expect("creation of link processor parts failed, restart");
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

pub fn init_logging() -> bool {
    if INITIALIZED.load(std::sync::atomic::Ordering::SeqCst) {
        return false;
    }

    #[cfg(target_os = "android")]
    {
        use log::LevelFilter;
        use tracing_core::subscriber;

        let mut builder = android_logger::FilterBuilder::new();
        builder.filter_module("spider_client", LevelFilter::Trace);
        builder.filter_module("rust_lib_spider_gui", LevelFilter::Trace);
        builder.filter_module("spider_link", LevelFilter::Trace);
        builder.filter_level(log::LevelFilter::Trace);
        // builder.filter_module("spider_link::beacon", log::LevelFilter::Info);

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

    #[cfg(target_os = "windows")]
    {
        env_logger::builder()
            .filter_level(log::LevelFilter::Info)
            .filter_module("spider_client", log::LevelFilter::Trace)
            .filter_module("spider_link", log::LevelFilter::Trace)
            .filter_module("spider_link::beacon", log::LevelFilter::Info)
            .filter_module("rust_lib_spider_gui", log::LevelFilter::Trace)
            // .format_target(false)
            // .format_timestamp(None)

            .init();

        
    }

    // #[cfg(wasm)]
    // let _ = crate::misc::web_utils::WebConsoleLogger::init();

    // Any tracing events should be emitted as logs instead
    logging_trace::LoggingTrace::register();

    info!("Initialized loggers");
    INITIALIZED.store(true, std::sync::atomic::Ordering::SeqCst);
    true
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
    // veilid_core::veilid_core_setup_android(env, ctx);
}

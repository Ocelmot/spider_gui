use std::fmt::Write;

use log::{debug, error, info, trace, warn};
use rand::Rng;
use tracing_core::{LevelFilter, Subscriber, dispatcher, field::Visit};

pub(crate) struct LoggingTrace {}

impl LoggingTrace {
    pub fn register() {
        let instance = LoggingTrace {};
        dispatcher::set_global_default(instance.into()).expect("Failed to register LoggingTrace");
    }
}

impl Subscriber for LoggingTrace {
    fn enabled(&self, metadata: &tracing_core::Metadata<'_>) -> bool {
        true
    }

    fn new_span(&self, span: &tracing_core::span::Attributes<'_>) -> tracing_core::span::Id {
        let mut rng = rand::rng();

        tracing_core::span::Id::from_non_zero_u64(rng.random())
    }

    fn record(&self, span: &tracing_core::span::Id, values: &tracing_core::span::Record<'_>) {
		let mut visitor = Visitor::new();
		values.record(&mut visitor);
		debug!("RECORD {}: {}", span.into_u64(), visitor.into_string());
    }

    fn record_follows_from(&self, span: &tracing_core::span::Id, follows: &tracing_core::span::Id) {
        ()
    }

    fn event(&self, event: &tracing_core::Event<'_>) {
		let mut visitor = Visitor::new();
		event.record(&mut visitor);
		let msg = visitor.into_string();



        if event.metadata().level() >= &LevelFilter::TRACE {
            trace!("Trace: {}", msg);
        } else if event.metadata().level() >= &LevelFilter::DEBUG {
            debug!("Debug: {}", msg);
        } else if event.metadata().level() >= &LevelFilter::INFO {
            info!("Info: {}", msg);
        } else if event.metadata().level() >= &LevelFilter::WARN {
            warn!("Warn: {}", msg);
        } else if event.metadata().level() >= &LevelFilter::ERROR {
            error!("Error: {}", msg);
        }
    }

    fn enter(&self, span: &tracing_core::span::Id) {
        // debug!("Entered span");
    }

    fn exit(&self, span: &tracing_core::span::Id) {
        // debug!("Exited span");
    }
}


struct Visitor {
	string: String
}

impl Visitor {
	fn new() -> Self {
		Self { string: String::new() }
	}

	fn into_string(self) -> String {
		self.string
	}
}

impl Visit for Visitor {
	fn record_debug(&mut self, field: &tracing_core::Field, value: &dyn core::fmt::Debug) {
		if field.name() != "message" {
			write!(&mut self.string, "{} = {:?}; ", field.name(), value).unwrap();
		}else{
			write!(&mut self.string, "{:?} ", value).unwrap();
		}
	}
}

#![allow(
    non_camel_case_types,
    unused,
    clippy::redundant_closure,
    clippy::useless_conversion,
    clippy::unit_arg,
    clippy::double_parens,
    non_snake_case,
    clippy::too_many_arguments
)]
// AUTO GENERATED FILE, DO NOT EDIT.
// Generated by `flutter_rust_bridge`@ 1.78.0.

use crate::api::*;
use core::panic::UnwindSafe;
use flutter_rust_bridge::*;
use std::ffi::c_void;
use std::sync::Arc;

// Section: imports

use crate::link::ToProcessor;
use crate::link::ToUi;
use crate::ui::DartUiElement;
use crate::ui::DartUiElementKind;
use crate::ui::DartUiInput;
use crate::ui::DartUiPage;

// Section: wire functions

fn wire_test_text_impl(port_: MessagePort) {
    FLUTTER_RUST_BRIDGE_HANDLER.wrap(
        WrapInfo {
            debug_name: "test_text",
            port: Some(port_),
            mode: FfiCallMode::Normal,
        },
        move || move |task_callback| Ok(test_text()),
    )
}
fn wire_init_impl(port_: MessagePort, config_path: impl Wire2Api<String> + UnwindSafe) {
    FLUTTER_RUST_BRIDGE_HANDLER.wrap(
        WrapInfo {
            debug_name: "init",
            port: Some(port_),
            mode: FfiCallMode::Stream,
        },
        move || {
            let api_config_path = config_path.wire2api();
            move |task_callback| Ok(init(task_callback.stream_sink(), api_config_path))
        },
    )
}
fn wire_write_impl(port_: MessagePort, msg: impl Wire2Api<ToProcessor> + UnwindSafe) {
    FLUTTER_RUST_BRIDGE_HANDLER.wrap(
        WrapInfo {
            debug_name: "write",
            port: Some(port_),
            mode: FfiCallMode::Normal,
        },
        move || {
            let api_msg = msg.wire2api();
            move |task_callback| Ok(write(api_msg))
        },
    )
}
// Section: wrapper structs

// Section: static checks

// Section: allocate functions

// Section: related functions

// Section: impl Wire2Api

pub trait Wire2Api<T> {
    fn wire2api(self) -> T;
}

impl<T, S> Wire2Api<Option<T>> for *mut S
where
    *mut S: Wire2Api<T>,
{
    fn wire2api(self) -> Option<T> {
        (!self.is_null()).then(|| self.wire2api())
    }
}

impl Wire2Api<u32> for u32 {
    fn wire2api(self) -> u32 {
        self
    }
}
impl Wire2Api<u8> for u8 {
    fn wire2api(self) -> u8 {
        self
    }
}

// Section: impl IntoDart

impl support::IntoDart for DartUiElement {
    fn into_dart(self) -> support::DartAbi {
        vec![
            self.kind.into_dart(),
            self.id.into_dart(),
            self.dataset_indices.into_dart(),
            self.text.into_dart(),
            self.children.into_dart(),
        ]
        .into_dart()
    }
}
impl support::IntoDartExceptPrimitive for DartUiElement {}

impl support::IntoDart for DartUiElementKind {
    fn into_dart(self) -> support::DartAbi {
        match self {
            Self::None => 0,
            Self::Spacer => 1,
            Self::Columns => 2,
            Self::Rows => 3,
            Self::Header => 4,
            Self::Text => 5,
            Self::TextEntry => 6,
            Self::Button => 7,
        }
        .into_dart()
    }
}
impl support::IntoDartExceptPrimitive for DartUiElementKind {}
impl support::IntoDart for DartUiPage {
    fn into_dart(self) -> support::DartAbi {
        vec![
            self.id.into_dart(),
            self.name.into_dart(),
            self.root.into_dart(),
        ]
        .into_dart()
    }
}
impl support::IntoDartExceptPrimitive for DartUiPage {}

impl support::IntoDart for ToUi {
    fn into_dart(self) -> support::DartAbi {
        match self {
            Self::SetId(field0) => vec![0.into_dart(), field0.into_dart()],
            Self::Unpaired => vec![1.into_dart()],
            Self::Pairs { relations } => vec![2.into_dart(), relations.into_dart()],
            Self::Connecting { msg } => vec![3.into_dart(), msg.into_dart()],
            Self::Pending { approved } => vec![4.into_dart(), approved.into_dart()],
            Self::Connected => vec![5.into_dart()],
            Self::SetPageOrder { pages } => vec![6.into_dart(), pages.into_dart()],
            Self::SetPage { page } => vec![7.into_dart(), page.into_dart()],
        }
        .into_dart()
    }
}
impl support::IntoDartExceptPrimitive for ToUi {}

// Section: executor

support::lazy_static! {
    pub static ref FLUTTER_RUST_BRIDGE_HANDLER: support::DefaultHandler = Default::default();
}

#[cfg(not(target_family = "wasm"))]
#[path = "bridge_generated.io.rs"]
mod io;
#[cfg(not(target_family = "wasm"))]
pub use io::*;

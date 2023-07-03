use super::*;
// Section: wire functions

#[no_mangle]
pub extern "C" fn wire_test_text(port_: i64) {
    wire_test_text_impl(port_)
}

#[no_mangle]
pub extern "C" fn wire_init(port_: i64) {
    wire_init_impl(port_)
}

#[no_mangle]
pub extern "C" fn wire_write(port_: i64, msg: *mut wire_ToProcessor) {
    wire_write_impl(port_, msg)
}

// Section: allocate functions

#[no_mangle]
pub extern "C" fn new_box_autoadd_dart_ui_input_0() -> *mut wire_DartUiInput {
    support::new_leak_box_ptr(wire_DartUiInput::new_with_null_ptr())
}

#[no_mangle]
pub extern "C" fn new_box_autoadd_to_processor_0() -> *mut wire_ToProcessor {
    support::new_leak_box_ptr(wire_ToProcessor::new_with_null_ptr())
}

#[no_mangle]
pub extern "C" fn new_uint_32_list_0(len: i32) -> *mut wire_uint_32_list {
    let ans = wire_uint_32_list {
        ptr: support::new_leak_vec_ptr(Default::default(), len),
        len,
    };
    support::new_leak_box_ptr(ans)
}

#[no_mangle]
pub extern "C" fn new_uint_8_list_0(len: i32) -> *mut wire_uint_8_list {
    let ans = wire_uint_8_list {
        ptr: support::new_leak_vec_ptr(Default::default(), len),
        len,
    };
    support::new_leak_box_ptr(ans)
}

// Section: related functions

// Section: impl Wire2Api

impl Wire2Api<String> for *mut wire_uint_8_list {
    fn wire2api(self) -> String {
        let vec: Vec<u8> = self.wire2api();
        String::from_utf8_lossy(&vec).into_owned()
    }
}
impl Wire2Api<DartUiInput> for *mut wire_DartUiInput {
    fn wire2api(self) -> DartUiInput {
        let wrap = unsafe { support::box_from_leak_ptr(self) };
        Wire2Api::<DartUiInput>::wire2api(*wrap).into()
    }
}
impl Wire2Api<ToProcessor> for *mut wire_ToProcessor {
    fn wire2api(self) -> ToProcessor {
        let wrap = unsafe { support::box_from_leak_ptr(self) };
        Wire2Api::<ToProcessor>::wire2api(*wrap).into()
    }
}
impl Wire2Api<DartUiInput> for wire_DartUiInput {
    fn wire2api(self) -> DartUiInput {
        match self.tag {
            0 => DartUiInput::Click,
            1 => unsafe {
                let ans = support::box_from_leak_ptr(self.kind);
                let ans = support::box_from_leak_ptr(ans.Text);
                DartUiInput::Text(ans.field0.wire2api())
            },
            _ => unreachable!(),
        }
    }
}
impl Wire2Api<ToProcessor> for wire_ToProcessor {
    fn wire2api(self) -> ToProcessor {
        match self.tag {
            0 => unsafe {
                let ans = support::box_from_leak_ptr(self.kind);
                let ans = support::box_from_leak_ptr(ans.Connect);
                ToProcessor::Connect(ans.field0.wire2api())
            },
            1 => ToProcessor::Disconnect,
            2 => unsafe {
                let ans = support::box_from_leak_ptr(self.kind);
                let ans = support::box_from_leak_ptr(ans.Input);
                ToProcessor::Input {
                    page_id: ans.page_id.wire2api(),
                    element_id: ans.element_id.wire2api(),
                    dataset_indices: ans.dataset_indices.wire2api(),
                    input: ans.input.wire2api(),
                }
            },
            _ => unreachable!(),
        }
    }
}

impl Wire2Api<Vec<u32>> for *mut wire_uint_32_list {
    fn wire2api(self) -> Vec<u32> {
        unsafe {
            let wrap = support::box_from_leak_ptr(self);
            support::vec_from_leak_ptr(wrap.ptr, wrap.len)
        }
    }
}
impl Wire2Api<Vec<u8>> for *mut wire_uint_8_list {
    fn wire2api(self) -> Vec<u8> {
        unsafe {
            let wrap = support::box_from_leak_ptr(self);
            support::vec_from_leak_ptr(wrap.ptr, wrap.len)
        }
    }
}
// Section: wire structs

#[repr(C)]
#[derive(Clone)]
pub struct wire_uint_32_list {
    ptr: *mut u32,
    len: i32,
}

#[repr(C)]
#[derive(Clone)]
pub struct wire_uint_8_list {
    ptr: *mut u8,
    len: i32,
}

#[repr(C)]
#[derive(Clone)]
pub struct wire_DartUiInput {
    tag: i32,
    kind: *mut DartUiInputKind,
}

#[repr(C)]
pub union DartUiInputKind {
    Click: *mut wire_DartUiInput_Click,
    Text: *mut wire_DartUiInput_Text,
}

#[repr(C)]
#[derive(Clone)]
pub struct wire_DartUiInput_Click {}

#[repr(C)]
#[derive(Clone)]
pub struct wire_DartUiInput_Text {
    field0: *mut wire_uint_8_list,
}
#[repr(C)]
#[derive(Clone)]
pub struct wire_ToProcessor {
    tag: i32,
    kind: *mut ToProcessorKind,
}

#[repr(C)]
pub union ToProcessorKind {
    Connect: *mut wire_ToProcessor_Connect,
    Disconnect: *mut wire_ToProcessor_Disconnect,
    Input: *mut wire_ToProcessor_Input,
}

#[repr(C)]
#[derive(Clone)]
pub struct wire_ToProcessor_Connect {
    field0: *mut wire_uint_8_list,
}

#[repr(C)]
#[derive(Clone)]
pub struct wire_ToProcessor_Disconnect {}

#[repr(C)]
#[derive(Clone)]
pub struct wire_ToProcessor_Input {
    page_id: *mut wire_uint_8_list,
    element_id: *mut wire_uint_8_list,
    dataset_indices: *mut wire_uint_32_list,
    input: *mut wire_DartUiInput,
}

// Section: impl NewWithNullPtr

pub trait NewWithNullPtr {
    fn new_with_null_ptr() -> Self;
}

impl<T> NewWithNullPtr for *mut T {
    fn new_with_null_ptr() -> Self {
        std::ptr::null_mut()
    }
}

impl Default for wire_DartUiInput {
    fn default() -> Self {
        Self::new_with_null_ptr()
    }
}

impl NewWithNullPtr for wire_DartUiInput {
    fn new_with_null_ptr() -> Self {
        Self {
            tag: -1,
            kind: core::ptr::null_mut(),
        }
    }
}

#[no_mangle]
pub extern "C" fn inflate_DartUiInput_Text() -> *mut DartUiInputKind {
    support::new_leak_box_ptr(DartUiInputKind {
        Text: support::new_leak_box_ptr(wire_DartUiInput_Text {
            field0: core::ptr::null_mut(),
        }),
    })
}

impl Default for wire_ToProcessor {
    fn default() -> Self {
        Self::new_with_null_ptr()
    }
}

impl NewWithNullPtr for wire_ToProcessor {
    fn new_with_null_ptr() -> Self {
        Self {
            tag: -1,
            kind: core::ptr::null_mut(),
        }
    }
}

#[no_mangle]
pub extern "C" fn inflate_ToProcessor_Connect() -> *mut ToProcessorKind {
    support::new_leak_box_ptr(ToProcessorKind {
        Connect: support::new_leak_box_ptr(wire_ToProcessor_Connect {
            field0: core::ptr::null_mut(),
        }),
    })
}

#[no_mangle]
pub extern "C" fn inflate_ToProcessor_Input() -> *mut ToProcessorKind {
    support::new_leak_box_ptr(ToProcessorKind {
        Input: support::new_leak_box_ptr(wire_ToProcessor_Input {
            page_id: core::ptr::null_mut(),
            element_id: core::ptr::null_mut(),
            dataset_indices: core::ptr::null_mut(),
            input: core::ptr::null_mut(),
        }),
    })
}

// Section: sync execution mode utility

#[no_mangle]
pub extern "C" fn free_WireSyncReturn(ptr: support::WireSyncReturn) {
    unsafe {
        let _ = support::box_from_leak_ptr(ptr);
    };
}

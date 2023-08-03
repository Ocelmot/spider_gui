// AUTO GENERATED FILE, DO NOT EDIT.
// Generated by `flutter_rust_bridge`@ 1.78.0.
// ignore_for_file: non_constant_identifier_names, unused_element, duplicate_ignore, directives_ordering, curly_braces_in_flow_control_structures, unnecessary_lambdas, slash_for_doc_comments, prefer_const_literals_to_create_immutables, implicit_dynamic_list_literal, duplicate_import, unused_import, unnecessary_import, prefer_single_quotes, prefer_const_constructors, use_super_parameters, always_use_package_imports, annotate_overrides, invalid_use_of_protected_member, constant_identifier_names, invalid_use_of_internal_member, prefer_is_empty, unnecessary_const

import "bridge_definitions.dart";
import 'dart:convert';
import 'dart:async';
import 'package:meta/meta.dart';
import 'package:flutter_rust_bridge/flutter_rust_bridge.dart';
import 'package:uuid/uuid.dart';

import 'dart:convert';
import 'dart:async';
import 'package:meta/meta.dart';
import 'package:flutter_rust_bridge/flutter_rust_bridge.dart';
import 'package:uuid/uuid.dart';

import 'dart:ffi' as ffi;

class DartSpiderImpl implements DartSpider {
  final DartSpiderPlatform _platform;
  factory DartSpiderImpl(ExternalLibrary dylib) =>
      DartSpiderImpl.raw(DartSpiderPlatform(dylib));

  /// Only valid on web/WASM platforms.
  factory DartSpiderImpl.wasm(FutureOr<WasmModule> module) =>
      DartSpiderImpl(module as ExternalLibrary);
  DartSpiderImpl.raw(this._platform);
  Future<String> testText({dynamic hint}) {
    return _platform.executeNormal(FlutterRustBridgeTask(
      callFfi: (port_) => _platform.inner.wire_test_text(port_),
      parseSuccessData: _wire2api_String,
      constMeta: kTestTextConstMeta,
      argValues: [],
      hint: hint,
    ));
  }

  FlutterRustBridgeTaskConstMeta get kTestTextConstMeta =>
      const FlutterRustBridgeTaskConstMeta(
        debugName: "test_text",
        argNames: [],
      );

  Stream<ToUi> init({required String configPath, dynamic hint}) {
    var arg0 = _platform.api2wire_String(configPath);
    return _platform.executeStream(FlutterRustBridgeTask(
      callFfi: (port_) => _platform.inner.wire_init(port_, arg0),
      parseSuccessData: _wire2api_to_ui,
      constMeta: kInitConstMeta,
      argValues: [configPath],
      hint: hint,
    ));
  }

  FlutterRustBridgeTaskConstMeta get kInitConstMeta =>
      const FlutterRustBridgeTaskConstMeta(
        debugName: "init",
        argNames: ["configPath"],
      );

  Future<void> write({required ToProcessor msg, dynamic hint}) {
    var arg0 = _platform.api2wire_box_autoadd_to_processor(msg);
    return _platform.executeNormal(FlutterRustBridgeTask(
      callFfi: (port_) => _platform.inner.wire_write(port_, arg0),
      parseSuccessData: _wire2api_unit,
      constMeta: kWriteConstMeta,
      argValues: [msg],
      hint: hint,
    ));
  }

  FlutterRustBridgeTaskConstMeta get kWriteConstMeta =>
      const FlutterRustBridgeTaskConstMeta(
        debugName: "write",
        argNames: ["msg"],
      );

  void dispose() {
    _platform.dispose();
  }
// Section: wire2api

  String _wire2api_String(dynamic raw) {
    return raw as String;
  }

  List<String> _wire2api_StringList(dynamic raw) {
    return (raw as List<dynamic>).cast<String>();
  }

  (String, String) _wire2api___record__String_String(dynamic raw) {
    final arr = raw as List<dynamic>;
    if (arr.length != 2) {
      throw Exception('Expected 2 elements, got ${arr.length}');
    }
    return (
      _wire2api_String(arr[0]),
      _wire2api_String(arr[1]),
    );
  }

  DartUiPage _wire2api_box_autoadd_dart_ui_page(dynamic raw) {
    return _wire2api_dart_ui_page(raw);
  }

  DartUiElement _wire2api_dart_ui_element(dynamic raw) {
    final arr = raw as List<dynamic>;
    if (arr.length != 5)
      throw Exception('unexpected arr length: expect 5 but see ${arr.length}');
    return DartUiElement(
      kind: _wire2api_dart_ui_element_kind(arr[0]),
      id: _wire2api_opt_String(arr[1]),
      datasetIndices: _wire2api_uint_32_list(arr[2]),
      text: _wire2api_String(arr[3]),
      children: _wire2api_list_dart_ui_element(arr[4]),
    );
  }

  DartUiElementKind _wire2api_dart_ui_element_kind(dynamic raw) {
    return DartUiElementKind.values[raw as int];
  }

  DartUiPage _wire2api_dart_ui_page(dynamic raw) {
    final arr = raw as List<dynamic>;
    if (arr.length != 3)
      throw Exception('unexpected arr length: expect 3 but see ${arr.length}');
    return DartUiPage(
      id: _wire2api_String(arr[0]),
      name: _wire2api_String(arr[1]),
      root: _wire2api_dart_ui_element(arr[2]),
    );
  }

  int _wire2api_i32(dynamic raw) {
    return raw as int;
  }

  List<(String, String)> _wire2api_list___record__String_String(dynamic raw) {
    return (raw as List<dynamic>)
        .map(_wire2api___record__String_String)
        .toList();
  }

  List<DartUiElement> _wire2api_list_dart_ui_element(dynamic raw) {
    return (raw as List<dynamic>).map(_wire2api_dart_ui_element).toList();
  }

  String? _wire2api_opt_String(dynamic raw) {
    return raw == null ? null : _wire2api_String(raw);
  }

  ToUi _wire2api_to_ui(dynamic raw) {
    switch (raw[0]) {
      case 0:
        return ToUi_Unpaired();
      case 1:
        return ToUi_Pairs(
          relations: _wire2api_list___record__String_String(raw[1]),
        );
      case 2:
        return ToUi_Connecting(
          msg: _wire2api_String(raw[1]),
        );
      case 3:
        return ToUi_Connected();
      case 4:
        return ToUi_SetPageOrder(
          pages: _wire2api_StringList(raw[1]),
        );
      case 5:
        return ToUi_SetPage(
          page: _wire2api_box_autoadd_dart_ui_page(raw[1]),
        );
      default:
        throw Exception("unreachable");
    }
  }

  int _wire2api_u32(dynamic raw) {
    return raw as int;
  }

  int _wire2api_u8(dynamic raw) {
    return raw as int;
  }

  Uint32List _wire2api_uint_32_list(dynamic raw) {
    return raw as Uint32List;
  }

  Uint8List _wire2api_uint_8_list(dynamic raw) {
    return raw as Uint8List;
  }

  void _wire2api_unit(dynamic raw) {
    return;
  }
}

// Section: api2wire

@protected
int api2wire_u32(int raw) {
  return raw;
}

@protected
int api2wire_u8(int raw) {
  return raw;
}

// Section: finalizer

class DartSpiderPlatform extends FlutterRustBridgeBase<DartSpiderWire> {
  DartSpiderPlatform(ffi.DynamicLibrary dylib) : super(DartSpiderWire(dylib));

// Section: api2wire

  @protected
  ffi.Pointer<wire_uint_8_list> api2wire_String(String raw) {
    return api2wire_uint_8_list(utf8.encoder.convert(raw));
  }

  @protected
  ffi.Pointer<wire_DartUiInput> api2wire_box_autoadd_dart_ui_input(
      DartUiInput raw) {
    final ptr = inner.new_box_autoadd_dart_ui_input_0();
    _api_fill_to_wire_dart_ui_input(raw, ptr.ref);
    return ptr;
  }

  @protected
  ffi.Pointer<wire_ToProcessor> api2wire_box_autoadd_to_processor(
      ToProcessor raw) {
    final ptr = inner.new_box_autoadd_to_processor_0();
    _api_fill_to_wire_to_processor(raw, ptr.ref);
    return ptr;
  }

  @protected
  ffi.Pointer<wire_uint_32_list> api2wire_uint_32_list(Uint32List raw) {
    final ans = inner.new_uint_32_list_0(raw.length);
    ans.ref.ptr.asTypedList(raw.length).setAll(0, raw);
    return ans;
  }

  @protected
  ffi.Pointer<wire_uint_8_list> api2wire_uint_8_list(Uint8List raw) {
    final ans = inner.new_uint_8_list_0(raw.length);
    ans.ref.ptr.asTypedList(raw.length).setAll(0, raw);
    return ans;
  }
// Section: finalizer

// Section: api_fill_to_wire

  void _api_fill_to_wire_box_autoadd_dart_ui_input(
      DartUiInput apiObj, ffi.Pointer<wire_DartUiInput> wireObj) {
    _api_fill_to_wire_dart_ui_input(apiObj, wireObj.ref);
  }

  void _api_fill_to_wire_box_autoadd_to_processor(
      ToProcessor apiObj, ffi.Pointer<wire_ToProcessor> wireObj) {
    _api_fill_to_wire_to_processor(apiObj, wireObj.ref);
  }

  void _api_fill_to_wire_dart_ui_input(
      DartUiInput apiObj, wire_DartUiInput wireObj) {
    if (apiObj is DartUiInput_Click) {
      wireObj.tag = 0;
      return;
    }
    if (apiObj is DartUiInput_Text) {
      var pre_field0 = api2wire_String(apiObj.field0);
      wireObj.tag = 1;
      wireObj.kind = inner.inflate_DartUiInput_Text();
      wireObj.kind.ref.Text.ref.field0 = pre_field0;
      return;
    }
  }

  void _api_fill_to_wire_to_processor(
      ToProcessor apiObj, wire_ToProcessor wireObj) {
    if (apiObj is ToProcessor_Pair) {
      var pre_field0 = api2wire_String(apiObj.field0);
      wireObj.tag = 0;
      wireObj.kind = inner.inflate_ToProcessor_Pair();
      wireObj.kind.ref.Pair.ref.field0 = pre_field0;
      return;
    }
    if (apiObj is ToProcessor_Unpair) {
      wireObj.tag = 1;
      return;
    }
    if (apiObj is ToProcessor_Input) {
      var pre_page_id = api2wire_String(apiObj.pageId);
      var pre_element_id = api2wire_String(apiObj.elementId);
      var pre_dataset_indices = api2wire_uint_32_list(apiObj.datasetIndices);
      var pre_input = api2wire_box_autoadd_dart_ui_input(apiObj.input);
      wireObj.tag = 2;
      wireObj.kind = inner.inflate_ToProcessor_Input();
      wireObj.kind.ref.Input.ref.page_id = pre_page_id;
      wireObj.kind.ref.Input.ref.element_id = pre_element_id;
      wireObj.kind.ref.Input.ref.dataset_indices = pre_dataset_indices;
      wireObj.kind.ref.Input.ref.input = pre_input;
      return;
    }
  }
}

// ignore_for_file: camel_case_types, non_constant_identifier_names, avoid_positional_boolean_parameters, annotate_overrides, constant_identifier_names

// AUTO GENERATED FILE, DO NOT EDIT.
//
// Generated by `package:ffigen`.
// ignore_for_file: type=lint

/// generated by flutter_rust_bridge
class DartSpiderWire implements FlutterRustBridgeWireBase {
  @internal
  late final dartApi = DartApiDl(init_frb_dart_api_dl);

  /// Holds the symbol lookup function.
  final ffi.Pointer<T> Function<T extends ffi.NativeType>(String symbolName)
      _lookup;

  /// The symbols are looked up in [dynamicLibrary].
  DartSpiderWire(ffi.DynamicLibrary dynamicLibrary)
      : _lookup = dynamicLibrary.lookup;

  /// The symbols are looked up with [lookup].
  DartSpiderWire.fromLookup(
      ffi.Pointer<T> Function<T extends ffi.NativeType>(String symbolName)
          lookup)
      : _lookup = lookup;

  void store_dart_post_cobject(
    DartPostCObjectFnType ptr,
  ) {
    return _store_dart_post_cobject(
      ptr,
    );
  }

  late final _store_dart_post_cobjectPtr =
      _lookup<ffi.NativeFunction<ffi.Void Function(DartPostCObjectFnType)>>(
          'store_dart_post_cobject');
  late final _store_dart_post_cobject = _store_dart_post_cobjectPtr
      .asFunction<void Function(DartPostCObjectFnType)>();

  Object get_dart_object(
    int ptr,
  ) {
    return _get_dart_object(
      ptr,
    );
  }

  late final _get_dart_objectPtr =
      _lookup<ffi.NativeFunction<ffi.Handle Function(ffi.UintPtr)>>(
          'get_dart_object');
  late final _get_dart_object =
      _get_dart_objectPtr.asFunction<Object Function(int)>();

  void drop_dart_object(
    int ptr,
  ) {
    return _drop_dart_object(
      ptr,
    );
  }

  late final _drop_dart_objectPtr =
      _lookup<ffi.NativeFunction<ffi.Void Function(ffi.UintPtr)>>(
          'drop_dart_object');
  late final _drop_dart_object =
      _drop_dart_objectPtr.asFunction<void Function(int)>();

  int new_dart_opaque(
    Object handle,
  ) {
    return _new_dart_opaque(
      handle,
    );
  }

  late final _new_dart_opaquePtr =
      _lookup<ffi.NativeFunction<ffi.UintPtr Function(ffi.Handle)>>(
          'new_dart_opaque');
  late final _new_dart_opaque =
      _new_dart_opaquePtr.asFunction<int Function(Object)>();

  int init_frb_dart_api_dl(
    ffi.Pointer<ffi.Void> obj,
  ) {
    return _init_frb_dart_api_dl(
      obj,
    );
  }

  late final _init_frb_dart_api_dlPtr =
      _lookup<ffi.NativeFunction<ffi.IntPtr Function(ffi.Pointer<ffi.Void>)>>(
          'init_frb_dart_api_dl');
  late final _init_frb_dart_api_dl = _init_frb_dart_api_dlPtr
      .asFunction<int Function(ffi.Pointer<ffi.Void>)>();

  void wire_test_text(
    int port_,
  ) {
    return _wire_test_text(
      port_,
    );
  }

  late final _wire_test_textPtr =
      _lookup<ffi.NativeFunction<ffi.Void Function(ffi.Int64)>>(
          'wire_test_text');
  late final _wire_test_text =
      _wire_test_textPtr.asFunction<void Function(int)>();

  void wire_init(
    int port_,
    ffi.Pointer<wire_uint_8_list> config_path,
  ) {
    return _wire_init(
      port_,
      config_path,
    );
  }

  late final _wire_initPtr = _lookup<
      ffi.NativeFunction<
          ffi.Void Function(
              ffi.Int64, ffi.Pointer<wire_uint_8_list>)>>('wire_init');
  late final _wire_init = _wire_initPtr
      .asFunction<void Function(int, ffi.Pointer<wire_uint_8_list>)>();

  void wire_write(
    int port_,
    ffi.Pointer<wire_ToProcessor> msg,
  ) {
    return _wire_write(
      port_,
      msg,
    );
  }

  late final _wire_writePtr = _lookup<
      ffi.NativeFunction<
          ffi.Void Function(
              ffi.Int64, ffi.Pointer<wire_ToProcessor>)>>('wire_write');
  late final _wire_write = _wire_writePtr
      .asFunction<void Function(int, ffi.Pointer<wire_ToProcessor>)>();

  ffi.Pointer<wire_DartUiInput> new_box_autoadd_dart_ui_input_0() {
    return _new_box_autoadd_dart_ui_input_0();
  }

  late final _new_box_autoadd_dart_ui_input_0Ptr =
      _lookup<ffi.NativeFunction<ffi.Pointer<wire_DartUiInput> Function()>>(
          'new_box_autoadd_dart_ui_input_0');
  late final _new_box_autoadd_dart_ui_input_0 =
      _new_box_autoadd_dart_ui_input_0Ptr
          .asFunction<ffi.Pointer<wire_DartUiInput> Function()>();

  ffi.Pointer<wire_ToProcessor> new_box_autoadd_to_processor_0() {
    return _new_box_autoadd_to_processor_0();
  }

  late final _new_box_autoadd_to_processor_0Ptr =
      _lookup<ffi.NativeFunction<ffi.Pointer<wire_ToProcessor> Function()>>(
          'new_box_autoadd_to_processor_0');
  late final _new_box_autoadd_to_processor_0 =
      _new_box_autoadd_to_processor_0Ptr
          .asFunction<ffi.Pointer<wire_ToProcessor> Function()>();

  ffi.Pointer<wire_uint_32_list> new_uint_32_list_0(
    int len,
  ) {
    return _new_uint_32_list_0(
      len,
    );
  }

  late final _new_uint_32_list_0Ptr = _lookup<
      ffi.NativeFunction<
          ffi.Pointer<wire_uint_32_list> Function(
              ffi.Int32)>>('new_uint_32_list_0');
  late final _new_uint_32_list_0 = _new_uint_32_list_0Ptr
      .asFunction<ffi.Pointer<wire_uint_32_list> Function(int)>();

  ffi.Pointer<wire_uint_8_list> new_uint_8_list_0(
    int len,
  ) {
    return _new_uint_8_list_0(
      len,
    );
  }

  late final _new_uint_8_list_0Ptr = _lookup<
      ffi.NativeFunction<
          ffi.Pointer<wire_uint_8_list> Function(
              ffi.Int32)>>('new_uint_8_list_0');
  late final _new_uint_8_list_0 = _new_uint_8_list_0Ptr
      .asFunction<ffi.Pointer<wire_uint_8_list> Function(int)>();

  ffi.Pointer<DartUiInputKind> inflate_DartUiInput_Text() {
    return _inflate_DartUiInput_Text();
  }

  late final _inflate_DartUiInput_TextPtr =
      _lookup<ffi.NativeFunction<ffi.Pointer<DartUiInputKind> Function()>>(
          'inflate_DartUiInput_Text');
  late final _inflate_DartUiInput_Text = _inflate_DartUiInput_TextPtr
      .asFunction<ffi.Pointer<DartUiInputKind> Function()>();

  ffi.Pointer<ToProcessorKind> inflate_ToProcessor_Pair() {
    return _inflate_ToProcessor_Pair();
  }

  late final _inflate_ToProcessor_PairPtr =
      _lookup<ffi.NativeFunction<ffi.Pointer<ToProcessorKind> Function()>>(
          'inflate_ToProcessor_Pair');
  late final _inflate_ToProcessor_Pair = _inflate_ToProcessor_PairPtr
      .asFunction<ffi.Pointer<ToProcessorKind> Function()>();

  ffi.Pointer<ToProcessorKind> inflate_ToProcessor_Input() {
    return _inflate_ToProcessor_Input();
  }

  late final _inflate_ToProcessor_InputPtr =
      _lookup<ffi.NativeFunction<ffi.Pointer<ToProcessorKind> Function()>>(
          'inflate_ToProcessor_Input');
  late final _inflate_ToProcessor_Input = _inflate_ToProcessor_InputPtr
      .asFunction<ffi.Pointer<ToProcessorKind> Function()>();

  void free_WireSyncReturn(
    WireSyncReturn ptr,
  ) {
    return _free_WireSyncReturn(
      ptr,
    );
  }

  late final _free_WireSyncReturnPtr =
      _lookup<ffi.NativeFunction<ffi.Void Function(WireSyncReturn)>>(
          'free_WireSyncReturn');
  late final _free_WireSyncReturn =
      _free_WireSyncReturnPtr.asFunction<void Function(WireSyncReturn)>();
}

final class _Dart_Handle extends ffi.Opaque {}

final class wire_uint_8_list extends ffi.Struct {
  external ffi.Pointer<ffi.Uint8> ptr;

  @ffi.Int32()
  external int len;
}

final class wire_ToProcessor_Pair extends ffi.Struct {
  external ffi.Pointer<wire_uint_8_list> field0;
}

final class wire_ToProcessor_Unpair extends ffi.Opaque {}

final class wire_uint_32_list extends ffi.Struct {
  external ffi.Pointer<ffi.Uint32> ptr;

  @ffi.Int32()
  external int len;
}

final class wire_DartUiInput_Click extends ffi.Opaque {}

final class wire_DartUiInput_Text extends ffi.Struct {
  external ffi.Pointer<wire_uint_8_list> field0;
}

final class DartUiInputKind extends ffi.Union {
  external ffi.Pointer<wire_DartUiInput_Click> Click;

  external ffi.Pointer<wire_DartUiInput_Text> Text;
}

final class wire_DartUiInput extends ffi.Struct {
  @ffi.Int32()
  external int tag;

  external ffi.Pointer<DartUiInputKind> kind;
}

final class wire_ToProcessor_Input extends ffi.Struct {
  external ffi.Pointer<wire_uint_8_list> page_id;

  external ffi.Pointer<wire_uint_8_list> element_id;

  external ffi.Pointer<wire_uint_32_list> dataset_indices;

  external ffi.Pointer<wire_DartUiInput> input;
}

final class ToProcessorKind extends ffi.Union {
  external ffi.Pointer<wire_ToProcessor_Pair> Pair;

  external ffi.Pointer<wire_ToProcessor_Unpair> Unpair;

  external ffi.Pointer<wire_ToProcessor_Input> Input;
}

final class wire_ToProcessor extends ffi.Struct {
  @ffi.Int32()
  external int tag;

  external ffi.Pointer<ToProcessorKind> kind;
}

typedef DartPostCObjectFnType = ffi.Pointer<
    ffi.NativeFunction<
        ffi.Bool Function(DartPort port_id, ffi.Pointer<ffi.Void> message)>>;
typedef DartPort = ffi.Int64;

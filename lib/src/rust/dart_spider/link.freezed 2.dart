// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'link.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ToProcessor {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String field0) pair,
    required TResult Function() unpair,
    required TResult Function() generateInvite,
    required TResult Function(String pageId, String elementId,
            Uint32List datasetIndices, DartUiInput input)
        input,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String field0)? pair,
    TResult? Function()? unpair,
    TResult? Function()? generateInvite,
    TResult? Function(String pageId, String elementId,
            Uint32List datasetIndices, DartUiInput input)?
        input,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String field0)? pair,
    TResult Function()? unpair,
    TResult Function()? generateInvite,
    TResult Function(String pageId, String elementId, Uint32List datasetIndices,
            DartUiInput input)?
        input,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ToProcessor_Pair value) pair,
    required TResult Function(ToProcessor_Unpair value) unpair,
    required TResult Function(ToProcessor_GenerateInvite value) generateInvite,
    required TResult Function(ToProcessor_Input value) input,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ToProcessor_Pair value)? pair,
    TResult? Function(ToProcessor_Unpair value)? unpair,
    TResult? Function(ToProcessor_GenerateInvite value)? generateInvite,
    TResult? Function(ToProcessor_Input value)? input,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ToProcessor_Pair value)? pair,
    TResult Function(ToProcessor_Unpair value)? unpair,
    TResult Function(ToProcessor_GenerateInvite value)? generateInvite,
    TResult Function(ToProcessor_Input value)? input,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ToProcessorCopyWith<$Res> {
  factory $ToProcessorCopyWith(
          ToProcessor value, $Res Function(ToProcessor) then) =
      _$ToProcessorCopyWithImpl<$Res, ToProcessor>;
}

/// @nodoc
class _$ToProcessorCopyWithImpl<$Res, $Val extends ToProcessor>
    implements $ToProcessorCopyWith<$Res> {
  _$ToProcessorCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ToProcessor_PairImplCopyWith<$Res> {
  factory _$$ToProcessor_PairImplCopyWith(_$ToProcessor_PairImpl value,
          $Res Function(_$ToProcessor_PairImpl) then) =
      __$$ToProcessor_PairImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String field0});
}

/// @nodoc
class __$$ToProcessor_PairImplCopyWithImpl<$Res>
    extends _$ToProcessorCopyWithImpl<$Res, _$ToProcessor_PairImpl>
    implements _$$ToProcessor_PairImplCopyWith<$Res> {
  __$$ToProcessor_PairImplCopyWithImpl(_$ToProcessor_PairImpl _value,
      $Res Function(_$ToProcessor_PairImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? field0 = null,
  }) {
    return _then(_$ToProcessor_PairImpl(
      null == field0
          ? _value.field0
          : field0 // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ToProcessor_PairImpl extends ToProcessor_Pair {
  const _$ToProcessor_PairImpl(this.field0) : super._();

  @override
  final String field0;

  @override
  String toString() {
    return 'ToProcessor.pair(field0: $field0)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ToProcessor_PairImpl &&
            (identical(other.field0, field0) || other.field0 == field0));
  }

  @override
  int get hashCode => Object.hash(runtimeType, field0);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ToProcessor_PairImplCopyWith<_$ToProcessor_PairImpl> get copyWith =>
      __$$ToProcessor_PairImplCopyWithImpl<_$ToProcessor_PairImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String field0) pair,
    required TResult Function() unpair,
    required TResult Function() generateInvite,
    required TResult Function(String pageId, String elementId,
            Uint32List datasetIndices, DartUiInput input)
        input,
  }) {
    return pair(field0);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String field0)? pair,
    TResult? Function()? unpair,
    TResult? Function()? generateInvite,
    TResult? Function(String pageId, String elementId,
            Uint32List datasetIndices, DartUiInput input)?
        input,
  }) {
    return pair?.call(field0);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String field0)? pair,
    TResult Function()? unpair,
    TResult Function()? generateInvite,
    TResult Function(String pageId, String elementId, Uint32List datasetIndices,
            DartUiInput input)?
        input,
    required TResult orElse(),
  }) {
    if (pair != null) {
      return pair(field0);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ToProcessor_Pair value) pair,
    required TResult Function(ToProcessor_Unpair value) unpair,
    required TResult Function(ToProcessor_GenerateInvite value) generateInvite,
    required TResult Function(ToProcessor_Input value) input,
  }) {
    return pair(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ToProcessor_Pair value)? pair,
    TResult? Function(ToProcessor_Unpair value)? unpair,
    TResult? Function(ToProcessor_GenerateInvite value)? generateInvite,
    TResult? Function(ToProcessor_Input value)? input,
  }) {
    return pair?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ToProcessor_Pair value)? pair,
    TResult Function(ToProcessor_Unpair value)? unpair,
    TResult Function(ToProcessor_GenerateInvite value)? generateInvite,
    TResult Function(ToProcessor_Input value)? input,
    required TResult orElse(),
  }) {
    if (pair != null) {
      return pair(this);
    }
    return orElse();
  }
}

abstract class ToProcessor_Pair extends ToProcessor {
  const factory ToProcessor_Pair(final String field0) = _$ToProcessor_PairImpl;
  const ToProcessor_Pair._() : super._();

  String get field0;
  @JsonKey(ignore: true)
  _$$ToProcessor_PairImplCopyWith<_$ToProcessor_PairImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ToProcessor_UnpairImplCopyWith<$Res> {
  factory _$$ToProcessor_UnpairImplCopyWith(_$ToProcessor_UnpairImpl value,
          $Res Function(_$ToProcessor_UnpairImpl) then) =
      __$$ToProcessor_UnpairImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ToProcessor_UnpairImplCopyWithImpl<$Res>
    extends _$ToProcessorCopyWithImpl<$Res, _$ToProcessor_UnpairImpl>
    implements _$$ToProcessor_UnpairImplCopyWith<$Res> {
  __$$ToProcessor_UnpairImplCopyWithImpl(_$ToProcessor_UnpairImpl _value,
      $Res Function(_$ToProcessor_UnpairImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ToProcessor_UnpairImpl extends ToProcessor_Unpair {
  const _$ToProcessor_UnpairImpl() : super._();

  @override
  String toString() {
    return 'ToProcessor.unpair()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ToProcessor_UnpairImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String field0) pair,
    required TResult Function() unpair,
    required TResult Function() generateInvite,
    required TResult Function(String pageId, String elementId,
            Uint32List datasetIndices, DartUiInput input)
        input,
  }) {
    return unpair();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String field0)? pair,
    TResult? Function()? unpair,
    TResult? Function()? generateInvite,
    TResult? Function(String pageId, String elementId,
            Uint32List datasetIndices, DartUiInput input)?
        input,
  }) {
    return unpair?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String field0)? pair,
    TResult Function()? unpair,
    TResult Function()? generateInvite,
    TResult Function(String pageId, String elementId, Uint32List datasetIndices,
            DartUiInput input)?
        input,
    required TResult orElse(),
  }) {
    if (unpair != null) {
      return unpair();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ToProcessor_Pair value) pair,
    required TResult Function(ToProcessor_Unpair value) unpair,
    required TResult Function(ToProcessor_GenerateInvite value) generateInvite,
    required TResult Function(ToProcessor_Input value) input,
  }) {
    return unpair(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ToProcessor_Pair value)? pair,
    TResult? Function(ToProcessor_Unpair value)? unpair,
    TResult? Function(ToProcessor_GenerateInvite value)? generateInvite,
    TResult? Function(ToProcessor_Input value)? input,
  }) {
    return unpair?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ToProcessor_Pair value)? pair,
    TResult Function(ToProcessor_Unpair value)? unpair,
    TResult Function(ToProcessor_GenerateInvite value)? generateInvite,
    TResult Function(ToProcessor_Input value)? input,
    required TResult orElse(),
  }) {
    if (unpair != null) {
      return unpair(this);
    }
    return orElse();
  }
}

abstract class ToProcessor_Unpair extends ToProcessor {
  const factory ToProcessor_Unpair() = _$ToProcessor_UnpairImpl;
  const ToProcessor_Unpair._() : super._();
}

/// @nodoc
abstract class _$$ToProcessor_GenerateInviteImplCopyWith<$Res> {
  factory _$$ToProcessor_GenerateInviteImplCopyWith(
          _$ToProcessor_GenerateInviteImpl value,
          $Res Function(_$ToProcessor_GenerateInviteImpl) then) =
      __$$ToProcessor_GenerateInviteImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ToProcessor_GenerateInviteImplCopyWithImpl<$Res>
    extends _$ToProcessorCopyWithImpl<$Res, _$ToProcessor_GenerateInviteImpl>
    implements _$$ToProcessor_GenerateInviteImplCopyWith<$Res> {
  __$$ToProcessor_GenerateInviteImplCopyWithImpl(
      _$ToProcessor_GenerateInviteImpl _value,
      $Res Function(_$ToProcessor_GenerateInviteImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ToProcessor_GenerateInviteImpl extends ToProcessor_GenerateInvite {
  const _$ToProcessor_GenerateInviteImpl() : super._();

  @override
  String toString() {
    return 'ToProcessor.generateInvite()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ToProcessor_GenerateInviteImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String field0) pair,
    required TResult Function() unpair,
    required TResult Function() generateInvite,
    required TResult Function(String pageId, String elementId,
            Uint32List datasetIndices, DartUiInput input)
        input,
  }) {
    return generateInvite();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String field0)? pair,
    TResult? Function()? unpair,
    TResult? Function()? generateInvite,
    TResult? Function(String pageId, String elementId,
            Uint32List datasetIndices, DartUiInput input)?
        input,
  }) {
    return generateInvite?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String field0)? pair,
    TResult Function()? unpair,
    TResult Function()? generateInvite,
    TResult Function(String pageId, String elementId, Uint32List datasetIndices,
            DartUiInput input)?
        input,
    required TResult orElse(),
  }) {
    if (generateInvite != null) {
      return generateInvite();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ToProcessor_Pair value) pair,
    required TResult Function(ToProcessor_Unpair value) unpair,
    required TResult Function(ToProcessor_GenerateInvite value) generateInvite,
    required TResult Function(ToProcessor_Input value) input,
  }) {
    return generateInvite(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ToProcessor_Pair value)? pair,
    TResult? Function(ToProcessor_Unpair value)? unpair,
    TResult? Function(ToProcessor_GenerateInvite value)? generateInvite,
    TResult? Function(ToProcessor_Input value)? input,
  }) {
    return generateInvite?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ToProcessor_Pair value)? pair,
    TResult Function(ToProcessor_Unpair value)? unpair,
    TResult Function(ToProcessor_GenerateInvite value)? generateInvite,
    TResult Function(ToProcessor_Input value)? input,
    required TResult orElse(),
  }) {
    if (generateInvite != null) {
      return generateInvite(this);
    }
    return orElse();
  }
}

abstract class ToProcessor_GenerateInvite extends ToProcessor {
  const factory ToProcessor_GenerateInvite() = _$ToProcessor_GenerateInviteImpl;
  const ToProcessor_GenerateInvite._() : super._();
}

/// @nodoc
abstract class _$$ToProcessor_InputImplCopyWith<$Res> {
  factory _$$ToProcessor_InputImplCopyWith(_$ToProcessor_InputImpl value,
          $Res Function(_$ToProcessor_InputImpl) then) =
      __$$ToProcessor_InputImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String pageId,
      String elementId,
      Uint32List datasetIndices,
      DartUiInput input});

  $DartUiInputCopyWith<$Res> get input;
}

/// @nodoc
class __$$ToProcessor_InputImplCopyWithImpl<$Res>
    extends _$ToProcessorCopyWithImpl<$Res, _$ToProcessor_InputImpl>
    implements _$$ToProcessor_InputImplCopyWith<$Res> {
  __$$ToProcessor_InputImplCopyWithImpl(_$ToProcessor_InputImpl _value,
      $Res Function(_$ToProcessor_InputImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pageId = null,
    Object? elementId = null,
    Object? datasetIndices = null,
    Object? input = null,
  }) {
    return _then(_$ToProcessor_InputImpl(
      pageId: null == pageId
          ? _value.pageId
          : pageId // ignore: cast_nullable_to_non_nullable
              as String,
      elementId: null == elementId
          ? _value.elementId
          : elementId // ignore: cast_nullable_to_non_nullable
              as String,
      datasetIndices: null == datasetIndices
          ? _value.datasetIndices
          : datasetIndices // ignore: cast_nullable_to_non_nullable
              as Uint32List,
      input: null == input
          ? _value.input
          : input // ignore: cast_nullable_to_non_nullable
              as DartUiInput,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $DartUiInputCopyWith<$Res> get input {
    return $DartUiInputCopyWith<$Res>(_value.input, (value) {
      return _then(_value.copyWith(input: value));
    });
  }
}

/// @nodoc

class _$ToProcessor_InputImpl extends ToProcessor_Input {
  const _$ToProcessor_InputImpl(
      {required this.pageId,
      required this.elementId,
      required this.datasetIndices,
      required this.input})
      : super._();

  @override
  final String pageId;
  @override
  final String elementId;
  @override
  final Uint32List datasetIndices;
  @override
  final DartUiInput input;

  @override
  String toString() {
    return 'ToProcessor.input(pageId: $pageId, elementId: $elementId, datasetIndices: $datasetIndices, input: $input)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ToProcessor_InputImpl &&
            (identical(other.pageId, pageId) || other.pageId == pageId) &&
            (identical(other.elementId, elementId) ||
                other.elementId == elementId) &&
            const DeepCollectionEquality()
                .equals(other.datasetIndices, datasetIndices) &&
            (identical(other.input, input) || other.input == input));
  }

  @override
  int get hashCode => Object.hash(runtimeType, pageId, elementId,
      const DeepCollectionEquality().hash(datasetIndices), input);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ToProcessor_InputImplCopyWith<_$ToProcessor_InputImpl> get copyWith =>
      __$$ToProcessor_InputImplCopyWithImpl<_$ToProcessor_InputImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String field0) pair,
    required TResult Function() unpair,
    required TResult Function() generateInvite,
    required TResult Function(String pageId, String elementId,
            Uint32List datasetIndices, DartUiInput input)
        input,
  }) {
    return input(pageId, elementId, datasetIndices, this.input);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String field0)? pair,
    TResult? Function()? unpair,
    TResult? Function()? generateInvite,
    TResult? Function(String pageId, String elementId,
            Uint32List datasetIndices, DartUiInput input)?
        input,
  }) {
    return input?.call(pageId, elementId, datasetIndices, this.input);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String field0)? pair,
    TResult Function()? unpair,
    TResult Function()? generateInvite,
    TResult Function(String pageId, String elementId, Uint32List datasetIndices,
            DartUiInput input)?
        input,
    required TResult orElse(),
  }) {
    if (input != null) {
      return input(pageId, elementId, datasetIndices, this.input);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ToProcessor_Pair value) pair,
    required TResult Function(ToProcessor_Unpair value) unpair,
    required TResult Function(ToProcessor_GenerateInvite value) generateInvite,
    required TResult Function(ToProcessor_Input value) input,
  }) {
    return input(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ToProcessor_Pair value)? pair,
    TResult? Function(ToProcessor_Unpair value)? unpair,
    TResult? Function(ToProcessor_GenerateInvite value)? generateInvite,
    TResult? Function(ToProcessor_Input value)? input,
  }) {
    return input?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ToProcessor_Pair value)? pair,
    TResult Function(ToProcessor_Unpair value)? unpair,
    TResult Function(ToProcessor_GenerateInvite value)? generateInvite,
    TResult Function(ToProcessor_Input value)? input,
    required TResult orElse(),
  }) {
    if (input != null) {
      return input(this);
    }
    return orElse();
  }
}

abstract class ToProcessor_Input extends ToProcessor {
  const factory ToProcessor_Input(
      {required final String pageId,
      required final String elementId,
      required final Uint32List datasetIndices,
      required final DartUiInput input}) = _$ToProcessor_InputImpl;
  const ToProcessor_Input._() : super._();

  String get pageId;
  String get elementId;
  Uint32List get datasetIndices;
  DartUiInput get input;
  @JsonKey(ignore: true)
  _$$ToProcessor_InputImplCopyWith<_$ToProcessor_InputImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ToUi {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String field0) setId,
    required TResult Function() unpaired,
    required TResult Function(String field0) generatedInvite,
    required TResult Function(List<(String, String)> relations) pairs,
    required TResult Function(String msg) connecting,
    required TResult Function(String msg) status,
    required TResult Function(bool approved) pending,
    required TResult Function() connected,
    required TResult Function(List<String> pages) setPageOrder,
    required TResult Function(DartUiPage page) setPage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String field0)? setId,
    TResult? Function()? unpaired,
    TResult? Function(String field0)? generatedInvite,
    TResult? Function(List<(String, String)> relations)? pairs,
    TResult? Function(String msg)? connecting,
    TResult? Function(String msg)? status,
    TResult? Function(bool approved)? pending,
    TResult? Function()? connected,
    TResult? Function(List<String> pages)? setPageOrder,
    TResult? Function(DartUiPage page)? setPage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String field0)? setId,
    TResult Function()? unpaired,
    TResult Function(String field0)? generatedInvite,
    TResult Function(List<(String, String)> relations)? pairs,
    TResult Function(String msg)? connecting,
    TResult Function(String msg)? status,
    TResult Function(bool approved)? pending,
    TResult Function()? connected,
    TResult Function(List<String> pages)? setPageOrder,
    TResult Function(DartUiPage page)? setPage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ToUi_SetId value) setId,
    required TResult Function(ToUi_Unpaired value) unpaired,
    required TResult Function(ToUi_GeneratedInvite value) generatedInvite,
    required TResult Function(ToUi_Pairs value) pairs,
    required TResult Function(ToUi_Connecting value) connecting,
    required TResult Function(ToUi_Status value) status,
    required TResult Function(ToUi_Pending value) pending,
    required TResult Function(ToUi_Connected value) connected,
    required TResult Function(ToUi_SetPageOrder value) setPageOrder,
    required TResult Function(ToUi_SetPage value) setPage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ToUi_SetId value)? setId,
    TResult? Function(ToUi_Unpaired value)? unpaired,
    TResult? Function(ToUi_GeneratedInvite value)? generatedInvite,
    TResult? Function(ToUi_Pairs value)? pairs,
    TResult? Function(ToUi_Connecting value)? connecting,
    TResult? Function(ToUi_Status value)? status,
    TResult? Function(ToUi_Pending value)? pending,
    TResult? Function(ToUi_Connected value)? connected,
    TResult? Function(ToUi_SetPageOrder value)? setPageOrder,
    TResult? Function(ToUi_SetPage value)? setPage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ToUi_SetId value)? setId,
    TResult Function(ToUi_Unpaired value)? unpaired,
    TResult Function(ToUi_GeneratedInvite value)? generatedInvite,
    TResult Function(ToUi_Pairs value)? pairs,
    TResult Function(ToUi_Connecting value)? connecting,
    TResult Function(ToUi_Status value)? status,
    TResult Function(ToUi_Pending value)? pending,
    TResult Function(ToUi_Connected value)? connected,
    TResult Function(ToUi_SetPageOrder value)? setPageOrder,
    TResult Function(ToUi_SetPage value)? setPage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ToUiCopyWith<$Res> {
  factory $ToUiCopyWith(ToUi value, $Res Function(ToUi) then) =
      _$ToUiCopyWithImpl<$Res, ToUi>;
}

/// @nodoc
class _$ToUiCopyWithImpl<$Res, $Val extends ToUi>
    implements $ToUiCopyWith<$Res> {
  _$ToUiCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ToUi_SetIdImplCopyWith<$Res> {
  factory _$$ToUi_SetIdImplCopyWith(
          _$ToUi_SetIdImpl value, $Res Function(_$ToUi_SetIdImpl) then) =
      __$$ToUi_SetIdImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String field0});
}

/// @nodoc
class __$$ToUi_SetIdImplCopyWithImpl<$Res>
    extends _$ToUiCopyWithImpl<$Res, _$ToUi_SetIdImpl>
    implements _$$ToUi_SetIdImplCopyWith<$Res> {
  __$$ToUi_SetIdImplCopyWithImpl(
      _$ToUi_SetIdImpl _value, $Res Function(_$ToUi_SetIdImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? field0 = null,
  }) {
    return _then(_$ToUi_SetIdImpl(
      null == field0
          ? _value.field0
          : field0 // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ToUi_SetIdImpl extends ToUi_SetId {
  const _$ToUi_SetIdImpl(this.field0) : super._();

  @override
  final String field0;

  @override
  String toString() {
    return 'ToUi.setId(field0: $field0)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ToUi_SetIdImpl &&
            (identical(other.field0, field0) || other.field0 == field0));
  }

  @override
  int get hashCode => Object.hash(runtimeType, field0);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ToUi_SetIdImplCopyWith<_$ToUi_SetIdImpl> get copyWith =>
      __$$ToUi_SetIdImplCopyWithImpl<_$ToUi_SetIdImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String field0) setId,
    required TResult Function() unpaired,
    required TResult Function(String field0) generatedInvite,
    required TResult Function(List<(String, String)> relations) pairs,
    required TResult Function(String msg) connecting,
    required TResult Function(String msg) status,
    required TResult Function(bool approved) pending,
    required TResult Function() connected,
    required TResult Function(List<String> pages) setPageOrder,
    required TResult Function(DartUiPage page) setPage,
  }) {
    return setId(field0);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String field0)? setId,
    TResult? Function()? unpaired,
    TResult? Function(String field0)? generatedInvite,
    TResult? Function(List<(String, String)> relations)? pairs,
    TResult? Function(String msg)? connecting,
    TResult? Function(String msg)? status,
    TResult? Function(bool approved)? pending,
    TResult? Function()? connected,
    TResult? Function(List<String> pages)? setPageOrder,
    TResult? Function(DartUiPage page)? setPage,
  }) {
    return setId?.call(field0);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String field0)? setId,
    TResult Function()? unpaired,
    TResult Function(String field0)? generatedInvite,
    TResult Function(List<(String, String)> relations)? pairs,
    TResult Function(String msg)? connecting,
    TResult Function(String msg)? status,
    TResult Function(bool approved)? pending,
    TResult Function()? connected,
    TResult Function(List<String> pages)? setPageOrder,
    TResult Function(DartUiPage page)? setPage,
    required TResult orElse(),
  }) {
    if (setId != null) {
      return setId(field0);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ToUi_SetId value) setId,
    required TResult Function(ToUi_Unpaired value) unpaired,
    required TResult Function(ToUi_GeneratedInvite value) generatedInvite,
    required TResult Function(ToUi_Pairs value) pairs,
    required TResult Function(ToUi_Connecting value) connecting,
    required TResult Function(ToUi_Status value) status,
    required TResult Function(ToUi_Pending value) pending,
    required TResult Function(ToUi_Connected value) connected,
    required TResult Function(ToUi_SetPageOrder value) setPageOrder,
    required TResult Function(ToUi_SetPage value) setPage,
  }) {
    return setId(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ToUi_SetId value)? setId,
    TResult? Function(ToUi_Unpaired value)? unpaired,
    TResult? Function(ToUi_GeneratedInvite value)? generatedInvite,
    TResult? Function(ToUi_Pairs value)? pairs,
    TResult? Function(ToUi_Connecting value)? connecting,
    TResult? Function(ToUi_Status value)? status,
    TResult? Function(ToUi_Pending value)? pending,
    TResult? Function(ToUi_Connected value)? connected,
    TResult? Function(ToUi_SetPageOrder value)? setPageOrder,
    TResult? Function(ToUi_SetPage value)? setPage,
  }) {
    return setId?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ToUi_SetId value)? setId,
    TResult Function(ToUi_Unpaired value)? unpaired,
    TResult Function(ToUi_GeneratedInvite value)? generatedInvite,
    TResult Function(ToUi_Pairs value)? pairs,
    TResult Function(ToUi_Connecting value)? connecting,
    TResult Function(ToUi_Status value)? status,
    TResult Function(ToUi_Pending value)? pending,
    TResult Function(ToUi_Connected value)? connected,
    TResult Function(ToUi_SetPageOrder value)? setPageOrder,
    TResult Function(ToUi_SetPage value)? setPage,
    required TResult orElse(),
  }) {
    if (setId != null) {
      return setId(this);
    }
    return orElse();
  }
}

abstract class ToUi_SetId extends ToUi {
  const factory ToUi_SetId(final String field0) = _$ToUi_SetIdImpl;
  const ToUi_SetId._() : super._();

  String get field0;
  @JsonKey(ignore: true)
  _$$ToUi_SetIdImplCopyWith<_$ToUi_SetIdImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ToUi_UnpairedImplCopyWith<$Res> {
  factory _$$ToUi_UnpairedImplCopyWith(
          _$ToUi_UnpairedImpl value, $Res Function(_$ToUi_UnpairedImpl) then) =
      __$$ToUi_UnpairedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ToUi_UnpairedImplCopyWithImpl<$Res>
    extends _$ToUiCopyWithImpl<$Res, _$ToUi_UnpairedImpl>
    implements _$$ToUi_UnpairedImplCopyWith<$Res> {
  __$$ToUi_UnpairedImplCopyWithImpl(
      _$ToUi_UnpairedImpl _value, $Res Function(_$ToUi_UnpairedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ToUi_UnpairedImpl extends ToUi_Unpaired {
  const _$ToUi_UnpairedImpl() : super._();

  @override
  String toString() {
    return 'ToUi.unpaired()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ToUi_UnpairedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String field0) setId,
    required TResult Function() unpaired,
    required TResult Function(String field0) generatedInvite,
    required TResult Function(List<(String, String)> relations) pairs,
    required TResult Function(String msg) connecting,
    required TResult Function(String msg) status,
    required TResult Function(bool approved) pending,
    required TResult Function() connected,
    required TResult Function(List<String> pages) setPageOrder,
    required TResult Function(DartUiPage page) setPage,
  }) {
    return unpaired();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String field0)? setId,
    TResult? Function()? unpaired,
    TResult? Function(String field0)? generatedInvite,
    TResult? Function(List<(String, String)> relations)? pairs,
    TResult? Function(String msg)? connecting,
    TResult? Function(String msg)? status,
    TResult? Function(bool approved)? pending,
    TResult? Function()? connected,
    TResult? Function(List<String> pages)? setPageOrder,
    TResult? Function(DartUiPage page)? setPage,
  }) {
    return unpaired?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String field0)? setId,
    TResult Function()? unpaired,
    TResult Function(String field0)? generatedInvite,
    TResult Function(List<(String, String)> relations)? pairs,
    TResult Function(String msg)? connecting,
    TResult Function(String msg)? status,
    TResult Function(bool approved)? pending,
    TResult Function()? connected,
    TResult Function(List<String> pages)? setPageOrder,
    TResult Function(DartUiPage page)? setPage,
    required TResult orElse(),
  }) {
    if (unpaired != null) {
      return unpaired();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ToUi_SetId value) setId,
    required TResult Function(ToUi_Unpaired value) unpaired,
    required TResult Function(ToUi_GeneratedInvite value) generatedInvite,
    required TResult Function(ToUi_Pairs value) pairs,
    required TResult Function(ToUi_Connecting value) connecting,
    required TResult Function(ToUi_Status value) status,
    required TResult Function(ToUi_Pending value) pending,
    required TResult Function(ToUi_Connected value) connected,
    required TResult Function(ToUi_SetPageOrder value) setPageOrder,
    required TResult Function(ToUi_SetPage value) setPage,
  }) {
    return unpaired(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ToUi_SetId value)? setId,
    TResult? Function(ToUi_Unpaired value)? unpaired,
    TResult? Function(ToUi_GeneratedInvite value)? generatedInvite,
    TResult? Function(ToUi_Pairs value)? pairs,
    TResult? Function(ToUi_Connecting value)? connecting,
    TResult? Function(ToUi_Status value)? status,
    TResult? Function(ToUi_Pending value)? pending,
    TResult? Function(ToUi_Connected value)? connected,
    TResult? Function(ToUi_SetPageOrder value)? setPageOrder,
    TResult? Function(ToUi_SetPage value)? setPage,
  }) {
    return unpaired?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ToUi_SetId value)? setId,
    TResult Function(ToUi_Unpaired value)? unpaired,
    TResult Function(ToUi_GeneratedInvite value)? generatedInvite,
    TResult Function(ToUi_Pairs value)? pairs,
    TResult Function(ToUi_Connecting value)? connecting,
    TResult Function(ToUi_Status value)? status,
    TResult Function(ToUi_Pending value)? pending,
    TResult Function(ToUi_Connected value)? connected,
    TResult Function(ToUi_SetPageOrder value)? setPageOrder,
    TResult Function(ToUi_SetPage value)? setPage,
    required TResult orElse(),
  }) {
    if (unpaired != null) {
      return unpaired(this);
    }
    return orElse();
  }
}

abstract class ToUi_Unpaired extends ToUi {
  const factory ToUi_Unpaired() = _$ToUi_UnpairedImpl;
  const ToUi_Unpaired._() : super._();
}

/// @nodoc
abstract class _$$ToUi_GeneratedInviteImplCopyWith<$Res> {
  factory _$$ToUi_GeneratedInviteImplCopyWith(_$ToUi_GeneratedInviteImpl value,
          $Res Function(_$ToUi_GeneratedInviteImpl) then) =
      __$$ToUi_GeneratedInviteImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String field0});
}

/// @nodoc
class __$$ToUi_GeneratedInviteImplCopyWithImpl<$Res>
    extends _$ToUiCopyWithImpl<$Res, _$ToUi_GeneratedInviteImpl>
    implements _$$ToUi_GeneratedInviteImplCopyWith<$Res> {
  __$$ToUi_GeneratedInviteImplCopyWithImpl(_$ToUi_GeneratedInviteImpl _value,
      $Res Function(_$ToUi_GeneratedInviteImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? field0 = null,
  }) {
    return _then(_$ToUi_GeneratedInviteImpl(
      null == field0
          ? _value.field0
          : field0 // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ToUi_GeneratedInviteImpl extends ToUi_GeneratedInvite {
  const _$ToUi_GeneratedInviteImpl(this.field0) : super._();

  @override
  final String field0;

  @override
  String toString() {
    return 'ToUi.generatedInvite(field0: $field0)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ToUi_GeneratedInviteImpl &&
            (identical(other.field0, field0) || other.field0 == field0));
  }

  @override
  int get hashCode => Object.hash(runtimeType, field0);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ToUi_GeneratedInviteImplCopyWith<_$ToUi_GeneratedInviteImpl>
      get copyWith =>
          __$$ToUi_GeneratedInviteImplCopyWithImpl<_$ToUi_GeneratedInviteImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String field0) setId,
    required TResult Function() unpaired,
    required TResult Function(String field0) generatedInvite,
    required TResult Function(List<(String, String)> relations) pairs,
    required TResult Function(String msg) connecting,
    required TResult Function(String msg) status,
    required TResult Function(bool approved) pending,
    required TResult Function() connected,
    required TResult Function(List<String> pages) setPageOrder,
    required TResult Function(DartUiPage page) setPage,
  }) {
    return generatedInvite(field0);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String field0)? setId,
    TResult? Function()? unpaired,
    TResult? Function(String field0)? generatedInvite,
    TResult? Function(List<(String, String)> relations)? pairs,
    TResult? Function(String msg)? connecting,
    TResult? Function(String msg)? status,
    TResult? Function(bool approved)? pending,
    TResult? Function()? connected,
    TResult? Function(List<String> pages)? setPageOrder,
    TResult? Function(DartUiPage page)? setPage,
  }) {
    return generatedInvite?.call(field0);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String field0)? setId,
    TResult Function()? unpaired,
    TResult Function(String field0)? generatedInvite,
    TResult Function(List<(String, String)> relations)? pairs,
    TResult Function(String msg)? connecting,
    TResult Function(String msg)? status,
    TResult Function(bool approved)? pending,
    TResult Function()? connected,
    TResult Function(List<String> pages)? setPageOrder,
    TResult Function(DartUiPage page)? setPage,
    required TResult orElse(),
  }) {
    if (generatedInvite != null) {
      return generatedInvite(field0);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ToUi_SetId value) setId,
    required TResult Function(ToUi_Unpaired value) unpaired,
    required TResult Function(ToUi_GeneratedInvite value) generatedInvite,
    required TResult Function(ToUi_Pairs value) pairs,
    required TResult Function(ToUi_Connecting value) connecting,
    required TResult Function(ToUi_Status value) status,
    required TResult Function(ToUi_Pending value) pending,
    required TResult Function(ToUi_Connected value) connected,
    required TResult Function(ToUi_SetPageOrder value) setPageOrder,
    required TResult Function(ToUi_SetPage value) setPage,
  }) {
    return generatedInvite(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ToUi_SetId value)? setId,
    TResult? Function(ToUi_Unpaired value)? unpaired,
    TResult? Function(ToUi_GeneratedInvite value)? generatedInvite,
    TResult? Function(ToUi_Pairs value)? pairs,
    TResult? Function(ToUi_Connecting value)? connecting,
    TResult? Function(ToUi_Status value)? status,
    TResult? Function(ToUi_Pending value)? pending,
    TResult? Function(ToUi_Connected value)? connected,
    TResult? Function(ToUi_SetPageOrder value)? setPageOrder,
    TResult? Function(ToUi_SetPage value)? setPage,
  }) {
    return generatedInvite?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ToUi_SetId value)? setId,
    TResult Function(ToUi_Unpaired value)? unpaired,
    TResult Function(ToUi_GeneratedInvite value)? generatedInvite,
    TResult Function(ToUi_Pairs value)? pairs,
    TResult Function(ToUi_Connecting value)? connecting,
    TResult Function(ToUi_Status value)? status,
    TResult Function(ToUi_Pending value)? pending,
    TResult Function(ToUi_Connected value)? connected,
    TResult Function(ToUi_SetPageOrder value)? setPageOrder,
    TResult Function(ToUi_SetPage value)? setPage,
    required TResult orElse(),
  }) {
    if (generatedInvite != null) {
      return generatedInvite(this);
    }
    return orElse();
  }
}

abstract class ToUi_GeneratedInvite extends ToUi {
  const factory ToUi_GeneratedInvite(final String field0) =
      _$ToUi_GeneratedInviteImpl;
  const ToUi_GeneratedInvite._() : super._();

  String get field0;
  @JsonKey(ignore: true)
  _$$ToUi_GeneratedInviteImplCopyWith<_$ToUi_GeneratedInviteImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ToUi_PairsImplCopyWith<$Res> {
  factory _$$ToUi_PairsImplCopyWith(
          _$ToUi_PairsImpl value, $Res Function(_$ToUi_PairsImpl) then) =
      __$$ToUi_PairsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<(String, String)> relations});
}

/// @nodoc
class __$$ToUi_PairsImplCopyWithImpl<$Res>
    extends _$ToUiCopyWithImpl<$Res, _$ToUi_PairsImpl>
    implements _$$ToUi_PairsImplCopyWith<$Res> {
  __$$ToUi_PairsImplCopyWithImpl(
      _$ToUi_PairsImpl _value, $Res Function(_$ToUi_PairsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? relations = null,
  }) {
    return _then(_$ToUi_PairsImpl(
      relations: null == relations
          ? _value._relations
          : relations // ignore: cast_nullable_to_non_nullable
              as List<(String, String)>,
    ));
  }
}

/// @nodoc

class _$ToUi_PairsImpl extends ToUi_Pairs {
  const _$ToUi_PairsImpl({required final List<(String, String)> relations})
      : _relations = relations,
        super._();

  final List<(String, String)> _relations;
  @override
  List<(String, String)> get relations {
    if (_relations is EqualUnmodifiableListView) return _relations;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_relations);
  }

  @override
  String toString() {
    return 'ToUi.pairs(relations: $relations)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ToUi_PairsImpl &&
            const DeepCollectionEquality()
                .equals(other._relations, _relations));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_relations));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ToUi_PairsImplCopyWith<_$ToUi_PairsImpl> get copyWith =>
      __$$ToUi_PairsImplCopyWithImpl<_$ToUi_PairsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String field0) setId,
    required TResult Function() unpaired,
    required TResult Function(String field0) generatedInvite,
    required TResult Function(List<(String, String)> relations) pairs,
    required TResult Function(String msg) connecting,
    required TResult Function(String msg) status,
    required TResult Function(bool approved) pending,
    required TResult Function() connected,
    required TResult Function(List<String> pages) setPageOrder,
    required TResult Function(DartUiPage page) setPage,
  }) {
    return pairs(relations);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String field0)? setId,
    TResult? Function()? unpaired,
    TResult? Function(String field0)? generatedInvite,
    TResult? Function(List<(String, String)> relations)? pairs,
    TResult? Function(String msg)? connecting,
    TResult? Function(String msg)? status,
    TResult? Function(bool approved)? pending,
    TResult? Function()? connected,
    TResult? Function(List<String> pages)? setPageOrder,
    TResult? Function(DartUiPage page)? setPage,
  }) {
    return pairs?.call(relations);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String field0)? setId,
    TResult Function()? unpaired,
    TResult Function(String field0)? generatedInvite,
    TResult Function(List<(String, String)> relations)? pairs,
    TResult Function(String msg)? connecting,
    TResult Function(String msg)? status,
    TResult Function(bool approved)? pending,
    TResult Function()? connected,
    TResult Function(List<String> pages)? setPageOrder,
    TResult Function(DartUiPage page)? setPage,
    required TResult orElse(),
  }) {
    if (pairs != null) {
      return pairs(relations);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ToUi_SetId value) setId,
    required TResult Function(ToUi_Unpaired value) unpaired,
    required TResult Function(ToUi_GeneratedInvite value) generatedInvite,
    required TResult Function(ToUi_Pairs value) pairs,
    required TResult Function(ToUi_Connecting value) connecting,
    required TResult Function(ToUi_Status value) status,
    required TResult Function(ToUi_Pending value) pending,
    required TResult Function(ToUi_Connected value) connected,
    required TResult Function(ToUi_SetPageOrder value) setPageOrder,
    required TResult Function(ToUi_SetPage value) setPage,
  }) {
    return pairs(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ToUi_SetId value)? setId,
    TResult? Function(ToUi_Unpaired value)? unpaired,
    TResult? Function(ToUi_GeneratedInvite value)? generatedInvite,
    TResult? Function(ToUi_Pairs value)? pairs,
    TResult? Function(ToUi_Connecting value)? connecting,
    TResult? Function(ToUi_Status value)? status,
    TResult? Function(ToUi_Pending value)? pending,
    TResult? Function(ToUi_Connected value)? connected,
    TResult? Function(ToUi_SetPageOrder value)? setPageOrder,
    TResult? Function(ToUi_SetPage value)? setPage,
  }) {
    return pairs?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ToUi_SetId value)? setId,
    TResult Function(ToUi_Unpaired value)? unpaired,
    TResult Function(ToUi_GeneratedInvite value)? generatedInvite,
    TResult Function(ToUi_Pairs value)? pairs,
    TResult Function(ToUi_Connecting value)? connecting,
    TResult Function(ToUi_Status value)? status,
    TResult Function(ToUi_Pending value)? pending,
    TResult Function(ToUi_Connected value)? connected,
    TResult Function(ToUi_SetPageOrder value)? setPageOrder,
    TResult Function(ToUi_SetPage value)? setPage,
    required TResult orElse(),
  }) {
    if (pairs != null) {
      return pairs(this);
    }
    return orElse();
  }
}

abstract class ToUi_Pairs extends ToUi {
  const factory ToUi_Pairs({required final List<(String, String)> relations}) =
      _$ToUi_PairsImpl;
  const ToUi_Pairs._() : super._();

  List<(String, String)> get relations;
  @JsonKey(ignore: true)
  _$$ToUi_PairsImplCopyWith<_$ToUi_PairsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ToUi_ConnectingImplCopyWith<$Res> {
  factory _$$ToUi_ConnectingImplCopyWith(_$ToUi_ConnectingImpl value,
          $Res Function(_$ToUi_ConnectingImpl) then) =
      __$$ToUi_ConnectingImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String msg});
}

/// @nodoc
class __$$ToUi_ConnectingImplCopyWithImpl<$Res>
    extends _$ToUiCopyWithImpl<$Res, _$ToUi_ConnectingImpl>
    implements _$$ToUi_ConnectingImplCopyWith<$Res> {
  __$$ToUi_ConnectingImplCopyWithImpl(
      _$ToUi_ConnectingImpl _value, $Res Function(_$ToUi_ConnectingImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? msg = null,
  }) {
    return _then(_$ToUi_ConnectingImpl(
      msg: null == msg
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ToUi_ConnectingImpl extends ToUi_Connecting {
  const _$ToUi_ConnectingImpl({required this.msg}) : super._();

  @override
  final String msg;

  @override
  String toString() {
    return 'ToUi.connecting(msg: $msg)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ToUi_ConnectingImpl &&
            (identical(other.msg, msg) || other.msg == msg));
  }

  @override
  int get hashCode => Object.hash(runtimeType, msg);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ToUi_ConnectingImplCopyWith<_$ToUi_ConnectingImpl> get copyWith =>
      __$$ToUi_ConnectingImplCopyWithImpl<_$ToUi_ConnectingImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String field0) setId,
    required TResult Function() unpaired,
    required TResult Function(String field0) generatedInvite,
    required TResult Function(List<(String, String)> relations) pairs,
    required TResult Function(String msg) connecting,
    required TResult Function(String msg) status,
    required TResult Function(bool approved) pending,
    required TResult Function() connected,
    required TResult Function(List<String> pages) setPageOrder,
    required TResult Function(DartUiPage page) setPage,
  }) {
    return connecting(msg);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String field0)? setId,
    TResult? Function()? unpaired,
    TResult? Function(String field0)? generatedInvite,
    TResult? Function(List<(String, String)> relations)? pairs,
    TResult? Function(String msg)? connecting,
    TResult? Function(String msg)? status,
    TResult? Function(bool approved)? pending,
    TResult? Function()? connected,
    TResult? Function(List<String> pages)? setPageOrder,
    TResult? Function(DartUiPage page)? setPage,
  }) {
    return connecting?.call(msg);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String field0)? setId,
    TResult Function()? unpaired,
    TResult Function(String field0)? generatedInvite,
    TResult Function(List<(String, String)> relations)? pairs,
    TResult Function(String msg)? connecting,
    TResult Function(String msg)? status,
    TResult Function(bool approved)? pending,
    TResult Function()? connected,
    TResult Function(List<String> pages)? setPageOrder,
    TResult Function(DartUiPage page)? setPage,
    required TResult orElse(),
  }) {
    if (connecting != null) {
      return connecting(msg);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ToUi_SetId value) setId,
    required TResult Function(ToUi_Unpaired value) unpaired,
    required TResult Function(ToUi_GeneratedInvite value) generatedInvite,
    required TResult Function(ToUi_Pairs value) pairs,
    required TResult Function(ToUi_Connecting value) connecting,
    required TResult Function(ToUi_Status value) status,
    required TResult Function(ToUi_Pending value) pending,
    required TResult Function(ToUi_Connected value) connected,
    required TResult Function(ToUi_SetPageOrder value) setPageOrder,
    required TResult Function(ToUi_SetPage value) setPage,
  }) {
    return connecting(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ToUi_SetId value)? setId,
    TResult? Function(ToUi_Unpaired value)? unpaired,
    TResult? Function(ToUi_GeneratedInvite value)? generatedInvite,
    TResult? Function(ToUi_Pairs value)? pairs,
    TResult? Function(ToUi_Connecting value)? connecting,
    TResult? Function(ToUi_Status value)? status,
    TResult? Function(ToUi_Pending value)? pending,
    TResult? Function(ToUi_Connected value)? connected,
    TResult? Function(ToUi_SetPageOrder value)? setPageOrder,
    TResult? Function(ToUi_SetPage value)? setPage,
  }) {
    return connecting?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ToUi_SetId value)? setId,
    TResult Function(ToUi_Unpaired value)? unpaired,
    TResult Function(ToUi_GeneratedInvite value)? generatedInvite,
    TResult Function(ToUi_Pairs value)? pairs,
    TResult Function(ToUi_Connecting value)? connecting,
    TResult Function(ToUi_Status value)? status,
    TResult Function(ToUi_Pending value)? pending,
    TResult Function(ToUi_Connected value)? connected,
    TResult Function(ToUi_SetPageOrder value)? setPageOrder,
    TResult Function(ToUi_SetPage value)? setPage,
    required TResult orElse(),
  }) {
    if (connecting != null) {
      return connecting(this);
    }
    return orElse();
  }
}

abstract class ToUi_Connecting extends ToUi {
  const factory ToUi_Connecting({required final String msg}) =
      _$ToUi_ConnectingImpl;
  const ToUi_Connecting._() : super._();

  String get msg;
  @JsonKey(ignore: true)
  _$$ToUi_ConnectingImplCopyWith<_$ToUi_ConnectingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ToUi_StatusImplCopyWith<$Res> {
  factory _$$ToUi_StatusImplCopyWith(
          _$ToUi_StatusImpl value, $Res Function(_$ToUi_StatusImpl) then) =
      __$$ToUi_StatusImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String msg});
}

/// @nodoc
class __$$ToUi_StatusImplCopyWithImpl<$Res>
    extends _$ToUiCopyWithImpl<$Res, _$ToUi_StatusImpl>
    implements _$$ToUi_StatusImplCopyWith<$Res> {
  __$$ToUi_StatusImplCopyWithImpl(
      _$ToUi_StatusImpl _value, $Res Function(_$ToUi_StatusImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? msg = null,
  }) {
    return _then(_$ToUi_StatusImpl(
      msg: null == msg
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ToUi_StatusImpl extends ToUi_Status {
  const _$ToUi_StatusImpl({required this.msg}) : super._();

  @override
  final String msg;

  @override
  String toString() {
    return 'ToUi.status(msg: $msg)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ToUi_StatusImpl &&
            (identical(other.msg, msg) || other.msg == msg));
  }

  @override
  int get hashCode => Object.hash(runtimeType, msg);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ToUi_StatusImplCopyWith<_$ToUi_StatusImpl> get copyWith =>
      __$$ToUi_StatusImplCopyWithImpl<_$ToUi_StatusImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String field0) setId,
    required TResult Function() unpaired,
    required TResult Function(String field0) generatedInvite,
    required TResult Function(List<(String, String)> relations) pairs,
    required TResult Function(String msg) connecting,
    required TResult Function(String msg) status,
    required TResult Function(bool approved) pending,
    required TResult Function() connected,
    required TResult Function(List<String> pages) setPageOrder,
    required TResult Function(DartUiPage page) setPage,
  }) {
    return status(msg);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String field0)? setId,
    TResult? Function()? unpaired,
    TResult? Function(String field0)? generatedInvite,
    TResult? Function(List<(String, String)> relations)? pairs,
    TResult? Function(String msg)? connecting,
    TResult? Function(String msg)? status,
    TResult? Function(bool approved)? pending,
    TResult? Function()? connected,
    TResult? Function(List<String> pages)? setPageOrder,
    TResult? Function(DartUiPage page)? setPage,
  }) {
    return status?.call(msg);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String field0)? setId,
    TResult Function()? unpaired,
    TResult Function(String field0)? generatedInvite,
    TResult Function(List<(String, String)> relations)? pairs,
    TResult Function(String msg)? connecting,
    TResult Function(String msg)? status,
    TResult Function(bool approved)? pending,
    TResult Function()? connected,
    TResult Function(List<String> pages)? setPageOrder,
    TResult Function(DartUiPage page)? setPage,
    required TResult orElse(),
  }) {
    if (status != null) {
      return status(msg);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ToUi_SetId value) setId,
    required TResult Function(ToUi_Unpaired value) unpaired,
    required TResult Function(ToUi_GeneratedInvite value) generatedInvite,
    required TResult Function(ToUi_Pairs value) pairs,
    required TResult Function(ToUi_Connecting value) connecting,
    required TResult Function(ToUi_Status value) status,
    required TResult Function(ToUi_Pending value) pending,
    required TResult Function(ToUi_Connected value) connected,
    required TResult Function(ToUi_SetPageOrder value) setPageOrder,
    required TResult Function(ToUi_SetPage value) setPage,
  }) {
    return status(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ToUi_SetId value)? setId,
    TResult? Function(ToUi_Unpaired value)? unpaired,
    TResult? Function(ToUi_GeneratedInvite value)? generatedInvite,
    TResult? Function(ToUi_Pairs value)? pairs,
    TResult? Function(ToUi_Connecting value)? connecting,
    TResult? Function(ToUi_Status value)? status,
    TResult? Function(ToUi_Pending value)? pending,
    TResult? Function(ToUi_Connected value)? connected,
    TResult? Function(ToUi_SetPageOrder value)? setPageOrder,
    TResult? Function(ToUi_SetPage value)? setPage,
  }) {
    return status?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ToUi_SetId value)? setId,
    TResult Function(ToUi_Unpaired value)? unpaired,
    TResult Function(ToUi_GeneratedInvite value)? generatedInvite,
    TResult Function(ToUi_Pairs value)? pairs,
    TResult Function(ToUi_Connecting value)? connecting,
    TResult Function(ToUi_Status value)? status,
    TResult Function(ToUi_Pending value)? pending,
    TResult Function(ToUi_Connected value)? connected,
    TResult Function(ToUi_SetPageOrder value)? setPageOrder,
    TResult Function(ToUi_SetPage value)? setPage,
    required TResult orElse(),
  }) {
    if (status != null) {
      return status(this);
    }
    return orElse();
  }
}

abstract class ToUi_Status extends ToUi {
  const factory ToUi_Status({required final String msg}) = _$ToUi_StatusImpl;
  const ToUi_Status._() : super._();

  String get msg;
  @JsonKey(ignore: true)
  _$$ToUi_StatusImplCopyWith<_$ToUi_StatusImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ToUi_PendingImplCopyWith<$Res> {
  factory _$$ToUi_PendingImplCopyWith(
          _$ToUi_PendingImpl value, $Res Function(_$ToUi_PendingImpl) then) =
      __$$ToUi_PendingImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool approved});
}

/// @nodoc
class __$$ToUi_PendingImplCopyWithImpl<$Res>
    extends _$ToUiCopyWithImpl<$Res, _$ToUi_PendingImpl>
    implements _$$ToUi_PendingImplCopyWith<$Res> {
  __$$ToUi_PendingImplCopyWithImpl(
      _$ToUi_PendingImpl _value, $Res Function(_$ToUi_PendingImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? approved = null,
  }) {
    return _then(_$ToUi_PendingImpl(
      approved: null == approved
          ? _value.approved
          : approved // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$ToUi_PendingImpl extends ToUi_Pending {
  const _$ToUi_PendingImpl({required this.approved}) : super._();

  @override
  final bool approved;

  @override
  String toString() {
    return 'ToUi.pending(approved: $approved)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ToUi_PendingImpl &&
            (identical(other.approved, approved) ||
                other.approved == approved));
  }

  @override
  int get hashCode => Object.hash(runtimeType, approved);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ToUi_PendingImplCopyWith<_$ToUi_PendingImpl> get copyWith =>
      __$$ToUi_PendingImplCopyWithImpl<_$ToUi_PendingImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String field0) setId,
    required TResult Function() unpaired,
    required TResult Function(String field0) generatedInvite,
    required TResult Function(List<(String, String)> relations) pairs,
    required TResult Function(String msg) connecting,
    required TResult Function(String msg) status,
    required TResult Function(bool approved) pending,
    required TResult Function() connected,
    required TResult Function(List<String> pages) setPageOrder,
    required TResult Function(DartUiPage page) setPage,
  }) {
    return pending(approved);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String field0)? setId,
    TResult? Function()? unpaired,
    TResult? Function(String field0)? generatedInvite,
    TResult? Function(List<(String, String)> relations)? pairs,
    TResult? Function(String msg)? connecting,
    TResult? Function(String msg)? status,
    TResult? Function(bool approved)? pending,
    TResult? Function()? connected,
    TResult? Function(List<String> pages)? setPageOrder,
    TResult? Function(DartUiPage page)? setPage,
  }) {
    return pending?.call(approved);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String field0)? setId,
    TResult Function()? unpaired,
    TResult Function(String field0)? generatedInvite,
    TResult Function(List<(String, String)> relations)? pairs,
    TResult Function(String msg)? connecting,
    TResult Function(String msg)? status,
    TResult Function(bool approved)? pending,
    TResult Function()? connected,
    TResult Function(List<String> pages)? setPageOrder,
    TResult Function(DartUiPage page)? setPage,
    required TResult orElse(),
  }) {
    if (pending != null) {
      return pending(approved);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ToUi_SetId value) setId,
    required TResult Function(ToUi_Unpaired value) unpaired,
    required TResult Function(ToUi_GeneratedInvite value) generatedInvite,
    required TResult Function(ToUi_Pairs value) pairs,
    required TResult Function(ToUi_Connecting value) connecting,
    required TResult Function(ToUi_Status value) status,
    required TResult Function(ToUi_Pending value) pending,
    required TResult Function(ToUi_Connected value) connected,
    required TResult Function(ToUi_SetPageOrder value) setPageOrder,
    required TResult Function(ToUi_SetPage value) setPage,
  }) {
    return pending(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ToUi_SetId value)? setId,
    TResult? Function(ToUi_Unpaired value)? unpaired,
    TResult? Function(ToUi_GeneratedInvite value)? generatedInvite,
    TResult? Function(ToUi_Pairs value)? pairs,
    TResult? Function(ToUi_Connecting value)? connecting,
    TResult? Function(ToUi_Status value)? status,
    TResult? Function(ToUi_Pending value)? pending,
    TResult? Function(ToUi_Connected value)? connected,
    TResult? Function(ToUi_SetPageOrder value)? setPageOrder,
    TResult? Function(ToUi_SetPage value)? setPage,
  }) {
    return pending?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ToUi_SetId value)? setId,
    TResult Function(ToUi_Unpaired value)? unpaired,
    TResult Function(ToUi_GeneratedInvite value)? generatedInvite,
    TResult Function(ToUi_Pairs value)? pairs,
    TResult Function(ToUi_Connecting value)? connecting,
    TResult Function(ToUi_Status value)? status,
    TResult Function(ToUi_Pending value)? pending,
    TResult Function(ToUi_Connected value)? connected,
    TResult Function(ToUi_SetPageOrder value)? setPageOrder,
    TResult Function(ToUi_SetPage value)? setPage,
    required TResult orElse(),
  }) {
    if (pending != null) {
      return pending(this);
    }
    return orElse();
  }
}

abstract class ToUi_Pending extends ToUi {
  const factory ToUi_Pending({required final bool approved}) =
      _$ToUi_PendingImpl;
  const ToUi_Pending._() : super._();

  bool get approved;
  @JsonKey(ignore: true)
  _$$ToUi_PendingImplCopyWith<_$ToUi_PendingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ToUi_ConnectedImplCopyWith<$Res> {
  factory _$$ToUi_ConnectedImplCopyWith(_$ToUi_ConnectedImpl value,
          $Res Function(_$ToUi_ConnectedImpl) then) =
      __$$ToUi_ConnectedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ToUi_ConnectedImplCopyWithImpl<$Res>
    extends _$ToUiCopyWithImpl<$Res, _$ToUi_ConnectedImpl>
    implements _$$ToUi_ConnectedImplCopyWith<$Res> {
  __$$ToUi_ConnectedImplCopyWithImpl(
      _$ToUi_ConnectedImpl _value, $Res Function(_$ToUi_ConnectedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ToUi_ConnectedImpl extends ToUi_Connected {
  const _$ToUi_ConnectedImpl() : super._();

  @override
  String toString() {
    return 'ToUi.connected()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ToUi_ConnectedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String field0) setId,
    required TResult Function() unpaired,
    required TResult Function(String field0) generatedInvite,
    required TResult Function(List<(String, String)> relations) pairs,
    required TResult Function(String msg) connecting,
    required TResult Function(String msg) status,
    required TResult Function(bool approved) pending,
    required TResult Function() connected,
    required TResult Function(List<String> pages) setPageOrder,
    required TResult Function(DartUiPage page) setPage,
  }) {
    return connected();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String field0)? setId,
    TResult? Function()? unpaired,
    TResult? Function(String field0)? generatedInvite,
    TResult? Function(List<(String, String)> relations)? pairs,
    TResult? Function(String msg)? connecting,
    TResult? Function(String msg)? status,
    TResult? Function(bool approved)? pending,
    TResult? Function()? connected,
    TResult? Function(List<String> pages)? setPageOrder,
    TResult? Function(DartUiPage page)? setPage,
  }) {
    return connected?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String field0)? setId,
    TResult Function()? unpaired,
    TResult Function(String field0)? generatedInvite,
    TResult Function(List<(String, String)> relations)? pairs,
    TResult Function(String msg)? connecting,
    TResult Function(String msg)? status,
    TResult Function(bool approved)? pending,
    TResult Function()? connected,
    TResult Function(List<String> pages)? setPageOrder,
    TResult Function(DartUiPage page)? setPage,
    required TResult orElse(),
  }) {
    if (connected != null) {
      return connected();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ToUi_SetId value) setId,
    required TResult Function(ToUi_Unpaired value) unpaired,
    required TResult Function(ToUi_GeneratedInvite value) generatedInvite,
    required TResult Function(ToUi_Pairs value) pairs,
    required TResult Function(ToUi_Connecting value) connecting,
    required TResult Function(ToUi_Status value) status,
    required TResult Function(ToUi_Pending value) pending,
    required TResult Function(ToUi_Connected value) connected,
    required TResult Function(ToUi_SetPageOrder value) setPageOrder,
    required TResult Function(ToUi_SetPage value) setPage,
  }) {
    return connected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ToUi_SetId value)? setId,
    TResult? Function(ToUi_Unpaired value)? unpaired,
    TResult? Function(ToUi_GeneratedInvite value)? generatedInvite,
    TResult? Function(ToUi_Pairs value)? pairs,
    TResult? Function(ToUi_Connecting value)? connecting,
    TResult? Function(ToUi_Status value)? status,
    TResult? Function(ToUi_Pending value)? pending,
    TResult? Function(ToUi_Connected value)? connected,
    TResult? Function(ToUi_SetPageOrder value)? setPageOrder,
    TResult? Function(ToUi_SetPage value)? setPage,
  }) {
    return connected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ToUi_SetId value)? setId,
    TResult Function(ToUi_Unpaired value)? unpaired,
    TResult Function(ToUi_GeneratedInvite value)? generatedInvite,
    TResult Function(ToUi_Pairs value)? pairs,
    TResult Function(ToUi_Connecting value)? connecting,
    TResult Function(ToUi_Status value)? status,
    TResult Function(ToUi_Pending value)? pending,
    TResult Function(ToUi_Connected value)? connected,
    TResult Function(ToUi_SetPageOrder value)? setPageOrder,
    TResult Function(ToUi_SetPage value)? setPage,
    required TResult orElse(),
  }) {
    if (connected != null) {
      return connected(this);
    }
    return orElse();
  }
}

abstract class ToUi_Connected extends ToUi {
  const factory ToUi_Connected() = _$ToUi_ConnectedImpl;
  const ToUi_Connected._() : super._();
}

/// @nodoc
abstract class _$$ToUi_SetPageOrderImplCopyWith<$Res> {
  factory _$$ToUi_SetPageOrderImplCopyWith(_$ToUi_SetPageOrderImpl value,
          $Res Function(_$ToUi_SetPageOrderImpl) then) =
      __$$ToUi_SetPageOrderImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<String> pages});
}

/// @nodoc
class __$$ToUi_SetPageOrderImplCopyWithImpl<$Res>
    extends _$ToUiCopyWithImpl<$Res, _$ToUi_SetPageOrderImpl>
    implements _$$ToUi_SetPageOrderImplCopyWith<$Res> {
  __$$ToUi_SetPageOrderImplCopyWithImpl(_$ToUi_SetPageOrderImpl _value,
      $Res Function(_$ToUi_SetPageOrderImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pages = null,
  }) {
    return _then(_$ToUi_SetPageOrderImpl(
      pages: null == pages
          ? _value._pages
          : pages // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$ToUi_SetPageOrderImpl extends ToUi_SetPageOrder {
  const _$ToUi_SetPageOrderImpl({required final List<String> pages})
      : _pages = pages,
        super._();

  final List<String> _pages;
  @override
  List<String> get pages {
    if (_pages is EqualUnmodifiableListView) return _pages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_pages);
  }

  @override
  String toString() {
    return 'ToUi.setPageOrder(pages: $pages)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ToUi_SetPageOrderImpl &&
            const DeepCollectionEquality().equals(other._pages, _pages));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_pages));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ToUi_SetPageOrderImplCopyWith<_$ToUi_SetPageOrderImpl> get copyWith =>
      __$$ToUi_SetPageOrderImplCopyWithImpl<_$ToUi_SetPageOrderImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String field0) setId,
    required TResult Function() unpaired,
    required TResult Function(String field0) generatedInvite,
    required TResult Function(List<(String, String)> relations) pairs,
    required TResult Function(String msg) connecting,
    required TResult Function(String msg) status,
    required TResult Function(bool approved) pending,
    required TResult Function() connected,
    required TResult Function(List<String> pages) setPageOrder,
    required TResult Function(DartUiPage page) setPage,
  }) {
    return setPageOrder(pages);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String field0)? setId,
    TResult? Function()? unpaired,
    TResult? Function(String field0)? generatedInvite,
    TResult? Function(List<(String, String)> relations)? pairs,
    TResult? Function(String msg)? connecting,
    TResult? Function(String msg)? status,
    TResult? Function(bool approved)? pending,
    TResult? Function()? connected,
    TResult? Function(List<String> pages)? setPageOrder,
    TResult? Function(DartUiPage page)? setPage,
  }) {
    return setPageOrder?.call(pages);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String field0)? setId,
    TResult Function()? unpaired,
    TResult Function(String field0)? generatedInvite,
    TResult Function(List<(String, String)> relations)? pairs,
    TResult Function(String msg)? connecting,
    TResult Function(String msg)? status,
    TResult Function(bool approved)? pending,
    TResult Function()? connected,
    TResult Function(List<String> pages)? setPageOrder,
    TResult Function(DartUiPage page)? setPage,
    required TResult orElse(),
  }) {
    if (setPageOrder != null) {
      return setPageOrder(pages);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ToUi_SetId value) setId,
    required TResult Function(ToUi_Unpaired value) unpaired,
    required TResult Function(ToUi_GeneratedInvite value) generatedInvite,
    required TResult Function(ToUi_Pairs value) pairs,
    required TResult Function(ToUi_Connecting value) connecting,
    required TResult Function(ToUi_Status value) status,
    required TResult Function(ToUi_Pending value) pending,
    required TResult Function(ToUi_Connected value) connected,
    required TResult Function(ToUi_SetPageOrder value) setPageOrder,
    required TResult Function(ToUi_SetPage value) setPage,
  }) {
    return setPageOrder(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ToUi_SetId value)? setId,
    TResult? Function(ToUi_Unpaired value)? unpaired,
    TResult? Function(ToUi_GeneratedInvite value)? generatedInvite,
    TResult? Function(ToUi_Pairs value)? pairs,
    TResult? Function(ToUi_Connecting value)? connecting,
    TResult? Function(ToUi_Status value)? status,
    TResult? Function(ToUi_Pending value)? pending,
    TResult? Function(ToUi_Connected value)? connected,
    TResult? Function(ToUi_SetPageOrder value)? setPageOrder,
    TResult? Function(ToUi_SetPage value)? setPage,
  }) {
    return setPageOrder?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ToUi_SetId value)? setId,
    TResult Function(ToUi_Unpaired value)? unpaired,
    TResult Function(ToUi_GeneratedInvite value)? generatedInvite,
    TResult Function(ToUi_Pairs value)? pairs,
    TResult Function(ToUi_Connecting value)? connecting,
    TResult Function(ToUi_Status value)? status,
    TResult Function(ToUi_Pending value)? pending,
    TResult Function(ToUi_Connected value)? connected,
    TResult Function(ToUi_SetPageOrder value)? setPageOrder,
    TResult Function(ToUi_SetPage value)? setPage,
    required TResult orElse(),
  }) {
    if (setPageOrder != null) {
      return setPageOrder(this);
    }
    return orElse();
  }
}

abstract class ToUi_SetPageOrder extends ToUi {
  const factory ToUi_SetPageOrder({required final List<String> pages}) =
      _$ToUi_SetPageOrderImpl;
  const ToUi_SetPageOrder._() : super._();

  List<String> get pages;
  @JsonKey(ignore: true)
  _$$ToUi_SetPageOrderImplCopyWith<_$ToUi_SetPageOrderImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ToUi_SetPageImplCopyWith<$Res> {
  factory _$$ToUi_SetPageImplCopyWith(
          _$ToUi_SetPageImpl value, $Res Function(_$ToUi_SetPageImpl) then) =
      __$$ToUi_SetPageImplCopyWithImpl<$Res>;
  @useResult
  $Res call({DartUiPage page});
}

/// @nodoc
class __$$ToUi_SetPageImplCopyWithImpl<$Res>
    extends _$ToUiCopyWithImpl<$Res, _$ToUi_SetPageImpl>
    implements _$$ToUi_SetPageImplCopyWith<$Res> {
  __$$ToUi_SetPageImplCopyWithImpl(
      _$ToUi_SetPageImpl _value, $Res Function(_$ToUi_SetPageImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
  }) {
    return _then(_$ToUi_SetPageImpl(
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as DartUiPage,
    ));
  }
}

/// @nodoc

class _$ToUi_SetPageImpl extends ToUi_SetPage {
  const _$ToUi_SetPageImpl({required this.page}) : super._();

  @override
  final DartUiPage page;

  @override
  String toString() {
    return 'ToUi.setPage(page: $page)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ToUi_SetPageImpl &&
            (identical(other.page, page) || other.page == page));
  }

  @override
  int get hashCode => Object.hash(runtimeType, page);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ToUi_SetPageImplCopyWith<_$ToUi_SetPageImpl> get copyWith =>
      __$$ToUi_SetPageImplCopyWithImpl<_$ToUi_SetPageImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String field0) setId,
    required TResult Function() unpaired,
    required TResult Function(String field0) generatedInvite,
    required TResult Function(List<(String, String)> relations) pairs,
    required TResult Function(String msg) connecting,
    required TResult Function(String msg) status,
    required TResult Function(bool approved) pending,
    required TResult Function() connected,
    required TResult Function(List<String> pages) setPageOrder,
    required TResult Function(DartUiPage page) setPage,
  }) {
    return setPage(page);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String field0)? setId,
    TResult? Function()? unpaired,
    TResult? Function(String field0)? generatedInvite,
    TResult? Function(List<(String, String)> relations)? pairs,
    TResult? Function(String msg)? connecting,
    TResult? Function(String msg)? status,
    TResult? Function(bool approved)? pending,
    TResult? Function()? connected,
    TResult? Function(List<String> pages)? setPageOrder,
    TResult? Function(DartUiPage page)? setPage,
  }) {
    return setPage?.call(page);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String field0)? setId,
    TResult Function()? unpaired,
    TResult Function(String field0)? generatedInvite,
    TResult Function(List<(String, String)> relations)? pairs,
    TResult Function(String msg)? connecting,
    TResult Function(String msg)? status,
    TResult Function(bool approved)? pending,
    TResult Function()? connected,
    TResult Function(List<String> pages)? setPageOrder,
    TResult Function(DartUiPage page)? setPage,
    required TResult orElse(),
  }) {
    if (setPage != null) {
      return setPage(page);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ToUi_SetId value) setId,
    required TResult Function(ToUi_Unpaired value) unpaired,
    required TResult Function(ToUi_GeneratedInvite value) generatedInvite,
    required TResult Function(ToUi_Pairs value) pairs,
    required TResult Function(ToUi_Connecting value) connecting,
    required TResult Function(ToUi_Status value) status,
    required TResult Function(ToUi_Pending value) pending,
    required TResult Function(ToUi_Connected value) connected,
    required TResult Function(ToUi_SetPageOrder value) setPageOrder,
    required TResult Function(ToUi_SetPage value) setPage,
  }) {
    return setPage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ToUi_SetId value)? setId,
    TResult? Function(ToUi_Unpaired value)? unpaired,
    TResult? Function(ToUi_GeneratedInvite value)? generatedInvite,
    TResult? Function(ToUi_Pairs value)? pairs,
    TResult? Function(ToUi_Connecting value)? connecting,
    TResult? Function(ToUi_Status value)? status,
    TResult? Function(ToUi_Pending value)? pending,
    TResult? Function(ToUi_Connected value)? connected,
    TResult? Function(ToUi_SetPageOrder value)? setPageOrder,
    TResult? Function(ToUi_SetPage value)? setPage,
  }) {
    return setPage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ToUi_SetId value)? setId,
    TResult Function(ToUi_Unpaired value)? unpaired,
    TResult Function(ToUi_GeneratedInvite value)? generatedInvite,
    TResult Function(ToUi_Pairs value)? pairs,
    TResult Function(ToUi_Connecting value)? connecting,
    TResult Function(ToUi_Status value)? status,
    TResult Function(ToUi_Pending value)? pending,
    TResult Function(ToUi_Connected value)? connected,
    TResult Function(ToUi_SetPageOrder value)? setPageOrder,
    TResult Function(ToUi_SetPage value)? setPage,
    required TResult orElse(),
  }) {
    if (setPage != null) {
      return setPage(this);
    }
    return orElse();
  }
}

abstract class ToUi_SetPage extends ToUi {
  const factory ToUi_SetPage({required final DartUiPage page}) =
      _$ToUi_SetPageImpl;
  const ToUi_SetPage._() : super._();

  DartUiPage get page;
  @JsonKey(ignore: true)
  _$$ToUi_SetPageImplCopyWith<_$ToUi_SetPageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

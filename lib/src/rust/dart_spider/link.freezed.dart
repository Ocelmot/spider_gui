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
    required TResult Function(String field0) acceptInvite,
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
    TResult? Function(String field0)? acceptInvite,
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
    TResult Function(String field0)? acceptInvite,
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
    required TResult Function(ToProcessor_AcceptInvite value) acceptInvite,
    required TResult Function(ToProcessor_Input value) input,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ToProcessor_Pair value)? pair,
    TResult? Function(ToProcessor_Unpair value)? unpair,
    TResult? Function(ToProcessor_GenerateInvite value)? generateInvite,
    TResult? Function(ToProcessor_AcceptInvite value)? acceptInvite,
    TResult? Function(ToProcessor_Input value)? input,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ToProcessor_Pair value)? pair,
    TResult Function(ToProcessor_Unpair value)? unpair,
    TResult Function(ToProcessor_GenerateInvite value)? generateInvite,
    TResult Function(ToProcessor_AcceptInvite value)? acceptInvite,
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

  /// Create a copy of ToProcessor
  /// with the given fields replaced by the non-null parameter values.
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

  /// Create a copy of ToProcessor
  /// with the given fields replaced by the non-null parameter values.
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

  /// Create a copy of ToProcessor
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
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
    required TResult Function(String field0) acceptInvite,
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
    TResult? Function(String field0)? acceptInvite,
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
    TResult Function(String field0)? acceptInvite,
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
    required TResult Function(ToProcessor_AcceptInvite value) acceptInvite,
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
    TResult? Function(ToProcessor_AcceptInvite value)? acceptInvite,
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
    TResult Function(ToProcessor_AcceptInvite value)? acceptInvite,
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

  /// Create a copy of ToProcessor
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
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

  /// Create a copy of ToProcessor
  /// with the given fields replaced by the non-null parameter values.
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
    required TResult Function(String field0) acceptInvite,
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
    TResult? Function(String field0)? acceptInvite,
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
    TResult Function(String field0)? acceptInvite,
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
    required TResult Function(ToProcessor_AcceptInvite value) acceptInvite,
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
    TResult? Function(ToProcessor_AcceptInvite value)? acceptInvite,
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
    TResult Function(ToProcessor_AcceptInvite value)? acceptInvite,
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

  /// Create a copy of ToProcessor
  /// with the given fields replaced by the non-null parameter values.
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
    required TResult Function(String field0) acceptInvite,
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
    TResult? Function(String field0)? acceptInvite,
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
    TResult Function(String field0)? acceptInvite,
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
    required TResult Function(ToProcessor_AcceptInvite value) acceptInvite,
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
    TResult? Function(ToProcessor_AcceptInvite value)? acceptInvite,
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
    TResult Function(ToProcessor_AcceptInvite value)? acceptInvite,
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
abstract class _$$ToProcessor_AcceptInviteImplCopyWith<$Res> {
  factory _$$ToProcessor_AcceptInviteImplCopyWith(
          _$ToProcessor_AcceptInviteImpl value,
          $Res Function(_$ToProcessor_AcceptInviteImpl) then) =
      __$$ToProcessor_AcceptInviteImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String field0});
}

/// @nodoc
class __$$ToProcessor_AcceptInviteImplCopyWithImpl<$Res>
    extends _$ToProcessorCopyWithImpl<$Res, _$ToProcessor_AcceptInviteImpl>
    implements _$$ToProcessor_AcceptInviteImplCopyWith<$Res> {
  __$$ToProcessor_AcceptInviteImplCopyWithImpl(
      _$ToProcessor_AcceptInviteImpl _value,
      $Res Function(_$ToProcessor_AcceptInviteImpl) _then)
      : super(_value, _then);

  /// Create a copy of ToProcessor
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? field0 = null,
  }) {
    return _then(_$ToProcessor_AcceptInviteImpl(
      null == field0
          ? _value.field0
          : field0 // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ToProcessor_AcceptInviteImpl extends ToProcessor_AcceptInvite {
  const _$ToProcessor_AcceptInviteImpl(this.field0) : super._();

  @override
  final String field0;

  @override
  String toString() {
    return 'ToProcessor.acceptInvite(field0: $field0)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ToProcessor_AcceptInviteImpl &&
            (identical(other.field0, field0) || other.field0 == field0));
  }

  @override
  int get hashCode => Object.hash(runtimeType, field0);

  /// Create a copy of ToProcessor
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ToProcessor_AcceptInviteImplCopyWith<_$ToProcessor_AcceptInviteImpl>
      get copyWith => __$$ToProcessor_AcceptInviteImplCopyWithImpl<
          _$ToProcessor_AcceptInviteImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String field0) pair,
    required TResult Function() unpair,
    required TResult Function() generateInvite,
    required TResult Function(String field0) acceptInvite,
    required TResult Function(String pageId, String elementId,
            Uint32List datasetIndices, DartUiInput input)
        input,
  }) {
    return acceptInvite(field0);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String field0)? pair,
    TResult? Function()? unpair,
    TResult? Function()? generateInvite,
    TResult? Function(String field0)? acceptInvite,
    TResult? Function(String pageId, String elementId,
            Uint32List datasetIndices, DartUiInput input)?
        input,
  }) {
    return acceptInvite?.call(field0);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String field0)? pair,
    TResult Function()? unpair,
    TResult Function()? generateInvite,
    TResult Function(String field0)? acceptInvite,
    TResult Function(String pageId, String elementId, Uint32List datasetIndices,
            DartUiInput input)?
        input,
    required TResult orElse(),
  }) {
    if (acceptInvite != null) {
      return acceptInvite(field0);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ToProcessor_Pair value) pair,
    required TResult Function(ToProcessor_Unpair value) unpair,
    required TResult Function(ToProcessor_GenerateInvite value) generateInvite,
    required TResult Function(ToProcessor_AcceptInvite value) acceptInvite,
    required TResult Function(ToProcessor_Input value) input,
  }) {
    return acceptInvite(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ToProcessor_Pair value)? pair,
    TResult? Function(ToProcessor_Unpair value)? unpair,
    TResult? Function(ToProcessor_GenerateInvite value)? generateInvite,
    TResult? Function(ToProcessor_AcceptInvite value)? acceptInvite,
    TResult? Function(ToProcessor_Input value)? input,
  }) {
    return acceptInvite?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ToProcessor_Pair value)? pair,
    TResult Function(ToProcessor_Unpair value)? unpair,
    TResult Function(ToProcessor_GenerateInvite value)? generateInvite,
    TResult Function(ToProcessor_AcceptInvite value)? acceptInvite,
    TResult Function(ToProcessor_Input value)? input,
    required TResult orElse(),
  }) {
    if (acceptInvite != null) {
      return acceptInvite(this);
    }
    return orElse();
  }
}

abstract class ToProcessor_AcceptInvite extends ToProcessor {
  const factory ToProcessor_AcceptInvite(final String field0) =
      _$ToProcessor_AcceptInviteImpl;
  const ToProcessor_AcceptInvite._() : super._();

  String get field0;

  /// Create a copy of ToProcessor
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ToProcessor_AcceptInviteImplCopyWith<_$ToProcessor_AcceptInviteImpl>
      get copyWith => throw _privateConstructorUsedError;
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

  /// Create a copy of ToProcessor
  /// with the given fields replaced by the non-null parameter values.
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

  /// Create a copy of ToProcessor
  /// with the given fields replaced by the non-null parameter values.
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

  /// Create a copy of ToProcessor
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
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
    required TResult Function(String field0) acceptInvite,
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
    TResult? Function(String field0)? acceptInvite,
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
    TResult Function(String field0)? acceptInvite,
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
    required TResult Function(ToProcessor_AcceptInvite value) acceptInvite,
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
    TResult? Function(ToProcessor_AcceptInvite value)? acceptInvite,
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
    TResult Function(ToProcessor_AcceptInvite value)? acceptInvite,
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

  /// Create a copy of ToProcessor
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
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
    required TResult Function(String key, String name) baseFound,
    required TResult Function(String key) baseLost,
    required TResult Function(String msg) connecting,
    required TResult Function(String msg) status,
    required TResult Function(bool approved) pending,
    required TResult Function() connected,
    required TResult Function(List<String> pages) setPageOrder,
    required TResult Function(DartUiPage page) setPage,
    required TResult Function(String msg, bool fatal) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String field0)? setId,
    TResult? Function()? unpaired,
    TResult? Function(String field0)? generatedInvite,
    TResult? Function(String key, String name)? baseFound,
    TResult? Function(String key)? baseLost,
    TResult? Function(String msg)? connecting,
    TResult? Function(String msg)? status,
    TResult? Function(bool approved)? pending,
    TResult? Function()? connected,
    TResult? Function(List<String> pages)? setPageOrder,
    TResult? Function(DartUiPage page)? setPage,
    TResult? Function(String msg, bool fatal)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String field0)? setId,
    TResult Function()? unpaired,
    TResult Function(String field0)? generatedInvite,
    TResult Function(String key, String name)? baseFound,
    TResult Function(String key)? baseLost,
    TResult Function(String msg)? connecting,
    TResult Function(String msg)? status,
    TResult Function(bool approved)? pending,
    TResult Function()? connected,
    TResult Function(List<String> pages)? setPageOrder,
    TResult Function(DartUiPage page)? setPage,
    TResult Function(String msg, bool fatal)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ToUi_SetId value) setId,
    required TResult Function(ToUi_Unpaired value) unpaired,
    required TResult Function(ToUi_GeneratedInvite value) generatedInvite,
    required TResult Function(ToUi_BaseFound value) baseFound,
    required TResult Function(ToUi_BaseLost value) baseLost,
    required TResult Function(ToUi_Connecting value) connecting,
    required TResult Function(ToUi_Status value) status,
    required TResult Function(ToUi_Pending value) pending,
    required TResult Function(ToUi_Connected value) connected,
    required TResult Function(ToUi_SetPageOrder value) setPageOrder,
    required TResult Function(ToUi_SetPage value) setPage,
    required TResult Function(ToUi_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ToUi_SetId value)? setId,
    TResult? Function(ToUi_Unpaired value)? unpaired,
    TResult? Function(ToUi_GeneratedInvite value)? generatedInvite,
    TResult? Function(ToUi_BaseFound value)? baseFound,
    TResult? Function(ToUi_BaseLost value)? baseLost,
    TResult? Function(ToUi_Connecting value)? connecting,
    TResult? Function(ToUi_Status value)? status,
    TResult? Function(ToUi_Pending value)? pending,
    TResult? Function(ToUi_Connected value)? connected,
    TResult? Function(ToUi_SetPageOrder value)? setPageOrder,
    TResult? Function(ToUi_SetPage value)? setPage,
    TResult? Function(ToUi_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ToUi_SetId value)? setId,
    TResult Function(ToUi_Unpaired value)? unpaired,
    TResult Function(ToUi_GeneratedInvite value)? generatedInvite,
    TResult Function(ToUi_BaseFound value)? baseFound,
    TResult Function(ToUi_BaseLost value)? baseLost,
    TResult Function(ToUi_Connecting value)? connecting,
    TResult Function(ToUi_Status value)? status,
    TResult Function(ToUi_Pending value)? pending,
    TResult Function(ToUi_Connected value)? connected,
    TResult Function(ToUi_SetPageOrder value)? setPageOrder,
    TResult Function(ToUi_SetPage value)? setPage,
    TResult Function(ToUi_Error value)? error,
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

  /// Create a copy of ToUi
  /// with the given fields replaced by the non-null parameter values.
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

  /// Create a copy of ToUi
  /// with the given fields replaced by the non-null parameter values.
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

  /// Create a copy of ToUi
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
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
    required TResult Function(String key, String name) baseFound,
    required TResult Function(String key) baseLost,
    required TResult Function(String msg) connecting,
    required TResult Function(String msg) status,
    required TResult Function(bool approved) pending,
    required TResult Function() connected,
    required TResult Function(List<String> pages) setPageOrder,
    required TResult Function(DartUiPage page) setPage,
    required TResult Function(String msg, bool fatal) error,
  }) {
    return setId(field0);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String field0)? setId,
    TResult? Function()? unpaired,
    TResult? Function(String field0)? generatedInvite,
    TResult? Function(String key, String name)? baseFound,
    TResult? Function(String key)? baseLost,
    TResult? Function(String msg)? connecting,
    TResult? Function(String msg)? status,
    TResult? Function(bool approved)? pending,
    TResult? Function()? connected,
    TResult? Function(List<String> pages)? setPageOrder,
    TResult? Function(DartUiPage page)? setPage,
    TResult? Function(String msg, bool fatal)? error,
  }) {
    return setId?.call(field0);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String field0)? setId,
    TResult Function()? unpaired,
    TResult Function(String field0)? generatedInvite,
    TResult Function(String key, String name)? baseFound,
    TResult Function(String key)? baseLost,
    TResult Function(String msg)? connecting,
    TResult Function(String msg)? status,
    TResult Function(bool approved)? pending,
    TResult Function()? connected,
    TResult Function(List<String> pages)? setPageOrder,
    TResult Function(DartUiPage page)? setPage,
    TResult Function(String msg, bool fatal)? error,
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
    required TResult Function(ToUi_BaseFound value) baseFound,
    required TResult Function(ToUi_BaseLost value) baseLost,
    required TResult Function(ToUi_Connecting value) connecting,
    required TResult Function(ToUi_Status value) status,
    required TResult Function(ToUi_Pending value) pending,
    required TResult Function(ToUi_Connected value) connected,
    required TResult Function(ToUi_SetPageOrder value) setPageOrder,
    required TResult Function(ToUi_SetPage value) setPage,
    required TResult Function(ToUi_Error value) error,
  }) {
    return setId(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ToUi_SetId value)? setId,
    TResult? Function(ToUi_Unpaired value)? unpaired,
    TResult? Function(ToUi_GeneratedInvite value)? generatedInvite,
    TResult? Function(ToUi_BaseFound value)? baseFound,
    TResult? Function(ToUi_BaseLost value)? baseLost,
    TResult? Function(ToUi_Connecting value)? connecting,
    TResult? Function(ToUi_Status value)? status,
    TResult? Function(ToUi_Pending value)? pending,
    TResult? Function(ToUi_Connected value)? connected,
    TResult? Function(ToUi_SetPageOrder value)? setPageOrder,
    TResult? Function(ToUi_SetPage value)? setPage,
    TResult? Function(ToUi_Error value)? error,
  }) {
    return setId?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ToUi_SetId value)? setId,
    TResult Function(ToUi_Unpaired value)? unpaired,
    TResult Function(ToUi_GeneratedInvite value)? generatedInvite,
    TResult Function(ToUi_BaseFound value)? baseFound,
    TResult Function(ToUi_BaseLost value)? baseLost,
    TResult Function(ToUi_Connecting value)? connecting,
    TResult Function(ToUi_Status value)? status,
    TResult Function(ToUi_Pending value)? pending,
    TResult Function(ToUi_Connected value)? connected,
    TResult Function(ToUi_SetPageOrder value)? setPageOrder,
    TResult Function(ToUi_SetPage value)? setPage,
    TResult Function(ToUi_Error value)? error,
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

  /// Create a copy of ToUi
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
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

  /// Create a copy of ToUi
  /// with the given fields replaced by the non-null parameter values.
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
    required TResult Function(String key, String name) baseFound,
    required TResult Function(String key) baseLost,
    required TResult Function(String msg) connecting,
    required TResult Function(String msg) status,
    required TResult Function(bool approved) pending,
    required TResult Function() connected,
    required TResult Function(List<String> pages) setPageOrder,
    required TResult Function(DartUiPage page) setPage,
    required TResult Function(String msg, bool fatal) error,
  }) {
    return unpaired();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String field0)? setId,
    TResult? Function()? unpaired,
    TResult? Function(String field0)? generatedInvite,
    TResult? Function(String key, String name)? baseFound,
    TResult? Function(String key)? baseLost,
    TResult? Function(String msg)? connecting,
    TResult? Function(String msg)? status,
    TResult? Function(bool approved)? pending,
    TResult? Function()? connected,
    TResult? Function(List<String> pages)? setPageOrder,
    TResult? Function(DartUiPage page)? setPage,
    TResult? Function(String msg, bool fatal)? error,
  }) {
    return unpaired?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String field0)? setId,
    TResult Function()? unpaired,
    TResult Function(String field0)? generatedInvite,
    TResult Function(String key, String name)? baseFound,
    TResult Function(String key)? baseLost,
    TResult Function(String msg)? connecting,
    TResult Function(String msg)? status,
    TResult Function(bool approved)? pending,
    TResult Function()? connected,
    TResult Function(List<String> pages)? setPageOrder,
    TResult Function(DartUiPage page)? setPage,
    TResult Function(String msg, bool fatal)? error,
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
    required TResult Function(ToUi_BaseFound value) baseFound,
    required TResult Function(ToUi_BaseLost value) baseLost,
    required TResult Function(ToUi_Connecting value) connecting,
    required TResult Function(ToUi_Status value) status,
    required TResult Function(ToUi_Pending value) pending,
    required TResult Function(ToUi_Connected value) connected,
    required TResult Function(ToUi_SetPageOrder value) setPageOrder,
    required TResult Function(ToUi_SetPage value) setPage,
    required TResult Function(ToUi_Error value) error,
  }) {
    return unpaired(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ToUi_SetId value)? setId,
    TResult? Function(ToUi_Unpaired value)? unpaired,
    TResult? Function(ToUi_GeneratedInvite value)? generatedInvite,
    TResult? Function(ToUi_BaseFound value)? baseFound,
    TResult? Function(ToUi_BaseLost value)? baseLost,
    TResult? Function(ToUi_Connecting value)? connecting,
    TResult? Function(ToUi_Status value)? status,
    TResult? Function(ToUi_Pending value)? pending,
    TResult? Function(ToUi_Connected value)? connected,
    TResult? Function(ToUi_SetPageOrder value)? setPageOrder,
    TResult? Function(ToUi_SetPage value)? setPage,
    TResult? Function(ToUi_Error value)? error,
  }) {
    return unpaired?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ToUi_SetId value)? setId,
    TResult Function(ToUi_Unpaired value)? unpaired,
    TResult Function(ToUi_GeneratedInvite value)? generatedInvite,
    TResult Function(ToUi_BaseFound value)? baseFound,
    TResult Function(ToUi_BaseLost value)? baseLost,
    TResult Function(ToUi_Connecting value)? connecting,
    TResult Function(ToUi_Status value)? status,
    TResult Function(ToUi_Pending value)? pending,
    TResult Function(ToUi_Connected value)? connected,
    TResult Function(ToUi_SetPageOrder value)? setPageOrder,
    TResult Function(ToUi_SetPage value)? setPage,
    TResult Function(ToUi_Error value)? error,
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

  /// Create a copy of ToUi
  /// with the given fields replaced by the non-null parameter values.
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

  /// Create a copy of ToUi
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
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
    required TResult Function(String key, String name) baseFound,
    required TResult Function(String key) baseLost,
    required TResult Function(String msg) connecting,
    required TResult Function(String msg) status,
    required TResult Function(bool approved) pending,
    required TResult Function() connected,
    required TResult Function(List<String> pages) setPageOrder,
    required TResult Function(DartUiPage page) setPage,
    required TResult Function(String msg, bool fatal) error,
  }) {
    return generatedInvite(field0);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String field0)? setId,
    TResult? Function()? unpaired,
    TResult? Function(String field0)? generatedInvite,
    TResult? Function(String key, String name)? baseFound,
    TResult? Function(String key)? baseLost,
    TResult? Function(String msg)? connecting,
    TResult? Function(String msg)? status,
    TResult? Function(bool approved)? pending,
    TResult? Function()? connected,
    TResult? Function(List<String> pages)? setPageOrder,
    TResult? Function(DartUiPage page)? setPage,
    TResult? Function(String msg, bool fatal)? error,
  }) {
    return generatedInvite?.call(field0);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String field0)? setId,
    TResult Function()? unpaired,
    TResult Function(String field0)? generatedInvite,
    TResult Function(String key, String name)? baseFound,
    TResult Function(String key)? baseLost,
    TResult Function(String msg)? connecting,
    TResult Function(String msg)? status,
    TResult Function(bool approved)? pending,
    TResult Function()? connected,
    TResult Function(List<String> pages)? setPageOrder,
    TResult Function(DartUiPage page)? setPage,
    TResult Function(String msg, bool fatal)? error,
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
    required TResult Function(ToUi_BaseFound value) baseFound,
    required TResult Function(ToUi_BaseLost value) baseLost,
    required TResult Function(ToUi_Connecting value) connecting,
    required TResult Function(ToUi_Status value) status,
    required TResult Function(ToUi_Pending value) pending,
    required TResult Function(ToUi_Connected value) connected,
    required TResult Function(ToUi_SetPageOrder value) setPageOrder,
    required TResult Function(ToUi_SetPage value) setPage,
    required TResult Function(ToUi_Error value) error,
  }) {
    return generatedInvite(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ToUi_SetId value)? setId,
    TResult? Function(ToUi_Unpaired value)? unpaired,
    TResult? Function(ToUi_GeneratedInvite value)? generatedInvite,
    TResult? Function(ToUi_BaseFound value)? baseFound,
    TResult? Function(ToUi_BaseLost value)? baseLost,
    TResult? Function(ToUi_Connecting value)? connecting,
    TResult? Function(ToUi_Status value)? status,
    TResult? Function(ToUi_Pending value)? pending,
    TResult? Function(ToUi_Connected value)? connected,
    TResult? Function(ToUi_SetPageOrder value)? setPageOrder,
    TResult? Function(ToUi_SetPage value)? setPage,
    TResult? Function(ToUi_Error value)? error,
  }) {
    return generatedInvite?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ToUi_SetId value)? setId,
    TResult Function(ToUi_Unpaired value)? unpaired,
    TResult Function(ToUi_GeneratedInvite value)? generatedInvite,
    TResult Function(ToUi_BaseFound value)? baseFound,
    TResult Function(ToUi_BaseLost value)? baseLost,
    TResult Function(ToUi_Connecting value)? connecting,
    TResult Function(ToUi_Status value)? status,
    TResult Function(ToUi_Pending value)? pending,
    TResult Function(ToUi_Connected value)? connected,
    TResult Function(ToUi_SetPageOrder value)? setPageOrder,
    TResult Function(ToUi_SetPage value)? setPage,
    TResult Function(ToUi_Error value)? error,
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

  /// Create a copy of ToUi
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ToUi_GeneratedInviteImplCopyWith<_$ToUi_GeneratedInviteImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ToUi_BaseFoundImplCopyWith<$Res> {
  factory _$$ToUi_BaseFoundImplCopyWith(_$ToUi_BaseFoundImpl value,
          $Res Function(_$ToUi_BaseFoundImpl) then) =
      __$$ToUi_BaseFoundImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String key, String name});
}

/// @nodoc
class __$$ToUi_BaseFoundImplCopyWithImpl<$Res>
    extends _$ToUiCopyWithImpl<$Res, _$ToUi_BaseFoundImpl>
    implements _$$ToUi_BaseFoundImplCopyWith<$Res> {
  __$$ToUi_BaseFoundImplCopyWithImpl(
      _$ToUi_BaseFoundImpl _value, $Res Function(_$ToUi_BaseFoundImpl) _then)
      : super(_value, _then);

  /// Create a copy of ToUi
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = null,
    Object? name = null,
  }) {
    return _then(_$ToUi_BaseFoundImpl(
      key: null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ToUi_BaseFoundImpl extends ToUi_BaseFound {
  const _$ToUi_BaseFoundImpl({required this.key, required this.name})
      : super._();

  @override
  final String key;
  @override
  final String name;

  @override
  String toString() {
    return 'ToUi.baseFound(key: $key, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ToUi_BaseFoundImpl &&
            (identical(other.key, key) || other.key == key) &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(runtimeType, key, name);

  /// Create a copy of ToUi
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ToUi_BaseFoundImplCopyWith<_$ToUi_BaseFoundImpl> get copyWith =>
      __$$ToUi_BaseFoundImplCopyWithImpl<_$ToUi_BaseFoundImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String field0) setId,
    required TResult Function() unpaired,
    required TResult Function(String field0) generatedInvite,
    required TResult Function(String key, String name) baseFound,
    required TResult Function(String key) baseLost,
    required TResult Function(String msg) connecting,
    required TResult Function(String msg) status,
    required TResult Function(bool approved) pending,
    required TResult Function() connected,
    required TResult Function(List<String> pages) setPageOrder,
    required TResult Function(DartUiPage page) setPage,
    required TResult Function(String msg, bool fatal) error,
  }) {
    return baseFound(key, name);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String field0)? setId,
    TResult? Function()? unpaired,
    TResult? Function(String field0)? generatedInvite,
    TResult? Function(String key, String name)? baseFound,
    TResult? Function(String key)? baseLost,
    TResult? Function(String msg)? connecting,
    TResult? Function(String msg)? status,
    TResult? Function(bool approved)? pending,
    TResult? Function()? connected,
    TResult? Function(List<String> pages)? setPageOrder,
    TResult? Function(DartUiPage page)? setPage,
    TResult? Function(String msg, bool fatal)? error,
  }) {
    return baseFound?.call(key, name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String field0)? setId,
    TResult Function()? unpaired,
    TResult Function(String field0)? generatedInvite,
    TResult Function(String key, String name)? baseFound,
    TResult Function(String key)? baseLost,
    TResult Function(String msg)? connecting,
    TResult Function(String msg)? status,
    TResult Function(bool approved)? pending,
    TResult Function()? connected,
    TResult Function(List<String> pages)? setPageOrder,
    TResult Function(DartUiPage page)? setPage,
    TResult Function(String msg, bool fatal)? error,
    required TResult orElse(),
  }) {
    if (baseFound != null) {
      return baseFound(key, name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ToUi_SetId value) setId,
    required TResult Function(ToUi_Unpaired value) unpaired,
    required TResult Function(ToUi_GeneratedInvite value) generatedInvite,
    required TResult Function(ToUi_BaseFound value) baseFound,
    required TResult Function(ToUi_BaseLost value) baseLost,
    required TResult Function(ToUi_Connecting value) connecting,
    required TResult Function(ToUi_Status value) status,
    required TResult Function(ToUi_Pending value) pending,
    required TResult Function(ToUi_Connected value) connected,
    required TResult Function(ToUi_SetPageOrder value) setPageOrder,
    required TResult Function(ToUi_SetPage value) setPage,
    required TResult Function(ToUi_Error value) error,
  }) {
    return baseFound(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ToUi_SetId value)? setId,
    TResult? Function(ToUi_Unpaired value)? unpaired,
    TResult? Function(ToUi_GeneratedInvite value)? generatedInvite,
    TResult? Function(ToUi_BaseFound value)? baseFound,
    TResult? Function(ToUi_BaseLost value)? baseLost,
    TResult? Function(ToUi_Connecting value)? connecting,
    TResult? Function(ToUi_Status value)? status,
    TResult? Function(ToUi_Pending value)? pending,
    TResult? Function(ToUi_Connected value)? connected,
    TResult? Function(ToUi_SetPageOrder value)? setPageOrder,
    TResult? Function(ToUi_SetPage value)? setPage,
    TResult? Function(ToUi_Error value)? error,
  }) {
    return baseFound?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ToUi_SetId value)? setId,
    TResult Function(ToUi_Unpaired value)? unpaired,
    TResult Function(ToUi_GeneratedInvite value)? generatedInvite,
    TResult Function(ToUi_BaseFound value)? baseFound,
    TResult Function(ToUi_BaseLost value)? baseLost,
    TResult Function(ToUi_Connecting value)? connecting,
    TResult Function(ToUi_Status value)? status,
    TResult Function(ToUi_Pending value)? pending,
    TResult Function(ToUi_Connected value)? connected,
    TResult Function(ToUi_SetPageOrder value)? setPageOrder,
    TResult Function(ToUi_SetPage value)? setPage,
    TResult Function(ToUi_Error value)? error,
    required TResult orElse(),
  }) {
    if (baseFound != null) {
      return baseFound(this);
    }
    return orElse();
  }
}

abstract class ToUi_BaseFound extends ToUi {
  const factory ToUi_BaseFound(
      {required final String key,
      required final String name}) = _$ToUi_BaseFoundImpl;
  const ToUi_BaseFound._() : super._();

  String get key;
  String get name;

  /// Create a copy of ToUi
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ToUi_BaseFoundImplCopyWith<_$ToUi_BaseFoundImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ToUi_BaseLostImplCopyWith<$Res> {
  factory _$$ToUi_BaseLostImplCopyWith(
          _$ToUi_BaseLostImpl value, $Res Function(_$ToUi_BaseLostImpl) then) =
      __$$ToUi_BaseLostImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String key});
}

/// @nodoc
class __$$ToUi_BaseLostImplCopyWithImpl<$Res>
    extends _$ToUiCopyWithImpl<$Res, _$ToUi_BaseLostImpl>
    implements _$$ToUi_BaseLostImplCopyWith<$Res> {
  __$$ToUi_BaseLostImplCopyWithImpl(
      _$ToUi_BaseLostImpl _value, $Res Function(_$ToUi_BaseLostImpl) _then)
      : super(_value, _then);

  /// Create a copy of ToUi
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = null,
  }) {
    return _then(_$ToUi_BaseLostImpl(
      key: null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ToUi_BaseLostImpl extends ToUi_BaseLost {
  const _$ToUi_BaseLostImpl({required this.key}) : super._();

  @override
  final String key;

  @override
  String toString() {
    return 'ToUi.baseLost(key: $key)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ToUi_BaseLostImpl &&
            (identical(other.key, key) || other.key == key));
  }

  @override
  int get hashCode => Object.hash(runtimeType, key);

  /// Create a copy of ToUi
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ToUi_BaseLostImplCopyWith<_$ToUi_BaseLostImpl> get copyWith =>
      __$$ToUi_BaseLostImplCopyWithImpl<_$ToUi_BaseLostImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String field0) setId,
    required TResult Function() unpaired,
    required TResult Function(String field0) generatedInvite,
    required TResult Function(String key, String name) baseFound,
    required TResult Function(String key) baseLost,
    required TResult Function(String msg) connecting,
    required TResult Function(String msg) status,
    required TResult Function(bool approved) pending,
    required TResult Function() connected,
    required TResult Function(List<String> pages) setPageOrder,
    required TResult Function(DartUiPage page) setPage,
    required TResult Function(String msg, bool fatal) error,
  }) {
    return baseLost(key);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String field0)? setId,
    TResult? Function()? unpaired,
    TResult? Function(String field0)? generatedInvite,
    TResult? Function(String key, String name)? baseFound,
    TResult? Function(String key)? baseLost,
    TResult? Function(String msg)? connecting,
    TResult? Function(String msg)? status,
    TResult? Function(bool approved)? pending,
    TResult? Function()? connected,
    TResult? Function(List<String> pages)? setPageOrder,
    TResult? Function(DartUiPage page)? setPage,
    TResult? Function(String msg, bool fatal)? error,
  }) {
    return baseLost?.call(key);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String field0)? setId,
    TResult Function()? unpaired,
    TResult Function(String field0)? generatedInvite,
    TResult Function(String key, String name)? baseFound,
    TResult Function(String key)? baseLost,
    TResult Function(String msg)? connecting,
    TResult Function(String msg)? status,
    TResult Function(bool approved)? pending,
    TResult Function()? connected,
    TResult Function(List<String> pages)? setPageOrder,
    TResult Function(DartUiPage page)? setPage,
    TResult Function(String msg, bool fatal)? error,
    required TResult orElse(),
  }) {
    if (baseLost != null) {
      return baseLost(key);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ToUi_SetId value) setId,
    required TResult Function(ToUi_Unpaired value) unpaired,
    required TResult Function(ToUi_GeneratedInvite value) generatedInvite,
    required TResult Function(ToUi_BaseFound value) baseFound,
    required TResult Function(ToUi_BaseLost value) baseLost,
    required TResult Function(ToUi_Connecting value) connecting,
    required TResult Function(ToUi_Status value) status,
    required TResult Function(ToUi_Pending value) pending,
    required TResult Function(ToUi_Connected value) connected,
    required TResult Function(ToUi_SetPageOrder value) setPageOrder,
    required TResult Function(ToUi_SetPage value) setPage,
    required TResult Function(ToUi_Error value) error,
  }) {
    return baseLost(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ToUi_SetId value)? setId,
    TResult? Function(ToUi_Unpaired value)? unpaired,
    TResult? Function(ToUi_GeneratedInvite value)? generatedInvite,
    TResult? Function(ToUi_BaseFound value)? baseFound,
    TResult? Function(ToUi_BaseLost value)? baseLost,
    TResult? Function(ToUi_Connecting value)? connecting,
    TResult? Function(ToUi_Status value)? status,
    TResult? Function(ToUi_Pending value)? pending,
    TResult? Function(ToUi_Connected value)? connected,
    TResult? Function(ToUi_SetPageOrder value)? setPageOrder,
    TResult? Function(ToUi_SetPage value)? setPage,
    TResult? Function(ToUi_Error value)? error,
  }) {
    return baseLost?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ToUi_SetId value)? setId,
    TResult Function(ToUi_Unpaired value)? unpaired,
    TResult Function(ToUi_GeneratedInvite value)? generatedInvite,
    TResult Function(ToUi_BaseFound value)? baseFound,
    TResult Function(ToUi_BaseLost value)? baseLost,
    TResult Function(ToUi_Connecting value)? connecting,
    TResult Function(ToUi_Status value)? status,
    TResult Function(ToUi_Pending value)? pending,
    TResult Function(ToUi_Connected value)? connected,
    TResult Function(ToUi_SetPageOrder value)? setPageOrder,
    TResult Function(ToUi_SetPage value)? setPage,
    TResult Function(ToUi_Error value)? error,
    required TResult orElse(),
  }) {
    if (baseLost != null) {
      return baseLost(this);
    }
    return orElse();
  }
}

abstract class ToUi_BaseLost extends ToUi {
  const factory ToUi_BaseLost({required final String key}) =
      _$ToUi_BaseLostImpl;
  const ToUi_BaseLost._() : super._();

  String get key;

  /// Create a copy of ToUi
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ToUi_BaseLostImplCopyWith<_$ToUi_BaseLostImpl> get copyWith =>
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

  /// Create a copy of ToUi
  /// with the given fields replaced by the non-null parameter values.
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

  /// Create a copy of ToUi
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
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
    required TResult Function(String key, String name) baseFound,
    required TResult Function(String key) baseLost,
    required TResult Function(String msg) connecting,
    required TResult Function(String msg) status,
    required TResult Function(bool approved) pending,
    required TResult Function() connected,
    required TResult Function(List<String> pages) setPageOrder,
    required TResult Function(DartUiPage page) setPage,
    required TResult Function(String msg, bool fatal) error,
  }) {
    return connecting(msg);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String field0)? setId,
    TResult? Function()? unpaired,
    TResult? Function(String field0)? generatedInvite,
    TResult? Function(String key, String name)? baseFound,
    TResult? Function(String key)? baseLost,
    TResult? Function(String msg)? connecting,
    TResult? Function(String msg)? status,
    TResult? Function(bool approved)? pending,
    TResult? Function()? connected,
    TResult? Function(List<String> pages)? setPageOrder,
    TResult? Function(DartUiPage page)? setPage,
    TResult? Function(String msg, bool fatal)? error,
  }) {
    return connecting?.call(msg);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String field0)? setId,
    TResult Function()? unpaired,
    TResult Function(String field0)? generatedInvite,
    TResult Function(String key, String name)? baseFound,
    TResult Function(String key)? baseLost,
    TResult Function(String msg)? connecting,
    TResult Function(String msg)? status,
    TResult Function(bool approved)? pending,
    TResult Function()? connected,
    TResult Function(List<String> pages)? setPageOrder,
    TResult Function(DartUiPage page)? setPage,
    TResult Function(String msg, bool fatal)? error,
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
    required TResult Function(ToUi_BaseFound value) baseFound,
    required TResult Function(ToUi_BaseLost value) baseLost,
    required TResult Function(ToUi_Connecting value) connecting,
    required TResult Function(ToUi_Status value) status,
    required TResult Function(ToUi_Pending value) pending,
    required TResult Function(ToUi_Connected value) connected,
    required TResult Function(ToUi_SetPageOrder value) setPageOrder,
    required TResult Function(ToUi_SetPage value) setPage,
    required TResult Function(ToUi_Error value) error,
  }) {
    return connecting(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ToUi_SetId value)? setId,
    TResult? Function(ToUi_Unpaired value)? unpaired,
    TResult? Function(ToUi_GeneratedInvite value)? generatedInvite,
    TResult? Function(ToUi_BaseFound value)? baseFound,
    TResult? Function(ToUi_BaseLost value)? baseLost,
    TResult? Function(ToUi_Connecting value)? connecting,
    TResult? Function(ToUi_Status value)? status,
    TResult? Function(ToUi_Pending value)? pending,
    TResult? Function(ToUi_Connected value)? connected,
    TResult? Function(ToUi_SetPageOrder value)? setPageOrder,
    TResult? Function(ToUi_SetPage value)? setPage,
    TResult? Function(ToUi_Error value)? error,
  }) {
    return connecting?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ToUi_SetId value)? setId,
    TResult Function(ToUi_Unpaired value)? unpaired,
    TResult Function(ToUi_GeneratedInvite value)? generatedInvite,
    TResult Function(ToUi_BaseFound value)? baseFound,
    TResult Function(ToUi_BaseLost value)? baseLost,
    TResult Function(ToUi_Connecting value)? connecting,
    TResult Function(ToUi_Status value)? status,
    TResult Function(ToUi_Pending value)? pending,
    TResult Function(ToUi_Connected value)? connected,
    TResult Function(ToUi_SetPageOrder value)? setPageOrder,
    TResult Function(ToUi_SetPage value)? setPage,
    TResult Function(ToUi_Error value)? error,
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

  /// Create a copy of ToUi
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
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

  /// Create a copy of ToUi
  /// with the given fields replaced by the non-null parameter values.
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

  /// Create a copy of ToUi
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
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
    required TResult Function(String key, String name) baseFound,
    required TResult Function(String key) baseLost,
    required TResult Function(String msg) connecting,
    required TResult Function(String msg) status,
    required TResult Function(bool approved) pending,
    required TResult Function() connected,
    required TResult Function(List<String> pages) setPageOrder,
    required TResult Function(DartUiPage page) setPage,
    required TResult Function(String msg, bool fatal) error,
  }) {
    return status(msg);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String field0)? setId,
    TResult? Function()? unpaired,
    TResult? Function(String field0)? generatedInvite,
    TResult? Function(String key, String name)? baseFound,
    TResult? Function(String key)? baseLost,
    TResult? Function(String msg)? connecting,
    TResult? Function(String msg)? status,
    TResult? Function(bool approved)? pending,
    TResult? Function()? connected,
    TResult? Function(List<String> pages)? setPageOrder,
    TResult? Function(DartUiPage page)? setPage,
    TResult? Function(String msg, bool fatal)? error,
  }) {
    return status?.call(msg);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String field0)? setId,
    TResult Function()? unpaired,
    TResult Function(String field0)? generatedInvite,
    TResult Function(String key, String name)? baseFound,
    TResult Function(String key)? baseLost,
    TResult Function(String msg)? connecting,
    TResult Function(String msg)? status,
    TResult Function(bool approved)? pending,
    TResult Function()? connected,
    TResult Function(List<String> pages)? setPageOrder,
    TResult Function(DartUiPage page)? setPage,
    TResult Function(String msg, bool fatal)? error,
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
    required TResult Function(ToUi_BaseFound value) baseFound,
    required TResult Function(ToUi_BaseLost value) baseLost,
    required TResult Function(ToUi_Connecting value) connecting,
    required TResult Function(ToUi_Status value) status,
    required TResult Function(ToUi_Pending value) pending,
    required TResult Function(ToUi_Connected value) connected,
    required TResult Function(ToUi_SetPageOrder value) setPageOrder,
    required TResult Function(ToUi_SetPage value) setPage,
    required TResult Function(ToUi_Error value) error,
  }) {
    return status(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ToUi_SetId value)? setId,
    TResult? Function(ToUi_Unpaired value)? unpaired,
    TResult? Function(ToUi_GeneratedInvite value)? generatedInvite,
    TResult? Function(ToUi_BaseFound value)? baseFound,
    TResult? Function(ToUi_BaseLost value)? baseLost,
    TResult? Function(ToUi_Connecting value)? connecting,
    TResult? Function(ToUi_Status value)? status,
    TResult? Function(ToUi_Pending value)? pending,
    TResult? Function(ToUi_Connected value)? connected,
    TResult? Function(ToUi_SetPageOrder value)? setPageOrder,
    TResult? Function(ToUi_SetPage value)? setPage,
    TResult? Function(ToUi_Error value)? error,
  }) {
    return status?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ToUi_SetId value)? setId,
    TResult Function(ToUi_Unpaired value)? unpaired,
    TResult Function(ToUi_GeneratedInvite value)? generatedInvite,
    TResult Function(ToUi_BaseFound value)? baseFound,
    TResult Function(ToUi_BaseLost value)? baseLost,
    TResult Function(ToUi_Connecting value)? connecting,
    TResult Function(ToUi_Status value)? status,
    TResult Function(ToUi_Pending value)? pending,
    TResult Function(ToUi_Connected value)? connected,
    TResult Function(ToUi_SetPageOrder value)? setPageOrder,
    TResult Function(ToUi_SetPage value)? setPage,
    TResult Function(ToUi_Error value)? error,
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

  /// Create a copy of ToUi
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
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

  /// Create a copy of ToUi
  /// with the given fields replaced by the non-null parameter values.
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

  /// Create a copy of ToUi
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
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
    required TResult Function(String key, String name) baseFound,
    required TResult Function(String key) baseLost,
    required TResult Function(String msg) connecting,
    required TResult Function(String msg) status,
    required TResult Function(bool approved) pending,
    required TResult Function() connected,
    required TResult Function(List<String> pages) setPageOrder,
    required TResult Function(DartUiPage page) setPage,
    required TResult Function(String msg, bool fatal) error,
  }) {
    return pending(approved);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String field0)? setId,
    TResult? Function()? unpaired,
    TResult? Function(String field0)? generatedInvite,
    TResult? Function(String key, String name)? baseFound,
    TResult? Function(String key)? baseLost,
    TResult? Function(String msg)? connecting,
    TResult? Function(String msg)? status,
    TResult? Function(bool approved)? pending,
    TResult? Function()? connected,
    TResult? Function(List<String> pages)? setPageOrder,
    TResult? Function(DartUiPage page)? setPage,
    TResult? Function(String msg, bool fatal)? error,
  }) {
    return pending?.call(approved);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String field0)? setId,
    TResult Function()? unpaired,
    TResult Function(String field0)? generatedInvite,
    TResult Function(String key, String name)? baseFound,
    TResult Function(String key)? baseLost,
    TResult Function(String msg)? connecting,
    TResult Function(String msg)? status,
    TResult Function(bool approved)? pending,
    TResult Function()? connected,
    TResult Function(List<String> pages)? setPageOrder,
    TResult Function(DartUiPage page)? setPage,
    TResult Function(String msg, bool fatal)? error,
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
    required TResult Function(ToUi_BaseFound value) baseFound,
    required TResult Function(ToUi_BaseLost value) baseLost,
    required TResult Function(ToUi_Connecting value) connecting,
    required TResult Function(ToUi_Status value) status,
    required TResult Function(ToUi_Pending value) pending,
    required TResult Function(ToUi_Connected value) connected,
    required TResult Function(ToUi_SetPageOrder value) setPageOrder,
    required TResult Function(ToUi_SetPage value) setPage,
    required TResult Function(ToUi_Error value) error,
  }) {
    return pending(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ToUi_SetId value)? setId,
    TResult? Function(ToUi_Unpaired value)? unpaired,
    TResult? Function(ToUi_GeneratedInvite value)? generatedInvite,
    TResult? Function(ToUi_BaseFound value)? baseFound,
    TResult? Function(ToUi_BaseLost value)? baseLost,
    TResult? Function(ToUi_Connecting value)? connecting,
    TResult? Function(ToUi_Status value)? status,
    TResult? Function(ToUi_Pending value)? pending,
    TResult? Function(ToUi_Connected value)? connected,
    TResult? Function(ToUi_SetPageOrder value)? setPageOrder,
    TResult? Function(ToUi_SetPage value)? setPage,
    TResult? Function(ToUi_Error value)? error,
  }) {
    return pending?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ToUi_SetId value)? setId,
    TResult Function(ToUi_Unpaired value)? unpaired,
    TResult Function(ToUi_GeneratedInvite value)? generatedInvite,
    TResult Function(ToUi_BaseFound value)? baseFound,
    TResult Function(ToUi_BaseLost value)? baseLost,
    TResult Function(ToUi_Connecting value)? connecting,
    TResult Function(ToUi_Status value)? status,
    TResult Function(ToUi_Pending value)? pending,
    TResult Function(ToUi_Connected value)? connected,
    TResult Function(ToUi_SetPageOrder value)? setPageOrder,
    TResult Function(ToUi_SetPage value)? setPage,
    TResult Function(ToUi_Error value)? error,
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

  /// Create a copy of ToUi
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
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

  /// Create a copy of ToUi
  /// with the given fields replaced by the non-null parameter values.
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
    required TResult Function(String key, String name) baseFound,
    required TResult Function(String key) baseLost,
    required TResult Function(String msg) connecting,
    required TResult Function(String msg) status,
    required TResult Function(bool approved) pending,
    required TResult Function() connected,
    required TResult Function(List<String> pages) setPageOrder,
    required TResult Function(DartUiPage page) setPage,
    required TResult Function(String msg, bool fatal) error,
  }) {
    return connected();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String field0)? setId,
    TResult? Function()? unpaired,
    TResult? Function(String field0)? generatedInvite,
    TResult? Function(String key, String name)? baseFound,
    TResult? Function(String key)? baseLost,
    TResult? Function(String msg)? connecting,
    TResult? Function(String msg)? status,
    TResult? Function(bool approved)? pending,
    TResult? Function()? connected,
    TResult? Function(List<String> pages)? setPageOrder,
    TResult? Function(DartUiPage page)? setPage,
    TResult? Function(String msg, bool fatal)? error,
  }) {
    return connected?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String field0)? setId,
    TResult Function()? unpaired,
    TResult Function(String field0)? generatedInvite,
    TResult Function(String key, String name)? baseFound,
    TResult Function(String key)? baseLost,
    TResult Function(String msg)? connecting,
    TResult Function(String msg)? status,
    TResult Function(bool approved)? pending,
    TResult Function()? connected,
    TResult Function(List<String> pages)? setPageOrder,
    TResult Function(DartUiPage page)? setPage,
    TResult Function(String msg, bool fatal)? error,
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
    required TResult Function(ToUi_BaseFound value) baseFound,
    required TResult Function(ToUi_BaseLost value) baseLost,
    required TResult Function(ToUi_Connecting value) connecting,
    required TResult Function(ToUi_Status value) status,
    required TResult Function(ToUi_Pending value) pending,
    required TResult Function(ToUi_Connected value) connected,
    required TResult Function(ToUi_SetPageOrder value) setPageOrder,
    required TResult Function(ToUi_SetPage value) setPage,
    required TResult Function(ToUi_Error value) error,
  }) {
    return connected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ToUi_SetId value)? setId,
    TResult? Function(ToUi_Unpaired value)? unpaired,
    TResult? Function(ToUi_GeneratedInvite value)? generatedInvite,
    TResult? Function(ToUi_BaseFound value)? baseFound,
    TResult? Function(ToUi_BaseLost value)? baseLost,
    TResult? Function(ToUi_Connecting value)? connecting,
    TResult? Function(ToUi_Status value)? status,
    TResult? Function(ToUi_Pending value)? pending,
    TResult? Function(ToUi_Connected value)? connected,
    TResult? Function(ToUi_SetPageOrder value)? setPageOrder,
    TResult? Function(ToUi_SetPage value)? setPage,
    TResult? Function(ToUi_Error value)? error,
  }) {
    return connected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ToUi_SetId value)? setId,
    TResult Function(ToUi_Unpaired value)? unpaired,
    TResult Function(ToUi_GeneratedInvite value)? generatedInvite,
    TResult Function(ToUi_BaseFound value)? baseFound,
    TResult Function(ToUi_BaseLost value)? baseLost,
    TResult Function(ToUi_Connecting value)? connecting,
    TResult Function(ToUi_Status value)? status,
    TResult Function(ToUi_Pending value)? pending,
    TResult Function(ToUi_Connected value)? connected,
    TResult Function(ToUi_SetPageOrder value)? setPageOrder,
    TResult Function(ToUi_SetPage value)? setPage,
    TResult Function(ToUi_Error value)? error,
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

  /// Create a copy of ToUi
  /// with the given fields replaced by the non-null parameter values.
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

  /// Create a copy of ToUi
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
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
    required TResult Function(String key, String name) baseFound,
    required TResult Function(String key) baseLost,
    required TResult Function(String msg) connecting,
    required TResult Function(String msg) status,
    required TResult Function(bool approved) pending,
    required TResult Function() connected,
    required TResult Function(List<String> pages) setPageOrder,
    required TResult Function(DartUiPage page) setPage,
    required TResult Function(String msg, bool fatal) error,
  }) {
    return setPageOrder(pages);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String field0)? setId,
    TResult? Function()? unpaired,
    TResult? Function(String field0)? generatedInvite,
    TResult? Function(String key, String name)? baseFound,
    TResult? Function(String key)? baseLost,
    TResult? Function(String msg)? connecting,
    TResult? Function(String msg)? status,
    TResult? Function(bool approved)? pending,
    TResult? Function()? connected,
    TResult? Function(List<String> pages)? setPageOrder,
    TResult? Function(DartUiPage page)? setPage,
    TResult? Function(String msg, bool fatal)? error,
  }) {
    return setPageOrder?.call(pages);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String field0)? setId,
    TResult Function()? unpaired,
    TResult Function(String field0)? generatedInvite,
    TResult Function(String key, String name)? baseFound,
    TResult Function(String key)? baseLost,
    TResult Function(String msg)? connecting,
    TResult Function(String msg)? status,
    TResult Function(bool approved)? pending,
    TResult Function()? connected,
    TResult Function(List<String> pages)? setPageOrder,
    TResult Function(DartUiPage page)? setPage,
    TResult Function(String msg, bool fatal)? error,
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
    required TResult Function(ToUi_BaseFound value) baseFound,
    required TResult Function(ToUi_BaseLost value) baseLost,
    required TResult Function(ToUi_Connecting value) connecting,
    required TResult Function(ToUi_Status value) status,
    required TResult Function(ToUi_Pending value) pending,
    required TResult Function(ToUi_Connected value) connected,
    required TResult Function(ToUi_SetPageOrder value) setPageOrder,
    required TResult Function(ToUi_SetPage value) setPage,
    required TResult Function(ToUi_Error value) error,
  }) {
    return setPageOrder(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ToUi_SetId value)? setId,
    TResult? Function(ToUi_Unpaired value)? unpaired,
    TResult? Function(ToUi_GeneratedInvite value)? generatedInvite,
    TResult? Function(ToUi_BaseFound value)? baseFound,
    TResult? Function(ToUi_BaseLost value)? baseLost,
    TResult? Function(ToUi_Connecting value)? connecting,
    TResult? Function(ToUi_Status value)? status,
    TResult? Function(ToUi_Pending value)? pending,
    TResult? Function(ToUi_Connected value)? connected,
    TResult? Function(ToUi_SetPageOrder value)? setPageOrder,
    TResult? Function(ToUi_SetPage value)? setPage,
    TResult? Function(ToUi_Error value)? error,
  }) {
    return setPageOrder?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ToUi_SetId value)? setId,
    TResult Function(ToUi_Unpaired value)? unpaired,
    TResult Function(ToUi_GeneratedInvite value)? generatedInvite,
    TResult Function(ToUi_BaseFound value)? baseFound,
    TResult Function(ToUi_BaseLost value)? baseLost,
    TResult Function(ToUi_Connecting value)? connecting,
    TResult Function(ToUi_Status value)? status,
    TResult Function(ToUi_Pending value)? pending,
    TResult Function(ToUi_Connected value)? connected,
    TResult Function(ToUi_SetPageOrder value)? setPageOrder,
    TResult Function(ToUi_SetPage value)? setPage,
    TResult Function(ToUi_Error value)? error,
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

  /// Create a copy of ToUi
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
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

  /// Create a copy of ToUi
  /// with the given fields replaced by the non-null parameter values.
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

  /// Create a copy of ToUi
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
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
    required TResult Function(String key, String name) baseFound,
    required TResult Function(String key) baseLost,
    required TResult Function(String msg) connecting,
    required TResult Function(String msg) status,
    required TResult Function(bool approved) pending,
    required TResult Function() connected,
    required TResult Function(List<String> pages) setPageOrder,
    required TResult Function(DartUiPage page) setPage,
    required TResult Function(String msg, bool fatal) error,
  }) {
    return setPage(page);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String field0)? setId,
    TResult? Function()? unpaired,
    TResult? Function(String field0)? generatedInvite,
    TResult? Function(String key, String name)? baseFound,
    TResult? Function(String key)? baseLost,
    TResult? Function(String msg)? connecting,
    TResult? Function(String msg)? status,
    TResult? Function(bool approved)? pending,
    TResult? Function()? connected,
    TResult? Function(List<String> pages)? setPageOrder,
    TResult? Function(DartUiPage page)? setPage,
    TResult? Function(String msg, bool fatal)? error,
  }) {
    return setPage?.call(page);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String field0)? setId,
    TResult Function()? unpaired,
    TResult Function(String field0)? generatedInvite,
    TResult Function(String key, String name)? baseFound,
    TResult Function(String key)? baseLost,
    TResult Function(String msg)? connecting,
    TResult Function(String msg)? status,
    TResult Function(bool approved)? pending,
    TResult Function()? connected,
    TResult Function(List<String> pages)? setPageOrder,
    TResult Function(DartUiPage page)? setPage,
    TResult Function(String msg, bool fatal)? error,
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
    required TResult Function(ToUi_BaseFound value) baseFound,
    required TResult Function(ToUi_BaseLost value) baseLost,
    required TResult Function(ToUi_Connecting value) connecting,
    required TResult Function(ToUi_Status value) status,
    required TResult Function(ToUi_Pending value) pending,
    required TResult Function(ToUi_Connected value) connected,
    required TResult Function(ToUi_SetPageOrder value) setPageOrder,
    required TResult Function(ToUi_SetPage value) setPage,
    required TResult Function(ToUi_Error value) error,
  }) {
    return setPage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ToUi_SetId value)? setId,
    TResult? Function(ToUi_Unpaired value)? unpaired,
    TResult? Function(ToUi_GeneratedInvite value)? generatedInvite,
    TResult? Function(ToUi_BaseFound value)? baseFound,
    TResult? Function(ToUi_BaseLost value)? baseLost,
    TResult? Function(ToUi_Connecting value)? connecting,
    TResult? Function(ToUi_Status value)? status,
    TResult? Function(ToUi_Pending value)? pending,
    TResult? Function(ToUi_Connected value)? connected,
    TResult? Function(ToUi_SetPageOrder value)? setPageOrder,
    TResult? Function(ToUi_SetPage value)? setPage,
    TResult? Function(ToUi_Error value)? error,
  }) {
    return setPage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ToUi_SetId value)? setId,
    TResult Function(ToUi_Unpaired value)? unpaired,
    TResult Function(ToUi_GeneratedInvite value)? generatedInvite,
    TResult Function(ToUi_BaseFound value)? baseFound,
    TResult Function(ToUi_BaseLost value)? baseLost,
    TResult Function(ToUi_Connecting value)? connecting,
    TResult Function(ToUi_Status value)? status,
    TResult Function(ToUi_Pending value)? pending,
    TResult Function(ToUi_Connected value)? connected,
    TResult Function(ToUi_SetPageOrder value)? setPageOrder,
    TResult Function(ToUi_SetPage value)? setPage,
    TResult Function(ToUi_Error value)? error,
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

  /// Create a copy of ToUi
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ToUi_SetPageImplCopyWith<_$ToUi_SetPageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ToUi_ErrorImplCopyWith<$Res> {
  factory _$$ToUi_ErrorImplCopyWith(
          _$ToUi_ErrorImpl value, $Res Function(_$ToUi_ErrorImpl) then) =
      __$$ToUi_ErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String msg, bool fatal});
}

/// @nodoc
class __$$ToUi_ErrorImplCopyWithImpl<$Res>
    extends _$ToUiCopyWithImpl<$Res, _$ToUi_ErrorImpl>
    implements _$$ToUi_ErrorImplCopyWith<$Res> {
  __$$ToUi_ErrorImplCopyWithImpl(
      _$ToUi_ErrorImpl _value, $Res Function(_$ToUi_ErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of ToUi
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? msg = null,
    Object? fatal = null,
  }) {
    return _then(_$ToUi_ErrorImpl(
      msg: null == msg
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String,
      fatal: null == fatal
          ? _value.fatal
          : fatal // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$ToUi_ErrorImpl extends ToUi_Error {
  const _$ToUi_ErrorImpl({required this.msg, required this.fatal}) : super._();

  @override
  final String msg;
  @override
  final bool fatal;

  @override
  String toString() {
    return 'ToUi.error(msg: $msg, fatal: $fatal)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ToUi_ErrorImpl &&
            (identical(other.msg, msg) || other.msg == msg) &&
            (identical(other.fatal, fatal) || other.fatal == fatal));
  }

  @override
  int get hashCode => Object.hash(runtimeType, msg, fatal);

  /// Create a copy of ToUi
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ToUi_ErrorImplCopyWith<_$ToUi_ErrorImpl> get copyWith =>
      __$$ToUi_ErrorImplCopyWithImpl<_$ToUi_ErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String field0) setId,
    required TResult Function() unpaired,
    required TResult Function(String field0) generatedInvite,
    required TResult Function(String key, String name) baseFound,
    required TResult Function(String key) baseLost,
    required TResult Function(String msg) connecting,
    required TResult Function(String msg) status,
    required TResult Function(bool approved) pending,
    required TResult Function() connected,
    required TResult Function(List<String> pages) setPageOrder,
    required TResult Function(DartUiPage page) setPage,
    required TResult Function(String msg, bool fatal) error,
  }) {
    return error(msg, fatal);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String field0)? setId,
    TResult? Function()? unpaired,
    TResult? Function(String field0)? generatedInvite,
    TResult? Function(String key, String name)? baseFound,
    TResult? Function(String key)? baseLost,
    TResult? Function(String msg)? connecting,
    TResult? Function(String msg)? status,
    TResult? Function(bool approved)? pending,
    TResult? Function()? connected,
    TResult? Function(List<String> pages)? setPageOrder,
    TResult? Function(DartUiPage page)? setPage,
    TResult? Function(String msg, bool fatal)? error,
  }) {
    return error?.call(msg, fatal);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String field0)? setId,
    TResult Function()? unpaired,
    TResult Function(String field0)? generatedInvite,
    TResult Function(String key, String name)? baseFound,
    TResult Function(String key)? baseLost,
    TResult Function(String msg)? connecting,
    TResult Function(String msg)? status,
    TResult Function(bool approved)? pending,
    TResult Function()? connected,
    TResult Function(List<String> pages)? setPageOrder,
    TResult Function(DartUiPage page)? setPage,
    TResult Function(String msg, bool fatal)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(msg, fatal);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ToUi_SetId value) setId,
    required TResult Function(ToUi_Unpaired value) unpaired,
    required TResult Function(ToUi_GeneratedInvite value) generatedInvite,
    required TResult Function(ToUi_BaseFound value) baseFound,
    required TResult Function(ToUi_BaseLost value) baseLost,
    required TResult Function(ToUi_Connecting value) connecting,
    required TResult Function(ToUi_Status value) status,
    required TResult Function(ToUi_Pending value) pending,
    required TResult Function(ToUi_Connected value) connected,
    required TResult Function(ToUi_SetPageOrder value) setPageOrder,
    required TResult Function(ToUi_SetPage value) setPage,
    required TResult Function(ToUi_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ToUi_SetId value)? setId,
    TResult? Function(ToUi_Unpaired value)? unpaired,
    TResult? Function(ToUi_GeneratedInvite value)? generatedInvite,
    TResult? Function(ToUi_BaseFound value)? baseFound,
    TResult? Function(ToUi_BaseLost value)? baseLost,
    TResult? Function(ToUi_Connecting value)? connecting,
    TResult? Function(ToUi_Status value)? status,
    TResult? Function(ToUi_Pending value)? pending,
    TResult? Function(ToUi_Connected value)? connected,
    TResult? Function(ToUi_SetPageOrder value)? setPageOrder,
    TResult? Function(ToUi_SetPage value)? setPage,
    TResult? Function(ToUi_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ToUi_SetId value)? setId,
    TResult Function(ToUi_Unpaired value)? unpaired,
    TResult Function(ToUi_GeneratedInvite value)? generatedInvite,
    TResult Function(ToUi_BaseFound value)? baseFound,
    TResult Function(ToUi_BaseLost value)? baseLost,
    TResult Function(ToUi_Connecting value)? connecting,
    TResult Function(ToUi_Status value)? status,
    TResult Function(ToUi_Pending value)? pending,
    TResult Function(ToUi_Connected value)? connected,
    TResult Function(ToUi_SetPageOrder value)? setPageOrder,
    TResult Function(ToUi_SetPage value)? setPage,
    TResult Function(ToUi_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ToUi_Error extends ToUi {
  const factory ToUi_Error(
      {required final String msg,
      required final bool fatal}) = _$ToUi_ErrorImpl;
  const ToUi_Error._() : super._();

  String get msg;
  bool get fatal;

  /// Create a copy of ToUi
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ToUi_ErrorImplCopyWith<_$ToUi_ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'extra.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Extra _$ExtraFromJson(Map<String, dynamic> json) {
  return _Extra.fromJson(json);
}

/// @nodoc
mixin _$Extra {
  @JsonKey(name: "is_cell_cancel")
  bool get isCellCancel => throw _privateConstructorUsedError;
  @JsonKey(name: "is_cell_cancel")
  set isCellCancel(bool value) => throw _privateConstructorUsedError;
  @JsonKey(name: "is_cell_refund")
  bool get isCellRefund => throw _privateConstructorUsedError;
  @JsonKey(name: "is_cell_refund")
  set isCellRefund(bool value) => throw _privateConstructorUsedError;
  @JsonKey(name: "is_cell_reverse_settle")
  bool get isCellReverseSettle => throw _privateConstructorUsedError;
  @JsonKey(name: "is_cell_reverse_settle")
  set isCellReverseSettle(bool value) => throw _privateConstructorUsedError;

  /// Serializes this Extra to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Extra
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ExtraCopyWith<Extra> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExtraCopyWith<$Res> {
  factory $ExtraCopyWith(Extra value, $Res Function(Extra) then) =
      _$ExtraCopyWithImpl<$Res, Extra>;
  @useResult
  $Res call(
      {@JsonKey(name: "is_cell_cancel") bool isCellCancel,
      @JsonKey(name: "is_cell_refund") bool isCellRefund,
      @JsonKey(name: "is_cell_reverse_settle") bool isCellReverseSettle});
}

/// @nodoc
class _$ExtraCopyWithImpl<$Res, $Val extends Extra>
    implements $ExtraCopyWith<$Res> {
  _$ExtraCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Extra
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isCellCancel = null,
    Object? isCellRefund = null,
    Object? isCellReverseSettle = null,
  }) {
    return _then(_value.copyWith(
      isCellCancel: null == isCellCancel
          ? _value.isCellCancel
          : isCellCancel // ignore: cast_nullable_to_non_nullable
              as bool,
      isCellRefund: null == isCellRefund
          ? _value.isCellRefund
          : isCellRefund // ignore: cast_nullable_to_non_nullable
              as bool,
      isCellReverseSettle: null == isCellReverseSettle
          ? _value.isCellReverseSettle
          : isCellReverseSettle // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ExtraImplCopyWith<$Res> implements $ExtraCopyWith<$Res> {
  factory _$$ExtraImplCopyWith(
          _$ExtraImpl value, $Res Function(_$ExtraImpl) then) =
      __$$ExtraImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "is_cell_cancel") bool isCellCancel,
      @JsonKey(name: "is_cell_refund") bool isCellRefund,
      @JsonKey(name: "is_cell_reverse_settle") bool isCellReverseSettle});
}

/// @nodoc
class __$$ExtraImplCopyWithImpl<$Res>
    extends _$ExtraCopyWithImpl<$Res, _$ExtraImpl>
    implements _$$ExtraImplCopyWith<$Res> {
  __$$ExtraImplCopyWithImpl(
      _$ExtraImpl _value, $Res Function(_$ExtraImpl) _then)
      : super(_value, _then);

  /// Create a copy of Extra
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isCellCancel = null,
    Object? isCellRefund = null,
    Object? isCellReverseSettle = null,
  }) {
    return _then(_$ExtraImpl(
      isCellCancel: null == isCellCancel
          ? _value.isCellCancel
          : isCellCancel // ignore: cast_nullable_to_non_nullable
              as bool,
      isCellRefund: null == isCellRefund
          ? _value.isCellRefund
          : isCellRefund // ignore: cast_nullable_to_non_nullable
              as bool,
      isCellReverseSettle: null == isCellReverseSettle
          ? _value.isCellReverseSettle
          : isCellReverseSettle // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ExtraImpl implements _Extra {
  _$ExtraImpl(
      {@JsonKey(name: "is_cell_cancel") required this.isCellCancel,
      @JsonKey(name: "is_cell_refund") required this.isCellRefund,
      @JsonKey(name: "is_cell_reverse_settle")
      required this.isCellReverseSettle});

  factory _$ExtraImpl.fromJson(Map<String, dynamic> json) =>
      _$$ExtraImplFromJson(json);

  @override
  @JsonKey(name: "is_cell_cancel")
  bool isCellCancel;
  @override
  @JsonKey(name: "is_cell_refund")
  bool isCellRefund;
  @override
  @JsonKey(name: "is_cell_reverse_settle")
  bool isCellReverseSettle;

  @override
  String toString() {
    return 'Extra(isCellCancel: $isCellCancel, isCellRefund: $isCellRefund, isCellReverseSettle: $isCellReverseSettle)';
  }

  /// Create a copy of Extra
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ExtraImplCopyWith<_$ExtraImpl> get copyWith =>
      __$$ExtraImplCopyWithImpl<_$ExtraImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ExtraImplToJson(
      this,
    );
  }
}

abstract class _Extra implements Extra {
  factory _Extra(
      {@JsonKey(name: "is_cell_cancel") required bool isCellCancel,
      @JsonKey(name: "is_cell_refund") required bool isCellRefund,
      @JsonKey(name: "is_cell_reverse_settle")
      required bool isCellReverseSettle}) = _$ExtraImpl;

  factory _Extra.fromJson(Map<String, dynamic> json) = _$ExtraImpl.fromJson;

  @override
  @JsonKey(name: "is_cell_cancel")
  bool get isCellCancel;
  @JsonKey(name: "is_cell_cancel")
  set isCellCancel(bool value);
  @override
  @JsonKey(name: "is_cell_refund")
  bool get isCellRefund;
  @JsonKey(name: "is_cell_refund")
  set isCellRefund(bool value);
  @override
  @JsonKey(name: "is_cell_reverse_settle")
  bool get isCellReverseSettle;
  @JsonKey(name: "is_cell_reverse_settle")
  set isCellReverseSettle(bool value);

  /// Create a copy of Extra
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ExtraImplCopyWith<_$ExtraImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

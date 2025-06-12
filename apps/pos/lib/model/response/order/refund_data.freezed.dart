// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'refund_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RefundData _$RefundDataFromJson(Map<String, dynamic> json) {
  return _RefundData.fromJson(json);
}

/// @nodoc
mixin _$RefundData {
  @JsonKey(name: "is_open_cash_box")
  bool? get isOpenCashBox => throw _privateConstructorUsedError;

  /// Serializes this RefundData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RefundData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RefundDataCopyWith<RefundData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RefundDataCopyWith<$Res> {
  factory $RefundDataCopyWith(
          RefundData value, $Res Function(RefundData) then) =
      _$RefundDataCopyWithImpl<$Res, RefundData>;
  @useResult
  $Res call({@JsonKey(name: "is_open_cash_box") bool? isOpenCashBox});
}

/// @nodoc
class _$RefundDataCopyWithImpl<$Res, $Val extends RefundData>
    implements $RefundDataCopyWith<$Res> {
  _$RefundDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RefundData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isOpenCashBox = freezed,
  }) {
    return _then(_value.copyWith(
      isOpenCashBox: freezed == isOpenCashBox
          ? _value.isOpenCashBox
          : isOpenCashBox // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RefundDataImplCopyWith<$Res>
    implements $RefundDataCopyWith<$Res> {
  factory _$$RefundDataImplCopyWith(
          _$RefundDataImpl value, $Res Function(_$RefundDataImpl) then) =
      __$$RefundDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: "is_open_cash_box") bool? isOpenCashBox});
}

/// @nodoc
class __$$RefundDataImplCopyWithImpl<$Res>
    extends _$RefundDataCopyWithImpl<$Res, _$RefundDataImpl>
    implements _$$RefundDataImplCopyWith<$Res> {
  __$$RefundDataImplCopyWithImpl(
      _$RefundDataImpl _value, $Res Function(_$RefundDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of RefundData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isOpenCashBox = freezed,
  }) {
    return _then(_$RefundDataImpl(
      isOpenCashBox: freezed == isOpenCashBox
          ? _value.isOpenCashBox
          : isOpenCashBox // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RefundDataImpl implements _RefundData {
  _$RefundDataImpl({@JsonKey(name: "is_open_cash_box") this.isOpenCashBox});

  factory _$RefundDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$RefundDataImplFromJson(json);

  @override
  @JsonKey(name: "is_open_cash_box")
  final bool? isOpenCashBox;

  @override
  String toString() {
    return 'RefundData(isOpenCashBox: $isOpenCashBox)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RefundDataImpl &&
            (identical(other.isOpenCashBox, isOpenCashBox) ||
                other.isOpenCashBox == isOpenCashBox));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, isOpenCashBox);

  /// Create a copy of RefundData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RefundDataImplCopyWith<_$RefundDataImpl> get copyWith =>
      __$$RefundDataImplCopyWithImpl<_$RefundDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RefundDataImplToJson(
      this,
    );
  }
}

abstract class _RefundData implements RefundData {
  factory _RefundData(
          {@JsonKey(name: "is_open_cash_box") final bool? isOpenCashBox}) =
      _$RefundDataImpl;

  factory _RefundData.fromJson(Map<String, dynamic> json) =
      _$RefundDataImpl.fromJson;

  @override
  @JsonKey(name: "is_open_cash_box")
  bool? get isOpenCashBox;

  /// Create a copy of RefundData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RefundDataImplCopyWith<_$RefundDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

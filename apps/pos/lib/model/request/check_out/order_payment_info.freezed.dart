// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_payment_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RequestOrderPaymentInfo _$RequestOrderPaymentInfoFromJson(
    Map<String, dynamic> json) {
  return _RequestOrderPaymentInfo.fromJson(json);
}

/// @nodoc
mixin _$RequestOrderPaymentInfo {
  @JsonKey(name: "sale_bill_uuid")
  int get saleBillUuid => throw _privateConstructorUsedError;
  @JsonKey(name: "sale_order_uuid")
  int get saleOrderUuid => throw _privateConstructorUsedError;

  /// Serializes this RequestOrderPaymentInfo to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RequestOrderPaymentInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RequestOrderPaymentInfoCopyWith<RequestOrderPaymentInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RequestOrderPaymentInfoCopyWith<$Res> {
  factory $RequestOrderPaymentInfoCopyWith(RequestOrderPaymentInfo value,
          $Res Function(RequestOrderPaymentInfo) then) =
      _$RequestOrderPaymentInfoCopyWithImpl<$Res, RequestOrderPaymentInfo>;
  @useResult
  $Res call(
      {@JsonKey(name: "sale_bill_uuid") int saleBillUuid,
      @JsonKey(name: "sale_order_uuid") int saleOrderUuid});
}

/// @nodoc
class _$RequestOrderPaymentInfoCopyWithImpl<$Res,
        $Val extends RequestOrderPaymentInfo>
    implements $RequestOrderPaymentInfoCopyWith<$Res> {
  _$RequestOrderPaymentInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RequestOrderPaymentInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? saleBillUuid = null,
    Object? saleOrderUuid = null,
  }) {
    return _then(_value.copyWith(
      saleBillUuid: null == saleBillUuid
          ? _value.saleBillUuid
          : saleBillUuid // ignore: cast_nullable_to_non_nullable
              as int,
      saleOrderUuid: null == saleOrderUuid
          ? _value.saleOrderUuid
          : saleOrderUuid // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RequestOrderPaymentInfoImplCopyWith<$Res>
    implements $RequestOrderPaymentInfoCopyWith<$Res> {
  factory _$$RequestOrderPaymentInfoImplCopyWith(
          _$RequestOrderPaymentInfoImpl value,
          $Res Function(_$RequestOrderPaymentInfoImpl) then) =
      __$$RequestOrderPaymentInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "sale_bill_uuid") int saleBillUuid,
      @JsonKey(name: "sale_order_uuid") int saleOrderUuid});
}

/// @nodoc
class __$$RequestOrderPaymentInfoImplCopyWithImpl<$Res>
    extends _$RequestOrderPaymentInfoCopyWithImpl<$Res,
        _$RequestOrderPaymentInfoImpl>
    implements _$$RequestOrderPaymentInfoImplCopyWith<$Res> {
  __$$RequestOrderPaymentInfoImplCopyWithImpl(
      _$RequestOrderPaymentInfoImpl _value,
      $Res Function(_$RequestOrderPaymentInfoImpl) _then)
      : super(_value, _then);

  /// Create a copy of RequestOrderPaymentInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? saleBillUuid = null,
    Object? saleOrderUuid = null,
  }) {
    return _then(_$RequestOrderPaymentInfoImpl(
      saleBillUuid: null == saleBillUuid
          ? _value.saleBillUuid
          : saleBillUuid // ignore: cast_nullable_to_non_nullable
              as int,
      saleOrderUuid: null == saleOrderUuid
          ? _value.saleOrderUuid
          : saleOrderUuid // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RequestOrderPaymentInfoImpl implements _RequestOrderPaymentInfo {
  const _$RequestOrderPaymentInfoImpl(
      {@JsonKey(name: "sale_bill_uuid") required this.saleBillUuid,
      @JsonKey(name: "sale_order_uuid") required this.saleOrderUuid});

  factory _$RequestOrderPaymentInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$RequestOrderPaymentInfoImplFromJson(json);

  @override
  @JsonKey(name: "sale_bill_uuid")
  final int saleBillUuid;
  @override
  @JsonKey(name: "sale_order_uuid")
  final int saleOrderUuid;

  @override
  String toString() {
    return 'RequestOrderPaymentInfo(saleBillUuid: $saleBillUuid, saleOrderUuid: $saleOrderUuid)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RequestOrderPaymentInfoImpl &&
            (identical(other.saleBillUuid, saleBillUuid) ||
                other.saleBillUuid == saleBillUuid) &&
            (identical(other.saleOrderUuid, saleOrderUuid) ||
                other.saleOrderUuid == saleOrderUuid));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, saleBillUuid, saleOrderUuid);

  /// Create a copy of RequestOrderPaymentInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RequestOrderPaymentInfoImplCopyWith<_$RequestOrderPaymentInfoImpl>
      get copyWith => __$$RequestOrderPaymentInfoImplCopyWithImpl<
          _$RequestOrderPaymentInfoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RequestOrderPaymentInfoImplToJson(
      this,
    );
  }
}

abstract class _RequestOrderPaymentInfo implements RequestOrderPaymentInfo {
  const factory _RequestOrderPaymentInfo(
          {@JsonKey(name: "sale_bill_uuid") required final int saleBillUuid,
          @JsonKey(name: "sale_order_uuid") required final int saleOrderUuid}) =
      _$RequestOrderPaymentInfoImpl;

  factory _RequestOrderPaymentInfo.fromJson(Map<String, dynamic> json) =
      _$RequestOrderPaymentInfoImpl.fromJson;

  @override
  @JsonKey(name: "sale_bill_uuid")
  int get saleBillUuid;
  @override
  @JsonKey(name: "sale_order_uuid")
  int get saleOrderUuid;

  /// Create a copy of RequestOrderPaymentInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RequestOrderPaymentInfoImplCopyWith<_$RequestOrderPaymentInfoImpl>
      get copyWith => throw _privateConstructorUsedError;
}

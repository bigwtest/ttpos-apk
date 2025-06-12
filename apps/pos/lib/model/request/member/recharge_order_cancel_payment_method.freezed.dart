// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'recharge_order_cancel_payment_method.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RequestRechargeOrderCancelPaymentMethod
    _$RequestRechargeOrderCancelPaymentMethodFromJson(
        Map<String, dynamic> json) {
  return _RequestRechargeOrderCancelPaymentMethod.fromJson(json);
}

/// @nodoc
mixin _$RequestRechargeOrderCancelPaymentMethod {
  @JsonKey(name: "payment_order_uuid")
  int get paymentOrderUuid => throw _privateConstructorUsedError;
  @JsonKey(name: "recharge_order_uuid")
  int get rechargeOrderUuid => throw _privateConstructorUsedError;

  /// Serializes this RequestRechargeOrderCancelPaymentMethod to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RequestRechargeOrderCancelPaymentMethod
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RequestRechargeOrderCancelPaymentMethodCopyWith<
          RequestRechargeOrderCancelPaymentMethod>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RequestRechargeOrderCancelPaymentMethodCopyWith<$Res> {
  factory $RequestRechargeOrderCancelPaymentMethodCopyWith(
          RequestRechargeOrderCancelPaymentMethod value,
          $Res Function(RequestRechargeOrderCancelPaymentMethod) then) =
      _$RequestRechargeOrderCancelPaymentMethodCopyWithImpl<$Res,
          RequestRechargeOrderCancelPaymentMethod>;
  @useResult
  $Res call(
      {@JsonKey(name: "payment_order_uuid") int paymentOrderUuid,
      @JsonKey(name: "recharge_order_uuid") int rechargeOrderUuid});
}

/// @nodoc
class _$RequestRechargeOrderCancelPaymentMethodCopyWithImpl<$Res,
        $Val extends RequestRechargeOrderCancelPaymentMethod>
    implements $RequestRechargeOrderCancelPaymentMethodCopyWith<$Res> {
  _$RequestRechargeOrderCancelPaymentMethodCopyWithImpl(
      this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RequestRechargeOrderCancelPaymentMethod
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? paymentOrderUuid = null,
    Object? rechargeOrderUuid = null,
  }) {
    return _then(_value.copyWith(
      paymentOrderUuid: null == paymentOrderUuid
          ? _value.paymentOrderUuid
          : paymentOrderUuid // ignore: cast_nullable_to_non_nullable
              as int,
      rechargeOrderUuid: null == rechargeOrderUuid
          ? _value.rechargeOrderUuid
          : rechargeOrderUuid // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RequestRechargeOrderCancelPaymentMethodImplCopyWith<$Res>
    implements $RequestRechargeOrderCancelPaymentMethodCopyWith<$Res> {
  factory _$$RequestRechargeOrderCancelPaymentMethodImplCopyWith(
          _$RequestRechargeOrderCancelPaymentMethodImpl value,
          $Res Function(_$RequestRechargeOrderCancelPaymentMethodImpl) then) =
      __$$RequestRechargeOrderCancelPaymentMethodImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "payment_order_uuid") int paymentOrderUuid,
      @JsonKey(name: "recharge_order_uuid") int rechargeOrderUuid});
}

/// @nodoc
class __$$RequestRechargeOrderCancelPaymentMethodImplCopyWithImpl<$Res>
    extends _$RequestRechargeOrderCancelPaymentMethodCopyWithImpl<$Res,
        _$RequestRechargeOrderCancelPaymentMethodImpl>
    implements _$$RequestRechargeOrderCancelPaymentMethodImplCopyWith<$Res> {
  __$$RequestRechargeOrderCancelPaymentMethodImplCopyWithImpl(
      _$RequestRechargeOrderCancelPaymentMethodImpl _value,
      $Res Function(_$RequestRechargeOrderCancelPaymentMethodImpl) _then)
      : super(_value, _then);

  /// Create a copy of RequestRechargeOrderCancelPaymentMethod
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? paymentOrderUuid = null,
    Object? rechargeOrderUuid = null,
  }) {
    return _then(_$RequestRechargeOrderCancelPaymentMethodImpl(
      paymentOrderUuid: null == paymentOrderUuid
          ? _value.paymentOrderUuid
          : paymentOrderUuid // ignore: cast_nullable_to_non_nullable
              as int,
      rechargeOrderUuid: null == rechargeOrderUuid
          ? _value.rechargeOrderUuid
          : rechargeOrderUuid // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RequestRechargeOrderCancelPaymentMethodImpl
    implements _RequestRechargeOrderCancelPaymentMethod {
  const _$RequestRechargeOrderCancelPaymentMethodImpl(
      {@JsonKey(name: "payment_order_uuid") required this.paymentOrderUuid,
      @JsonKey(name: "recharge_order_uuid") required this.rechargeOrderUuid});

  factory _$RequestRechargeOrderCancelPaymentMethodImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$RequestRechargeOrderCancelPaymentMethodImplFromJson(json);

  @override
  @JsonKey(name: "payment_order_uuid")
  final int paymentOrderUuid;
  @override
  @JsonKey(name: "recharge_order_uuid")
  final int rechargeOrderUuid;

  @override
  String toString() {
    return 'RequestRechargeOrderCancelPaymentMethod(paymentOrderUuid: $paymentOrderUuid, rechargeOrderUuid: $rechargeOrderUuid)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RequestRechargeOrderCancelPaymentMethodImpl &&
            (identical(other.paymentOrderUuid, paymentOrderUuid) ||
                other.paymentOrderUuid == paymentOrderUuid) &&
            (identical(other.rechargeOrderUuid, rechargeOrderUuid) ||
                other.rechargeOrderUuid == rechargeOrderUuid));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, paymentOrderUuid, rechargeOrderUuid);

  /// Create a copy of RequestRechargeOrderCancelPaymentMethod
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RequestRechargeOrderCancelPaymentMethodImplCopyWith<
          _$RequestRechargeOrderCancelPaymentMethodImpl>
      get copyWith =>
          __$$RequestRechargeOrderCancelPaymentMethodImplCopyWithImpl<
              _$RequestRechargeOrderCancelPaymentMethodImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RequestRechargeOrderCancelPaymentMethodImplToJson(
      this,
    );
  }
}

abstract class _RequestRechargeOrderCancelPaymentMethod
    implements RequestRechargeOrderCancelPaymentMethod {
  const factory _RequestRechargeOrderCancelPaymentMethod(
      {@JsonKey(name: "payment_order_uuid") required final int paymentOrderUuid,
      @JsonKey(name: "recharge_order_uuid")
      required final int
          rechargeOrderUuid}) = _$RequestRechargeOrderCancelPaymentMethodImpl;

  factory _RequestRechargeOrderCancelPaymentMethod.fromJson(
          Map<String, dynamic> json) =
      _$RequestRechargeOrderCancelPaymentMethodImpl.fromJson;

  @override
  @JsonKey(name: "payment_order_uuid")
  int get paymentOrderUuid;
  @override
  @JsonKey(name: "recharge_order_uuid")
  int get rechargeOrderUuid;

  /// Create a copy of RequestRechargeOrderCancelPaymentMethod
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RequestRechargeOrderCancelPaymentMethodImplCopyWith<
          _$RequestRechargeOrderCancelPaymentMethodImpl>
      get copyWith => throw _privateConstructorUsedError;
}

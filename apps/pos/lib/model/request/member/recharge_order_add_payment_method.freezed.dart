// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'recharge_order_add_payment_method.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RequestRechargeOrderAddPaymentMethod
    _$RequestRechargeOrderAddPaymentMethodFromJson(Map<String, dynamic> json) {
  return _RequestRechargeOrderAddPaymentMethod.fromJson(json);
}

/// @nodoc
mixin _$RequestRechargeOrderAddPaymentMethod {
  @JsonKey(name: "payment_amount")
  double get paymentAmount => throw _privateConstructorUsedError;
  @JsonKey(name: "payment_method_uuid")
  int get paymentMethodUuid => throw _privateConstructorUsedError;
  @JsonKey(name: "recharge_order_uuid")
  int get rechargeOrderUuid => throw _privateConstructorUsedError;

  /// Serializes this RequestRechargeOrderAddPaymentMethod to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RequestRechargeOrderAddPaymentMethod
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RequestRechargeOrderAddPaymentMethodCopyWith<
          RequestRechargeOrderAddPaymentMethod>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RequestRechargeOrderAddPaymentMethodCopyWith<$Res> {
  factory $RequestRechargeOrderAddPaymentMethodCopyWith(
          RequestRechargeOrderAddPaymentMethod value,
          $Res Function(RequestRechargeOrderAddPaymentMethod) then) =
      _$RequestRechargeOrderAddPaymentMethodCopyWithImpl<$Res,
          RequestRechargeOrderAddPaymentMethod>;
  @useResult
  $Res call(
      {@JsonKey(name: "payment_amount") double paymentAmount,
      @JsonKey(name: "payment_method_uuid") int paymentMethodUuid,
      @JsonKey(name: "recharge_order_uuid") int rechargeOrderUuid});
}

/// @nodoc
class _$RequestRechargeOrderAddPaymentMethodCopyWithImpl<$Res,
        $Val extends RequestRechargeOrderAddPaymentMethod>
    implements $RequestRechargeOrderAddPaymentMethodCopyWith<$Res> {
  _$RequestRechargeOrderAddPaymentMethodCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RequestRechargeOrderAddPaymentMethod
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? paymentAmount = null,
    Object? paymentMethodUuid = null,
    Object? rechargeOrderUuid = null,
  }) {
    return _then(_value.copyWith(
      paymentAmount: null == paymentAmount
          ? _value.paymentAmount
          : paymentAmount // ignore: cast_nullable_to_non_nullable
              as double,
      paymentMethodUuid: null == paymentMethodUuid
          ? _value.paymentMethodUuid
          : paymentMethodUuid // ignore: cast_nullable_to_non_nullable
              as int,
      rechargeOrderUuid: null == rechargeOrderUuid
          ? _value.rechargeOrderUuid
          : rechargeOrderUuid // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RequestRechargeOrderAddPaymentMethodImplCopyWith<$Res>
    implements $RequestRechargeOrderAddPaymentMethodCopyWith<$Res> {
  factory _$$RequestRechargeOrderAddPaymentMethodImplCopyWith(
          _$RequestRechargeOrderAddPaymentMethodImpl value,
          $Res Function(_$RequestRechargeOrderAddPaymentMethodImpl) then) =
      __$$RequestRechargeOrderAddPaymentMethodImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "payment_amount") double paymentAmount,
      @JsonKey(name: "payment_method_uuid") int paymentMethodUuid,
      @JsonKey(name: "recharge_order_uuid") int rechargeOrderUuid});
}

/// @nodoc
class __$$RequestRechargeOrderAddPaymentMethodImplCopyWithImpl<$Res>
    extends _$RequestRechargeOrderAddPaymentMethodCopyWithImpl<$Res,
        _$RequestRechargeOrderAddPaymentMethodImpl>
    implements _$$RequestRechargeOrderAddPaymentMethodImplCopyWith<$Res> {
  __$$RequestRechargeOrderAddPaymentMethodImplCopyWithImpl(
      _$RequestRechargeOrderAddPaymentMethodImpl _value,
      $Res Function(_$RequestRechargeOrderAddPaymentMethodImpl) _then)
      : super(_value, _then);

  /// Create a copy of RequestRechargeOrderAddPaymentMethod
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? paymentAmount = null,
    Object? paymentMethodUuid = null,
    Object? rechargeOrderUuid = null,
  }) {
    return _then(_$RequestRechargeOrderAddPaymentMethodImpl(
      paymentAmount: null == paymentAmount
          ? _value.paymentAmount
          : paymentAmount // ignore: cast_nullable_to_non_nullable
              as double,
      paymentMethodUuid: null == paymentMethodUuid
          ? _value.paymentMethodUuid
          : paymentMethodUuid // ignore: cast_nullable_to_non_nullable
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
class _$RequestRechargeOrderAddPaymentMethodImpl
    implements _RequestRechargeOrderAddPaymentMethod {
  const _$RequestRechargeOrderAddPaymentMethodImpl(
      {@JsonKey(name: "payment_amount") required this.paymentAmount,
      @JsonKey(name: "payment_method_uuid") required this.paymentMethodUuid,
      @JsonKey(name: "recharge_order_uuid") required this.rechargeOrderUuid});

  factory _$RequestRechargeOrderAddPaymentMethodImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$RequestRechargeOrderAddPaymentMethodImplFromJson(json);

  @override
  @JsonKey(name: "payment_amount")
  final double paymentAmount;
  @override
  @JsonKey(name: "payment_method_uuid")
  final int paymentMethodUuid;
  @override
  @JsonKey(name: "recharge_order_uuid")
  final int rechargeOrderUuid;

  @override
  String toString() {
    return 'RequestRechargeOrderAddPaymentMethod(paymentAmount: $paymentAmount, paymentMethodUuid: $paymentMethodUuid, rechargeOrderUuid: $rechargeOrderUuid)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RequestRechargeOrderAddPaymentMethodImpl &&
            (identical(other.paymentAmount, paymentAmount) ||
                other.paymentAmount == paymentAmount) &&
            (identical(other.paymentMethodUuid, paymentMethodUuid) ||
                other.paymentMethodUuid == paymentMethodUuid) &&
            (identical(other.rechargeOrderUuid, rechargeOrderUuid) ||
                other.rechargeOrderUuid == rechargeOrderUuid));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, paymentAmount, paymentMethodUuid, rechargeOrderUuid);

  /// Create a copy of RequestRechargeOrderAddPaymentMethod
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RequestRechargeOrderAddPaymentMethodImplCopyWith<
          _$RequestRechargeOrderAddPaymentMethodImpl>
      get copyWith => __$$RequestRechargeOrderAddPaymentMethodImplCopyWithImpl<
          _$RequestRechargeOrderAddPaymentMethodImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RequestRechargeOrderAddPaymentMethodImplToJson(
      this,
    );
  }
}

abstract class _RequestRechargeOrderAddPaymentMethod
    implements RequestRechargeOrderAddPaymentMethod {
  const factory _RequestRechargeOrderAddPaymentMethod(
          {@JsonKey(name: "payment_amount") required final double paymentAmount,
          @JsonKey(name: "payment_method_uuid")
          required final int paymentMethodUuid,
          @JsonKey(name: "recharge_order_uuid")
          required final int rechargeOrderUuid}) =
      _$RequestRechargeOrderAddPaymentMethodImpl;

  factory _RequestRechargeOrderAddPaymentMethod.fromJson(
          Map<String, dynamic> json) =
      _$RequestRechargeOrderAddPaymentMethodImpl.fromJson;

  @override
  @JsonKey(name: "payment_amount")
  double get paymentAmount;
  @override
  @JsonKey(name: "payment_method_uuid")
  int get paymentMethodUuid;
  @override
  @JsonKey(name: "recharge_order_uuid")
  int get rechargeOrderUuid;

  /// Create a copy of RequestRechargeOrderAddPaymentMethod
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RequestRechargeOrderAddPaymentMethodImplCopyWith<
          _$RequestRechargeOrderAddPaymentMethodImpl>
      get copyWith => throw _privateConstructorUsedError;
}

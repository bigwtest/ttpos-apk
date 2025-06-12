// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PaymentOrder _$PaymentOrderFromJson(Map<String, dynamic> json) {
  return _RespPaymentOrder.fromJson(json);
}

/// @nodoc
mixin _$PaymentOrder {
  @JsonKey(name: "amount")
  SafetyNumber get amount => throw _privateConstructorUsedError;
  @JsonKey(name: "disabled_cancel")
  bool get disabledCancel => throw _privateConstructorUsedError;
  @JsonKey(name: "payment_amount")
  SafetyNumber get paymentAmount => throw _privateConstructorUsedError;
  @JsonKey(name: "payment_commission_fee")
  SafetyNumber get paymentCommissionFee => throw _privateConstructorUsedError;
  @JsonKey(name: "payment_method_code")
  int get paymentMethodCode => throw _privateConstructorUsedError;
  @JsonKey(name: "payment_method_name")
  String get paymentMethodName => throw _privateConstructorUsedError;
  @JsonKey(name: "payment_method_uuid")
  int get paymentMethodUuid => throw _privateConstructorUsedError;
  @JsonKey(name: "uuid")
  int get uuid => throw _privateConstructorUsedError;

  /// Serializes this PaymentOrder to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PaymentOrder
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PaymentOrderCopyWith<PaymentOrder> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentOrderCopyWith<$Res> {
  factory $PaymentOrderCopyWith(
          PaymentOrder value, $Res Function(PaymentOrder) then) =
      _$PaymentOrderCopyWithImpl<$Res, PaymentOrder>;
  @useResult
  $Res call(
      {@JsonKey(name: "amount") SafetyNumber amount,
      @JsonKey(name: "disabled_cancel") bool disabledCancel,
      @JsonKey(name: "payment_amount") SafetyNumber paymentAmount,
      @JsonKey(name: "payment_commission_fee")
      SafetyNumber paymentCommissionFee,
      @JsonKey(name: "payment_method_code") int paymentMethodCode,
      @JsonKey(name: "payment_method_name") String paymentMethodName,
      @JsonKey(name: "payment_method_uuid") int paymentMethodUuid,
      @JsonKey(name: "uuid") int uuid});

  $SafetyNumberCopyWith<$Res> get amount;
  $SafetyNumberCopyWith<$Res> get paymentAmount;
  $SafetyNumberCopyWith<$Res> get paymentCommissionFee;
}

/// @nodoc
class _$PaymentOrderCopyWithImpl<$Res, $Val extends PaymentOrder>
    implements $PaymentOrderCopyWith<$Res> {
  _$PaymentOrderCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PaymentOrder
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? amount = null,
    Object? disabledCancel = null,
    Object? paymentAmount = null,
    Object? paymentCommissionFee = null,
    Object? paymentMethodCode = null,
    Object? paymentMethodName = null,
    Object? paymentMethodUuid = null,
    Object? uuid = null,
  }) {
    return _then(_value.copyWith(
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as SafetyNumber,
      disabledCancel: null == disabledCancel
          ? _value.disabledCancel
          : disabledCancel // ignore: cast_nullable_to_non_nullable
              as bool,
      paymentAmount: null == paymentAmount
          ? _value.paymentAmount
          : paymentAmount // ignore: cast_nullable_to_non_nullable
              as SafetyNumber,
      paymentCommissionFee: null == paymentCommissionFee
          ? _value.paymentCommissionFee
          : paymentCommissionFee // ignore: cast_nullable_to_non_nullable
              as SafetyNumber,
      paymentMethodCode: null == paymentMethodCode
          ? _value.paymentMethodCode
          : paymentMethodCode // ignore: cast_nullable_to_non_nullable
              as int,
      paymentMethodName: null == paymentMethodName
          ? _value.paymentMethodName
          : paymentMethodName // ignore: cast_nullable_to_non_nullable
              as String,
      paymentMethodUuid: null == paymentMethodUuid
          ? _value.paymentMethodUuid
          : paymentMethodUuid // ignore: cast_nullable_to_non_nullable
              as int,
      uuid: null == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }

  /// Create a copy of PaymentOrder
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SafetyNumberCopyWith<$Res> get amount {
    return $SafetyNumberCopyWith<$Res>(_value.amount, (value) {
      return _then(_value.copyWith(amount: value) as $Val);
    });
  }

  /// Create a copy of PaymentOrder
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SafetyNumberCopyWith<$Res> get paymentAmount {
    return $SafetyNumberCopyWith<$Res>(_value.paymentAmount, (value) {
      return _then(_value.copyWith(paymentAmount: value) as $Val);
    });
  }

  /// Create a copy of PaymentOrder
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SafetyNumberCopyWith<$Res> get paymentCommissionFee {
    return $SafetyNumberCopyWith<$Res>(_value.paymentCommissionFee, (value) {
      return _then(_value.copyWith(paymentCommissionFee: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$RespPaymentOrderImplCopyWith<$Res>
    implements $PaymentOrderCopyWith<$Res> {
  factory _$$RespPaymentOrderImplCopyWith(_$RespPaymentOrderImpl value,
          $Res Function(_$RespPaymentOrderImpl) then) =
      __$$RespPaymentOrderImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "amount") SafetyNumber amount,
      @JsonKey(name: "disabled_cancel") bool disabledCancel,
      @JsonKey(name: "payment_amount") SafetyNumber paymentAmount,
      @JsonKey(name: "payment_commission_fee")
      SafetyNumber paymentCommissionFee,
      @JsonKey(name: "payment_method_code") int paymentMethodCode,
      @JsonKey(name: "payment_method_name") String paymentMethodName,
      @JsonKey(name: "payment_method_uuid") int paymentMethodUuid,
      @JsonKey(name: "uuid") int uuid});

  @override
  $SafetyNumberCopyWith<$Res> get amount;
  @override
  $SafetyNumberCopyWith<$Res> get paymentAmount;
  @override
  $SafetyNumberCopyWith<$Res> get paymentCommissionFee;
}

/// @nodoc
class __$$RespPaymentOrderImplCopyWithImpl<$Res>
    extends _$PaymentOrderCopyWithImpl<$Res, _$RespPaymentOrderImpl>
    implements _$$RespPaymentOrderImplCopyWith<$Res> {
  __$$RespPaymentOrderImplCopyWithImpl(_$RespPaymentOrderImpl _value,
      $Res Function(_$RespPaymentOrderImpl) _then)
      : super(_value, _then);

  /// Create a copy of PaymentOrder
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? amount = null,
    Object? disabledCancel = null,
    Object? paymentAmount = null,
    Object? paymentCommissionFee = null,
    Object? paymentMethodCode = null,
    Object? paymentMethodName = null,
    Object? paymentMethodUuid = null,
    Object? uuid = null,
  }) {
    return _then(_$RespPaymentOrderImpl(
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as SafetyNumber,
      disabledCancel: null == disabledCancel
          ? _value.disabledCancel
          : disabledCancel // ignore: cast_nullable_to_non_nullable
              as bool,
      paymentAmount: null == paymentAmount
          ? _value.paymentAmount
          : paymentAmount // ignore: cast_nullable_to_non_nullable
              as SafetyNumber,
      paymentCommissionFee: null == paymentCommissionFee
          ? _value.paymentCommissionFee
          : paymentCommissionFee // ignore: cast_nullable_to_non_nullable
              as SafetyNumber,
      paymentMethodCode: null == paymentMethodCode
          ? _value.paymentMethodCode
          : paymentMethodCode // ignore: cast_nullable_to_non_nullable
              as int,
      paymentMethodName: null == paymentMethodName
          ? _value.paymentMethodName
          : paymentMethodName // ignore: cast_nullable_to_non_nullable
              as String,
      paymentMethodUuid: null == paymentMethodUuid
          ? _value.paymentMethodUuid
          : paymentMethodUuid // ignore: cast_nullable_to_non_nullable
              as int,
      uuid: null == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RespPaymentOrderImpl implements _RespPaymentOrder {
  const _$RespPaymentOrderImpl(
      {@JsonKey(name: "amount") required this.amount,
      @JsonKey(name: "disabled_cancel") required this.disabledCancel,
      @JsonKey(name: "payment_amount") required this.paymentAmount,
      @JsonKey(name: "payment_commission_fee")
      required this.paymentCommissionFee,
      @JsonKey(name: "payment_method_code") required this.paymentMethodCode,
      @JsonKey(name: "payment_method_name") required this.paymentMethodName,
      @JsonKey(name: "payment_method_uuid") required this.paymentMethodUuid,
      @JsonKey(name: "uuid") required this.uuid});

  factory _$RespPaymentOrderImpl.fromJson(Map<String, dynamic> json) =>
      _$$RespPaymentOrderImplFromJson(json);

  @override
  @JsonKey(name: "amount")
  final SafetyNumber amount;
  @override
  @JsonKey(name: "disabled_cancel")
  final bool disabledCancel;
  @override
  @JsonKey(name: "payment_amount")
  final SafetyNumber paymentAmount;
  @override
  @JsonKey(name: "payment_commission_fee")
  final SafetyNumber paymentCommissionFee;
  @override
  @JsonKey(name: "payment_method_code")
  final int paymentMethodCode;
  @override
  @JsonKey(name: "payment_method_name")
  final String paymentMethodName;
  @override
  @JsonKey(name: "payment_method_uuid")
  final int paymentMethodUuid;
  @override
  @JsonKey(name: "uuid")
  final int uuid;

  @override
  String toString() {
    return 'PaymentOrder(amount: $amount, disabledCancel: $disabledCancel, paymentAmount: $paymentAmount, paymentCommissionFee: $paymentCommissionFee, paymentMethodCode: $paymentMethodCode, paymentMethodName: $paymentMethodName, paymentMethodUuid: $paymentMethodUuid, uuid: $uuid)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RespPaymentOrderImpl &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.disabledCancel, disabledCancel) ||
                other.disabledCancel == disabledCancel) &&
            (identical(other.paymentAmount, paymentAmount) ||
                other.paymentAmount == paymentAmount) &&
            (identical(other.paymentCommissionFee, paymentCommissionFee) ||
                other.paymentCommissionFee == paymentCommissionFee) &&
            (identical(other.paymentMethodCode, paymentMethodCode) ||
                other.paymentMethodCode == paymentMethodCode) &&
            (identical(other.paymentMethodName, paymentMethodName) ||
                other.paymentMethodName == paymentMethodName) &&
            (identical(other.paymentMethodUuid, paymentMethodUuid) ||
                other.paymentMethodUuid == paymentMethodUuid) &&
            (identical(other.uuid, uuid) || other.uuid == uuid));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      amount,
      disabledCancel,
      paymentAmount,
      paymentCommissionFee,
      paymentMethodCode,
      paymentMethodName,
      paymentMethodUuid,
      uuid);

  /// Create a copy of PaymentOrder
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RespPaymentOrderImplCopyWith<_$RespPaymentOrderImpl> get copyWith =>
      __$$RespPaymentOrderImplCopyWithImpl<_$RespPaymentOrderImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RespPaymentOrderImplToJson(
      this,
    );
  }
}

abstract class _RespPaymentOrder implements PaymentOrder {
  const factory _RespPaymentOrder(
      {@JsonKey(name: "amount") required final SafetyNumber amount,
      @JsonKey(name: "disabled_cancel") required final bool disabledCancel,
      @JsonKey(name: "payment_amount")
      required final SafetyNumber paymentAmount,
      @JsonKey(name: "payment_commission_fee")
      required final SafetyNumber paymentCommissionFee,
      @JsonKey(name: "payment_method_code")
      required final int paymentMethodCode,
      @JsonKey(name: "payment_method_name")
      required final String paymentMethodName,
      @JsonKey(name: "payment_method_uuid")
      required final int paymentMethodUuid,
      @JsonKey(name: "uuid") required final int uuid}) = _$RespPaymentOrderImpl;

  factory _RespPaymentOrder.fromJson(Map<String, dynamic> json) =
      _$RespPaymentOrderImpl.fromJson;

  @override
  @JsonKey(name: "amount")
  SafetyNumber get amount;
  @override
  @JsonKey(name: "disabled_cancel")
  bool get disabledCancel;
  @override
  @JsonKey(name: "payment_amount")
  SafetyNumber get paymentAmount;
  @override
  @JsonKey(name: "payment_commission_fee")
  SafetyNumber get paymentCommissionFee;
  @override
  @JsonKey(name: "payment_method_code")
  int get paymentMethodCode;
  @override
  @JsonKey(name: "payment_method_name")
  String get paymentMethodName;
  @override
  @JsonKey(name: "payment_method_uuid")
  int get paymentMethodUuid;
  @override
  @JsonKey(name: "uuid")
  int get uuid;

  /// Create a copy of PaymentOrder
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RespPaymentOrderImplCopyWith<_$RespPaymentOrderImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

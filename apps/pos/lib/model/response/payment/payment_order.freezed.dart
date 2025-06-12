// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payment_order.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ResponsePaymentOrder _$ResponsePaymentOrderFromJson(Map<String, dynamic> json) {
  return _ResponsePaymentOrder.fromJson(json);
}

/// @nodoc
mixin _$ResponsePaymentOrder {
  @JsonKey(name: "amount")
  double get amount => throw _privateConstructorUsedError;
  @JsonKey(name: "payment_amount")
  double get paymentAmount => throw _privateConstructorUsedError;
  @JsonKey(name: "payment_commission_fee")
  double get paymentCommissionFee => throw _privateConstructorUsedError;
  @JsonKey(name: "payment_method_code")
  int get paymentMethodCode => throw _privateConstructorUsedError;
  @JsonKey(name: "payment_method_name")
  String get paymentMethodName => throw _privateConstructorUsedError;
  @JsonKey(name: "payment_method_uuid")
  int get paymentMethodUuid => throw _privateConstructorUsedError;
  @JsonKey(name: "uuid")
  int get uuid => throw _privateConstructorUsedError;

  /// Serializes this ResponsePaymentOrder to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ResponsePaymentOrder
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ResponsePaymentOrderCopyWith<ResponsePaymentOrder> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResponsePaymentOrderCopyWith<$Res> {
  factory $ResponsePaymentOrderCopyWith(ResponsePaymentOrder value,
          $Res Function(ResponsePaymentOrder) then) =
      _$ResponsePaymentOrderCopyWithImpl<$Res, ResponsePaymentOrder>;
  @useResult
  $Res call(
      {@JsonKey(name: "amount") double amount,
      @JsonKey(name: "payment_amount") double paymentAmount,
      @JsonKey(name: "payment_commission_fee") double paymentCommissionFee,
      @JsonKey(name: "payment_method_code") int paymentMethodCode,
      @JsonKey(name: "payment_method_name") String paymentMethodName,
      @JsonKey(name: "payment_method_uuid") int paymentMethodUuid,
      @JsonKey(name: "uuid") int uuid});
}

/// @nodoc
class _$ResponsePaymentOrderCopyWithImpl<$Res,
        $Val extends ResponsePaymentOrder>
    implements $ResponsePaymentOrderCopyWith<$Res> {
  _$ResponsePaymentOrderCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ResponsePaymentOrder
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? amount = null,
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
              as double,
      paymentAmount: null == paymentAmount
          ? _value.paymentAmount
          : paymentAmount // ignore: cast_nullable_to_non_nullable
              as double,
      paymentCommissionFee: null == paymentCommissionFee
          ? _value.paymentCommissionFee
          : paymentCommissionFee // ignore: cast_nullable_to_non_nullable
              as double,
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
}

/// @nodoc
abstract class _$$ResponsePaymentOrderImplCopyWith<$Res>
    implements $ResponsePaymentOrderCopyWith<$Res> {
  factory _$$ResponsePaymentOrderImplCopyWith(_$ResponsePaymentOrderImpl value,
          $Res Function(_$ResponsePaymentOrderImpl) then) =
      __$$ResponsePaymentOrderImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "amount") double amount,
      @JsonKey(name: "payment_amount") double paymentAmount,
      @JsonKey(name: "payment_commission_fee") double paymentCommissionFee,
      @JsonKey(name: "payment_method_code") int paymentMethodCode,
      @JsonKey(name: "payment_method_name") String paymentMethodName,
      @JsonKey(name: "payment_method_uuid") int paymentMethodUuid,
      @JsonKey(name: "uuid") int uuid});
}

/// @nodoc
class __$$ResponsePaymentOrderImplCopyWithImpl<$Res>
    extends _$ResponsePaymentOrderCopyWithImpl<$Res, _$ResponsePaymentOrderImpl>
    implements _$$ResponsePaymentOrderImplCopyWith<$Res> {
  __$$ResponsePaymentOrderImplCopyWithImpl(_$ResponsePaymentOrderImpl _value,
      $Res Function(_$ResponsePaymentOrderImpl) _then)
      : super(_value, _then);

  /// Create a copy of ResponsePaymentOrder
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? amount = null,
    Object? paymentAmount = null,
    Object? paymentCommissionFee = null,
    Object? paymentMethodCode = null,
    Object? paymentMethodName = null,
    Object? paymentMethodUuid = null,
    Object? uuid = null,
  }) {
    return _then(_$ResponsePaymentOrderImpl(
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      paymentAmount: null == paymentAmount
          ? _value.paymentAmount
          : paymentAmount // ignore: cast_nullable_to_non_nullable
              as double,
      paymentCommissionFee: null == paymentCommissionFee
          ? _value.paymentCommissionFee
          : paymentCommissionFee // ignore: cast_nullable_to_non_nullable
              as double,
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
class _$ResponsePaymentOrderImpl implements _ResponsePaymentOrder {
  const _$ResponsePaymentOrderImpl(
      {@JsonKey(name: "amount") required this.amount,
      @JsonKey(name: "payment_amount") required this.paymentAmount,
      @JsonKey(name: "payment_commission_fee")
      required this.paymentCommissionFee,
      @JsonKey(name: "payment_method_code") required this.paymentMethodCode,
      @JsonKey(name: "payment_method_name") required this.paymentMethodName,
      @JsonKey(name: "payment_method_uuid") required this.paymentMethodUuid,
      @JsonKey(name: "uuid") required this.uuid});

  factory _$ResponsePaymentOrderImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResponsePaymentOrderImplFromJson(json);

  @override
  @JsonKey(name: "amount")
  final double amount;
  @override
  @JsonKey(name: "payment_amount")
  final double paymentAmount;
  @override
  @JsonKey(name: "payment_commission_fee")
  final double paymentCommissionFee;
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
    return 'ResponsePaymentOrder(amount: $amount, paymentAmount: $paymentAmount, paymentCommissionFee: $paymentCommissionFee, paymentMethodCode: $paymentMethodCode, paymentMethodName: $paymentMethodName, paymentMethodUuid: $paymentMethodUuid, uuid: $uuid)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResponsePaymentOrderImpl &&
            (identical(other.amount, amount) || other.amount == amount) &&
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
      paymentAmount,
      paymentCommissionFee,
      paymentMethodCode,
      paymentMethodName,
      paymentMethodUuid,
      uuid);

  /// Create a copy of ResponsePaymentOrder
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ResponsePaymentOrderImplCopyWith<_$ResponsePaymentOrderImpl>
      get copyWith =>
          __$$ResponsePaymentOrderImplCopyWithImpl<_$ResponsePaymentOrderImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResponsePaymentOrderImplToJson(
      this,
    );
  }
}

abstract class _ResponsePaymentOrder implements ResponsePaymentOrder {
  const factory _ResponsePaymentOrder(
          {@JsonKey(name: "amount") required final double amount,
          @JsonKey(name: "payment_amount") required final double paymentAmount,
          @JsonKey(name: "payment_commission_fee")
          required final double paymentCommissionFee,
          @JsonKey(name: "payment_method_code")
          required final int paymentMethodCode,
          @JsonKey(name: "payment_method_name")
          required final String paymentMethodName,
          @JsonKey(name: "payment_method_uuid")
          required final int paymentMethodUuid,
          @JsonKey(name: "uuid") required final int uuid}) =
      _$ResponsePaymentOrderImpl;

  factory _ResponsePaymentOrder.fromJson(Map<String, dynamic> json) =
      _$ResponsePaymentOrderImpl.fromJson;

  @override
  @JsonKey(name: "amount")
  double get amount;
  @override
  @JsonKey(name: "payment_amount")
  double get paymentAmount;
  @override
  @JsonKey(name: "payment_commission_fee")
  double get paymentCommissionFee;
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

  /// Create a copy of ResponsePaymentOrder
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ResponsePaymentOrderImplCopyWith<_$ResponsePaymentOrderImpl>
      get copyWith => throw _privateConstructorUsedError;
}

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'resp_payment_order.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RespPaymentOrder _$RespPaymentOrderFromJson(Map<String, dynamic> json) {
  return _RespPaymentOrder.fromJson(json);
}

/// @nodoc
mixin _$RespPaymentOrder {
  @JsonKey(name: "amount")
  double get amount => throw _privateConstructorUsedError;
  @JsonKey(name: "amount")
  set amount(double value) => throw _privateConstructorUsedError;
  @JsonKey(name: "disabled_cancel")
  bool get disabledCancel => throw _privateConstructorUsedError;
  @JsonKey(name: "disabled_cancel")
  set disabledCancel(bool value) => throw _privateConstructorUsedError;
  @JsonKey(name: "payment_amount")
  double get paymentAmount => throw _privateConstructorUsedError;
  @JsonKey(name: "payment_amount")
  set paymentAmount(double value) => throw _privateConstructorUsedError;
  @JsonKey(name: "payment_commission_fee")
  double get paymentCommissionFee => throw _privateConstructorUsedError;
  @JsonKey(name: "payment_commission_fee")
  set paymentCommissionFee(double value) => throw _privateConstructorUsedError;
  @JsonKey(name: "payment_method_code")
  int get paymentMethodCode => throw _privateConstructorUsedError;
  @JsonKey(name: "payment_method_code")
  set paymentMethodCode(int value) => throw _privateConstructorUsedError;
  @JsonKey(name: "payment_method_name")
  String get paymentMethodName => throw _privateConstructorUsedError;
  @JsonKey(name: "payment_method_name")
  set paymentMethodName(String value) => throw _privateConstructorUsedError;
  @JsonKey(name: "payment_method_uuid")
  int get paymentMethodUuid => throw _privateConstructorUsedError;
  @JsonKey(name: "payment_method_uuid")
  set paymentMethodUuid(int value) => throw _privateConstructorUsedError;
  @JsonKey(name: "uuid")
  int get uuid => throw _privateConstructorUsedError;
  @JsonKey(name: "uuid")
  set uuid(int value) => throw _privateConstructorUsedError;

  /// Serializes this RespPaymentOrder to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RespPaymentOrder
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RespPaymentOrderCopyWith<RespPaymentOrder> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RespPaymentOrderCopyWith<$Res> {
  factory $RespPaymentOrderCopyWith(
          RespPaymentOrder value, $Res Function(RespPaymentOrder) then) =
      _$RespPaymentOrderCopyWithImpl<$Res, RespPaymentOrder>;
  @useResult
  $Res call(
      {@JsonKey(name: "amount") double amount,
      @JsonKey(name: "disabled_cancel") bool disabledCancel,
      @JsonKey(name: "payment_amount") double paymentAmount,
      @JsonKey(name: "payment_commission_fee") double paymentCommissionFee,
      @JsonKey(name: "payment_method_code") int paymentMethodCode,
      @JsonKey(name: "payment_method_name") String paymentMethodName,
      @JsonKey(name: "payment_method_uuid") int paymentMethodUuid,
      @JsonKey(name: "uuid") int uuid});
}

/// @nodoc
class _$RespPaymentOrderCopyWithImpl<$Res, $Val extends RespPaymentOrder>
    implements $RespPaymentOrderCopyWith<$Res> {
  _$RespPaymentOrderCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RespPaymentOrder
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
              as double,
      disabledCancel: null == disabledCancel
          ? _value.disabledCancel
          : disabledCancel // ignore: cast_nullable_to_non_nullable
              as bool,
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
abstract class _$$RespPaymentOrderImplCopyWith<$Res>
    implements $RespPaymentOrderCopyWith<$Res> {
  factory _$$RespPaymentOrderImplCopyWith(_$RespPaymentOrderImpl value,
          $Res Function(_$RespPaymentOrderImpl) then) =
      __$$RespPaymentOrderImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "amount") double amount,
      @JsonKey(name: "disabled_cancel") bool disabledCancel,
      @JsonKey(name: "payment_amount") double paymentAmount,
      @JsonKey(name: "payment_commission_fee") double paymentCommissionFee,
      @JsonKey(name: "payment_method_code") int paymentMethodCode,
      @JsonKey(name: "payment_method_name") String paymentMethodName,
      @JsonKey(name: "payment_method_uuid") int paymentMethodUuid,
      @JsonKey(name: "uuid") int uuid});
}

/// @nodoc
class __$$RespPaymentOrderImplCopyWithImpl<$Res>
    extends _$RespPaymentOrderCopyWithImpl<$Res, _$RespPaymentOrderImpl>
    implements _$$RespPaymentOrderImplCopyWith<$Res> {
  __$$RespPaymentOrderImplCopyWithImpl(_$RespPaymentOrderImpl _value,
      $Res Function(_$RespPaymentOrderImpl) _then)
      : super(_value, _then);

  /// Create a copy of RespPaymentOrder
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
              as double,
      disabledCancel: null == disabledCancel
          ? _value.disabledCancel
          : disabledCancel // ignore: cast_nullable_to_non_nullable
              as bool,
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
class _$RespPaymentOrderImpl implements _RespPaymentOrder {
  _$RespPaymentOrderImpl(
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
  double amount;
  @override
  @JsonKey(name: "disabled_cancel")
  bool disabledCancel;
  @override
  @JsonKey(name: "payment_amount")
  double paymentAmount;
  @override
  @JsonKey(name: "payment_commission_fee")
  double paymentCommissionFee;
  @override
  @JsonKey(name: "payment_method_code")
  int paymentMethodCode;
  @override
  @JsonKey(name: "payment_method_name")
  String paymentMethodName;
  @override
  @JsonKey(name: "payment_method_uuid")
  int paymentMethodUuid;
  @override
  @JsonKey(name: "uuid")
  int uuid;

  @override
  String toString() {
    return 'RespPaymentOrder(amount: $amount, disabledCancel: $disabledCancel, paymentAmount: $paymentAmount, paymentCommissionFee: $paymentCommissionFee, paymentMethodCode: $paymentMethodCode, paymentMethodName: $paymentMethodName, paymentMethodUuid: $paymentMethodUuid, uuid: $uuid)';
  }

  /// Create a copy of RespPaymentOrder
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

abstract class _RespPaymentOrder implements RespPaymentOrder {
  factory _RespPaymentOrder(
      {@JsonKey(name: "amount") required double amount,
      @JsonKey(name: "disabled_cancel") required bool disabledCancel,
      @JsonKey(name: "payment_amount") required double paymentAmount,
      @JsonKey(name: "payment_commission_fee")
      required double paymentCommissionFee,
      @JsonKey(name: "payment_method_code") required int paymentMethodCode,
      @JsonKey(name: "payment_method_name") required String paymentMethodName,
      @JsonKey(name: "payment_method_uuid") required int paymentMethodUuid,
      @JsonKey(name: "uuid") required int uuid}) = _$RespPaymentOrderImpl;

  factory _RespPaymentOrder.fromJson(Map<String, dynamic> json) =
      _$RespPaymentOrderImpl.fromJson;

  @override
  @JsonKey(name: "amount")
  double get amount;
  @JsonKey(name: "amount")
  set amount(double value);
  @override
  @JsonKey(name: "disabled_cancel")
  bool get disabledCancel;
  @JsonKey(name: "disabled_cancel")
  set disabledCancel(bool value);
  @override
  @JsonKey(name: "payment_amount")
  double get paymentAmount;
  @JsonKey(name: "payment_amount")
  set paymentAmount(double value);
  @override
  @JsonKey(name: "payment_commission_fee")
  double get paymentCommissionFee;
  @JsonKey(name: "payment_commission_fee")
  set paymentCommissionFee(double value);
  @override
  @JsonKey(name: "payment_method_code")
  int get paymentMethodCode;
  @JsonKey(name: "payment_method_code")
  set paymentMethodCode(int value);
  @override
  @JsonKey(name: "payment_method_name")
  String get paymentMethodName;
  @JsonKey(name: "payment_method_name")
  set paymentMethodName(String value);
  @override
  @JsonKey(name: "payment_method_uuid")
  int get paymentMethodUuid;
  @JsonKey(name: "payment_method_uuid")
  set paymentMethodUuid(int value);
  @override
  @JsonKey(name: "uuid")
  int get uuid;
  @JsonKey(name: "uuid")
  set uuid(int value);

  /// Create a copy of RespPaymentOrder
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RespPaymentOrderImplCopyWith<_$RespPaymentOrderImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

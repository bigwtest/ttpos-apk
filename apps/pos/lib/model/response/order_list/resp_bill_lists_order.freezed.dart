// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'resp_bill_lists_order.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RespBillListsOrder _$RespBillListsOrderFromJson(Map<String, dynamic> json) {
  return _RespBillListsOrder.fromJson(json);
}

/// @nodoc
mixin _$RespBillListsOrder {
  @JsonKey(name: "bill_type")
  int get billType => throw _privateConstructorUsedError;
  @JsonKey(name: "consumer_uuids")
  String get consumerUuids => throw _privateConstructorUsedError;
  @JsonKey(name: "extra")
  Extra get extra => throw _privateConstructorUsedError;
  @JsonKey(name: "finish_time")
  int get finishTime => throw _privateConstructorUsedError;
  @JsonKey(name: "order_amount")
  SafetyNumber get orderAmount => throw _privateConstructorUsedError;
  @JsonKey(name: "order_no")
  String get orderNo => throw _privateConstructorUsedError;
  @JsonKey(name: "pay_type_name")
  String get payTypeName => throw _privateConstructorUsedError;
  @JsonKey(name: "payment_amount")
  SafetyNumber get paymentAmount => throw _privateConstructorUsedError;
  @JsonKey(name: "sale_bill_uuid")
  int get saleBillUuid => throw _privateConstructorUsedError;
  @JsonKey(name: "sale_order_uuid")
  int get saleOrderUuid => throw _privateConstructorUsedError;
  @JsonKey(name: "serial_no")
  String get serialNo => throw _privateConstructorUsedError;
  @JsonKey(name: "status")
  int get status => throw _privateConstructorUsedError;

  /// Serializes this RespBillListsOrder to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RespBillListsOrder
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RespBillListsOrderCopyWith<RespBillListsOrder> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RespBillListsOrderCopyWith<$Res> {
  factory $RespBillListsOrderCopyWith(
          RespBillListsOrder value, $Res Function(RespBillListsOrder) then) =
      _$RespBillListsOrderCopyWithImpl<$Res, RespBillListsOrder>;
  @useResult
  $Res call(
      {@JsonKey(name: "bill_type") int billType,
      @JsonKey(name: "consumer_uuids") String consumerUuids,
      @JsonKey(name: "extra") Extra extra,
      @JsonKey(name: "finish_time") int finishTime,
      @JsonKey(name: "order_amount") SafetyNumber orderAmount,
      @JsonKey(name: "order_no") String orderNo,
      @JsonKey(name: "pay_type_name") String payTypeName,
      @JsonKey(name: "payment_amount") SafetyNumber paymentAmount,
      @JsonKey(name: "sale_bill_uuid") int saleBillUuid,
      @JsonKey(name: "sale_order_uuid") int saleOrderUuid,
      @JsonKey(name: "serial_no") String serialNo,
      @JsonKey(name: "status") int status});

  $ExtraCopyWith<$Res> get extra;
  $SafetyNumberCopyWith<$Res> get orderAmount;
  $SafetyNumberCopyWith<$Res> get paymentAmount;
}

/// @nodoc
class _$RespBillListsOrderCopyWithImpl<$Res, $Val extends RespBillListsOrder>
    implements $RespBillListsOrderCopyWith<$Res> {
  _$RespBillListsOrderCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RespBillListsOrder
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? billType = null,
    Object? consumerUuids = null,
    Object? extra = null,
    Object? finishTime = null,
    Object? orderAmount = null,
    Object? orderNo = null,
    Object? payTypeName = null,
    Object? paymentAmount = null,
    Object? saleBillUuid = null,
    Object? saleOrderUuid = null,
    Object? serialNo = null,
    Object? status = null,
  }) {
    return _then(_value.copyWith(
      billType: null == billType
          ? _value.billType
          : billType // ignore: cast_nullable_to_non_nullable
              as int,
      consumerUuids: null == consumerUuids
          ? _value.consumerUuids
          : consumerUuids // ignore: cast_nullable_to_non_nullable
              as String,
      extra: null == extra
          ? _value.extra
          : extra // ignore: cast_nullable_to_non_nullable
              as Extra,
      finishTime: null == finishTime
          ? _value.finishTime
          : finishTime // ignore: cast_nullable_to_non_nullable
              as int,
      orderAmount: null == orderAmount
          ? _value.orderAmount
          : orderAmount // ignore: cast_nullable_to_non_nullable
              as SafetyNumber,
      orderNo: null == orderNo
          ? _value.orderNo
          : orderNo // ignore: cast_nullable_to_non_nullable
              as String,
      payTypeName: null == payTypeName
          ? _value.payTypeName
          : payTypeName // ignore: cast_nullable_to_non_nullable
              as String,
      paymentAmount: null == paymentAmount
          ? _value.paymentAmount
          : paymentAmount // ignore: cast_nullable_to_non_nullable
              as SafetyNumber,
      saleBillUuid: null == saleBillUuid
          ? _value.saleBillUuid
          : saleBillUuid // ignore: cast_nullable_to_non_nullable
              as int,
      saleOrderUuid: null == saleOrderUuid
          ? _value.saleOrderUuid
          : saleOrderUuid // ignore: cast_nullable_to_non_nullable
              as int,
      serialNo: null == serialNo
          ? _value.serialNo
          : serialNo // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }

  /// Create a copy of RespBillListsOrder
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ExtraCopyWith<$Res> get extra {
    return $ExtraCopyWith<$Res>(_value.extra, (value) {
      return _then(_value.copyWith(extra: value) as $Val);
    });
  }

  /// Create a copy of RespBillListsOrder
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SafetyNumberCopyWith<$Res> get orderAmount {
    return $SafetyNumberCopyWith<$Res>(_value.orderAmount, (value) {
      return _then(_value.copyWith(orderAmount: value) as $Val);
    });
  }

  /// Create a copy of RespBillListsOrder
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SafetyNumberCopyWith<$Res> get paymentAmount {
    return $SafetyNumberCopyWith<$Res>(_value.paymentAmount, (value) {
      return _then(_value.copyWith(paymentAmount: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$RespBillListsOrderImplCopyWith<$Res>
    implements $RespBillListsOrderCopyWith<$Res> {
  factory _$$RespBillListsOrderImplCopyWith(_$RespBillListsOrderImpl value,
          $Res Function(_$RespBillListsOrderImpl) then) =
      __$$RespBillListsOrderImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "bill_type") int billType,
      @JsonKey(name: "consumer_uuids") String consumerUuids,
      @JsonKey(name: "extra") Extra extra,
      @JsonKey(name: "finish_time") int finishTime,
      @JsonKey(name: "order_amount") SafetyNumber orderAmount,
      @JsonKey(name: "order_no") String orderNo,
      @JsonKey(name: "pay_type_name") String payTypeName,
      @JsonKey(name: "payment_amount") SafetyNumber paymentAmount,
      @JsonKey(name: "sale_bill_uuid") int saleBillUuid,
      @JsonKey(name: "sale_order_uuid") int saleOrderUuid,
      @JsonKey(name: "serial_no") String serialNo,
      @JsonKey(name: "status") int status});

  @override
  $ExtraCopyWith<$Res> get extra;
  @override
  $SafetyNumberCopyWith<$Res> get orderAmount;
  @override
  $SafetyNumberCopyWith<$Res> get paymentAmount;
}

/// @nodoc
class __$$RespBillListsOrderImplCopyWithImpl<$Res>
    extends _$RespBillListsOrderCopyWithImpl<$Res, _$RespBillListsOrderImpl>
    implements _$$RespBillListsOrderImplCopyWith<$Res> {
  __$$RespBillListsOrderImplCopyWithImpl(_$RespBillListsOrderImpl _value,
      $Res Function(_$RespBillListsOrderImpl) _then)
      : super(_value, _then);

  /// Create a copy of RespBillListsOrder
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? billType = null,
    Object? consumerUuids = null,
    Object? extra = null,
    Object? finishTime = null,
    Object? orderAmount = null,
    Object? orderNo = null,
    Object? payTypeName = null,
    Object? paymentAmount = null,
    Object? saleBillUuid = null,
    Object? saleOrderUuid = null,
    Object? serialNo = null,
    Object? status = null,
  }) {
    return _then(_$RespBillListsOrderImpl(
      billType: null == billType
          ? _value.billType
          : billType // ignore: cast_nullable_to_non_nullable
              as int,
      consumerUuids: null == consumerUuids
          ? _value.consumerUuids
          : consumerUuids // ignore: cast_nullable_to_non_nullable
              as String,
      extra: null == extra
          ? _value.extra
          : extra // ignore: cast_nullable_to_non_nullable
              as Extra,
      finishTime: null == finishTime
          ? _value.finishTime
          : finishTime // ignore: cast_nullable_to_non_nullable
              as int,
      orderAmount: null == orderAmount
          ? _value.orderAmount
          : orderAmount // ignore: cast_nullable_to_non_nullable
              as SafetyNumber,
      orderNo: null == orderNo
          ? _value.orderNo
          : orderNo // ignore: cast_nullable_to_non_nullable
              as String,
      payTypeName: null == payTypeName
          ? _value.payTypeName
          : payTypeName // ignore: cast_nullable_to_non_nullable
              as String,
      paymentAmount: null == paymentAmount
          ? _value.paymentAmount
          : paymentAmount // ignore: cast_nullable_to_non_nullable
              as SafetyNumber,
      saleBillUuid: null == saleBillUuid
          ? _value.saleBillUuid
          : saleBillUuid // ignore: cast_nullable_to_non_nullable
              as int,
      saleOrderUuid: null == saleOrderUuid
          ? _value.saleOrderUuid
          : saleOrderUuid // ignore: cast_nullable_to_non_nullable
              as int,
      serialNo: null == serialNo
          ? _value.serialNo
          : serialNo // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RespBillListsOrderImpl implements _RespBillListsOrder {
  _$RespBillListsOrderImpl(
      {@JsonKey(name: "bill_type") required this.billType,
      @JsonKey(name: "consumer_uuids") required this.consumerUuids,
      @JsonKey(name: "extra") required this.extra,
      @JsonKey(name: "finish_time") required this.finishTime,
      @JsonKey(name: "order_amount") required this.orderAmount,
      @JsonKey(name: "order_no") required this.orderNo,
      @JsonKey(name: "pay_type_name") required this.payTypeName,
      @JsonKey(name: "payment_amount") required this.paymentAmount,
      @JsonKey(name: "sale_bill_uuid") required this.saleBillUuid,
      @JsonKey(name: "sale_order_uuid") required this.saleOrderUuid,
      @JsonKey(name: "serial_no") required this.serialNo,
      @JsonKey(name: "status") required this.status});

  factory _$RespBillListsOrderImpl.fromJson(Map<String, dynamic> json) =>
      _$$RespBillListsOrderImplFromJson(json);

  @override
  @JsonKey(name: "bill_type")
  final int billType;
  @override
  @JsonKey(name: "consumer_uuids")
  final String consumerUuids;
  @override
  @JsonKey(name: "extra")
  final Extra extra;
  @override
  @JsonKey(name: "finish_time")
  final int finishTime;
  @override
  @JsonKey(name: "order_amount")
  final SafetyNumber orderAmount;
  @override
  @JsonKey(name: "order_no")
  final String orderNo;
  @override
  @JsonKey(name: "pay_type_name")
  final String payTypeName;
  @override
  @JsonKey(name: "payment_amount")
  final SafetyNumber paymentAmount;
  @override
  @JsonKey(name: "sale_bill_uuid")
  final int saleBillUuid;
  @override
  @JsonKey(name: "sale_order_uuid")
  final int saleOrderUuid;
  @override
  @JsonKey(name: "serial_no")
  final String serialNo;
  @override
  @JsonKey(name: "status")
  final int status;

  @override
  String toString() {
    return 'RespBillListsOrder(billType: $billType, consumerUuids: $consumerUuids, extra: $extra, finishTime: $finishTime, orderAmount: $orderAmount, orderNo: $orderNo, payTypeName: $payTypeName, paymentAmount: $paymentAmount, saleBillUuid: $saleBillUuid, saleOrderUuid: $saleOrderUuid, serialNo: $serialNo, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RespBillListsOrderImpl &&
            (identical(other.billType, billType) ||
                other.billType == billType) &&
            (identical(other.consumerUuids, consumerUuids) ||
                other.consumerUuids == consumerUuids) &&
            (identical(other.extra, extra) || other.extra == extra) &&
            (identical(other.finishTime, finishTime) ||
                other.finishTime == finishTime) &&
            (identical(other.orderAmount, orderAmount) ||
                other.orderAmount == orderAmount) &&
            (identical(other.orderNo, orderNo) || other.orderNo == orderNo) &&
            (identical(other.payTypeName, payTypeName) ||
                other.payTypeName == payTypeName) &&
            (identical(other.paymentAmount, paymentAmount) ||
                other.paymentAmount == paymentAmount) &&
            (identical(other.saleBillUuid, saleBillUuid) ||
                other.saleBillUuid == saleBillUuid) &&
            (identical(other.saleOrderUuid, saleOrderUuid) ||
                other.saleOrderUuid == saleOrderUuid) &&
            (identical(other.serialNo, serialNo) ||
                other.serialNo == serialNo) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      billType,
      consumerUuids,
      extra,
      finishTime,
      orderAmount,
      orderNo,
      payTypeName,
      paymentAmount,
      saleBillUuid,
      saleOrderUuid,
      serialNo,
      status);

  /// Create a copy of RespBillListsOrder
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RespBillListsOrderImplCopyWith<_$RespBillListsOrderImpl> get copyWith =>
      __$$RespBillListsOrderImplCopyWithImpl<_$RespBillListsOrderImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RespBillListsOrderImplToJson(
      this,
    );
  }
}

abstract class _RespBillListsOrder implements RespBillListsOrder {
  factory _RespBillListsOrder(
      {@JsonKey(name: "bill_type") required final int billType,
      @JsonKey(name: "consumer_uuids") required final String consumerUuids,
      @JsonKey(name: "extra") required final Extra extra,
      @JsonKey(name: "finish_time") required final int finishTime,
      @JsonKey(name: "order_amount") required final SafetyNumber orderAmount,
      @JsonKey(name: "order_no") required final String orderNo,
      @JsonKey(name: "pay_type_name") required final String payTypeName,
      @JsonKey(name: "payment_amount")
      required final SafetyNumber paymentAmount,
      @JsonKey(name: "sale_bill_uuid") required final int saleBillUuid,
      @JsonKey(name: "sale_order_uuid") required final int saleOrderUuid,
      @JsonKey(name: "serial_no") required final String serialNo,
      @JsonKey(name: "status")
      required final int status}) = _$RespBillListsOrderImpl;

  factory _RespBillListsOrder.fromJson(Map<String, dynamic> json) =
      _$RespBillListsOrderImpl.fromJson;

  @override
  @JsonKey(name: "bill_type")
  int get billType;
  @override
  @JsonKey(name: "consumer_uuids")
  String get consumerUuids;
  @override
  @JsonKey(name: "extra")
  Extra get extra;
  @override
  @JsonKey(name: "finish_time")
  int get finishTime;
  @override
  @JsonKey(name: "order_amount")
  SafetyNumber get orderAmount;
  @override
  @JsonKey(name: "order_no")
  String get orderNo;
  @override
  @JsonKey(name: "pay_type_name")
  String get payTypeName;
  @override
  @JsonKey(name: "payment_amount")
  SafetyNumber get paymentAmount;
  @override
  @JsonKey(name: "sale_bill_uuid")
  int get saleBillUuid;
  @override
  @JsonKey(name: "sale_order_uuid")
  int get saleOrderUuid;
  @override
  @JsonKey(name: "serial_no")
  String get serialNo;
  @override
  @JsonKey(name: "status")
  int get status;

  /// Create a copy of RespBillListsOrder
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RespBillListsOrderImplCopyWith<_$RespBillListsOrderImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

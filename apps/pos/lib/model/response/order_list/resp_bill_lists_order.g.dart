// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'resp_bill_lists_order.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RespBillListsOrderImpl _$$RespBillListsOrderImplFromJson(
        Map<String, dynamic> json) =>
    _$RespBillListsOrderImpl(
      billType: (json['bill_type'] as num).toInt(),
      consumerUuids: json['consumer_uuids'] as String,
      extra: Extra.fromJson(json['extra'] as Map<String, dynamic>),
      finishTime: (json['finish_time'] as num).toInt(),
      orderAmount: SafetyNumber.fromJson(json['order_amount']),
      orderNo: json['order_no'] as String,
      payTypeName: json['pay_type_name'] as String,
      paymentAmount: SafetyNumber.fromJson(json['payment_amount']),
      saleBillUuid: (json['sale_bill_uuid'] as num).toInt(),
      saleOrderUuid: (json['sale_order_uuid'] as num).toInt(),
      serialNo: json['serial_no'] as String,
      status: (json['status'] as num).toInt(),
    );

Map<String, dynamic> _$$RespBillListsOrderImplToJson(
        _$RespBillListsOrderImpl instance) =>
    <String, dynamic>{
      'bill_type': instance.billType,
      'consumer_uuids': instance.consumerUuids,
      'extra': instance.extra,
      'finish_time': instance.finishTime,
      'order_amount': instance.orderAmount,
      'order_no': instance.orderNo,
      'pay_type_name': instance.payTypeName,
      'payment_amount': instance.paymentAmount,
      'sale_bill_uuid': instance.saleBillUuid,
      'sale_order_uuid': instance.saleOrderUuid,
      'serial_no': instance.serialNo,
      'status': instance.status,
    };

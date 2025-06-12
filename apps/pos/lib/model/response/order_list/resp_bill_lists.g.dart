// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'resp_bill_lists.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RespBillListsImpl _$$RespBillListsImplFromJson(Map<String, dynamic> json) =>
    _$RespBillListsImpl(
      billType: (json['bill_type'] as num).toInt(),
      consumerUuids: json['consumer_uuids'] as String,
      extra: Extra.fromJson(json['extra'] as Map<String, dynamic>),
      finishTime: (json['finish_time'] as num).toInt(),
      isSplit: json['is_split'] as bool,
      orderAmount: SafetyNumber.fromJson(json['order_amount']),
      orderNo: json['order_no'] as String,
      payTypeName: json['pay_type_name'] as String,
      paymentAmount: SafetyNumber.fromJson(json['payment_amount']),
      saleBillUuid: (json['sale_bill_uuid'] as num).toInt(),
      saleOrderUuid: (json['sale_order_uuid'] as num).toInt(),
      saleOrders: (json['sale_orders'] as List<dynamic>)
          .map((e) => RespBillListsOrder.fromJson(e as Map<String, dynamic>))
          .toList(),
      serialNo: json['serial_no'] as String,
      status: (json['status'] as num).toInt(),
    );

Map<String, dynamic> _$$RespBillListsImplToJson(_$RespBillListsImpl instance) =>
    <String, dynamic>{
      'bill_type': instance.billType,
      'consumer_uuids': instance.consumerUuids,
      'extra': instance.extra,
      'finish_time': instance.finishTime,
      'is_split': instance.isSplit,
      'order_amount': instance.orderAmount,
      'order_no': instance.orderNo,
      'pay_type_name': instance.payTypeName,
      'payment_amount': instance.paymentAmount,
      'sale_bill_uuid': instance.saleBillUuid,
      'sale_order_uuid': instance.saleOrderUuid,
      'sale_orders': instance.saleOrders,
      'serial_no': instance.serialNo,
      'status': instance.status,
    };

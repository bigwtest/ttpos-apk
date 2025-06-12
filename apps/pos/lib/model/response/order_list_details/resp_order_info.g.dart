// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'resp_order_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RespOrderInfoImpl _$$RespOrderInfoImplFromJson(Map<String, dynamic> json) =>
    _$RespOrderInfoImpl(
      billType: (json['bill_type'] as num).toInt(),
      diningMethod: (json['dining_method'] as num).toInt(),
      finishTime: (json['finish_time'] as num).toInt(),
      freeReason:
          LocaleName.fromJson(json['free_reason'] as Map<String, dynamic>),
      isFree: json['is_free'] as bool,
      memberName: json['member_name'] as String,
      memberUuid: (json['member_uuid'] as num).toInt(),
      orderAmount: (json['order_amount'] as num).toDouble(),
      orderNo: json['order_no'] as String,
      payTypeName: json['pay_type_name'] as String,
      paymentAmount: (json['payment_amount'] as num).toDouble(),
      products: (json['products'] as List<dynamic>)
          .map((e) => RespOrderProduct.fromJson(e as Map<String, dynamic>))
          .toList(),
      refundAmount: (json['refund_amount'] as num).toDouble(),
      saleOrderUuid: (json['sale_order_uuid'] as num).toInt(),
      serialNo: json['serial_no'] as String,
      status: (json['status'] as num).toInt(),
    );

Map<String, dynamic> _$$RespOrderInfoImplToJson(_$RespOrderInfoImpl instance) =>
    <String, dynamic>{
      'bill_type': instance.billType,
      'dining_method': instance.diningMethod,
      'finish_time': instance.finishTime,
      'free_reason': instance.freeReason,
      'is_free': instance.isFree,
      'member_name': instance.memberName,
      'member_uuid': instance.memberUuid,
      'order_amount': instance.orderAmount,
      'order_no': instance.orderNo,
      'pay_type_name': instance.payTypeName,
      'payment_amount': instance.paymentAmount,
      'products': instance.products,
      'refund_amount': instance.refundAmount,
      'sale_order_uuid': instance.saleOrderUuid,
      'serial_no': instance.serialNo,
      'status': instance.status,
    };

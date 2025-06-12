// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'detail.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DetailImpl _$$DetailImplFromJson(Map<String, dynamic> json) => _$DetailImpl(
      billType: (json['bill_type'] as num).toInt(),
      buffetNames: json['buffet_names'] as String,
      cancelReason: json['cancel_reason'] as String,
      cashierName: json['cashier_name'] as String,
      createTime: (json['create_time'] as num).toInt(),
      diningMethod: (json['dining_method'] as num).toInt(),
      finishTime: (json['finish_time'] as num).toInt(),
      isBuffet: json['is_buffet'] as bool,
      isSplit: json['is_split'] as bool,
      memberNames: json['member_names'] as String,
      memberUuids: json['member_uuids'] as String,
      orderAmount: (json['order_amount'] as num).toDouble(),
      orderNo: json['order_no'] as String,
      payTypes: (json['pay_types'] as List<dynamic>)
          .map((e) => RespOrderInfoPayTypes.fromJson(e as Map<String, dynamic>))
          .toList(),
      paymentAmount: (json['payment_amount'] as num).toDouble(),
      refundAmount: (json['refund_amount'] as num).toDouble(),
      remark: json['remark'] as String,
      saleBillUuid: (json['sale_bill_uuid'] as num).toInt(),
      saleOrders: (json['sale_orders'] as List<dynamic>)
          .map((e) => RespOrderInfo.fromJson(e as Map<String, dynamic>))
          .toList(),
      serialNo: json['serial_no'] as String,
      status: (json['status'] as num).toInt(),
    );

Map<String, dynamic> _$$DetailImplToJson(_$DetailImpl instance) =>
    <String, dynamic>{
      'bill_type': instance.billType,
      'buffet_names': instance.buffetNames,
      'cancel_reason': instance.cancelReason,
      'cashier_name': instance.cashierName,
      'create_time': instance.createTime,
      'dining_method': instance.diningMethod,
      'finish_time': instance.finishTime,
      'is_buffet': instance.isBuffet,
      'is_split': instance.isSplit,
      'member_names': instance.memberNames,
      'member_uuids': instance.memberUuids,
      'order_amount': instance.orderAmount,
      'order_no': instance.orderNo,
      'pay_types': instance.payTypes,
      'payment_amount': instance.paymentAmount,
      'refund_amount': instance.refundAmount,
      'remark': instance.remark,
      'sale_bill_uuid': instance.saleBillUuid,
      'sale_orders': instance.saleOrders,
      'serial_no': instance.serialNo,
      'status': instance.status,
    };

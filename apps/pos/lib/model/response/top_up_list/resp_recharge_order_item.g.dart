// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'resp_recharge_order_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RespRechargeOrderItemImpl _$$RespRechargeOrderItemImplFromJson(
        Map<String, dynamic> json) =>
    _$RespRechargeOrderItemImpl(
      amount: SafetyNumber.fromJson(json['amount']),
      extra: Extra.fromJson(json['extra'] as Map<String, dynamic>),
      orderNo: json['order_no'] as String,
      paymentMethods: (json['payment_methods'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      paymentTime: (json['payment_time'] as num).toInt(),
      rechargeAmount: SafetyNumber.fromJson(json['recharge_amount']),
      status: (json['status'] as num).toInt(),
      uuid: (json['uuid'] as num).toInt(),
      giftAmount: SafetyNumber.fromJson(json['gift_amount']),
      giftPoint: SafetyNumber.fromJson(json['gift_point']),
    );

Map<String, dynamic> _$$RespRechargeOrderItemImplToJson(
        _$RespRechargeOrderItemImpl instance) =>
    <String, dynamic>{
      'amount': instance.amount,
      'extra': instance.extra,
      'order_no': instance.orderNo,
      'payment_methods': instance.paymentMethods,
      'payment_time': instance.paymentTime,
      'recharge_amount': instance.rechargeAmount,
      'status': instance.status,
      'uuid': instance.uuid,
      'gift_amount': instance.giftAmount,
      'gift_point': instance.giftPoint,
    };

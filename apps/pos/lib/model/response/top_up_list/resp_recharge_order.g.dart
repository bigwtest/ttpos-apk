// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'resp_recharge_order.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RespRechargeOrderImpl _$$RespRechargeOrderImplFromJson(
        Map<String, dynamic> json) =>
    _$RespRechargeOrderImpl(
      chargeDue: (json['charge_due'] as num).toDouble(),
      giftAmount: (json['gift_amount'] as num).toDouble(),
      giftPoint: (json['gift_point'] as num).toDouble(),
      memberUuid: (json['member_uuid'] as num).toInt(),
      paymentOrders: (json['payment_orders'] as List<dynamic>)
          .map((e) => RespPaymentOrder.fromJson(e as Map<String, dynamic>))
          .toList(),
      rechargeAmount: (json['recharge_amount'] as num).toDouble(),
      uuid: (json['uuid'] as num).toInt(),
    );

Map<String, dynamic> _$$RespRechargeOrderImplToJson(
        _$RespRechargeOrderImpl instance) =>
    <String, dynamic>{
      'charge_due': instance.chargeDue,
      'gift_amount': instance.giftAmount,
      'gift_point': instance.giftPoint,
      'member_uuid': instance.memberUuid,
      'payment_orders': instance.paymentOrders,
      'recharge_amount': instance.rechargeAmount,
      'uuid': instance.uuid,
    };

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_recharge_order.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RequestCreateRechargeOrderImpl _$$RequestCreateRechargeOrderImplFromJson(
        Map<String, dynamic> json) =>
    _$RequestCreateRechargeOrderImpl(
      giftAmount: (json['gift_amount'] as num).toDouble(),
      giftPoint: (json['gift_point'] as num).toDouble(),
      memberUuid: (json['member_uuid'] as num).toInt(),
      rechargeAmount: (json['recharge_amount'] as num).toDouble(),
      rechargeOrderUuid: (json['recharge_order_uuid'] as num).toInt(),
    );

Map<String, dynamic> _$$RequestCreateRechargeOrderImplToJson(
        _$RequestCreateRechargeOrderImpl instance) =>
    <String, dynamic>{
      'gift_amount': instance.giftAmount,
      'gift_point': instance.giftPoint,
      'member_uuid': instance.memberUuid,
      'recharge_amount': instance.rechargeAmount,
      'recharge_order_uuid': instance.rechargeOrderUuid,
    };

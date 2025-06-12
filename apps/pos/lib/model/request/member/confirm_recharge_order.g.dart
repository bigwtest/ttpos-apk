// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'confirm_recharge_order.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RequestConfirmRechargeOrderImpl _$$RequestConfirmRechargeOrderImplFromJson(
        Map<String, dynamic> json) =>
    _$RequestConfirmRechargeOrderImpl(
      memberUuid: (json['member_uuid'] as num).toInt(),
      rechargeOrderUuid: (json['recharge_order_uuid'] as num).toInt(),
    );

Map<String, dynamic> _$$RequestConfirmRechargeOrderImplToJson(
        _$RequestConfirmRechargeOrderImpl instance) =>
    <String, dynamic>{
      'member_uuid': instance.memberUuid,
      'recharge_order_uuid': instance.rechargeOrderUuid,
    };

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recharge.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RechargeOrderImpl _$$RechargeOrderImplFromJson(Map<String, dynamic> json) =>
    _$RechargeOrderImpl(
      chargeDue: SafetyNumber.fromJson(json['charge_due']),
      giftAmount: SafetyNumber.fromJson(json['gift_amount']),
      giftPoint: SafetyNumber.fromJson(json['gift_point']),
      memberUuid: (json['member_uuid'] as num).toInt(),
      paymentOrders: BaseList<PaymentOrder>.fromJson(
          json['payment_orders'] as Map<String, dynamic>,
          (value) => PaymentOrder.fromJson(value as Map<String, dynamic>)),
      rechargeAmount: SafetyNumber.fromJson(json['recharge_amount']),
      uuid: (json['uuid'] as num).toInt(),
    );

Map<String, dynamic> _$$RechargeOrderImplToJson(_$RechargeOrderImpl instance) =>
    <String, dynamic>{
      'charge_due': instance.chargeDue,
      'gift_amount': instance.giftAmount,
      'gift_point': instance.giftPoint,
      'member_uuid': instance.memberUuid,
      'payment_orders': instance.paymentOrders,
      'recharge_amount': instance.rechargeAmount,
      'uuid': instance.uuid,
    };

_$ConfirmRechargeOrderImpl _$$ConfirmRechargeOrderImplFromJson(
        Map<String, dynamic> json) =>
    _$ConfirmRechargeOrderImpl(
      actualAmount: SafetyNumber.fromJson(json['actual_amount']),
      amount: SafetyNumber.fromJson(json['amount']),
      chargeDue: SafetyNumber.fromJson(json['charge_due']),
      paymentMethods: (json['payment_methods'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$ConfirmRechargeOrderImplToJson(
        _$ConfirmRechargeOrderImpl instance) =>
    <String, dynamic>{
      'actual_amount': instance.actualAmount,
      'amount': instance.amount,
      'charge_due': instance.chargeDue,
      'payment_methods': instance.paymentMethods,
    };

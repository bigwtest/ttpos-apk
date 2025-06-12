// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'confirm_recharge_order.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ResponseConfirmRechargeOrderImpl _$$ResponseConfirmRechargeOrderImplFromJson(
        Map<String, dynamic> json) =>
    _$ResponseConfirmRechargeOrderImpl(
      actualAmount: (json['actual_amount'] as num).toDouble(),
      amount: (json['amount'] as num).toDouble(),
      chargeDue: (json['charge_due'] as num).toDouble(),
      paymentMethods: (json['payment_methods'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$ResponseConfirmRechargeOrderImplToJson(
        _$ResponseConfirmRechargeOrderImpl instance) =>
    <String, dynamic>{
      'actual_amount': instance.actualAmount,
      'amount': instance.amount,
      'charge_due': instance.chargeDue,
      'payment_methods': instance.paymentMethods,
    };

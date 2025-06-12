// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recharge_order_add_payment_method.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RequestRechargeOrderAddPaymentMethodImpl
    _$$RequestRechargeOrderAddPaymentMethodImplFromJson(
            Map<String, dynamic> json) =>
        _$RequestRechargeOrderAddPaymentMethodImpl(
          paymentAmount: (json['payment_amount'] as num).toDouble(),
          paymentMethodUuid: (json['payment_method_uuid'] as num).toInt(),
          rechargeOrderUuid: (json['recharge_order_uuid'] as num).toInt(),
        );

Map<String, dynamic> _$$RequestRechargeOrderAddPaymentMethodImplToJson(
        _$RequestRechargeOrderAddPaymentMethodImpl instance) =>
    <String, dynamic>{
      'payment_amount': instance.paymentAmount,
      'payment_method_uuid': instance.paymentMethodUuid,
      'recharge_order_uuid': instance.rechargeOrderUuid,
    };

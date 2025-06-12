// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recharge_order_cancel_payment_method.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RequestRechargeOrderCancelPaymentMethodImpl
    _$$RequestRechargeOrderCancelPaymentMethodImplFromJson(
            Map<String, dynamic> json) =>
        _$RequestRechargeOrderCancelPaymentMethodImpl(
          paymentOrderUuid: (json['payment_order_uuid'] as num).toInt(),
          rechargeOrderUuid: (json['recharge_order_uuid'] as num).toInt(),
        );

Map<String, dynamic> _$$RequestRechargeOrderCancelPaymentMethodImplToJson(
        _$RequestRechargeOrderCancelPaymentMethodImpl instance) =>
    <String, dynamic>{
      'payment_order_uuid': instance.paymentOrderUuid,
      'recharge_order_uuid': instance.rechargeOrderUuid,
    };

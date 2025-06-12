// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'qrcode.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RequestPaymentQrcodeImpl _$$RequestPaymentQrcodeImplFromJson(
        Map<String, dynamic> json) =>
    _$RequestPaymentQrcodeImpl(
      paymentAmount: (json['payment_amount'] as num).toDouble(),
      paymentMethodUuid: (json['payment_method_uuid'] as num).toInt(),
      saleBillUuid: (json['sale_bill_uuid'] as num).toInt(),
      saleOrderUuid: (json['sale_order_uuid'] as num).toInt(),
    );

Map<String, dynamic> _$$RequestPaymentQrcodeImplToJson(
        _$RequestPaymentQrcodeImpl instance) =>
    <String, dynamic>{
      'payment_amount': instance.paymentAmount,
      'payment_method_uuid': instance.paymentMethodUuid,
      'sale_bill_uuid': instance.saleBillUuid,
      'sale_order_uuid': instance.saleOrderUuid,
    };

_$RequestPaymentQrcodeForRechargeImpl
    _$$RequestPaymentQrcodeForRechargeImplFromJson(Map<String, dynamic> json) =>
        _$RequestPaymentQrcodeForRechargeImpl(
          paymentAmount: (json['payment_amount'] as num).toDouble(),
          paymentMethodUuid: (json['payment_method_uuid'] as num).toInt(),
          rechargeOrderUuid: (json['recharge_order_uuid'] as num).toInt(),
        );

Map<String, dynamic> _$$RequestPaymentQrcodeForRechargeImplToJson(
        _$RequestPaymentQrcodeForRechargeImpl instance) =>
    <String, dynamic>{
      'payment_amount': instance.paymentAmount,
      'payment_method_uuid': instance.paymentMethodUuid,
      'recharge_order_uuid': instance.rechargeOrderUuid,
    };

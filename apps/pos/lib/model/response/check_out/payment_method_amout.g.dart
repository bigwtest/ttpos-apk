// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_method_amout.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PaymentMethodAmountImpl _$$PaymentMethodAmountImplFromJson(
        Map<String, dynamic> json) =>
    _$PaymentMethodAmountImpl(
      commissionFee: (json['commission_fee'] as num).toDouble(),
      paymentMethodUuid: (json['payment_method_uuid'] as num).toInt(),
      saleOrderAmount: (json['sale_order_amount'] as num).toDouble(),
      saleOrderOriginAmount:
          (json['sale_order_origin_amount'] as num).toDouble(),
      unpaidAmount: (json['unpaid_amount'] as num).toDouble(),
      zeroAmount: (json['zero_amount'] as num).toDouble(),
      zeroRule: (json['zero_rule'] as num).toInt(),
    );

Map<String, dynamic> _$$PaymentMethodAmountImplToJson(
        _$PaymentMethodAmountImpl instance) =>
    <String, dynamic>{
      'commission_fee': instance.commissionFee,
      'payment_method_uuid': instance.paymentMethodUuid,
      'sale_order_amount': instance.saleOrderAmount,
      'sale_order_origin_amount': instance.saleOrderOriginAmount,
      'unpaid_amount': instance.unpaidAmount,
      'zero_amount': instance.zeroAmount,
      'zero_rule': instance.zeroRule,
    };

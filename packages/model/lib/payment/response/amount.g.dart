// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'amount.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PaymentAmountImpl _$$PaymentAmountImplFromJson(Map<String, dynamic> json) =>
    _$PaymentAmountImpl(
      commissionFee: SafetyNumber.fromJson(json['commission_fee']),
      paymentMethodUuid: (json['payment_method_uuid'] as num).toInt(),
      saleOrderAmount: SafetyNumber.fromJson(json['sale_order_amount']),
      saleOrderOriginAmount:
          SafetyNumber.fromJson(json['sale_order_origin_amount']),
      unpaidAmount: SafetyNumber.fromJson(json['unpaid_amount']),
      zeroAmount: SafetyNumber.fromJson(json['zero_amount']),
      zeroRule: (json['zero_rule'] as num).toInt(),
      isAutoZero: json['is_auto_zero'] as bool?,
    );

Map<String, dynamic> _$$PaymentAmountImplToJson(_$PaymentAmountImpl instance) =>
    <String, dynamic>{
      'commission_fee': instance.commissionFee,
      'payment_method_uuid': instance.paymentMethodUuid,
      'sale_order_amount': instance.saleOrderAmount,
      'sale_order_origin_amount': instance.saleOrderOriginAmount,
      'unpaid_amount': instance.unpaidAmount,
      'zero_amount': instance.zeroAmount,
      'zero_rule': instance.zeroRule,
      'is_auto_zero': instance.isAutoZero,
    };

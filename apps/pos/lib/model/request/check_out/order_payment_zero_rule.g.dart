// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_payment_zero_rule.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RequestOrderPaymentZeroRuleImpl _$$RequestOrderPaymentZeroRuleImplFromJson(
        Map<String, dynamic> json) =>
    _$RequestOrderPaymentZeroRuleImpl(
      saleBillUuid: (json['sale_bill_uuid'] as num).toInt(),
      saleOrderUuid: (json['sale_order_uuid'] as num).toInt(),
      zeroRule: (json['zero_rule'] as num).toInt(),
    );

Map<String, dynamic> _$$RequestOrderPaymentZeroRuleImplToJson(
        _$RequestOrderPaymentZeroRuleImpl instance) =>
    <String, dynamic>{
      'sale_bill_uuid': instance.saleBillUuid,
      'sale_order_uuid': instance.saleOrderUuid,
      'zero_rule': instance.zeroRule,
    };

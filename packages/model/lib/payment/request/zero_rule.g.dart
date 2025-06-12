// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'zero_rule.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RequestZeroRuleImpl _$$RequestZeroRuleImplFromJson(
        Map<String, dynamic> json) =>
    _$RequestZeroRuleImpl(
      saleBillUuid: (json['sale_bill_uuid'] as num).toInt(),
      saleOrderUuid: (json['sale_order_uuid'] as num).toInt(),
      zeroRule: (json['zero_rule'] as num).toInt(),
    );

Map<String, dynamic> _$$RequestZeroRuleImplToJson(
        _$RequestZeroRuleImpl instance) =>
    <String, dynamic>{
      'sale_bill_uuid': instance.saleBillUuid,
      'sale_order_uuid': instance.saleOrderUuid,
      'zero_rule': instance.zeroRule,
    };

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_zero_rule.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RequestOrderZeroRuleImpl _$$RequestOrderZeroRuleImplFromJson(
        Map<String, dynamic> json) =>
    _$RequestOrderZeroRuleImpl(
      saleBillUuid: (json['sale_bill_uuid'] as num).toInt(),
      saleOrderUuid: (json['sale_order_uuid'] as num).toInt(),
      zeroRule: (json['zero_rule'] as num).toInt(),
    );

Map<String, dynamic> _$$RequestOrderZeroRuleImplToJson(
        _$RequestOrderZeroRuleImpl instance) =>
    <String, dynamic>{
      'sale_bill_uuid': instance.saleBillUuid,
      'sale_order_uuid': instance.saleOrderUuid,
      'zero_rule': instance.zeroRule,
    };

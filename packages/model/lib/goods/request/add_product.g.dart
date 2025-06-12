// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_product.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RequestOrderAddProductImpl _$$RequestOrderAddProductImplFromJson(
        Map<String, dynamic> json) =>
    _$RequestOrderAddProductImpl(
      saleBillUuid: (json['sale_bill_uuid'] as num?)?.toInt() ?? 0,
      saleOrderUuid: (json['sale_order_uuid'] as num?)?.toInt() ?? 0,
      mustPlanUuid: (json['must_plan_uuid'] as num?)?.toInt() ?? 0,
      operation: json['operation'] as String? ?? 'add',
      attributeUuid: (json['attribute_uuid'] as List<dynamic>?)
              ?.map((e) => (e as num).toInt())
              .toList() ??
          const [],
      flavorUuid: (json['flavor_uuid'] as num).toInt(),
      sauceUuid: (json['sauce_uuid'] as List<dynamic>?)
              ?.map((e) => (e as num).toInt())
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$RequestOrderAddProductImplToJson(
        _$RequestOrderAddProductImpl instance) =>
    <String, dynamic>{
      'sale_bill_uuid': instance.saleBillUuid,
      'sale_order_uuid': instance.saleOrderUuid,
      'must_plan_uuid': instance.mustPlanUuid,
      'operation': instance.operation,
      'attribute_uuid': instance.attributeUuid,
      'flavor_uuid': instance.flavorUuid,
      'sauce_uuid': instance.sauceUuid,
    };

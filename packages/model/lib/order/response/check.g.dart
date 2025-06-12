// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'check.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OrderCheckImpl _$$OrderCheckImplFromJson(Map<String, dynamic> json) =>
    _$OrderCheckImpl(
      productMustPlans: json['product_must_plans'] == null
          ? null
          : BaseList<OrderMustPlan>.fromJson(
              json['product_must_plans'] as Map<String, dynamic>,
              (value) => OrderMustPlan.fromJson(value as Map<String, dynamic>)),
      products: json['products'] == null
          ? null
          : BaseList<Product>.fromJson(json['products'] as Map<String, dynamic>,
              (value) => Product.fromJson(value as Map<String, dynamic>)),
    );

Map<String, dynamic> _$$OrderCheckImplToJson(_$OrderCheckImpl instance) =>
    <String, dynamic>{
      'product_must_plans': instance.productMustPlans,
      'products': instance.products,
    };

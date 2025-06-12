// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cooking_product.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RequestCookingImpl _$$RequestCookingImplFromJson(Map<String, dynamic> json) =>
    _$RequestCookingImpl(
      ignoreMust: json['ignore_must'] as bool,
      products: (json['products'] as List<dynamic>?)
              ?.map((e) =>
                  RequestCookingProducts.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      saleBillUuid: (json['sale_bill_uuid'] as num).toInt(),
      saleOrderUuid: (json['sale_order_uuid'] as num).toInt(),
      password: json['password'] as String?,
      isCheckCooking: json['is_check_cooking'] as bool? ?? false,
    );

Map<String, dynamic> _$$RequestCookingImplToJson(
        _$RequestCookingImpl instance) =>
    <String, dynamic>{
      'ignore_must': instance.ignoreMust,
      'products': instance.products,
      'sale_bill_uuid': instance.saleBillUuid,
      'sale_order_uuid': instance.saleOrderUuid,
      'password': instance.password,
      'is_check_cooking': instance.isCheckCooking,
    };

_$RequestCookingProductsImpl _$$RequestCookingProductsImplFromJson(
        Map<String, dynamic> json) =>
    _$RequestCookingProductsImpl(
      flavorProductBomUuid: (json['flavor_product_bom_uuid'] as num).toInt(),
      num: (json['num'] as num).toInt(),
      mustPlanUuid: (json['must_plan_uuid'] as num?)?.toInt() ?? 0,
      operation: json['operation'] as String? ?? 'add',
      remark: json['remark'] as String? ?? '',
      productPackageAttributeUuidList:
          (json['product_package_attribute_uuid_list'] as List<dynamic>)
              .map((e) => (e as num).toInt())
              .toList(),
      sauceProductBomUuidList:
          (json['sauce_product_bom_uuid_list'] as List<dynamic>)
              .map((e) => (e as num).toInt())
              .toList(),
    );

Map<String, dynamic> _$$RequestCookingProductsImplToJson(
        _$RequestCookingProductsImpl instance) =>
    <String, dynamic>{
      'flavor_product_bom_uuid': instance.flavorProductBomUuid,
      'num': instance.num,
      'must_plan_uuid': instance.mustPlanUuid,
      'operation': instance.operation,
      'remark': instance.remark,
      'product_package_attribute_uuid_list':
          instance.productPackageAttributeUuidList,
      'sauce_product_bom_uuid_list': instance.sauceProductBomUuidList,
    };

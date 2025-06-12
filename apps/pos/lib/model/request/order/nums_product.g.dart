// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'nums_product.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RequestOrderNumsProductImpl _$$RequestOrderNumsProductImplFromJson(
        Map<String, dynamic> json) =>
    _$RequestOrderNumsProductImpl(
      saleBillUuid: (json['sale_bill_uuid'] as num).toInt(),
      saleOrderUuid: (json['sale_order_uuid'] as num).toInt(),
      saleOrderProductUuid: (json['sale_order_product_uuid'] as num).toInt(),
      num: (json['num'] as num).toInt(),
    );

Map<String, dynamic> _$$RequestOrderNumsProductImplToJson(
        _$RequestOrderNumsProductImpl instance) =>
    <String, dynamic>{
      'sale_bill_uuid': instance.saleBillUuid,
      'sale_order_uuid': instance.saleOrderUuid,
      'sale_order_product_uuid': instance.saleOrderProductUuid,
      'num': instance.num,
    };

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delete_product.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RequestDeleteProductImpl _$$RequestDeleteProductImplFromJson(
        Map<String, dynamic> json) =>
    _$RequestDeleteProductImpl(
      orderProductUuid: (json['order_product_uuid'] as num).toInt(),
      saleBillUuid: (json['sale_bill_uuid'] as num).toInt(),
      saleOrderUuid: (json['sale_order_uuid'] as num).toInt(),
    );

Map<String, dynamic> _$$RequestDeleteProductImplToJson(
        _$RequestDeleteProductImpl instance) =>
    <String, dynamic>{
      'order_product_uuid': instance.orderProductUuid,
      'sale_bill_uuid': instance.saleBillUuid,
      'sale_order_uuid': instance.saleOrderUuid,
    };

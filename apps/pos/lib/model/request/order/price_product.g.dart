// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'price_product.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RequestOrderPriceProductImpl _$$RequestOrderPriceProductImplFromJson(
        Map<String, dynamic> json) =>
    _$RequestOrderPriceProductImpl(
      saleBillUuid: (json['sale_bill_uuid'] as num).toInt(),
      saleOrderUuid: (json['sale_order_uuid'] as num).toInt(),
      orderProductUuid: (json['order_product_uuid'] as num).toInt(),
      price: (json['price'] as num).toDouble(),
    );

Map<String, dynamic> _$$RequestOrderPriceProductImplToJson(
        _$RequestOrderPriceProductImpl instance) =>
    <String, dynamic>{
      'sale_bill_uuid': instance.saleBillUuid,
      'sale_order_uuid': instance.saleOrderUuid,
      'order_product_uuid': instance.orderProductUuid,
      'price': instance.price,
    };

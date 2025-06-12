// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'opt_product.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RequestOrderOptProductImpl _$$RequestOrderOptProductImplFromJson(
        Map<String, dynamic> json) =>
    _$RequestOrderOptProductImpl(
      saleBillUuid: (json['sale_bill_uuid'] as num).toInt(),
      saleOrderUuid: (json['sale_order_uuid'] as num).toInt(),
      saleOrderProductUuid: (json['sale_order_product_uuid'] as num).toInt(),
    );

Map<String, dynamic> _$$RequestOrderOptProductImplToJson(
        _$RequestOrderOptProductImpl instance) =>
    <String, dynamic>{
      'sale_bill_uuid': instance.saleBillUuid,
      'sale_order_uuid': instance.saleOrderUuid,
      'sale_order_product_uuid': instance.saleOrderProductUuid,
    };

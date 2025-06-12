// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'remark_product.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RequestOrderRemarkProductImpl _$$RequestOrderRemarkProductImplFromJson(
        Map<String, dynamic> json) =>
    _$RequestOrderRemarkProductImpl(
      saleBillUuid: (json['sale_bill_uuid'] as num).toInt(),
      saleOrderUuid: (json['sale_order_uuid'] as num).toInt(),
      orderProductUuid: (json['order_product_uuid'] as num).toInt(),
      remark: json['remark'] as String,
    );

Map<String, dynamic> _$$RequestOrderRemarkProductImplToJson(
        _$RequestOrderRemarkProductImpl instance) =>
    <String, dynamic>{
      'sale_bill_uuid': instance.saleBillUuid,
      'sale_order_uuid': instance.saleOrderUuid,
      'order_product_uuid': instance.orderProductUuid,
      'remark': instance.remark,
    };

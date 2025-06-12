// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'remark_product.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RequestRemarkProductImpl _$$RequestRemarkProductImplFromJson(
        Map<String, dynamic> json) =>
    _$RequestRemarkProductImpl(
      orderProductUuid: (json['order_product_uuid'] as num).toInt(),
      remark: json['remark'] as String,
      saleBillUuid: (json['sale_bill_uuid'] as num).toInt(),
      saleOrderUuid: (json['sale_order_uuid'] as num).toInt(),
    );

Map<String, dynamic> _$$RequestRemarkProductImplToJson(
        _$RequestRemarkProductImpl instance) =>
    <String, dynamic>{
      'order_product_uuid': instance.orderProductUuid,
      'remark': instance.remark,
      'sale_bill_uuid': instance.saleBillUuid,
      'sale_order_uuid': instance.saleOrderUuid,
    };

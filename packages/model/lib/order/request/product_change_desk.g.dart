// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_change_desk.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RequestChangeDeskProductImpl _$$RequestChangeDeskProductImplFromJson(
        Map<String, dynamic> json) =>
    _$RequestChangeDeskProductImpl(
      deskUuid: (json['desk_uuid'] as num).toInt(),
      saleBillUuid: (json['sale_bill_uuid'] as num).toInt(),
      saleOrderProductUuid: (json['sale_order_product_uuid'] as num).toInt(),
      saleOrderUuid: (json['sale_order_uuid'] as num).toInt(),
    );

Map<String, dynamic> _$$RequestChangeDeskProductImplToJson(
        _$RequestChangeDeskProductImpl instance) =>
    <String, dynamic>{
      'desk_uuid': instance.deskUuid,
      'sale_bill_uuid': instance.saleBillUuid,
      'sale_order_product_uuid': instance.saleOrderProductUuid,
      'sale_order_uuid': instance.saleOrderUuid,
    };

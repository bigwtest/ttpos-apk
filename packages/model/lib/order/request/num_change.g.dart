// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'num_change.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RequestNumChangeImpl _$$RequestNumChangeImplFromJson(
        Map<String, dynamic> json) =>
    _$RequestNumChangeImpl(
      num: (json['num'] as num).toInt(),
      saleBillUuid: (json['sale_bill_uuid'] as num).toInt(),
      saleOrderProductUuid: (json['sale_order_product_uuid'] as num).toInt(),
      saleOrderUuid: (json['sale_order_uuid'] as num).toInt(),
    );

Map<String, dynamic> _$$RequestNumChangeImplToJson(
        _$RequestNumChangeImpl instance) =>
    <String, dynamic>{
      'num': instance.num,
      'sale_bill_uuid': instance.saleBillUuid,
      'sale_order_product_uuid': instance.saleOrderProductUuid,
      'sale_order_uuid': instance.saleOrderUuid,
    };

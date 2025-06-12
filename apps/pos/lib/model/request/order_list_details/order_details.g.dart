// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_details.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RequestOrderDetailsImpl _$$RequestOrderDetailsImplFromJson(
        Map<String, dynamic> json) =>
    _$RequestOrderDetailsImpl(
      saleBillUuid: (json['sale_bill_uuid'] as num).toInt(),
      saleOrderUuid: (json['sale_order_uuid'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$$RequestOrderDetailsImplToJson(
        _$RequestOrderDetailsImpl instance) =>
    <String, dynamic>{
      'sale_bill_uuid': instance.saleBillUuid,
      'sale_order_uuid': instance.saleOrderUuid,
    };

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'request_order_uuid.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RequestOrderUuidImpl _$$RequestOrderUuidImplFromJson(
        Map<String, dynamic> json) =>
    _$RequestOrderUuidImpl(
      saleBillUuid: (json['sale_bill_uuid'] as num?)?.toInt(),
      saleOrderUuid: (json['sale_order_uuid'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$RequestOrderUuidImplToJson(
        _$RequestOrderUuidImpl instance) =>
    <String, dynamic>{
      'sale_bill_uuid': instance.saleBillUuid,
      'sale_order_uuid': instance.saleOrderUuid,
    };

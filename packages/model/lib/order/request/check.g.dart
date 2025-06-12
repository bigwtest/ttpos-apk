// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'check.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RequestOrderCheckImpl _$$RequestOrderCheckImplFromJson(
        Map<String, dynamic> json) =>
    _$RequestOrderCheckImpl(
      saleBillUuid: (json['sale_bill_uuid'] as num).toInt(),
      saleOrderUuid: (json['sale_order_uuid'] as num).toInt(),
      ignoreMust: json['ignore_must'] as bool,
    );

Map<String, dynamic> _$$RequestOrderCheckImplToJson(
        _$RequestOrderCheckImpl instance) =>
    <String, dynamic>{
      'sale_bill_uuid': instance.saleBillUuid,
      'sale_order_uuid': instance.saleOrderUuid,
      'ignore_must': instance.ignoreMust,
    };

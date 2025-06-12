// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_clock.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RequestOrderAddClockImpl _$$RequestOrderAddClockImplFromJson(
        Map<String, dynamic> json) =>
    _$RequestOrderAddClockImpl(
      saleBillUuid: (json['sale_bill_uuid'] as num).toInt(),
      saleOrderUuid: (json['sale_order_uuid'] as num).toInt(),
      delayUuids: (json['delay_uuids'] as List<dynamic>)
          .map((e) => (e as num).toInt())
          .toList(),
    );

Map<String, dynamic> _$$RequestOrderAddClockImplToJson(
        _$RequestOrderAddClockImpl instance) =>
    <String, dynamic>{
      'sale_bill_uuid': instance.saleBillUuid,
      'sale_order_uuid': instance.saleOrderUuid,
      'delay_uuids': instance.delayUuids,
    };

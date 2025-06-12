// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'free_desk.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RequestFreeDeskImpl _$$RequestFreeDeskImplFromJson(
        Map<String, dynamic> json) =>
    _$RequestFreeDeskImpl(
      saleBillUuid: (json['sale_bill_uuid'] as num).toInt(),
      saleOrderUuid: (json['sale_order_uuid'] as num).toInt(),
      reasonIds: (json['reason_ids'] as List<dynamic>)
          .map((e) => (e as num).toInt())
          .toList(),
      reason: json['reason'] as String,
    );

Map<String, dynamic> _$$RequestFreeDeskImplToJson(
        _$RequestFreeDeskImpl instance) =>
    <String, dynamic>{
      'sale_bill_uuid': instance.saleBillUuid,
      'sale_order_uuid': instance.saleOrderUuid,
      'reason_ids': instance.reasonIds,
      'reason': instance.reason,
    };

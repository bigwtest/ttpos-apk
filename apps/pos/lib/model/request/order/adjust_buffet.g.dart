// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'adjust_buffet.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RequestOrderAdjustBuffetImpl _$$RequestOrderAdjustBuffetImplFromJson(
        Map<String, dynamic> json) =>
    _$RequestOrderAdjustBuffetImpl(
      buffetCustomerTypes: (json['buffet_customer_types'] as List<dynamic>)
          .map((e) =>
              RequestBuffetCustomerType.fromJson(e as Map<String, dynamic>))
          .toList(),
      saleBillUuid: (json['sale_bill_uuid'] as num).toInt(),
      buffetUuids: (json['buffet_uuids'] as List<dynamic>)
          .map((e) => (e as num).toInt())
          .toList(),
    );

Map<String, dynamic> _$$RequestOrderAdjustBuffetImplToJson(
        _$RequestOrderAdjustBuffetImpl instance) =>
    <String, dynamic>{
      'buffet_customer_types': instance.buffetCustomerTypes,
      'sale_bill_uuid': instance.saleBillUuid,
      'buffet_uuids': instance.buffetUuids,
    };

_$RequestBuffetCustomerTypeImpl _$$RequestBuffetCustomerTypeImplFromJson(
        Map<String, dynamic> json) =>
    _$RequestBuffetCustomerTypeImpl(
      uuid: (json['uuid'] as num).toInt(),
      mealNum: (json['meal_num'] as num).toInt(),
    );

Map<String, dynamic> _$$RequestBuffetCustomerTypeImplToJson(
        _$RequestBuffetCustomerTypeImpl instance) =>
    <String, dynamic>{
      'uuid': instance.uuid,
      'meal_num': instance.mealNum,
    };

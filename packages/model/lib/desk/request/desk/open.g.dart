// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'open.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RequestDeskOpenImpl _$$RequestDeskOpenImplFromJson(
        Map<String, dynamic> json) =>
    _$RequestDeskOpenImpl(
      buffetCustomerTypes: (json['buffet_customer_types'] as List<dynamic>)
          .map((e) =>
              RequestDeskBuffetCustomerType.fromJson(e as Map<String, dynamic>))
          .toList(),
      buffetUuids: (json['buffet_uuids'] as List<dynamic>)
          .map((e) => (e as num).toInt())
          .toList(),
      deskUuid: (json['desk_uuid'] as num).toInt(),
      isBuffet: json['is_buffet'] as bool,
      mealNum: (json['meal_num'] as num).toInt(),
      remark: json['remark'] as String,
    );

Map<String, dynamic> _$$RequestDeskOpenImplToJson(
        _$RequestDeskOpenImpl instance) =>
    <String, dynamic>{
      'buffet_customer_types': instance.buffetCustomerTypes,
      'buffet_uuids': instance.buffetUuids,
      'desk_uuid': instance.deskUuid,
      'is_buffet': instance.isBuffet,
      'meal_num': instance.mealNum,
      'remark': instance.remark,
    };

_$RequestDeskBuffetCustomerTypeImpl
    _$$RequestDeskBuffetCustomerTypeImplFromJson(Map<String, dynamic> json) =>
        _$RequestDeskBuffetCustomerTypeImpl(
          mealNum: (json['meal_num'] as num).toInt(),
          uuid: (json['uuid'] as num).toInt(),
        );

Map<String, dynamic> _$$RequestDeskBuffetCustomerTypeImplToJson(
        _$RequestDeskBuffetCustomerTypeImpl instance) =>
    <String, dynamic>{
      'meal_num': instance.mealNum,
      'uuid': instance.uuid,
    };

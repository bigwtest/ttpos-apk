// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'assistant_staff.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AssistantStaffImpl _$$AssistantStaffImplFromJson(Map<String, dynamic> json) =>
    _$AssistantStaffImpl(
      deviceId: json['device_id'] as String,
      phone: json['phone'] as String,
      realName: json['real_name'] as String,
      uuid: (json['uuid'] as num).toInt(),
    );

Map<String, dynamic> _$$AssistantStaffImplToJson(
        _$AssistantStaffImpl instance) =>
    <String, dynamic>{
      'device_id': instance.deviceId,
      'phone': instance.phone,
      'real_name': instance.realName,
      'uuid': instance.uuid,
    };

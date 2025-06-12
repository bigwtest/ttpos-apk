// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'member_level.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ResponseMemberLevelImpl _$$ResponseMemberLevelImplFromJson(
        Map<String, dynamic> json) =>
    _$ResponseMemberLevelImpl(
      createTime: (json['create_time'] as num?)?.toInt(),
      name: json['name'] as String?,
      priority: (json['priority'] as num?)?.toInt(),
      uuid: (json['uuid'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$ResponseMemberLevelImplToJson(
        _$ResponseMemberLevelImpl instance) =>
    <String, dynamic>{
      'create_time': instance.createTime,
      'name': instance.name,
      'priority': instance.priority,
      'uuid': instance.uuid,
    };

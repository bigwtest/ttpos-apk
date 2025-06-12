// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_member.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RequestAddMemberImpl _$$RequestAddMemberImplFromJson(
        Map<String, dynamic> json) =>
    _$RequestAddMemberImpl(
      levelUuid: (json['level_uuid'] as num).toInt(),
      nickname: json['nickname'] as String,
      password: json['password'] as String,
      phone: json['phone'] as String,
    );

Map<String, dynamic> _$$RequestAddMemberImplToJson(
        _$RequestAddMemberImpl instance) =>
    <String, dynamic>{
      'level_uuid': instance.levelUuid,
      'nickname': instance.nickname,
      'password': instance.password,
      'phone': instance.phone,
    };

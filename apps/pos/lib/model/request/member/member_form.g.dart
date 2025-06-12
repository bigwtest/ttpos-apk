// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'member_form.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RequestMemberFormImpl _$$RequestMemberFormImplFromJson(
        Map<String, dynamic> json) =>
    _$RequestMemberFormImpl(
      levelUuid: (json['level_uuid'] as num).toInt(),
      nickname: json['nickname'] as String,
      password: json['password'] as String,
      phone: json['phone'] as String,
    );

Map<String, dynamic> _$$RequestMemberFormImplToJson(
        _$RequestMemberFormImpl instance) =>
    <String, dynamic>{
      'level_uuid': instance.levelUuid,
      'nickname': instance.nickname,
      'password': instance.password,
      'phone': instance.phone,
    };

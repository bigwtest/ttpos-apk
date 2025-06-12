// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_member.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ResponseSearchMemberImpl _$$ResponseSearchMemberImplFromJson(
        Map<String, dynamic> json) =>
    _$ResponseSearchMemberImpl(
      nickname: json['nickname'] as String,
      phone: json['phone'] as String,
      uuid: (json['uuid'] as num).toInt(),
    );

Map<String, dynamic> _$$ResponseSearchMemberImplToJson(
        _$ResponseSearchMemberImpl instance) =>
    <String, dynamic>{
      'nickname': instance.nickname,
      'phone': instance.phone,
      'uuid': instance.uuid,
    };

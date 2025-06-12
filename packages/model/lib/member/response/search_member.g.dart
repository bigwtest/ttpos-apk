// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_member.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SearchMemberImpl _$$SearchMemberImplFromJson(Map<String, dynamic> json) =>
    _$SearchMemberImpl(
      nickname: json['nickname'] as String,
      phone: json['phone'] as String,
      uuid: (json['uuid'] as num).toInt(),
    );

Map<String, dynamic> _$$SearchMemberImplToJson(_$SearchMemberImpl instance) =>
    <String, dynamic>{
      'nickname': instance.nickname,
      'phone': instance.phone,
      'uuid': instance.uuid,
    };

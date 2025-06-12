// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'member_card.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ResponseMemberCardImpl _$$ResponseMemberCardImplFromJson(
        Map<String, dynamic> json) =>
    _$ResponseMemberCardImpl(
      name: json['name'] as String,
      uuid: (json['uuid'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$ResponseMemberCardImplToJson(
        _$ResponseMemberCardImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'uuid': instance.uuid,
    };

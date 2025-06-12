// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'member.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MemberImpl _$$MemberImplFromJson(Map<String, dynamic> json) => _$MemberImpl(
      balance: SafetyNumber.fromJson(json['balance']),
      card: MemberCard.fromJson(json['card'] as Map<String, dynamic>),
      level: MemberLevel.fromJson(json['level'] as Map<String, dynamic>),
      nickname: json['nickname'] as String,
      phone: json['phone'] as String?,
      points: SafetyNumber.fromJson(json['points']),
      uuid: (json['uuid'] as num).toInt(),
    );

Map<String, dynamic> _$$MemberImplToJson(_$MemberImpl instance) =>
    <String, dynamic>{
      'balance': instance.balance,
      'card': instance.card,
      'level': instance.level,
      'nickname': instance.nickname,
      'phone': instance.phone,
      'points': instance.points,
      'uuid': instance.uuid,
    };

_$MemberCardImpl _$$MemberCardImplFromJson(Map<String, dynamic> json) =>
    _$MemberCardImpl(
      name: json['name'] as String?,
    );

Map<String, dynamic> _$$MemberCardImplToJson(_$MemberCardImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
    };

_$MemberLevelImpl _$$MemberLevelImplFromJson(Map<String, dynamic> json) =>
    _$MemberLevelImpl(
      name: json['name'] as String?,
    );

Map<String, dynamic> _$$MemberLevelImplToJson(_$MemberLevelImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
    };

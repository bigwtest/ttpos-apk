// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'member_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ResponseMemberInfoImpl _$$ResponseMemberInfoImplFromJson(
        Map<String, dynamic> json) =>
    _$ResponseMemberInfoImpl(
      balance: (json['balance'] as num).toDouble(),
      card: ResponseMemberCard.fromJson(json['card'] as Map<String, dynamic>),
      level:
          ResponseMemberLevel.fromJson(json['level'] as Map<String, dynamic>),
      nickname: json['nickname'] as String,
      points: (json['points'] as num).toDouble(),
      uuid: (json['uuid'] as num).toInt(),
    );

Map<String, dynamic> _$$ResponseMemberInfoImplToJson(
        _$ResponseMemberInfoImpl instance) =>
    <String, dynamic>{
      'balance': instance.balance,
      'card': instance.card,
      'level': instance.level,
      'nickname': instance.nickname,
      'points': instance.points,
      'uuid': instance.uuid,
    };

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'top_up_reverse_settle_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TopUpReverseSettleInfoImpl _$$TopUpReverseSettleInfoImplFromJson(
        Map<String, dynamic> json) =>
    _$TopUpReverseSettleInfoImpl(
      memberInfo:
          MemberInfo.fromJson(json['member_info'] as Map<String, dynamic>),
      message: json['message'] as String,
      status: (json['status'] as num).toInt(),
    );

Map<String, dynamic> _$$TopUpReverseSettleInfoImplToJson(
        _$TopUpReverseSettleInfoImpl instance) =>
    <String, dynamic>{
      'member_info': instance.memberInfo,
      'message': instance.message,
      'status': instance.status,
    };

_$MemberInfoImpl _$$MemberInfoImplFromJson(Map<String, dynamic> json) =>
    _$MemberInfoImpl(
      balance: (json['balance'] as num).toDouble(),
      giftBalance: (json['gift_balance'] as num).toDouble(),
      nickname: json['nickname'] as String,
      points: (json['points'] as num).toDouble(),
      uuid: (json['uuid'] as num).toInt(),
    );

Map<String, dynamic> _$$MemberInfoImplToJson(_$MemberInfoImpl instance) =>
    <String, dynamic>{
      'balance': instance.balance,
      'gift_balance': instance.giftBalance,
      'nickname': instance.nickname,
      'points': instance.points,
      'uuid': instance.uuid,
    };

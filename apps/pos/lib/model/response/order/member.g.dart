// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'member.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ResponseMemberDataImpl _$$ResponseMemberDataImplFromJson(
        Map<String, dynamic> json) =>
    _$ResponseMemberDataImpl(
      list: (json['list'] as List<dynamic>)
          .map((e) => ResponseMember.fromJson(e as Map<String, dynamic>))
          .toList(),
      extra:
          ResponseMemberExtra.fromJson(json['extra'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ResponseMemberDataImplToJson(
        _$ResponseMemberDataImpl instance) =>
    <String, dynamic>{
      'list': instance.list,
      'extra': instance.extra,
    };

_$ResponseMemberImpl _$$ResponseMemberImplFromJson(Map<String, dynamic> json) =>
    _$ResponseMemberImpl(
      uuid: (json['uuid'] as num).toInt(),
      nickname: json['nickname'] as String,
      phone: json['phone'] as String,
    );

Map<String, dynamic> _$$ResponseMemberImplToJson(
        _$ResponseMemberImpl instance) =>
    <String, dynamic>{
      'uuid': instance.uuid,
      'nickname': instance.nickname,
      'phone': instance.phone,
    };

_$ResponseMemberExtraImpl _$$ResponseMemberExtraImplFromJson(
        Map<String, dynamic> json) =>
    _$ResponseMemberExtraImpl(
      isCheckout: json['is_checkout'] as bool,
      isPartialCheckout: json['is_partial_checkout'] as bool,
    );

Map<String, dynamic> _$$ResponseMemberExtraImplToJson(
        _$ResponseMemberExtraImpl instance) =>
    <String, dynamic>{
      'is_checkout': instance.isCheckout,
      'is_partial_checkout': instance.isPartialCheckout,
    };

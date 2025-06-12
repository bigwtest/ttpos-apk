// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BaseInfoImpl _$$BaseInfoImplFromJson(Map<String, dynamic> json) =>
    _$BaseInfoImpl(
      buffet: Buffet.fromJson(json['buffet'] as Map<String, dynamic>),
      business: Business.fromJson(json['business'] as Map<String, dynamic>),
      cloud: Cloud.fromJson(json['cloud'] as Map<String, dynamic>),
      company: Company.fromJson(json['company'] as Map<String, dynamic>),
      currency: Currency.fromJson(json['currency'] as Map<String, dynamic>),
      systemVersion: json['system_version'] as String?,
      realName: json['real_name'] as String?,
      kitchen: Kitchen.fromJson(json['kitchen'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$BaseInfoImplToJson(_$BaseInfoImpl instance) =>
    <String, dynamic>{
      'buffet': instance.buffet,
      'business': instance.business,
      'cloud': instance.cloud,
      'company': instance.company,
      'currency': instance.currency,
      'system_version': instance.systemVersion,
      'real_name': instance.realName,
      'kitchen': instance.kitchen,
    };

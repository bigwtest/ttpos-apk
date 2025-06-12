// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BaseInfoImpl _$$BaseInfoImplFromJson(Map<String, dynamic> json) =>
    _$BaseInfoImpl(
      cloud: Cloud.fromJson(json['cloud'] as Map<String, dynamic>),
      company: Company.fromJson(json['company'] as Map<String, dynamic>),
      currency: Currency.fromJson(json['currency'] as Map<String, dynamic>),
      isShowSoldOut: json['is_show_sold_out'] as bool?,
    );

Map<String, dynamic> _$$BaseInfoImplToJson(_$BaseInfoImpl instance) =>
    <String, dynamic>{
      'cloud': instance.cloud,
      'company': instance.company,
      'currency': instance.currency,
      'is_show_sold_out': instance.isShowSoldOut,
    };

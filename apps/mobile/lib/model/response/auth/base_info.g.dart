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
      h5: H5.fromJson(json['h5'] as Map<String, dynamic>),
      desk: Desk.fromJson(json['desk'] as Map<String, dynamic>),
      kitchen: Kitchen.fromJson(json['kitchen'] as Map<String, dynamic>),
      isOpenH5Order: (json['is_open_h5_order'] as num).toInt(),
    );

Map<String, dynamic> _$$BaseInfoImplToJson(_$BaseInfoImpl instance) =>
    <String, dynamic>{
      'buffet': instance.buffet,
      'business': instance.business,
      'cloud': instance.cloud,
      'company': instance.company,
      'currency': instance.currency,
      'h5': instance.h5,
      'desk': instance.desk,
      'kitchen': instance.kitchen,
      'is_open_h5_order': instance.isOpenH5Order,
    };

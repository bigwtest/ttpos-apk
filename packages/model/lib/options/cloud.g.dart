// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cloud.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CloudImpl _$$CloudImplFromJson(Map<String, dynamic> json) => _$CloudImpl(
      brandLogo: json['brand_logo'] as String?,
      brandLogoLong: json['brand_logo_long'] as String?,
      brandName: json['brand_name'] as String?,
      browserLogo: json['browser_logo'] as String?,
      browserTitle: json['browser_title'] as String?,
      expirationReminder: (json['expiration_reminder'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$CloudImplToJson(_$CloudImpl instance) =>
    <String, dynamic>{
      'brand_logo': instance.brandLogo,
      'brand_logo_long': instance.brandLogoLong,
      'brand_name': instance.brandName,
      'browser_logo': instance.browserLogo,
      'browser_title': instance.browserTitle,
      'expiration_reminder': instance.expirationReminder,
    };

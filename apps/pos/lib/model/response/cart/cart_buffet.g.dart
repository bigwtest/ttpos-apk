// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_buffet.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ResponseCartBuffetImpl _$$ResponseCartBuffetImplFromJson(
        Map<String, dynamic> json) =>
    _$ResponseCartBuffetImpl(
      remainingSeconds: (json['remaining_seconds'] as num).toInt(),
      localeName:
          LocaleName.fromJson(json['locale_name'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ResponseCartBuffetImplToJson(
        _$ResponseCartBuffetImpl instance) =>
    <String, dynamic>{
      'remaining_seconds': instance.remainingSeconds,
      'locale_name': instance.localeName,
    };

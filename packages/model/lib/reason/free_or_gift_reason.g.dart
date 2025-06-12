// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'free_or_gift_reason.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ResponseFreeOrGiftReasonImpl _$$ResponseFreeOrGiftReasonImplFromJson(
        Map<String, dynamic> json) =>
    _$ResponseFreeOrGiftReasonImpl(
      uuid: (json['uuid'] as num).toInt(),
      localeName:
          LocaleName.fromJson(json['locale_name'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ResponseFreeOrGiftReasonImplToJson(
        _$ResponseFreeOrGiftReasonImpl instance) =>
    <String, dynamic>{
      'uuid': instance.uuid,
      'locale_name': instance.localeName,
    };

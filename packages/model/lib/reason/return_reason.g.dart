// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'return_reason.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ResponseReturnReasonImpl _$$ResponseReturnReasonImplFromJson(
        Map<String, dynamic> json) =>
    _$ResponseReturnReasonImpl(
      uuid: (json['uuid'] as num).toInt(),
      localeName:
          LocaleName.fromJson(json['locale_name'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ResponseReturnReasonImplToJson(
        _$ResponseReturnReasonImpl instance) =>
    <String, dynamic>{
      'uuid': instance.uuid,
      'locale_name': instance.localeName,
    };

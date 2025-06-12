// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'print_config.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PrintConfigImpl _$$PrintConfigImplFromJson(Map<String, dynamic> json) =>
    _$PrintConfigImpl(
      ip: json['IP'] as String?,
      port: json['PORT'] as String?,
      sn: json['SN'] as String?,
      appId: json['APP_ID'] as String?,
      appKey: json['APP_KEY'] as String?,
    );

Map<String, dynamic> _$$PrintConfigImplToJson(_$PrintConfigImpl instance) =>
    <String, dynamic>{
      'IP': instance.ip,
      'PORT': instance.port,
      'SN': instance.sn,
      'APP_ID': instance.appId,
      'APP_KEY': instance.appKey,
    };

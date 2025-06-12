// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'kitchen.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$KitchenImpl _$$KitchenImplFromJson(Map<String, dynamic> json) =>
    _$KitchenImpl(
      defaultLanguage: json['default_language'] as String,
      isOpen: SafetyNumber.fromJson(json['is_open']),
      isCallService: SafetyNumber.fromJson(json['is_call_service']),
      isComeDish: SafetyNumber.fromJson(json['is_come_dish']),
      isWaitColor: SafetyNumber.fromJson(json['is_wait_color']),
      waitColor: (json['wait_color'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      language:
          (json['language'] as List<dynamic>).map((e) => e as String).toList(),
      languageList: (json['language_list'] as List<dynamic>)
          .map((e) => LanguageItem.fromJson(e as Map<String, dynamic>))
          .toList(),
      server: Server.fromJson(json['server'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$KitchenImplToJson(_$KitchenImpl instance) =>
    <String, dynamic>{
      'default_language': instance.defaultLanguage,
      'is_open': instance.isOpen,
      'is_call_service': instance.isCallService,
      'is_come_dish': instance.isComeDish,
      'is_wait_color': instance.isWaitColor,
      'wait_color': instance.waitColor,
      'language': instance.language,
      'language_list': instance.languageList,
      'server': instance.server,
    };

_$ServerImpl _$$ServerImplFromJson(Map<String, dynamic> json) => _$ServerImpl(
      ip: json['ip'] as String,
      port: json['port'] as String,
    );

Map<String, dynamic> _$$ServerImplToJson(_$ServerImpl instance) =>
    <String, dynamic>{
      'ip': instance.ip,
      'port': instance.port,
    };

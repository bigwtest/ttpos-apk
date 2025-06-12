// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'assistant.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AssistantImpl _$$AssistantImplFromJson(Map<String, dynamic> json) =>
    _$AssistantImpl(
      autoLockScreen: SafetyNumber.fromJson(json['auto_lock_screen']),
      defaultMode: json['default_mode'] as String,
      defaultLanguage: json['default_language'] as String,
      isAutoLockScreen: SafetyNumber.fromJson(json['is_auto_lock_screen']),
      isAutoSend: SafetyNumber.fromJson(json['is_auto_send']),
      isRemainColor: SafetyNumber.fromJson(json['is_remain_color']),
      isShowAssistantSoldOut:
          SafetyNumber.fromJson(json['is_show_assistant_sold_out']),
      language:
          (json['language'] as List<dynamic>).map((e) => e as String).toList(),
      languageList: (json['language_list'] as List<dynamic>)
          .map((e) => LanguageItem.fromJson(e as Map<String, dynamic>))
          .toList(),
      remainColor: (json['remain_color'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      server: Server.fromJson(json['server'] as Map<String, dynamic>),
      isCheckOrder: json['is_check_order'] == null
          ? null
          : SafetyNumber.fromJson(json['is_check_order']),
    );

Map<String, dynamic> _$$AssistantImplToJson(_$AssistantImpl instance) =>
    <String, dynamic>{
      'auto_lock_screen': instance.autoLockScreen,
      'default_mode': instance.defaultMode,
      'default_language': instance.defaultLanguage,
      'is_auto_lock_screen': instance.isAutoLockScreen,
      'is_auto_send': instance.isAutoSend,
      'is_remain_color': instance.isRemainColor,
      'is_show_assistant_sold_out': instance.isShowAssistantSoldOut,
      'language': instance.language,
      'language_list': instance.languageList,
      'remain_color': instance.remainColor,
      'server': instance.server,
      'is_check_order': instance.isCheckOrder,
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

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'setting.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SettingResponseImpl _$$SettingResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$SettingResponseImpl(
      acceptOrder: json['accept_order'] == null
          ? null
          : AcceptOrder.fromJson(json['accept_order'] as Map<String, dynamic>),
      system: json['system'] == null
          ? null
          : SystemSetting.fromJson(json['system'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$SettingResponseImplToJson(
        _$SettingResponseImpl instance) =>
    <String, dynamic>{
      'accept_order': instance.acceptOrder,
      'system': instance.system,
    };

_$AcceptOrderImpl _$$AcceptOrderImplFromJson(Map<String, dynamic> json) =>
    _$AcceptOrderImpl(
      isAutoOrder: json['is_auto_order'] as String?,
      autoOrderLimit: json['auto_order_limit'] as String?,
      isAutoVoice: json['is_auto_voice'] as String?,
    );

Map<String, dynamic> _$$AcceptOrderImplToJson(_$AcceptOrderImpl instance) =>
    <String, dynamic>{
      'is_auto_order': instance.isAutoOrder,
      'auto_order_limit': instance.autoOrderLimit,
      'is_auto_voice': instance.isAutoVoice,
    };

_$SystemSettingImpl _$$SystemSettingImplFromJson(Map<String, dynamic> json) =>
    _$SystemSettingImpl(
      isShowScanSoldOut: (json['is_show_scan_sold_out'] as num?)?.toInt(),
      isShowAssistantSoldOut:
          (json['is_show_assistant_sold_out'] as num?)?.toInt(),
      menuShowSoldOut: (json['menu_show_sold_out'] as num?)?.toInt(),
      dishCardStyle: json['dish_card_style'] as String?,
      isShowSoldOut: (json['is_show_sold_out'] as num?)?.toInt(),
      serverVersion: json['server_version'] as String?,
    );

Map<String, dynamic> _$$SystemSettingImplToJson(_$SystemSettingImpl instance) =>
    <String, dynamic>{
      'is_show_scan_sold_out': instance.isShowScanSoldOut,
      'is_show_assistant_sold_out': instance.isShowAssistantSoldOut,
      'menu_show_sold_out': instance.menuShowSoldOut,
      'dish_card_style': instance.dishCardStyle,
      'is_show_sold_out': instance.isShowSoldOut,
      'server_version': instance.serverVersion,
    };

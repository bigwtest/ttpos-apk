// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cashier.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CashierImpl _$$CashierImplFromJson(Map<String, dynamic> json) =>
    _$CashierImpl(
      autoLockScreen: json['auto_lock_screen'] as String,
      autoOrderLimit: json['auto_order_limit'] as String,
      carousel: (json['carousel'] as List<dynamic>)
          .map((e) => SettingCarouselItem.fromJson(e as Map<String, dynamic>))
          .toList(),
      defaultLanguage: json['default_language'] as String,
      isAutoLockScreen: json['is_auto_lock_screen'] as String,
      isAutoOrder: json['is_auto_order'] as String,
      isAutoSend: json['is_auto_send'] as String,
      isAutoVoice: json['is_auto_voice'] as String,
      isOpenCashierPassword: json['is_open_cashier_password'] as String,
      isRemainColor: json['is_remain_color'] as String,
      isShowAssistantSoldOut:
          (json['is_show_assistant_sold_out'] as num).toInt(),
      isShowScanSoldOut: (json['is_show_scan_sold_out'] as num).toInt(),
      language:
          (json['language'] as List<dynamic>).map((e) => e as String).toList(),
      languageList: (json['language_list'] as List<dynamic>)
          .map((e) => LanguageItem.fromJson(e as Map<String, dynamic>))
          .toList(),
      menuShowSoldOut: json['menu_show_sold_out'] as String,
      orderMethod:
          OrderMethod.fromJson(json['order_method'] as Map<String, dynamic>),
      remainColor: (json['remain_color'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      server: Server.fromJson(json['server'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CashierImplToJson(_$CashierImpl instance) =>
    <String, dynamic>{
      'auto_lock_screen': instance.autoLockScreen,
      'auto_order_limit': instance.autoOrderLimit,
      'carousel': instance.carousel,
      'default_language': instance.defaultLanguage,
      'is_auto_lock_screen': instance.isAutoLockScreen,
      'is_auto_order': instance.isAutoOrder,
      'is_auto_send': instance.isAutoSend,
      'is_auto_voice': instance.isAutoVoice,
      'is_open_cashier_password': instance.isOpenCashierPassword,
      'is_remain_color': instance.isRemainColor,
      'is_show_assistant_sold_out': instance.isShowAssistantSoldOut,
      'is_show_scan_sold_out': instance.isShowScanSoldOut,
      'language': instance.language,
      'language_list': instance.languageList,
      'menu_show_sold_out': instance.menuShowSoldOut,
      'order_method': instance.orderMethod,
      'remain_color': instance.remainColor,
      'server': instance.server,
    };

_$SettingCarouselItemImpl _$$SettingCarouselItemImplFromJson(
        Map<String, dynamic> json) =>
    _$SettingCarouselItemImpl(
      filePath: json['file_path'] as String,
      realName: json['real_name'] as String,
      sort: json['sort'] as String,
      type: json['type'] as String,
    );

Map<String, dynamic> _$$SettingCarouselItemImplToJson(
        _$SettingCarouselItemImpl instance) =>
    <String, dynamic>{
      'file_path': instance.filePath,
      'real_name': instance.realName,
      'sort': instance.sort,
      'type': instance.type,
    };

_$OrderMethodImpl _$$OrderMethodImplFromJson(Map<String, dynamic> json) =>
    _$OrderMethodImpl(
      isCashierOrder: SafetyNumber.fromJson(json['is_cashier_order']),
      isTableOrder: SafetyNumber.fromJson(json['is_table_order']),
    );

Map<String, dynamic> _$$OrderMethodImplToJson(_$OrderMethodImpl instance) =>
    <String, dynamic>{
      'is_cashier_order': instance.isCashierOrder,
      'is_table_order': instance.isTableOrder,
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

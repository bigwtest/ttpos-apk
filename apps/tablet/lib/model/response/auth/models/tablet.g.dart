// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tablet.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TabletImpl _$$TabletImplFromJson(Map<String, dynamic> json) => _$TabletImpl(
      carousel: (json['carousel'] as List<dynamic>)
          .map((e) => Carousel.fromJson(e as Map<String, dynamic>))
          .toList(),
      defaultLanguage: json['default_language'] as String,
      isBuffetOrderLimit: SafetyNumber.fromJson(json['is_buffet_order_limit']),
      isCallService: SafetyNumber.fromJson(json['is_call_service']),
      isCustomerOrder: SafetyNumber.fromJson(json['is_customer_order']),
      isOrderLimit: SafetyNumber.fromJson(json['is_order_limit']),
      isShowSoldOut: SafetyNumber.fromJson(json['is_show_sold_out']),
      isVoiceRemind: SafetyNumber.fromJson(json['is_voice_remind']),
      language:
          (json['language'] as List<dynamic>).map((e) => e as String).toList(),
      languageList: (json['language_list'] as List<dynamic>)
          .map((e) => LanguageItem.fromJson(e as Map<String, dynamic>))
          .toList(),
      orderLimit: json['order_limit'] == null
          ? null
          : OrderLimit.fromJson(json['order_limit'] as Map<String, dynamic>),
      buffetOrderLimit: json['buffet_order_limit'] == null
          ? null
          : OrderLimit.fromJson(
              json['buffet_order_limit'] as Map<String, dynamic>),
      server: Server.fromJson(json['server'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$TabletImplToJson(_$TabletImpl instance) =>
    <String, dynamic>{
      'carousel': instance.carousel,
      'default_language': instance.defaultLanguage,
      'is_buffet_order_limit': instance.isBuffetOrderLimit,
      'is_call_service': instance.isCallService,
      'is_customer_order': instance.isCustomerOrder,
      'is_order_limit': instance.isOrderLimit,
      'is_show_sold_out': instance.isShowSoldOut,
      'is_voice_remind': instance.isVoiceRemind,
      'language': instance.language,
      'language_list': instance.languageList,
      'order_limit': instance.orderLimit,
      'buffet_order_limit': instance.buffetOrderLimit,
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

_$OrderLimitImpl _$$OrderLimitImplFromJson(Map<String, dynamic> json) =>
    _$OrderLimitImpl(
      isLimitNum: json['is_limit_num'] as String,
      isLimitTime: json['is_limit_time'] as String,
      limitNum: json['limit_num'] as String,
      limitTime: json['limit_time'] as String,
    );

Map<String, dynamic> _$$OrderLimitImplToJson(_$OrderLimitImpl instance) =>
    <String, dynamic>{
      'is_limit_num': instance.isLimitNum,
      'is_limit_time': instance.isLimitTime,
      'limit_num': instance.limitNum,
      'limit_time': instance.limitTime,
    };

_$CarouselImpl _$$CarouselImplFromJson(Map<String, dynamic> json) =>
    _$CarouselImpl(
      filePath: json['file_path'] as String,
      realName: json['real_name'] as String,
      sort: json['sort'] as String,
      type: json['type'] as String,
    );

Map<String, dynamic> _$$CarouselImplToJson(_$CarouselImpl instance) =>
    <String, dynamic>{
      'file_path': instance.filePath,
      'real_name': instance.realName,
      'sort': instance.sort,
      'type': instance.type,
    };

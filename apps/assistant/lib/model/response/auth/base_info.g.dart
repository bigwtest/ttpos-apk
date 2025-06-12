// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BaseInfoImpl _$$BaseInfoImplFromJson(Map<String, dynamic> json) =>
    _$BaseInfoImpl(
      buffet: Buffet.fromJson(json['buffet'] as Map<String, dynamic>),
      business: Business.fromJson(json['business'] as Map<String, dynamic>),
      cloud: Cloud.fromJson(json['cloud'] as Map<String, dynamic>),
      company: Company.fromJson(json['company'] as Map<String, dynamic>),
      currency: Currency.fromJson(json['currency'] as Map<String, dynamic>),
      updateTime: (json['update_time'] as num?)?.toInt() ?? 0,
      permissions: (json['permissions'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      assistantStaff: AssistantStaff.fromJson(
          json['assistant_staff'] as Map<String, dynamic>),
      cashierStaff:
          CashierStaff.fromJson(json['cashier_staff'] as Map<String, dynamic>),
      assistant: Assistant.fromJson(json['assistant'] as Map<String, dynamic>),
      kitchen: Kitchen.fromJson(json['kitchen'] as Map<String, dynamic>),
      serverVersion: json['server_version'] as String?,
      printer: Printer.fromJson(json['printer'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$BaseInfoImplToJson(_$BaseInfoImpl instance) =>
    <String, dynamic>{
      'buffet': instance.buffet,
      'business': instance.business,
      'cloud': instance.cloud,
      'company': instance.company,
      'currency': instance.currency,
      'update_time': instance.updateTime,
      'permissions': instance.permissions,
      'assistant_staff': instance.assistantStaff,
      'cashier_staff': instance.cashierStaff,
      'assistant': instance.assistant,
      'kitchen': instance.kitchen,
      'server_version': instance.serverVersion,
      'printer': instance.printer,
    };

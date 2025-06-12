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
      cashier: Cashier.fromJson(json['cashier'] as Map<String, dynamic>),
      cashierUuid: (json['cashier_uuid'] as num).toInt(),
      deviceId: json['device_id'] as String,
      deviceRemark: json['device_remark'] as String,
      permissions: (json['permissions'] as List<dynamic>)
          .map((e) => Permission.fromJson(e as Map<String, dynamic>))
          .toList(),
      username: json['username'] as String,
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
      'cashier': instance.cashier,
      'cashier_uuid': instance.cashierUuid,
      'device_id': instance.deviceId,
      'device_remark': instance.deviceRemark,
      'permissions': instance.permissions,
      'username': instance.username,
      'printer': instance.printer,
    };

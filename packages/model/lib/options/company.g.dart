// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'company.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CompanyImpl _$$CompanyImplFromJson(Map<String, dynamic> json) =>
    _$CompanyImpl(
      name: json['name'] as String,
      uuid: (json['uuid'] as num).toInt(),
      timeZone: json['time_zone'] as String?,
      logo: json['logo'] as String?,
      expiredAt: (json['expire_time'] as num?)?.toInt(),
      isModuleAvailableMember: json['is_open_member'] == null
          ? null
          : SafetyNumber.fromJson(json['is_open_member']),
      isModuleAvailableBuffet: json['is_open_buffet'] == null
          ? null
          : SafetyNumber.fromJson(json['is_open_buffet']),
      isModuleAvailableH5Order: json['is_open_h5_order'] == null
          ? null
          : SafetyNumber.fromJson(json['is_open_h5_order']),
      isModuleAvailableOldOrder: json['is_open_old_order'] == null
          ? null
          : SafetyNumber.fromJson(json['is_open_old_order']),
    );

Map<String, dynamic> _$$CompanyImplToJson(_$CompanyImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'uuid': instance.uuid,
      'time_zone': instance.timeZone,
      'logo': instance.logo,
      'expire_time': instance.expiredAt,
      'is_open_member': instance.isModuleAvailableMember,
      'is_open_buffet': instance.isModuleAvailableBuffet,
      'is_open_h5_order': instance.isModuleAvailableH5Order,
      'is_open_old_order': instance.isModuleAvailableOldOrder,
    };

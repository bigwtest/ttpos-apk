// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'edit_setting_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EditSettingModelImpl _$$EditSettingModelImplFromJson(
        Map<String, dynamic> json) =>
    _$EditSettingModelImpl(
      deskUuid: (json['desk_uuid'] as num).toInt(),
      remark: json['remark'] as String?,
    );

Map<String, dynamic> _$$EditSettingModelImplToJson(
        _$EditSettingModelImpl instance) =>
    <String, dynamic>{
      'desk_uuid': instance.deskUuid,
      'remark': instance.remark,
    };

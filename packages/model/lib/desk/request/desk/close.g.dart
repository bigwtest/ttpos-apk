// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'close.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RequestDeskCloseImpl _$$RequestDeskCloseImplFromJson(
        Map<String, dynamic> json) =>
    _$RequestDeskCloseImpl(
      password: json['password'] as String?,
      reason: json['reason'] as String,
      uuid: (json['uuid'] as num).toInt(),
    );

Map<String, dynamic> _$$RequestDeskCloseImplToJson(
        _$RequestDeskCloseImpl instance) =>
    <String, dynamic>{
      'password': instance.password,
      'reason': instance.reason,
      'uuid': instance.uuid,
    };

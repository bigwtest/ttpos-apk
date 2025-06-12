// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'form.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RequestDataLoginFormImpl _$$RequestDataLoginFormImplFromJson(
        Map<String, dynamic> json) =>
    _$RequestDataLoginFormImpl(
      brand: json['brand'] as String?,
      code: json['code'] as String,
      deviceId: json['device_id'] as String,
      password: json['password'] as String,
      username: json['username'] as String,
    );

Map<String, dynamic> _$$RequestDataLoginFormImplToJson(
        _$RequestDataLoginFormImpl instance) =>
    <String, dynamic>{
      'brand': instance.brand,
      'code': instance.code,
      'device_id': instance.deviceId,
      'password': instance.password,
      'username': instance.username,
    };

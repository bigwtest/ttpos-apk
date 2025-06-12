// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ResponseDataLoginImpl _$$ResponseDataLoginImplFromJson(
        Map<String, dynamic> json) =>
    _$ResponseDataLoginImpl(
      token: json['token'] as String,
      refreshToken: json['refresh_token'] as String?,
      isFirstLogin: json['is_first_login'] as bool?,
    );

Map<String, dynamic> _$$ResponseDataLoginImplToJson(
        _$ResponseDataLoginImpl instance) =>
    <String, dynamic>{
      'token': instance.token,
      'refresh_token': instance.refreshToken,
      'is_first_login': instance.isFirstLogin,
    };

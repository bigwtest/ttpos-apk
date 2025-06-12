// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'captcha.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ResponseCaptchaImpl _$$ResponseCaptchaImplFromJson(
        Map<String, dynamic> json) =>
    _$ResponseCaptchaImpl(
      base64: json['base64'] as String,
      sign: json['sign'] as String,
    );

Map<String, dynamic> _$$ResponseCaptchaImplToJson(
        _$ResponseCaptchaImpl instance) =>
    <String, dynamic>{
      'base64': instance.base64,
      'sign': instance.sign,
    };

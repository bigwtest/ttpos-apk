import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'captcha.freezed.dart';
part 'captcha.g.dart';

@freezed
class ResponseCaptcha with _$ResponseCaptcha {
  factory ResponseCaptcha({
    required String base64,
    required String sign,
  }) = _ResponseCaptcha;

  factory ResponseCaptcha.fromJson(Map<String, dynamic> json) =>
      _$ResponseCaptchaFromJson(json);
}

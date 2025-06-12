import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'form.freezed.dart';
part 'form.g.dart';

///RequestDataLoginForm 登录表单
@unfreezed
class RequestDataLoginForm with _$RequestDataLoginForm {
  factory RequestDataLoginForm({
    String? brand,
    required String code,
    @JsonKey(name: 'device_id') required String deviceId,
    required String password,
    required String username,
  }) = _RequestDataLoginForm;

  factory RequestDataLoginForm.fromJson(Map<String, dynamic> json) =>
      _$RequestDataLoginFormFromJson(json);
}

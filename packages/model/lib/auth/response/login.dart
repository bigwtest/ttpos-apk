import 'package:freezed_annotation/freezed_annotation.dart';

part 'login.freezed.dart';
part 'login.g.dart';

@freezed
class ResponseDataLogin with _$ResponseDataLogin {
  factory ResponseDataLogin({
    required String token,
    @JsonKey(name: "refresh_token") String? refreshToken,
    @JsonKey(name: "is_first_login") bool? isFirstLogin,
  }) = _ResponseDataLogin;

  factory ResponseDataLogin.fromJson(Map<String, dynamic> json) => _$ResponseDataLoginFromJson(json);
}

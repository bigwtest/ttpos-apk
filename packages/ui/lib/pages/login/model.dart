class LoginForm {
  LoginForm({
    required this.username,
    required this.password,
    required this.rememberPassword,
    required this.captcha,
    required this.captchaSign,
  });

  final String username;
  final String password;
  final String captcha;
  final bool rememberPassword;
  final String captchaSign;

  Map<String, dynamic> toJson() {
    return {
      'username': username,
      'password': password,
      'rememberPassword': rememberPassword,
      'captcha': captcha,
      'captchaSign': captchaSign,
    };
  }
}

class SavedUser {
  SavedUser({
    required this.username,
    required this.password,
  });

  final String username;
  final String password;

  factory SavedUser.fromJson(Map<String, dynamic> json) {
    return SavedUser(
      username: json['username'],
      password: json['password'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'username': username,
      'password': password,
    };
  }
}

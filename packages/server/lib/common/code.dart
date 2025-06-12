enum ResponseStatusCode {
  unauthorized(-1),
  unexpectedError(0),
  success(1),
  controllerUnimplemented(10001);

  final int code;
  const ResponseStatusCode(this.code);
}

extension ResponseStatusCodeExtension on ResponseStatusCode {
  int get value => code;

  String get message {
    switch (this) {
      case ResponseStatusCode.unauthorized:
        return '未授权';
      case ResponseStatusCode.unexpectedError:
        return '意外错误';
      case ResponseStatusCode.success:
        return '成功';
      case ResponseStatusCode.controllerUnimplemented:
        return '控制器未实现';
    }
  }
}

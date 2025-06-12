import 'package:flutter/foundation.dart';
import 'package:pos/api/auth/auth_api.dart';

class LockController {
  static Future<bool> verifyLockPassword(String password) async {
    try {
      return await AuthAPI().verifyLockPassword(
        password: password,
      );
    } catch (error, stackTrace) {
      debugPrint('验证锁屏密码失败 $error');
      debugPrintStack(stackTrace: stackTrace);
      return false;
    }
  }
}

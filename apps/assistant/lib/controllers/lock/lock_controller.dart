import 'package:assistant/api/auth/auth_api.dart';
import 'package:assistant/routers/name.dart';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';

class LockController {
  static Future<bool> verifyLockPassword(String password) async {
    try {
      final response = await AuthAPI().verifyLockPassword(password: password);
      if (response) {
        Future.microtask(() {
          Get.offNamed(RouteNames.home);
        });
      }
      return response;
    } catch (error, stackTrace) {
      debugPrint('验证锁屏密码失败 $error');
      debugPrintStack(stackTrace: stackTrace);
      return false;
    }
  }
}

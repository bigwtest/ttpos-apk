import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kds/api/auth/auth_api.dart';
import 'package:kds/controllers/base/main_controller.dart';
import 'package:kds/routers/name.dart';
import 'package:ttpos_api/controller.dart';
import 'package:ttpos_model/auth/request/form.dart';
import 'package:ttpos_model/base/request/options.dart';
import 'package:ttpos_ui/pages/login/model.dart';

class LoginController {
  static Future<bool> login(LoginForm form) async {
    try {
      final response = await AuthAPI().login(
        loginForm: RequestDataLoginForm(
          code: form.captcha,
          deviceId: await DeviceId.getId(),
          password: form.password,
          username: form.username,
          brand: await DeviceInfoUtils.getBrand(),
        ),
        sign: form.captchaSign,
        requestOptions: ExtraRequestOptions(
          showFailToast: false,
        ),
      );

      if (response == null) return false;

      if (Get.isRegistered<TokenController>()) {
        final TokenController tokenController = Get.find<TokenController>();
        final token = response.token;
        if (token.isEmpty) return false;
        await tokenController.saveToken(token);
      } else {
        throw Exception('TokenController 未注册');
      }

      if (Get.isRegistered<BaseInfoController>()) {
        final BaseInfoController baseInfoController = Get.find<BaseInfoController>();
        baseInfoController.loadBaseInfoFromAPI();
      } else {
        throw Exception('BaseInfoController 未注册');
      }

      Future.microtask(() {
        Get.offAllNamed(RouteNames.home);
      });

      return true;
    } catch (error, stackTrace) {
      debugPrint('登录失败 $error');
      debugPrintStack(stackTrace: stackTrace);
      return false;
    }
  }

  static Future<void> logout() async {
    try {
      final isLogout = await AuthAPI().logout(
        requestOptions: ExtraRequestOptions(showFailToast: true),
      );
      if (isLogout) {
        if (Get.isRegistered<TokenController>()) {
          final TokenController tokenController = Get.find<TokenController>();
          await tokenController.clearToken();
        } else {
          throw Exception('TokenController 未注册');
        }
        Get.offAllNamed(RouteNames.login);
      }
    } catch (error, stackTrace) {
      debugPrint('退出登录失败 $error\n$stackTrace');
    }
  }
}

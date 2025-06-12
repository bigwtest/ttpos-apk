import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tablet/api/auth/auth_api.dart';
import 'package:tablet/controllers/base/main_controller.dart';
import 'package:tablet/pages/desk_bind/controller.dart';
import 'package:tablet/routers/name.dart';
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

      if (Get.isRegistered<DeskBindController>()) {
        final deskBindController = Get.find<DeskBindController>();
        final desk = await deskBindController.loadDeskFromAPI(forceRefresh: true);
        if (desk?.deskNo != null) {
          Future.microtask(() {
            Get.offAllNamed(RouteNames.home);
          });
        } else {
          Future.microtask(() {
            Get.offAllNamed(RouteNames.deskBind);
          });
        }
      } else {
        throw Exception('DeskBindController 未注册');
      }

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

        if (Get.isRegistered<DeskBindController>()) {
          final deskBindController = Get.find<DeskBindController>();
          deskBindController.setDesk(null);
        } else {
          throw Exception('DeskBindController 未注册');
        }

        Get.offAllNamed('/login');
      }
    } catch (error, stackTrace) {
      debugPrint('退出登录失败 $error\n$stackTrace');
    }
  }
}

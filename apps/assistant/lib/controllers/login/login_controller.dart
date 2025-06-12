import 'package:assistant/api/auth/auth_api.dart';
import 'package:assistant/routers/name.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:ttpos_api/controller.dart';
import 'package:ttpos_model/auth/request/form.dart';
import 'package:ttpos_model/base/request/options.dart';
import 'package:ttpos_shared/shared.dart';
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

      final token = response.token;
      if (Get.isRegistered<TokenController>()) {
        final TokenController tokenController = Get.find<TokenController>();
        if (token.isEmpty) return false;
        await tokenController.saveToken(token);
      } else {
        throw Exception('TokenController 未注册');
      }

      if (Get.isRegistered<SharedPreferencesWithCache>()) {
        // 存储点餐助手登录token
        await Get.find<SharedPreferencesWithCache>().setString(StorageKey.authTokenAssistant.asString, token);
        // 记录标识，未选择过收银机
        await Get.find<SharedPreferencesWithCache>().setInt(StorageKey.authIsSelectCashier.asString, 0);
        // 登录成功后，将锁屏状态设置为 false
        await Get.find<SharedPreferencesWithCache>().setBool(StorageKey.isLockScreen.asString, false);
        // 登录成功后，将移除之前保留的桌台信息
        await Get.find<SharedPreferencesWithCache>().remove(StorageKey.deskCurrentInfo.asString);
      } else {
        throw Exception('SharedPreferencesWithCache 未注册');
      }

      Future.microtask(() {
        Get.offAllNamed(RouteNames.cashier);
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

        if (Get.isRegistered<SharedPreferencesWithCache>()) {
          // 存储点餐助手登录token
          await Get.find<SharedPreferencesWithCache>().remove(StorageKey.authTokenAssistant.asString);
          // 记录标识，未选择过收银机
          await Get.find<SharedPreferencesWithCache>().remove(StorageKey.authIsSelectCashier.asString);
          // 登录成功后，将锁屏状态设置为 false
          await Get.find<SharedPreferencesWithCache>().remove(StorageKey.isLockScreen.asString);
          // 登录成功后，将移除之前保留的桌台信息
          await Get.find<SharedPreferencesWithCache>().remove(StorageKey.deskCurrentInfo.asString);
        } else {
          throw Exception('SharedPreferencesWithCache 未注册');
        }
        Get.offAllNamed(RouteNames.login);
      }
    } catch (error, stackTrace) {
      debugPrint('退出登录失败 $error\n$stackTrace');
    }
  }
}

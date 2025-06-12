import 'package:flutter/material.dart' hide MenuController;
import 'package:get/get.dart';
import 'package:pos/api/auth/auth_api.dart';
import 'package:pos/components/home/menu/menu_controller.dart';
import 'package:pos/pages/home/main.dart';
import 'package:pos/routers/name.dart';
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
      if (Get.isRegistered<TokenController>()) {
        final TokenController tokenController = Get.find<TokenController>();
        final token = response.token;
        if (token.isEmpty) return false;
        await tokenController.saveToken(token);
      } else {
        throw Exception('TokenController 未注册');
      }

      if (Get.isRegistered<SharedPreferencesWithCache>()) {
        // 记录标识，是否是首次登录
        await Get.find<SharedPreferencesWithCache>()
            .setBool(StorageKey.isFirstLogin.asString, response.isFirstLogin ?? false);
        // 登录成功后，将锁屏状态设置为 false
        await Get.find<SharedPreferencesWithCache>().setBool(StorageKey.isLockScreen.asString, false);
        // 登录成功后，将移除之前保留的桌台信息
        await Get.find<SharedPreferencesWithCache>().remove(StorageKey.currentRoute.asString);
        await Get.find<SharedPreferencesWithCache>().remove(StorageKey.deskCurrentInfo.asString);
      } else {
        throw Exception('SharedPreferencesWithCache 未注册');
      }

      if (Get.isRegistered<MenuController>()) {
        final MenuController menuController = Get.find<MenuController>();
        menuController.setCurrentRoute(HomeRoutes.instant.homeRoute);
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

        if (Get.isRegistered<SharedPreferencesWithCache>()) {
          // 退出登录成功后，将锁屏状态设置为 false
          await Get.find<SharedPreferencesWithCache>().remove(StorageKey.isLockScreen.asString);
          // 退出登录成功后，将移除之前保留的桌台信息
          await Get.find<SharedPreferencesWithCache>().remove(StorageKey.currentRoute.asString);
          await Get.find<SharedPreferencesWithCache>().remove(StorageKey.deskCurrentInfo.asString);
        } else {
          throw Exception('SharedPreferencesWithCache 未注册');
        }

        if (Get.isRegistered<MenuController>()) {
          final MenuController menuController = Get.find<MenuController>();
          menuController.setCurrentRoute(HomeRoutes.instant.homeRoute);
        }

        Get.offAllNamed(RouteNames.login);
      }
    } catch (error, stackTrace) {
      debugPrint('退出登录失败 $error');
      debugPrintStack(stackTrace: stackTrace);
    }
  }
}

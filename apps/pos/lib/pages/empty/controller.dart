import 'package:flutter/material.dart' hide MenuController;
import 'package:get/get.dart';
import 'package:pos/components/home/menu/menu_controller.dart';
import 'package:pos/controllers/base/main_controller.dart';
import 'package:pos/pages/home/main.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:ttpos_shared/shared.dart';

/// NOTE: GetX 对子路由的支持度不友好，所以单独写了一个空白页的控制器来做跳转
class LandingController extends GetxController {
  void _handleLanding() async {
    try {
      final SharedPreferencesWithCache storage = Get.find<SharedPreferencesWithCache>();

      final token = storage.getString(StorageKey.authToken.asString);
      if (token == null || token.isEmpty) {
        throw Exception('Token is null or empty');
      }

      if (!Get.isRegistered<BaseInfoController>()) {
        throw Exception('BaseInfoController is not registered');
      }

      final baseInfoController = Get.find<BaseInfoController>();
      await baseInfoController.loadBaseInfoFromAPI();

      // 没有权限就停留在此页面
      if (baseInfoController.hasNoPermission) return;

      final lastRoute = storage.getString(StorageKey.currentRoute.asString);

      if (!Get.isRegistered<MenuController>()) {
        throw Exception('MenuController is not registered');
      }

      final menuController = Get.find<MenuController>();

      if (lastRoute != null && lastRoute.isNotEmpty && lastRoute != HomeRoutes.empty.homeRoute) {
        menuController.setCurrentRoute(lastRoute);
        return;
      }

      /// 根据权限按顺序查找可以跳转的页面
      if (baseInfoController.hasInstantMain) {
        /// 跳转去即时点餐
        menuController.setCurrentRoute(HomeRoutes.instant.homeRoute);
      } else if (baseInfoController.hasDeskMain) {
        /// 跳转去桌台管理
        menuController.setCurrentRoute(HomeRoutes.desks.homeRoute);
      } else if (baseInfoController.hasOrderMain) {
        /// 跳转去订单管理
        menuController.setCurrentRoute(HomeRoutes.orders.homeRoute);
      } else if (baseInfoController.hasSoldOut) {
        /// 跳转去沽清管理
        menuController.setCurrentRoute(HomeRoutes.soldOut.homeRoute);
      } else if (baseInfoController.hasAcceptOrder) {
        /// 跳转去接单管理
        menuController.setCurrentRoute(HomeRoutes.accept.homeRoute);
      } else if (baseInfoController.hasSetting) {
        /// 跳转去设置
        menuController.setCurrentRoute(HomeRoutes.settings.homeRoute);
      } else if (baseInfoController.hasPermission(PermissionKey.printsPrint)) {
        /// 跳转去打印管理
        menuController.setCurrentRoute(HomeRoutes.prints.homeRoute);
      } else {
        throw Exception('No route to redirect');
      }
    } catch (error, stackTrace) {
      debugPrint('LandingController _handleLanding error: $error');
      debugPrintStack(stackTrace: stackTrace);
    }
  }

  // @override
  // void onInit() {
  //   super.onInit();
  // }

  @override
  void onReady() {
    super.onReady();

    _handleLanding();
  }

  // @override
  // void onClose() {
  //   super.onClose();
  // }
}

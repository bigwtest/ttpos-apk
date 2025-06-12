// Package imports:
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:pos/controllers/common/advertisement_controller.dart';
import 'package:pos/pages/desks/controller.dart';
import 'package:pos/pages/home/main.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:ttpos_shared/shared.dart';
import 'package:ttpos_ui/components/common/dialog/manager.dart';
import 'package:ttpos_ui/controllers/subscreen_service.dart';

class MenuController extends GetxController {
  final SharedPreferencesWithCache _storage = Get.find<SharedPreferencesWithCache>();

  final Rx<int> _unprocessedH5OrderCount = 0.obs;
  int get unprocessedH5OrderCount => _unprocessedH5OrderCount.value;
  set unprocessedH5OrderCount(int value) => _unprocessedH5OrderCount.value = value;

  // 当前路由默认值
  final Rx<String> currentRoute = HomeRoutes.empty.homeRoute.obs;

  Worker? _worker;

  void _showAdvertisement() {
    if (!Get.isRegistered<AdvertisementController>()) return;
    final advertisementController = Get.find<AdvertisementController>();
    SubScreenService.setCarouselData(advertisementController.carouselList);
  }

  @override
  void onInit() async {
    super.onInit();

    _worker = debounce(
      currentRoute,
      (String route) async {
        try {
          /// 写入缓存
          _storage.setString(StorageKey.currentRoute.asString, route);

          /// 如果是桌台的路由，让桌台控制器来判断进入桌台列表还是桌台点餐
          if (route == HomeRoutes.desks.homeRoute) {
            await DesksMainController.onEnterDesksRoute(onEnterDesks: _showAdvertisement);
            return;
          }

          /// 如果不是即时点餐的页面，通知副屏要显示广告页
          if (route != HomeRoutes.instant.homeRoute) {
            _showAdvertisement();
          }

          /// 执行跳转
          Get.rootDelegate.toNamed(route);
        } catch (error, stackTrace) {
          debugPrint('MenuController startWorker error: $error');
          debugPrintStack(stackTrace: stackTrace);

          DialogManager.showToast('路由跳转失败，请稍后再试'.tr);
        }
      },

      /// NOTE: 防抖只是为了防止在快速切换路由时，控制器恰好被销毁, 生产环境需要设置为 200 毫秒
      time: const Duration(milliseconds: kDebugMode ? 1 : 200),
    );
  }

  @override
  void onClose() {
    _worker?.dispose();
    _worker = null;
    super.onClose();
  }

  void setCurrentRoute(String? route) async {
    if (route == null) return;
    currentRoute.value = route;
  }
}

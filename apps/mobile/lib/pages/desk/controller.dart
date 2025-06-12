import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mobile/api/call/call_api.dart';
import 'package:mobile/api/goods/must_api.dart';
import 'package:mobile/api/order/add_product_api.dart';
import 'package:mobile/controllers/common/drawer_controller.dart';
import 'package:mobile/controllers/notification/notification_controller.dart';
import 'package:mobile/pages/home/controller.dart';
import 'package:mobile/pages/home/main.dart';
import 'package:ttpos_logger/logger.dart';
import 'package:ttpos_model/base/request/options.dart';
import 'package:ttpos_model/desk/response/item/item.dart';
import 'package:ttpos_model/goods/request/add_product.dart';
import 'package:ttpos_model/goods/response/product/product.dart';
import 'package:ttpos_model/order/response/desk_ping.dart';
import 'package:ttpos_ui/common/iconfont.dart';
import 'package:ttpos_ui/components/common/dialog/manager.dart';
import 'package:ttpos_ui/components/goods/controllers/detail_controller.dart';
import 'package:ttpos_ui/components/goods/models/detail_model.dart';
import 'package:ttpos_ui/components/tablet_cart/mixin/tablet_cart.dart';
import 'package:ttpos_ui/components/tablet_cart/views/cart/parabola_animator.dart';
import 'package:ttpos_ui/components/tt_order_counter/tt_order_counter.dart';
import 'package:ttpos_ui/controllers/font_size_controller.dart';
import 'package:ttpos_ui/theme/theme.dart';

class DeskController extends GetxController with MixinTabletCart {
  @override
  final Future<ResponseDeskPing?> Function(int deskId)? fetchDeskPing;
  @override
  final int pollingTime;
  DeskController({
    this.fetchDeskPing,
    this.pollingTime = 10,
  });
  //
  final Log _logger = Log(appName: 'DeskController');
  Logger get logger => _logger.logger;

  // 桌台ID
  @override
  int get deskId {
    if (Get.isRegistered<HomePageController>()) {
      final homepageController = Get.find<HomePageController>();
      return homepageController.desk?.uuid ?? 0;
    }
    return 0;
  }

  @override
  int get saleBillUuid {
    if (Get.isRegistered<HomePageController>()) {
      final homepageController = Get.find<HomePageController>();
      return homepageController.desk?.saleBillUuid ?? 0;
    }
    return 0;
  }

  void showConfirmDialog({bool isLocked = false}) async {
    if (isShowConfirmDialog) return;

    isShowConfirmDialog = true;
    await DialogManager.showConfirmDialog(
      title: isLocked ? '订单已锁定'.tr : '订单已关闭'.tr,
      showIconNotification: true,
      showConfirmButton: false,
      showCancelButton: false,
      titleIcon: Icon(
        isLocked ? Iconfont.lock : Iconfont.notice,
        color: CustomTheme.primaryColor,
        size: 36.0.scaleWidth,
      ),
    );
    isShowConfirmDialog = false;
  }

  void closeConfirmDialog() {
    if (isShowConfirmDialog) {
      Get.back();
    }
  }

  void _onBack() async {
    CustomDrawerController.closeDrawer();

    if (Get.isRegistered<HomePageController>()) {
      final desk = await Get.find<HomePageController>().loadDataFromAPI(forceRefresh: true);

      if (desk?.isAvailable == true || desk?.isWait == true) {
        Future.microtask(() {
          stopTimer();
          showConfirmDialog();

          Future.delayed(
            const Duration(seconds: 2),
            () {
              closeConfirmDialog();

              // FIXME: 不优雅
              if (Get.isDialogOpen == true) {
                Get.back();
              }
            },
          );
        });

        return;
      }
    }
  }

  @override
  void Function()? get onBack => _onBack;

  final RxBool _isMustLoading = false.obs;
  bool get isMustLoading => _isMustLoading.value;

  @override
  bool get isShowMustDialog => _isMustLoading.value;

  final RxBool _isCallLoading = false.obs;
  bool get isCallLoading => _isCallLoading.value;

  final RxBool _isNumLoading = false.obs;
  bool get isNumLoading => _isMustLoading.value;
  Rx<CounterType> counterType = CounterType.up.obs;
  Rxn<GoodsProduct> changeProduct = Rxn<GoodsProduct>(null);

  // 不可修改的必点商品
  List<int> get canChangeNumList =>
      unsentKitchenInfo?.products.list
          .where(
            (item) =>
                item.isMust &&
                !item.canChangeNum &&
                item.productPackageUuid != null &&
                // 并且该商品没有可修改的必点方案
                !changeNumList.contains(item.productPackageUuid),
          )
          .map((item) => item.productPackageUuid ?? 0)
          .toSet()
          .toList() ??
      [];

  // 可修改的必点商品
  List<int> get changeNumList =>
      unsentKitchenInfo?.products.list
          .where((item) => item.isMust && item.canChangeNum && item.productPackageUuid != null)
          .map((item) => item.productPackageUuid ?? 0)
          .toSet()
          .toList() ??
      [];

  //
  final CustomDrawerController drawerController = Get.find<CustomDrawerController>();

  bool isShowConfirmDialog = false;

  // 购物车图标Key（用于定位终点位置）
  final GlobalKey cartIconKey = GlobalKey();

  @override
  void onInit() {
    super.onInit();

    // 检查桌台ID参数是否存在
    if (deskId == 0 || saleBillUuid == 0) {
      Future.microtask(() {
        Get.rootDelegate.offNamed(HomeRoutes.open.homeRoute);
      });
      return;
    }

    ever(searchDeskInfo, (data) {
      if (data == null) return;

      if (data.isLock == false) {
        closeConfirmDialog();
        return;
      }

      if (data.isLock == true) {
        showConfirmDialog(isLocked: true);
        return;
      }
    });
  }

  // 加购弹窗
  void handleDetailChange(
    GoodsProduct detail,
    CounterType type, {
    int? mustId,
    GlobalKey? startKey,
  }) {
    counterType.value = type;
    changeProduct.value = detail;
    //
    GoodsDetailController.showMobileDialog(
      detail,
      type,
      // 自助餐是否到期
      isTimeout: isTimeout,
      startKey: startKey,
      onAddProduct: (req, ballDetail) async {
        // 动画开始
        if ((mustId == 0 || mustId == null) &&
            ballDetail != null &&
            ballDetail.context != null &&
            ballDetail.startPos != null) {
          ParabolaAnimator.run(
            context: ballDetail.context!,
            startPos: ballDetail.startPos!,
            endKey: cartIconKey,
          );
        }
        //
        req.mustPlanUuid = mustId ?? 0;
        final res = await addProduct(req, type);
        return res;
      },
    );
  }

  // 添加购物车
  Future<bool> addProduct(GoodsDetailModel detail, CounterType type) async {
    if (deskInfo?.saleOrderUuid == null || deskInfo?.saleOrderUuid == 0) {
      logger.severe('addProduct => deskInfo:$deskInfo');
      // DialogManager.showToast('桌台订单参数错误, 请退出重试！'.tr);
      return false;
    }
    if (_isNumLoading.value) return false;
    //
    if (deskInfo?.saleOrderUuid == null || deskInfo?.saleOrderUuid == 0) {
      logger.severe('addProduct => deskInfo:$deskInfo');
      DialogManager.showToast('桌台订单参数错误, 请退出重试！'.tr);
      return false;
    }
    //
    try {
      _isNumLoading.value = true;
      // 设置商品参数
      final product = RequestOrderAddProduct(
        saleBillUuid: saleBillUuid,
        saleOrderUuid: deskInfo?.saleOrderUuid ?? 0,
        flavorUuid: detail.flavorUuid,
        attributeUuid: detail.attributeUuid,
        sauceUuid: detail.sauceUuid,
        operation: type == CounterType.down ? 'sub' : 'add',
        mustPlanUuid: detail.mustPlanUuid,
      );
      final response = await OrderAddProductAPI().addProduct(
        product,
        options: ExtraRequestOptions(
          showFailToast: true,
        ),
      );
      if (response != null) {
        // 刷新列表
        loadDeskPingFromAPI(
          forceRefresh: true,
        );
        return true;
      }
      // 返回响应数据
      return false;
    } catch (error, stackTrace) {
      logger.severe('addProduct Error:', error, stackTrace);
      return false;
    } finally {
      _isNumLoading.value = false;
    }
  }

  // 打开订单列表
  void handleCartNav(status) {
    drawerController.openEndDrawer(
      DrawerType.openOrder,
      {
        'orderStatus': status,
        'saleBillUuid': saleBillUuid,
        'saleOrderUuid': deskInfo?.saleOrderUuid ?? 0,
        'onNumChangeCallback': () {
          // 刷新列表
          loadDeskPingFromAPI(
            forceRefresh: true,
          );
        },
      },
    );
  }

  // 结账
  Future<bool> handleCheckout() async {
    if (_isCallLoading.value) return false;
    try {
      _isCallLoading.value = true;
      await NotificationController.onCallService(
        deskId,
        callType: CallType.checkout,
      );
      return true;
    } catch (error, stackTrace) {
      logger.severe('handleCheckout Error:', error, stackTrace);
      return false;
    } finally {
      _isCallLoading.value = false;
    }
  }

  // 确认必点
  Future<bool> handleConfirmMust() async {
    if (_isMustLoading.value) return false;
    try {
      _isMustLoading.value = true;
      final res = await MustAPI().fetchConfirmMustDesk(
        saleBillUuid,
        options: ExtraRequestOptions(
          showFailToast: true,
          showSuccessToast: true,
        ),
      );
      //
      if (res) {
        loadDeskPingFromAPI(
          forceRefresh: true,
        );
      }
      return res;
    } catch (error, stackTrace) {
      logger.severe('handleConfirmMust Error:', error, stackTrace);
      return false;
    } finally {
      _isMustLoading.value = false;
    }
  }
}

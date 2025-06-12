import 'dart:async';

import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:tablet/controllers/common/home_drawer_controller.dart';
import 'package:tablet/controllers/common/unsent_kitchen_cache.dart';
import 'package:tablet/pages/desk_bind/controller.dart';
import 'package:tablet/routers/name.dart';
import 'package:ttpos_logger/logger.dart';
import 'package:ttpos_model/goods/request/add_product.dart';
import 'package:ttpos_model/goods/response/must/must_goods_item.dart';
import 'package:ttpos_model/goods/response/product/product.dart';
import 'package:ttpos_model/number/safety_number.dart';
import 'package:ttpos_model/order/response/desk_ping.dart';
import 'package:ttpos_model/order/response/unsent_kitchen.dart';
import 'package:ttpos_ui/components/common/dialog/base.dart';
import 'package:ttpos_ui/components/common/dialog/manager.dart';
import 'package:ttpos_ui/components/goods/controllers/detail_controller.dart';
import 'package:ttpos_ui/components/goods/models/detail_model.dart';
import 'package:ttpos_ui/components/goods/views/must/must.dart';
import 'package:ttpos_ui/components/tablet_cart/mixin/tablet_cart.dart';
import 'package:ttpos_ui/components/tablet_cart/views/cart/parabola_animator.dart';
import 'package:ttpos_ui/controllers/font_size_controller.dart';

class DeskController extends GetxController with MixinTabletCart {
  @override
  final Future<ResponseDeskPing?> Function(int deskId)? fetchDeskPing;
  @override
  final int pollingTime;
  DeskController({
    this.fetchDeskPing,
    this.pollingTime = 30,
  });
  //
  final Log _logger = Log(appName: 'DeskController');
  Logger get logger => _logger.logger;

  // 桌台ID
  @override
  int get deskId {
    if (Get.isRegistered<DeskBindController>()) {
      final deskBindController = Get.find<DeskBindController>();
      return deskBindController.desk?.uuid ?? 0;
    }
    return 0;
  }

  @override
  int get saleBillUuid {
    if (Get.isRegistered<DeskBindController>()) {
      final deskBindController = Get.find<DeskBindController>();
      return deskBindController.desk?.saleBillUuid ?? 0;
    }
    return 0;
  }

  @override
  void Function()? get onBack => () {
        HomeDrawerController.closeDrawer();

        if (Get.isRegistered<DeskBindController>()) {
          final deskBindController = Get.find<DeskBindController>();
          deskBindController.showCheckoutButton.value = false;
        }

        debugPrint('onBack');
      };

  //
  final drawerController = Get.find<HomeDrawerController>();

  final Rx<UnsentKitchenAmountInfo> _amountInfo = UnsentKitchenAmountInfo(
    productAmount: SafetyNumber.zero,
    productNum: 0,
  ).obs;
  UnsentKitchenAmountInfo get amountInfo => _amountInfo.value;
  set amountInfo(UnsentKitchenAmountInfo value) {
    if (_amountInfo.value == value) return;
    _amountInfo.value = value;
  }

  final RxList<MustGoodsItem> _mergeMustList = <MustGoodsItem>[].obs;
  List<MustGoodsItem> get mergeMustList => _mergeMustList.toList();
  set mergeMustList(List<MustGoodsItem> value) {
    final arr = UnsentKitchenCache().getMergeMustList(value.toList());
    // 检查两个列表是否相等
    // bool areEqual = ListEquality<MustGoodsItem>().equals(_mergeMustList, arr);
    // if (areEqual) return;
    //
    _mergeMustList.assignAll(arr);
  }

  // 顾客可修改必点数量
  List<int> get canChangeNumList => mustGoodsList.where((item) => !item.canChangeNum).map((item) => item.uuid).toList();

  // 是否确认过必点
  static bool isMustConfirm = false;

  // 购物车图标Key（用于定位终点位置）
  final GlobalKey cartIconKey = GlobalKey();

  @override
  void onInit() {
    super.onInit();

    // 检查桌台ID参数是否存在
    if (deskId == 0 || saleBillUuid == 0) {
      Future.microtask(() {
        Get.offAllNamed(RouteNames.deskBind);
      });
      return;
    }

    // 初始化数据
    _initData();
    // 监听必选商品列表变化
    everAll([mustGoodsSearchList, searchDeskInfo], (_) async {
      if (isMustConfirm) return;
      // 判断是否需要删除
      UnsentKitchenCache().productDelete(mustGoodsList);
      // 判断自动加购
      UnsentKitchenCache().productAutoAdd(mustGoodsList);
      //
      amountInfo = UnsentKitchenCache.amountInfo;
      //
      mergeMustList = mustGoodsList;
      //
      if (mustGoodsList.isNotEmpty) {
        if (deskInfo?.isLock == true) return;
        _showMustGoodsListDialog();
      } else {
        if (!_isShowDialog) return;
        Get.back();
      }
    });
  }

  @override
  void onReady() {
    super.onReady();

    if (Get.isRegistered<DeskBindController>()) {
      final deskBindController = Get.find<DeskBindController>();
      deskBindController.showCheckoutButton.value = true;
    }
  }

  void _initData() {
    mergeMustList = [];
    UnsentKitchenCache().clear();
    isMustConfirm = false;
  }

  // 加购弹窗
  void handleDetailChange(
    GoodsProduct detail, {
    int? mustId,
    int? flavorId,
    GlobalKey? startKey,
    Offset? startPos,
  }) {
    GoodsDetailController.showGoodsDetailDialog(
      detail,
      (req, ballDetail) async {
        // 动画开始
        if (ballDetail != null && ballDetail.context != null && ballDetail.startPos != null) {
          ParabolaAnimator.run(
            context: ballDetail.context!,
            startPos: ballDetail.startPos!,
            endKey: cartIconKey,
          );
        }
        //
        req.mustPlanUuid = mustId ?? 0;
        final res = await addProduct(req, detail);
        return res;
      },
      // 自助餐是否到期
      isTimeout: isTimeout,
      startKey: startKey,
      startPos: startPos,
    );
  }

  Future<bool> addProduct(GoodsDetailModel req, GoodsProduct detail) async {
    if (deskInfo?.saleOrderUuid == null || deskInfo?.saleOrderUuid == 0) {
      logger.severe('addProduct => deskInfo:$deskInfo');
      // DialogManager.showToast('桌台订单参数错误, 请退出重试！'.tr);
      return false;
    }
    //
    try {
      // 设置商品参数
      final product = RequestOrderAddProduct(
        saleBillUuid: saleBillUuid,
        saleOrderUuid: deskInfo?.saleOrderUuid ?? 0,
        flavorUuid: req.flavorUuid,
        attributeUuid: req.attributeUuid,
        sauceUuid: req.sauceUuid,
        mustPlanUuid: req.mustPlanUuid,
      );
      final response = await UnsentKitchenCache().deskAddProduct(
        product,
        detail,
      );
      if (response != null) {
        // 刷新列表
        amountInfo = UnsentKitchenCache.amountInfo;
        // 如果是必点商品
        if (req.mustPlanUuid != 0) {
          mergeMustList = mustGoodsList.toList();
        }
        return true;
      }
      // 返回响应数据
      return false;
    } catch (error, stackTrace) {
      logger.severe('addProduct Error:', error, stackTrace);
      return false;
    }
  }

  void handleCartNav(status) {
    drawerController.openHomeDrawer(
      HomeDrawerType.cartListDrawer,
      params: {
        'orderStatus': status,
        'saleBillUuid': saleBillUuid,
        'saleOrderUuid': deskInfo?.saleOrderUuid ?? 0,
        'canChangeNumList': canChangeNumList,
        'isTablet': true,
        'refreshDeskPing': () {
          // 刷新列表
          amountInfo = UnsentKitchenCache.amountInfo;
          //
          loadDeskPingFromAPI(
            forceRefresh: true,
          );
        },
      },
    );
  }

  // 必点商品
  static bool _isShowDialog = false;

  @override
  bool get isShowMustDialog => _isShowDialog;

  Future<void> _showMustGoodsListDialog() async {
    if (_isShowDialog || isMustConfirm) return;
    // 判断是否自动加购完成
    final res = await fetchConfirmMustDesk();
    if (res) {
      isMustConfirm = true;
      return;
    }
    // 提示
    _isShowDialog = true;
    // 关闭弹窗
    GoodsDetailController.hideDialog();
    //
    await Get.dialog(
      DismissKeyboardDialog(
        child: SizedBox(
          width: 550.0.scaleWidth,
          height: 480.0.scaleHeight,
          child: Obx(
            () => GoodsMust(
              initMust: mergeMustList,
              onMustRefresh: () async {
                final res = await loadDeskPingFromAPI(
                  forceRefresh: true,
                );
                return res;
              },
              onDetailChange: handleDetailChange,
              onConfirmMust: () async {
                final res = await fetchConfirmMustDesk();
                //
                if (res) {
                  isMustConfirm = true;
                  //
                  Get.back();
                  //
                  amountInfo = UnsentKitchenCache.amountInfo;
                  loadDeskPingFromAPI(
                    forceRefresh: true,
                  );
                }
                return res;
              },
            ),
          ),
        ),
      ),
    );
    // 重置状态
    _isShowDialog = false;
  }

  // 点击必点确认回调
  Future<bool> fetchConfirmMustDesk({bool? isShowToast = true}) async {
    try {
      bool isComplete = true;
      for (final item in mergeMustList) {
        if (item.needNum != 0) {
          if (isShowToast != null && isShowToast) {
            DialogManager.showToast(
              '【@name】必点商品未选，请选择对应商品'.trParams({'name': item.name}),
              fontSize: 16.0,
            );
          }
          isComplete = false;
          break;
        }
      }
      //
      return isComplete;
    } catch (error, stackTrace) {
      logger.severe('deskAddProduct Error:', error, stackTrace);
      return false;
    }
  }

  // 关闭弹窗
  static void closeMustDialog() {
    if (_isShowDialog) {
      Get.back();
    }
    _isShowDialog = false;
  }
}

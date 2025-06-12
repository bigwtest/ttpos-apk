import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mobile/components/desk/order/views/order_remark.dart';
import 'package:ttpos_i18n/controllers/locale_name_extension.dart';
import 'package:ttpos_logger/controller.dart';
import 'package:ttpos_model/number/safety_number.dart';
import 'package:ttpos_model/order/response/sent_kitchen.dart';
import 'package:ttpos_model/order/response/unsent_kitchen.dart';
import 'package:ttpos_ui/components/common/dialog/manager.dart';
import 'package:ttpos_ui/components/tablet_cart_order/controllers/mixin/no_order_mixin.dart';
import 'package:ttpos_ui/components/tablet_cart_order/controllers/mixin/ordered_mixin.dart';
import 'package:ttpos_ui/components/tablet_cart_order/models/num_change_model.dart';

class OrderListController extends GetxController with MixinOrdered, MixinNoOrder {
  final int initOrderStatus; // 订单状态 0=未下单 1=已下单
  // 未送厨列表接口
  @override
  final Future<UnsentKitchen?> Function()? fetchUnsentKitchenList;
  // 已送厨接口
  @override
  final Future<SentKitchen?> Function()? fetchSentKitchenList;
  // 修改数量接口
  @override
  final Future<bool> Function(GoodsNumChangeModel detail)? fetchNumChange;
  // 送厨接口
  final Future<bool> Function()? fetchSendKitchen;
  // 备注接口
  final Future<bool> Function(int uuid, String remark)? fetchRemarkProductDesk;
  OrderListController({
    this.initOrderStatus = 0,
    this.fetchUnsentKitchenList,
    this.fetchSentKitchenList,
    this.fetchNumChange,
    this.fetchSendKitchen,
    this.fetchRemarkProductDesk,
  });

  //
  final LoggerController _loggerController = Get.find<LoggerController>();
  Logger get _logger => _loggerController.logger;

  // 状态
  int get orderStatus => _orderStatus.value;
  final RxInt _orderStatus = 0.obs;
  set orderStatus(int value) {
    if (_orderStatus.value == value) return;
    _orderStatus.value = value;
  }

  // 加载状态
  final RxBool _isSendKitchenLoading = false.obs;
  bool get isSendKitchenLoading => _isSendKitchenLoading.value;

  // 菜单
  static List<Map<String, dynamic>> get menuList => [
        {
          'title': '未下单'.tr,
          'value': 0,
        },
        {
          'title': '已下单'.tr,
          'value': 1,
        },
      ];
  //
  Worker? _orderStatusWorker;

  @override
  void onInit() {
    orderStatus = initOrderStatus;
    loadInitFromAPI();
    // 监听变化设置缓存
    _orderStatusWorker = debounce(
      _orderStatus,
      (value) {
        // 请求接口
        loadInitFromAPI();
      },
      time: Duration(
        milliseconds: 100,
      ),
    );
    //
    super.onInit();
  }

  @override
  void onClose() {
    _orderStatusWorker?.dispose();
    _orderStatusWorker = null;
    //
    super.onClose();
  }

  //
  void handleOrderStatus(int value) {
    orderStatus = value;
  }

  void loadInitFromAPI() {
    if (orderStatus == 1) {
      getSentKitchenListFromAPI();
    } else {
      getUnsentKitchenListFromAPI();
    }
  }

  // 送厨商品
  void handleSendKitchen() async {
    if (_isSendKitchenLoading.value) return;
    // 判断是否有未送厨商品
    if (unsentKitchenList.isEmpty) {
      DialogManager.showToast('暂无未下单商品'.tr);
      return;
    }
    try {
      _isSendKitchenLoading.value = true;
      final res = await fetchSendKitchen?.call();
      if (res != null && res) {
        unsentKitchenList = [];
        unsentKitchenAmountInfo = UnsentKitchenAmountInfo(
          productAmount: SafetyNumber.zero,
          productNum: 0,
        );
        //
        handleOrderStatus(1);
        // 如果没变化
        if (orderStatus == 1) {
          loadInitFromAPI();
        }
      }
    } catch (error, stackTrace) {
      _logger.severe('handleSendKitchen Error:', error, stackTrace);
    } finally {
      _isSendKitchenLoading.value = false;
    }
  }

  void handleRemarkDialog() {
    // 没有选中商品
    if (activeUnsentKitchenProduct == null || activeUnsentKitchenProduct?.uuid == 0) {
      if (orderStatus == 1) {
        // 暂无已下单商品
        if (sentKitchenList.isEmpty) {
          DialogManager.showToast('暂无已下单商品'.tr);
          return;
        }
      }
      DialogManager.showToast('请选择商品'.tr);
      return;
    }
    Get.dialog(
      Dialog(
        child: SingleChildScrollView(
          child: OrderRemark(
            title: activeUnsentKitchenProduct?.localeName.translate ?? '',
            remark: activeUnsentKitchenProduct?.remark ?? '',
            onConfirm: (remark) async {
              final res = await fetchRemarkProductDesk?.call(activeUnsentKitchenProduct?.uuid ?? 0, remark);
              if (res != null && res) {
                // 请求列表
                loadInitFromAPI();
                return true;
              }
              return false;
            },
          ),
        ),
      ),
    );
  }
}

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ttpos_api/websocket_service.dart';
import 'package:ttpos_logger/controller.dart';
import 'package:ttpos_model/base/request/options.dart';
import 'package:ttpos_model/base/response/list.dart';
import 'package:ttpos_model/order/request/delete_product.dart';
import 'package:ttpos_model/order/request/gift_product.dart';
import 'package:ttpos_model/order/request/opt_product.dart';
import 'package:ttpos_model/order/request/price_product.dart';
import 'package:ttpos_model/order/request/remark_product.dart';
import 'package:ttpos_model/order/request/returning_product.dart';
import 'package:ttpos_model/order/response/product.dart';
import 'package:ttpos_model/order/response/sent_kitchen.dart';
import 'package:ttpos_model/order/response/unsent_kitchen.dart';
import 'package:ttpos_model/reason/free_or_gift_reason.dart';
import 'package:ttpos_model/reason/return_reason.dart';
import 'package:ttpos_ui/components/common/dialog/manager.dart';
import 'package:ttpos_ui/components/tablet_cart_order/controllers/mixin/no_order_mixin.dart';
import 'package:ttpos_ui/components/tablet_cart_order/controllers/mixin/ordered_mixin.dart';
import 'package:ttpos_ui/components/tablet_cart_order/controllers/order_product_operation.dart';
import 'package:ttpos_ui/components/tablet_cart_order/models/num_change_model.dart';

enum OrderActionType {
  price, // 价格
  delete, // 删除
  returningDishes, // 退菜
  returningDishesCancel, // 取消退菜
  remark, // 备注
  transferDishes, // 转菜
  giftDishes, // 赠菜
  giftDishesCancel, // 取消赠菜
}

class TabletCartOrderController extends GetxController with MixinOrdered, MixinNoOrder {
  final bool hasPrice; // 价格权限
  final bool hasReturnDish; // 退菜权限
  final bool hasRemark; // 备注权限
  final bool hasTransferDish; // 转菜权限
  final bool hasGiftDish; // 赠菜权限
  final bool isSplitOrder;
  final int initOrderStatus;
  final void Function()? fetchConfirmPayment;
  final int saleBillUuid;
  final int saleOrderUuid;
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
  final Future<bool> Function(RequestRemarkProduct req, {ExtraRequestOptions? options})? fetchRemarkProductDesk;
  // 改价接口
  final Future<bool> Function(RequestPriceProduct req, {ExtraRequestOptions? options})? fetchPriceProductDesk;
  // 删除接口
  final Future<bool> Function(RequestDeleteProduct req, {ExtraRequestOptions? options})? fetchDeleteProductDesk;
  // 退菜接口
  final Future<bool> Function(RequestReturningProduct req, {ExtraRequestOptions? options})? fetchReturningProductDesk;
  final Future<bool> Function(RequestOptProduct req, {ExtraRequestOptions? options})? fetchCancelReturningDishes;
  // 赠菜接口
  final Future<bool> Function(RequestGiftingProduct req, {ExtraRequestOptions? options})? fetchGiftProductDesk;
  final Future<bool> Function(RequestOptProduct req, {ExtraRequestOptions? options})? fetchCancelGiftDishes;
  //
  final Future<bool> Function({required String password})? fetchPassword;
  final Future<BaseList<ResponseReturnReason>?> Function()? fetchReturningReasons;
  final Future<BaseList<ResponseFreeOrGiftReason>?> Function()? fetchGiftReasons;
  final void Function(Product)? onChangeProductDesk;
  //
  TabletCartOrderController({
    this.hasPrice = false, // 价格权限
    this.hasReturnDish = false, // 退菜权限
    this.hasRemark = false, // 备注权限
    this.hasTransferDish = false, // 转菜权限
    this.hasGiftDish = false, // 赠菜权限
    this.isSplitOrder = false,
    this.saleBillUuid = 0,
    this.saleOrderUuid = 0,
    this.initOrderStatus = 0,
    this.fetchConfirmPayment,
    this.fetchUnsentKitchenList,
    this.fetchSentKitchenList,
    this.fetchNumChange,
    this.fetchSendKitchen,
    this.fetchRemarkProductDesk,
    this.fetchPriceProductDesk,
    this.fetchDeleteProductDesk,
    this.fetchReturningProductDesk,
    this.fetchCancelReturningDishes,
    this.fetchGiftProductDesk,
    this.fetchCancelGiftDishes,
    this.fetchPassword,
    this.fetchReturningReasons,
    this.fetchGiftReasons,
    this.onChangeProductDesk,
  });

  //
  final LoggerController _loggerController = Get.find<LoggerController>();
  Logger get _logger => _loggerController.logger;

  // 加载状态
  final RxBool _isLoading = false.obs;
  bool get isLoading => _isLoading.value;

  // 加载状态
  final RxBool _isSendKitchenLoading = false.obs;
  bool get isSendKitchenLoading => _isSendKitchenLoading.value;

  // 状态
  int get orderStatus => _orderStatus.value;
  final RxInt _orderStatus = 0.obs;
  set orderStatus(int value) {
    if (_orderStatus.value == value) return;
    _orderStatus.value = value;
  }

  // 未下单
  List<Map<String, dynamic>> get noOrderActionList => [
        {
          'label': '价格'.tr,
          'value': OrderActionType.price,
          'isPermission': hasPrice,
        },
        {
          'label': '删除'.tr,
          'value': OrderActionType.delete,
          'isPermission': hasReturnDish,
        },
        {
          'label': '备注'.tr,
          'value': OrderActionType.remark,
          'isPermission': hasRemark,
        },
        {
          'label': '转菜'.tr,
          'value': OrderActionType.transferDishes,
          'isPermission': hasTransferDish,
        },
        {
          'label': activeUnsentKitchenProduct?.isGift == true ? '取消赠菜'.tr : '赠菜'.tr,
          'value': activeUnsentKitchenProduct?.isGift == true
              ? OrderActionType.giftDishesCancel
              : OrderActionType.giftDishes,
          'isPermission': hasGiftDish,
        },
      ].where((item) => item['isPermission'] == true).toList();

  // 已下单
  List<Map<String, dynamic>> get orderedActionList {
    // 退菜
    if (activeSentKitchenProduct?.isCancel == true) {
      return [
        {
          'label': '取消退菜'.tr,
          'value': OrderActionType.returningDishesCancel,
          'isPermission': hasReturnDish,
        },
        {
          'label': '删除'.tr,
          'value': OrderActionType.delete,
          'isPermission': hasReturnDish,
        },
      ].where((item) => item['isPermission'] == true).toList();
    }
    return [
      {
        'label': '价格'.tr,
        'value': OrderActionType.price,
        'isPermission': hasPrice,
      },
      {
        'label': '退菜'.tr,
        'value': OrderActionType.returningDishes,
        'isPermission': hasReturnDish,
      },
      {
        'label': '转菜'.tr,
        'value': OrderActionType.transferDishes,
        'isPermission': hasTransferDish,
      },
      {
        'label': activeSentKitchenProduct?.isGift == true ? '取消赠菜'.tr : '赠菜'.tr,
        'value':
            activeSentKitchenProduct?.isGift == true ? OrderActionType.giftDishesCancel : OrderActionType.giftDishes,
        'isPermission': hasGiftDish,
      },
    ].where((item) => item['isPermission'] == true).toList();
  }

  // 更多操作
  List<Map<String, dynamic>> get orderActionList => orderStatus == 0 ? noOrderActionList : orderedActionList;

  // 是否选中商品
  Product? get orderProduct {
    if (orderStatus == 1) {
      return activeSentKitchenProduct;
    }
    return activeUnsentKitchenProduct;
  }

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

  StreamSubscription? _websocketSubscription;

  @override
  void onReady() {
    _websocketSubscription = WebSocketService.to.messageStream.listen(
      (message) {
        debugPrint('WebSocketService 收到消息 [TabletCartOrderController]: $message $saleBillUuid $saleOrderUuid');
        // NOTE: 如果不是更新订单消息, 则不处理
        if (!message.isEventUpdateOrder) return;

        // NOTE: 如果不是当前订单, 则不处理
        if (message.data?['sale_bill_uuid'] != saleBillUuid) return;

        // 获取已送厨列表
        loadInitFromAPI();
      },
    );
  }

  @override
  void onClose() {
    _websocketSubscription?.cancel();
    _websocketSubscription = null;

    _orderStatusWorker?.dispose();
    _orderStatusWorker = null;
    //
    super.onClose();
  }

  void loadInitFromAPI() {
    if (orderStatus == 1) {
      getSentKitchenListFromAPI();
    } else {
      getUnsentKitchenListFromAPI();
    }
  }

  //
  void handleOrderStatus(int value) {
    orderStatus = value;
  }

  // 点击支付弹窗
  void handleConfirmPayment() async {
    fetchConfirmPayment?.call();
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
        //
        handleOrderStatus(1);
      }
    } catch (error, stackTrace) {
      _logger.severe('handleSendKitchen Error:', error, stackTrace);
    } finally {
      _isSendKitchenLoading.value = false;
    }
  }

  // 操作
  void handleOrderAction(OrderActionType value) {
    // 没有选中商品
    if (orderProduct == null || orderProduct?.uuid == 0) {
      // if (orderStatus == 1) {
      //   // 暂无已下单商品
      //   if (sentKitchenList.isEmpty) {
      //     DialogManager.showToast('暂无已下单商品'.tr);
      //     return;
      //   }
      // } else {
      //   // 暂无未下单商品
      //   if (unsentKitchenList.isEmpty) {
      //     DialogManager.showToast('暂无未下单商品'.tr);
      //     return;
      //   }
      // }
      DialogManager.showToast('请选择商品'.tr);
      return;
    }
    // 是否拆单
    if (isSplitOrder) {
      DialogManager.showConfirmDialog(
        message: '当前订单已拆单，请前去收银机操作'.tr,
        showCancelButton: false,
      );
      return;
    }
    switch (value) {
      case OrderActionType.price:
        // 改价
        OrderProductOperation(
          orderProduct: orderProduct!,
          saleBillUuid: saleBillUuid,
          saleOrderUuid: saleOrderUuid,
        ).priceProduct(
          fetchPriceProductDesk: fetchPriceProductDesk,
          callbackSuccess: () {
            loadInitFromAPI();
          },
        );
        return;
      case OrderActionType.delete:
        // 删除
        OrderProductOperation(
          orderProduct: orderProduct!,
          saleBillUuid: saleBillUuid,
          saleOrderUuid: saleOrderUuid,
        ).deleteProduct(
          fetchDeleteProductDesk: fetchDeleteProductDesk,
          callbackSuccess: () {
            loadInitFromAPI();
          },
        );
        return;
      case OrderActionType.returningDishes:
        // 退菜
        OrderProductOperation(
          orderProduct: orderProduct!,
          saleBillUuid: saleBillUuid,
          saleOrderUuid: saleOrderUuid,
        ).returningDishes(
          fetchPassword: fetchPassword,
          fetchReasons: fetchReturningReasons,
          fetchReturningProductDesk: fetchReturningProductDesk,
          callbackSuccess: () {
            loadInitFromAPI();
          },
        );
        return;
      case OrderActionType.returningDishesCancel:
        // 取消退菜
        OrderProductOperation(
          orderProduct: orderProduct!,
          saleBillUuid: saleBillUuid,
          saleOrderUuid: saleOrderUuid,
        ).returningDishesCancel(
          fetchCancelReturningDishes: fetchCancelReturningDishes,
          callbackSuccess: () {
            loadInitFromAPI();
          },
        );
        return;
      case OrderActionType.remark:
        // 备注
        OrderProductOperation(
          orderProduct: orderProduct!,
          saleBillUuid: saleBillUuid,
          saleOrderUuid: saleOrderUuid,
        ).remarkProduct(
          fetchRemarkProductDesk: fetchRemarkProductDesk,
          callbackSuccess: () {
            loadInitFromAPI();
          },
        );
        return;
      case OrderActionType.transferDishes:
        // 转菜，抽屉弹窗
        onChangeProductDesk?.call(orderProduct!);
        return;
      case OrderActionType.giftDishes:
        // 赠菜
        OrderProductOperation(
          orderProduct: orderProduct!,
          saleBillUuid: saleBillUuid,
          saleOrderUuid: saleOrderUuid,
        ).giftDishes(
          fetchReasons: fetchGiftReasons,
          fetchGiftProductDesk: fetchGiftProductDesk,
          callbackSuccess: () {
            loadInitFromAPI();
          },
        );
        return;
      case OrderActionType.giftDishesCancel:
        // 取消赠菜
        OrderProductOperation(
          orderProduct: orderProduct!,
          saleBillUuid: saleBillUuid,
          saleOrderUuid: saleOrderUuid,
        ).cancelGiftDishes(
          fetchCancelGiftDishes: fetchCancelGiftDishes,
          callbackSuccess: () {
            loadInitFromAPI();
          },
        );
        return;
    }
  }
}

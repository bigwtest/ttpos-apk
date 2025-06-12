// Package imports:
import 'dart:async';
import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:pos/api/checkout/checkout_api.dart';
import 'package:pos/api/goods/must_api.dart';
import 'package:pos/api/member/member_api.dart';
import 'package:pos/api/order/add_product_api.dart';
import 'package:pos/api/order/order_unlock_api.dart';
import 'package:pos/api/print/print_api.dart';
import 'package:pos/components/goods_cart/index.dart' as cart;
import 'package:pos/controllers/base/main_controller.dart';
import 'package:pos/controllers/checkout/checkout_controller.dart';
import 'package:pos/controllers/common/cash_box_controller.dart';
import 'package:pos/controllers/order/operation_controller.dart';
import 'package:pos/model/response/cart/cart.dart';
import 'package:pos/model/response/order/add_product.dart'; // 订单列表
import 'package:shared_preferences/shared_preferences.dart';
import 'package:ttpos_api/refresh_service.dart';
import 'package:ttpos_api/websocket_service.dart';
import 'package:ttpos_logger/logger.dart';
import 'package:ttpos_model/base/request/options.dart';
import 'package:ttpos_model/goods/request/add_product.dart';
import 'package:ttpos_shared/shared.dart';
import 'package:ttpos_ui/components/common/dialog/manager.dart';
import 'package:ttpos_ui/components/goods/models/detail_model.dart';
import 'package:ttpos_ui/controllers/sub_screen/cart_data_type.dart';
import 'package:ttpos_ui/controllers/subscreen_service.dart';
import 'package:uuid/uuid.dart';

// 点餐购物车控制器
class InstantController extends GetxController {
  final Log _logger = Log(appName: 'InstantController');
  Logger get logger => _logger.logger;

  // 初始化购物车组件
  late final cart.GoodsCartView carts = cart.GoodsCartView(
    tag: "instant_${const Uuid().v4()}",
    onCheckout: _checkout,
    onUnlock: orderUnlock, // 解锁
  );

  // 购物车数据
  Rx<ResponseCart?> get _cartInfo => carts.ordersController.cartInfo;
  ResponseCart? get cartInfo => _cartInfo.value;

  // 用于存储 ever 订阅，以便在 onClose 中销毁
  Worker? _refreshWorker;
  Worker? _appLifeCycleStartWorker;
  Worker? _appLifeCycleStopWorker;

  /// 用于存储 websocket 订阅，以便在 onClose 中销毁
  StreamSubscription? _websocketSubscription;

  @override
  void onInit() async {
    super.onInit();

    // NOTE: 判断 h5OrderUuid 是否存在, 如果存在则存到 storage @发哥
    if (Get.isRegistered<SharedPreferencesWithCache>()) {
      final storage = Get.find<SharedPreferencesWithCache>();
      await storage.remove(StorageKey.h5OrderUuid.asString);
    }

    // 通知订单组件开始加载购物车数据
    carts.ordersController.loadCartData(saleBillUuid: 0);

    // 刷新购物车
    _refreshWorker = ever(
      RefreshService.to.signal,
      (_) => carts.ordersController.loadCartData(saleBillUuid: 0),
    );

    _appLifeCycleStartWorker = ever(
      RefreshService.to.startTimerSignal,
      (_) {
        debugPrint('appLifeCycleStartWorker 收到 startTimerSignal 信号 [InstantController]');
        carts.ordersController.startGetCartInfoFromAPITimer(0, 0);
      },
    );

    _appLifeCycleStopWorker = ever(
      RefreshService.to.stopTimerSignal,
      (_) {
        debugPrint('appLifeCycleStopWorker 收到 stopTimerSignal 信号 [InstantController]');
        carts.ordersController.stopGetCartInfoFromAPITimer();
      },
    );

    _websocketSubscription = WebSocketService.to.messageStream.listen(
      (message) {
        debugPrint('WebSocketService 收到消息 [InstantController]: $message');
        // NOTE: 如果不是更新订单消息, 则不处理
        if (!message.isEventUpdateOrder) return;

        // NOTE: 如果不是当前订单, 则不处理
        if (message.data?['sale_bill_uuid'] != cartInfo?.saleBillUuid) return;

        // NOTE: 如果更新时间大于购物车更新时间, 则刷新购物车
        if (message.updateTime > (cartInfo?.updateTime ?? 0)) {
          carts.ordersController.loadCartData(saleBillUuid: 0);
        }
      },
    );
  }

  @override
  void onClose() {
    /// 销毁 websocket 订阅
    _websocketSubscription?.cancel();
    _websocketSubscription = null;

    // 销毁 ever 订阅
    _refreshWorker?.dispose();
    _refreshWorker = null;

    // 取消 appLifeCycleStartWorker
    _appLifeCycleStartWorker?.dispose();
    _appLifeCycleStartWorker = null;
    // 取消 appLifeCycleStopWorker
    _appLifeCycleStopWorker?.dispose();
    _appLifeCycleStopWorker = null;

    super.onClose();
  }

  // 添加商品
  Future<bool> addProduct(GoodsDetailModel detail) async {
    final cartInfo = this.cartInfo;
    // 设置参数
    final product = RequestOrderAddProduct(
      saleBillUuid: cartInfo == null ? 0 : cartInfo.saleBillUuid ?? 0,
      saleOrderUuid: cartInfo == null ? 0 : carts.ordersController.getCurrentSelectedSaleOrderUuid(),
      flavorUuid: detail.flavorUuid,
      attributeUuid: detail.attributeUuid,
      sauceUuid: detail.sauceUuid,
      mustPlanUuid: detail.mustPlanUuid,
    );
    ResponseOrderAddProduct? response = await OrderAddProductAPI().addProduct(
      product,
      options: ExtraRequestOptions(
        showFailToast: true,
      ),
    );
    if (response?.responseCart != null) {
      carts.ordersController.setCartInfo(
        cart: response?.responseCart,
        isTriggerSelected: true,
      );
      return true;
    }
    // 返回响应数据
    return false;
  }

  // 解锁
  Future<bool> orderUnlock() async {
    final cartInfo = this.cartInfo;
    if (cartInfo == null) {
      logger.severe('orderUnlock => cartInfo:$cartInfo');
      DialogManager.showToast('订单参数错误, 请退出重试！'.tr);
      return false;
    }
    try {
      final res = await OrderUnlockAPI().orderUnlock(
        cartInfo.saleBillUuid ?? 0,
        options: ExtraRequestOptions(
          showFailToast: true,
          showSuccessToast: false,
        ),
      );
      // 调用解锁接口成功之后 - 执行购物车解锁 - 无须刷新购物车
      if (res) {
        carts.ordersController.setUnlock();
      }
      // 返回响应数据
      return res;
    } catch (error, stackTrace) {
      logger.severe('orderUnlock Error: $error\n$stackTrace cartInfo: $cartInfo');
      return false;
    }
  }

  // 结账
  void _checkout(int saleBillUuid, int saleOrderUuid) async {
    CheckoutController.onCheckOutTap(
      saleBillUuid: saleBillUuid,
      saleOrderUuid: saleOrderUuid,
      callbacks: CheckoutCallbacks(
        onCheckOutComplete: () {
          // 清空副屏数据
          if (!kIsWeb && Platform.isAndroid) {
            try {
              SubScreenService.send(
                method: ScreenMessageType.cartName,
                data: {
                  'dataType': CartDataType.updataData.name, // 数据类型 => 更新列表统计数据
                  'orderList': '{}',
                  'amountInfo': '{}',
                },
              );
            } catch (e) {
              debugPrint('sendMsgToSubScreen error: $e');
            }
          }
          //
          completeOrder(saleOrderUuid);
        },
        onRefreshCart: refreshCartList,
        onCheckPaymentOrder: CheckoutAPI().checkInstantOrder,
        onGetPaymentOrder: CheckoutAPI().getInstantPaymentOrder,
        onCreatePaymentOrder: CheckoutAPI().createInstantPaymentOrder,
        onCancelPaymentOrder: CheckoutAPI().cancelInstantPaymentOrder,
        onFinishPaymentOrder: CheckoutAPI().finishInstantPaymentOrder,
        onGetMemberDiscount: CheckoutAPI().getInstantOrderMemberDiscount,
        onUseMemberDiscount: CheckoutAPI().useInstantOrderMemberDiscount,
        onRemoveMemberDiscount: CheckoutAPI().removeInstantOrderMemberDiscount,
        onZeroRulePaymentOrder: CheckoutAPI().setInstantPaymentZeroRule,
        onSearchMember: MemberAPI().searchMemberList,
        onCooking: () async {
          OrderOperationController operationAPI = OrderOperationController(orderType: OrderOperationType.instant);
          return await operationAPI.sendKitchen(
            saleBillUuid: saleBillUuid,
            saleOrderUuid: saleOrderUuid,
            isIgnoreMust: true,
            callback: (ResponseCart? cart) {
              if (cart != null) {
                carts.ordersController.setCartInfo(cart: cart);
              }
              return null;
            },
          );
        },
        onCheckFailed: refreshCartList,
        onPreCheckoutPrint: PrintAPI().printInstantPreCheckout,
        // 调用打印接口成功之后 - 执行购物车锁定 - 无须刷新购物车
        onOrderSetLock: carts.ordersController.setLock,
        onInvoicePrint: PrintAPI().instantPrintInvoice,
        onGetPaymentMethodQrcode: CheckoutAPI().getInstantPaymentMethodQrcode,
        onOpenCashBox: () {
          CashBoxController.openCashBox();
        },
        isModuleAvailableMember:
            Get.isRegistered<BaseInfoController>() ? Get.find<BaseInfoController>().isModuleAvailableMember : false,
      ),
    );
    return null;
  }

  // 必选商品
  Future<bool> confirmMust() async {
    final cartInfo = this.cartInfo;
    if (cartInfo == null) {
      logger.severe('confirmMust => cartInfo:$cartInfo');
      DialogManager.showToast('订单参数错误, 请退出重试！'.tr);
      return false;
    }
    try {
      // 请求
      final response = await MustAPI().fetchConfirmMustInstant(
        cartInfo.saleBillUuid ?? 0,
        ExtraRequestOptions(
          showFailToast: true,
          showSuccessToast: true,
        ),
      );
      // 刷新
      await refreshCartList();
      return response;
    } catch (error, stackTrace) {
      logger.severe('confirmMust Error: $error\n$stackTrace cartInfo: $cartInfo');
      return false;
    }
  }

  // 刷新
  Future<bool> refreshCartList() async {
    final cartInfo = this.cartInfo;
    if (cartInfo == null) {
      logger.severe('refreshCartList => cartInfo:$cartInfo');
      DialogManager.showToast('订单参数错误, 请退出重试！'.tr);
      return false;
    }
    try {
      await carts.ordersController.loadCartData(saleBillUuid: cartInfo.saleBillUuid ?? 0);
      return true;
    } catch (error, stackTrace) {
      logger.severe('refreshCartList Error:', error, stackTrace);
      return false;
    }
  }

  int completeOrder(int saleOrderUuid) {
    final result = carts.ordersController.completeCurrentOrder(saleOrderUuid);
    carts.ordersController.loadCartData(saleBillUuid: 0);
    return result;
  }
}

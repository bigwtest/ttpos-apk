import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tablet/api/order/add_product_api.dart';
import 'package:tablet/api/order/sent_kitchen_api.dart';
import 'package:tablet/controllers/base/main_controller.dart';
import 'package:tablet/controllers/common/unsent_kitchen_cache.dart';
import 'package:ttpos_logger/logger.dart';
import 'package:ttpos_model/base/request/options.dart';
import 'package:ttpos_model/order/request/num_change.dart';
import 'package:ttpos_ui/components/tablet_cart_order/controllers/order_operation.dart';
import 'package:ttpos_ui/components/tablet_cart_order/views/order_view.dart';
import 'package:ttpos_ui/controllers/font_size_controller.dart';

enum HomeDrawerType {
  cartListDrawer, // 订单列表抽屉
  checkoutDrawer, // 结账抽屉
}

class HomeDrawerController extends GetxController {
  late GlobalKey<ScaffoldState> scaffoldKey;

  //
  final Log _logger = Log(appName: 'HomeDrawerController');
  Logger get logger => _logger.logger;

  // 打开那个抽屉
  final Rx<HomeDrawerType> _currentDrawer = HomeDrawerType.cartListDrawer.obs;
  HomeDrawerType get currentDrawer => _currentDrawer.value;
  set currentDrawer(HomeDrawerType value) {
    if (_currentDrawer.value == value) return;
    _currentDrawer.value = value;
  }

  final baseInfoController = Get.find<BaseInfoController>();

  // 参数
  final RxMap<String, dynamic> _drawerParams = <String, dynamic>{}.obs;
  Map<String, dynamic> get drawerParams => _drawerParams;
  set drawerParams(Map<String, dynamic> value) {
    if (_drawerParams == value) return;
    _drawerParams.value = value;
  }

  // 抽屉组件
  Widget get drawerView {
    // 判断当前抽屉
    switch (currentDrawer) {
      case HomeDrawerType.cartListDrawer:
        final int saleBillUuid = drawerParams['saleBillUuid'] is int ? drawerParams['saleBillUuid'] : 0;
        final int saleOrderUuid = drawerParams['saleOrderUuid'] is int ? drawerParams['saleOrderUuid'] : 0;
        final int initOrderStatus = drawerParams['orderStatus'] is int ? drawerParams['orderStatus'] : 0;
        final bool isTablet = drawerParams['isTablet'] is bool ? drawerParams['isTablet'] : false;
        final refreshDeskPing = drawerParams['refreshDeskPing'] is Function ? drawerParams['refreshDeskPing'] : null;
        final canChangeNumList =
            drawerParams['canChangeNumList'] is List<int> ? drawerParams['canChangeNumList'] : null;
        return Drawer(
          width: 600.0.scaleWidth,
          child: TabletCartOrderView(
            saleBillUuid: saleBillUuid,
            saleOrderUuid: saleOrderUuid,
            isShowStatus: baseInfoController.isOpen, // 是否显示已制作
            isTablet: isTablet,
            initOrderStatus: initOrderStatus,
            canChangeNumList: canChangeNumList,
            // 备注
            onRemarkProductDesk: UnsentKitchenCache().remarkProductDesk,
            // 送厨
            onSendKitchen: () async {
              try {
                final res = await OrderOperation(
                  saleBillUuid: saleBillUuid,
                  saleOrderUuid: saleOrderUuid,
                ).sendKitchen(
                  products: UnsentKitchenCache.cookingProductList,
                  fetchOrderCooking: OrderAddProductAPI().deskAddProductCooking,
                );
                if (res) {
                  UnsentKitchenCache().clear();
                  refreshDeskPing?.call();
                }
                return res;
              } catch (error, stackTrace) {
                logger.severe('onSendKitchen Error:', error, stackTrace);
                return false;
              }
            },
            // 改变数量
            onNumChange: (detail) async {
              final res = await UnsentKitchenCache().numChangeDesk(
                RequestNumChange(
                  num: detail.num,
                  saleOrderProductUuid: detail.saleOrderProductUuid,
                  saleBillUuid: saleBillUuid,
                  saleOrderUuid: saleOrderUuid,
                ),
                options: ExtraRequestOptions(
                  showFailToast: true,
                ),
              );
              if (res) {
                refreshDeskPing?.call();
              }
              return res;
            },
            // 送厨列表接口
            onSentKitchenList: () => SentKitchenAPI().getSentKitchenList(
              saleBillUuid,
              options: ExtraRequestOptions(
                showFailToast: true,
              ),
            ),
            // 未送厨列表接口
            onUnsentKitchenList: () => UnsentKitchenCache().getUnsentKitchenList(
              saleBillUuid,
              options: ExtraRequestOptions(
                showFailToast: true,
              ),
            ),
          ),
        );
      case HomeDrawerType.checkoutDrawer:
        return SizedBox.shrink();
    }
  }

  // 打开某个抽屉
  void openHomeDrawer(
    HomeDrawerType type, {
    Map<String, dynamic>? params,
  }) {
    currentDrawer = type; // 打开那个抽屉
    drawerParams = params ?? {}; // 参数
    scaffoldKey.currentState?.openEndDrawer();
  }

  static void closeDrawer() {
    if (!Get.isRegistered<HomeDrawerController>()) return;
    final controller = Get.find<HomeDrawerController>();
    controller.scaffoldKey.currentState?.closeEndDrawer();
  }
}

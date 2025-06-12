// Package imports:
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mobile/api/order/add_product_api.dart';
import 'package:mobile/api/order/cooking_api.dart';
import 'package:mobile/api/order/remark_product_api.dart';
import 'package:mobile/api/order/sent_kitchen_api.dart';
import 'package:mobile/api/order/unsent_kitchen_api.dart';
import 'package:mobile/components/desk/order/order_list_view.dart';
import 'package:mobile/components/open/container.dart';
import 'package:mobile/controllers/base/main_controller.dart';
import 'package:ttpos_model/base/request/options.dart';
import 'package:ttpos_model/order/request/num_change.dart';
import 'package:ttpos_model/order/request/remark_product.dart';
import 'package:ttpos_ui/components/mobile_header/select_language_view.dart';
import 'package:ttpos_ui/components/tablet_cart_order/controllers/order_operation.dart';

enum DrawerType {
  language, // 设置语言
  openDesk, // 开桌弹窗
  openOrder, // 订单弹窗
}

class CustomDrawerController extends GetxController with GetSingleTickerProviderStateMixin {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  //
  final Rx<DrawerType> _currentDrawer = DrawerType.language.obs;
  DrawerType get currentDrawer => _currentDrawer.value;
  //
  final Rx<bool> isDrawerOpen = false.obs;
  // 添加参数类型定义
  final Rx<Map<String, dynamic>> _drawerParams = Rx<Map<String, dynamic>>({});
  Map<String, dynamic> get drawerParams => _drawerParams.value;

  final baseInfoController = Get.find<BaseInfoController>();

  void openEndDrawer(DrawerType drawerName, [Map<String, dynamic>? params]) {
    _currentDrawer.value = drawerName;
    _drawerParams.value = params ?? {};
    scaffoldKey.currentState?.openEndDrawer();
    openDrawer();
  }

  Widget get getDrawerView {
    switch (currentDrawer) {
      case DrawerType.language:
        return SelectLanguageView(
          onSelectLanguage: () {
            closeDrawer();
          },
        );
      case DrawerType.openDesk:
        return DeskOpenContainerView(
          deskUuid: drawerParams['deskUuid'],
          deskNo: drawerParams['deskNo'],
          isBuffetOrNot: drawerParams['isBuffetOrNot'],
          buffetList: drawerParams['buffetList'],
          isOpenDefaultPeopleNum: drawerParams['isOpenDefaultPeopleNum'],
          defaultPeopleNum: drawerParams['defaultPeopleNum'],
        );
      case DrawerType.openOrder:
        final int orderStatus = drawerParams['orderStatus'] is int ? drawerParams['orderStatus'] : 0;
        final int saleBillUuid = drawerParams['saleBillUuid'] is int ? drawerParams['saleBillUuid'] : 0;
        final int saleOrderUuid = drawerParams['saleOrderUuid'] is int ? drawerParams['saleOrderUuid'] : 0;
        final Function()? onNumChangeCallback =
            drawerParams['onNumChangeCallback'] is Function ? drawerParams['onNumChangeCallback'] : null;
        return OrderListView(
          isShowStatus: baseInfoController.isOpen, // 是否显示已制作
          isShowTakeTime: baseInfoController.data.value?.isOpenH5Order == 1, // h5是否开启接单
          initOrderStatus: orderStatus,
          // 备注
          onRemarkProductDesk: (uuid, remark) => OrderRemarkProductAPI().remarkProductDesk(
            RequestRemarkProduct(
              saleBillUuid: saleBillUuid,
              saleOrderUuid: saleOrderUuid,
              orderProductUuid: uuid,
              remark: remark,
            ),
            options: ExtraRequestOptions(
              showFailToast: true,
              showSuccessToast: true,
            ),
          ),
          // 送厨
          onSendKitchen: () async {
            final res = await OrderOperation(
              saleBillUuid: saleBillUuid,
              saleOrderUuid: saleOrderUuid,
            ).sendKitchen(
              fetchOrderCooking: OrderCookingAPI().cookingDesk,
            );
            if (res) {
              onNumChangeCallback?.call();
            }
            return res;
          },
          // 改变数量
          onNumChange: (detail) async {
            final res = await OrderAddProductAPI().numChangeDesk(
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
              onNumChangeCallback?.call();
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
          onUnsentKitchenList: () => UnsentKitchenAPI().getUnsentKitchenList(
            saleBillUuid,
            options: ExtraRequestOptions(
              showFailToast: true,
            ),
          ),
        );
    }
  }

  late AnimationController animationController;

  @override
  void onInit() {
    super.onInit();
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 200),
    );
  }

  void openDrawer() {
    isDrawerOpen.value = true;
    animationController.forward();
  }

  @override
  void onClose() {
    animationController.dispose();
    super.onClose();
  }

  static void closeDrawer() {
    if (!Get.isRegistered<CustomDrawerController>()) return;
    final controller = Get.find<CustomDrawerController>();
    controller.scaffoldKey.currentState?.closeEndDrawer();

    controller.animationController.reverse().then((_) {
      controller.isDrawerOpen.value = false;
    });
  }
}

// Package imports:
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pos/api/desk/desk_api.dart';
import 'package:pos/components/data/data.dart';
import 'package:pos/components/goods_cart/action/view/drawer/drawer_pick_order.dart';
import 'package:pos/components/handover/drawer_handover.dart';
import 'package:pos/components/order/components/order_details_drawer.dart';
import 'package:pos/components/order/components/top_up_details_drawer.dart';
import 'package:ttpos_model/base/request/meta.dart';
import 'package:ttpos_model/desk/response/item/item.dart';
import 'package:ttpos_ui/components/checkout/views/drawer.dart';
import 'package:ttpos_ui/components/member/view/recharge/drawer.dart';
import 'package:ttpos_ui/components/tt_order_action/drawer/desk_select_uuid/desk_select_uuid_view.dart';

class CustomDrawerController extends GetxController {
  late GlobalKey<ScaffoldState> scaffoldKey;
  final RxString _currentDrawer = ''.obs;

  String get currentDrawer => _currentDrawer.value;

  void setCurrentDrawer(String drawer) {
    _currentDrawer.value = drawer;
  }

  // 添加参数类型定义
  final Rx<Map<String, dynamic>> _drawerParams = Rx<Map<String, dynamic>>({});
  Map<String, dynamic> get drawerParams => _drawerParams.value;

  void openEndDrawer(
    String drawerName, [
    Map<String, dynamic>? params,
  ]) {
    _currentDrawer.value = drawerName;
    _drawerParams.value = params ?? {};
    scaffoldKey.currentState?.openEndDrawer();
  }

  Widget getDrawerView() {
    switch (currentDrawer) {
      case 'data':
        return DataAnalysisDrawer();
      case 'memberRecharge':
        return DrawerMemberRecharge(
          rechargeOrder: drawerParams['rechargeOrder'],
          onComplete: drawerParams['onRechargeComplete'],
          onGetRechargeOrder: drawerParams['onGetRechargeOrder'],
          //
          onCreateRechargeOrder: drawerParams['onCreateRechargeOrder'],
          onConfirmRechargeOrder: drawerParams['onConfirmRechargeOrder'],
          onCreatePaymentOrder: drawerParams['onCreatePaymentOrder'],
          onCancelPaymentOrder: drawerParams['onCancelPaymentOrder'],
          //
          onGetPaymentMethod: drawerParams['onGetPaymentMethod'],
          onSearchMember: drawerParams['onSearchMember'],
          onGetMember: drawerParams['onGetMember'],
          onRechargeReceipt: drawerParams['onRechargeReceipt'],
          onGetPaymentQrcode: drawerParams['onGetPaymentQrcode'],
          onOpenCashBox: drawerParams['onOpenCashBox'],
        );
      case 'handover':
        return const DrawerHandover();
      case 'checkout':
        return DrawerCheckout(
          saleBillUuid: drawerParams['saleBillUuid'],
          saleOrderUuid: drawerParams['saleOrderUuid'],
          onComplete: drawerParams['onCheckOutComplete'],
          onRefreshCart: drawerParams['onRefreshCart'],
          onGetPaymentOrder: drawerParams['onGetPaymentOrder'],
          onCreatePaymentOrder: drawerParams['onCreatePaymentOrder'],
          onCancelPaymentOrder: drawerParams['onCancelPaymentOrder'],
          onFinishPaymentOrder: drawerParams['onFinishPaymentOrder'],
          onGetMemberDiscount: drawerParams['onGetMemberDiscount'],
          onUseMemberDiscount: drawerParams['onUseMemberDiscount'],
          onRemoveMemberDiscount: drawerParams['onRemoveMemberDiscount'],
          onZeroRulePaymentOrder: drawerParams['onZeroRulePaymentOrder'],
          onSearchMember: drawerParams['onSearchMember'],
          onPreCheckoutPrint: drawerParams['onPreCheckoutPrint'],
          onOrderSetLock: drawerParams['onOrderSetLock'],
          onOpenCashBox: drawerParams['onOpenCashBox'],
          onInvoicePrint: drawerParams['onInvoicePrint'],
          onGetPaymentQrcode: drawerParams['onGetPaymentQrcode'],
          isModuleAvailableMember: drawerParams['isModuleAvailableMember'],
        );
      case 'orderDetails':
        return OrderDetailsDrawer();
      case 'topUpDetails':
        return TopUpDetailsDrawer();
      case 'pickOrder':
        return DrawerPickOrder(
          pickOrderCallBack: drawerParams['pickOrderCallBack'] ?? (deskUuid) async {},
        );
      case 'turntable':
        return DeskSelectUuidView(
          title: '[@name] 转台'.trParams({
            'name': drawerParams['deskNo'] ?? '',
          }),
          multiple: false, // 单选
          onDeskList: ({MetaRequest? meta}) => DeskAPI().getDeskList(
            status: 0,
            meta: meta,
          ),
          onConfirm: (uuids, {Desk? desk}) async {
            if (drawerParams['confirmCallback'] != null) {
              return await drawerParams['confirmCallback']!(uuids[0]);
            } else {
              debugPrint('[@name] 转台 => 没有写: confirmCallback方法');
              return Future.value(false);
            }
          },
        );
      case 'parallelPlatform':
        return DeskSelectUuidView(
          title: '选择以下桌台合并到本桌'.tr,
          multiple: true, // 多选
          hideUuid: drawerParams['deskUuid'],
          onDeskList: ({MetaRequest? meta}) => DeskAPI().getDeskList(
            status: 2,
            isBuffet: 0,
            meta: meta,
          ),
          onConfirm: (uuids, {Desk? desk}) async {
            if (drawerParams['confirmCallback'] != null) {
              return await drawerParams['confirmCallback']!(uuids);
            } else {
              debugPrint('选择以下桌台合并到本桌 => 没有写: confirmCallback方法');
              return Future.value(false);
            }
          },
        );
      case 'transferDishes':
        return DeskSelectUuidView(
          title: '转菜，请选择要转入的桌台'.tr,
          multiple: false, // 单选
          hideUuid: drawerParams['deskUuid'],
          onDeskList: ({MetaRequest? meta}) => DeskAPI().getDeskList(
            status: 2,
            meta: meta,
          ),
          onConfirm: (uuids, {Desk? desk}) async {
            if (drawerParams['confirmCallback'] != null) {
              return await drawerParams['confirmCallback']!(uuids[0]);
            } else {
              debugPrint('转菜，请选择要转入的桌台 => 没有写: confirmCallback方法');
              return Future.value(false);
            }
          },
        );
      default:
        return const SizedBox.shrink();
    }
  }

  @override
  void onClose() {
    scaffoldKey.currentState?.closeEndDrawer();

    _currentDrawer.value = '';
    _drawerParams.value = {};

    super.onClose();
  }

  static void closeDrawer() {
    if (!Get.isRegistered<CustomDrawerController>()) return;

    final controller = Get.find<CustomDrawerController>();
    controller.scaffoldKey.currentState?.closeEndDrawer();

    controller.setCurrentDrawer('');
    controller._drawerParams.value = {};
  }
}

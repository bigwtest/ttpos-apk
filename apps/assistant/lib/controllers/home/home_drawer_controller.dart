import 'package:assistant/api/auth/auth_api.dart';
import 'package:assistant/api/desk/desk_api.dart';
import 'package:assistant/api/order/add_product_api.dart';
import 'package:assistant/api/order/cooking_api.dart';
import 'package:assistant/api/order/delete_product_api.dart';
import 'package:assistant/api/order/desk_change.dart';
import 'package:assistant/api/order/desk_merge.dart';
import 'package:assistant/api/order/free_or_gift_reason.dart';
import 'package:assistant/api/order/gift_cancel_product_api.dart';
import 'package:assistant/api/order/gift_product_api.dart';
import 'package:assistant/api/order/price_product_api.dart';
import 'package:assistant/api/order/product_change_desk.dart';
import 'package:assistant/api/order/remark_product_api.dart';
import 'package:assistant/api/order/return_reason.dart';
import 'package:assistant/api/order/returning_cancel_product_api.dart';
import 'package:assistant/api/order/returning_product_api.dart';
import 'package:assistant/api/order/sent_kitchen_api.dart';
import 'package:assistant/api/order/unsent_kitchen_api.dart';
import 'package:assistant/controllers/base/main_controller.dart';
import 'package:assistant/pages/desks/controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ttpos_logger/logger.dart';
import 'package:ttpos_model/base/request/meta.dart';
import 'package:ttpos_model/base/request/options.dart';
import 'package:ttpos_model/desk/response/item/item.dart';
import 'package:ttpos_model/order/request/change_desk.dart';
import 'package:ttpos_model/order/request/merge_desk.dart';
import 'package:ttpos_model/order/request/num_change.dart';
import 'package:ttpos_model/order/request/product_change_desk.dart';
import 'package:ttpos_ui/components/checkout/views/drawer.dart';
import 'package:ttpos_ui/components/common/dialog/manager.dart';
import 'package:ttpos_ui/components/desks/models/open.dart';
import 'package:ttpos_ui/components/tablet_cart_order/controllers/order_operation.dart';
import 'package:ttpos_ui/components/tablet_cart_order/views/order_view.dart';
import 'package:ttpos_ui/components/tt_order_action/drawer/desk_select_uuid/desk_select_uuid_controller.dart';
import 'package:ttpos_ui/components/tt_order_action/drawer/desk_select_uuid/desk_select_uuid_view.dart';
import 'package:ttpos_ui/controllers/font_size_controller.dart';

enum HomeDrawerType {
  cartListDrawer, // 订单列表抽屉
  mergerListDrawer, // 并台列表抽屉
  turntableListDrawer, // 转台列表抽屉
  transferDishes, // 转菜
  checkoutDrawer, // 结账抽屉
}

enum DrawerType {
  none,
  deskChange,
  deskMerge,
}

class HomeDrawerController extends GetxController {
  late GlobalKey<ScaffoldState> scaffoldKey;

  //
  final Log _logger = Log(appName: 'HomeDrawerController');
  Logger get logger => _logger.logger;

  final baseInfoController = Get.find<BaseInfoController>();

  // 打开那个抽屉
  final Rx<HomeDrawerType> _currentDrawer = HomeDrawerType.cartListDrawer.obs;
  HomeDrawerType get currentDrawer => _currentDrawer.value;
  set currentDrawer(HomeDrawerType value) {
    if (_currentDrawer.value == value) return;
    _currentDrawer.value = value;
  }

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
        final int deskId = drawerParams['deskId'] is int ? drawerParams['deskId'] : 0;
        final bool isTablet = drawerParams['isTablet'] is bool ? drawerParams['isTablet'] : false;
        final bool isSplitOrder = drawerParams['isSplitOrder'] is bool ? drawerParams['isSplitOrder'] : false;
        final refreshDeskPing = drawerParams['refreshDeskPing'] is Function ? drawerParams['refreshDeskPing'] : null;
        final onConfirmPayment = drawerParams['onConfirmPayment'] is Function ? drawerParams['onConfirmPayment'] : null;
        return Drawer(
          width: 600.0.scaleWidth,
          child: TabletCartOrderView(
            hasPrice: baseInfoController.hasPrice, // 价格权限
            hasReturnDish: baseInfoController.hasReturnDish, // 退菜权限
            hasRemark: baseInfoController.hasRemark, // 备注权限
            hasTransferDish: baseInfoController.hasTransferDish, // 转菜权限
            hasGiftDish: baseInfoController.hasGiftDish, // 赠菜权限
            hasSettle: baseInfoController.hasSettle, // 结账权限
            isShowStatus: baseInfoController.isOpen, // 是否显示已制作
            isSplitOrder: isSplitOrder,
            isTablet: isTablet,
            initOrderStatus: initOrderStatus,
            saleBillUuid: saleBillUuid,
            saleOrderUuid: saleOrderUuid,
            //
            onPassword: AuthAPI().verifyAdvancedPassword,
            onReturningReasons: ReturnReasonAPI().getReturnReasons,
            onGiftReasons: FreeOrGiftReasonAPI().getFreeOrGiftReasons,
            // 备注
            onRemarkProductDesk: OrderRemarkProductAPI().remarkProductDesk,
            // 删除
            onDeleteProductDesk: (req, {options}) async {
              final res = await OrderDeleteProductAPI().deleteProductDesk(req, options: options);
              if (res) {
                refreshDeskPing?.call();
              }
              return res;
            },
            // 改价
            onPriceProductDesk: (req, {options}) async {
              final res = await OrderPriceProductAPI().priceProductDesk(req, options: options);
              if (res) {
                refreshDeskPing?.call();
              }
              return res;
            },
            // 赠菜
            onGiftProductDesk: (req, {options}) async {
              final res = await OrderGiftProductApi().giftProductDesk(req, options: options);
              if (res) {
                refreshDeskPing?.call();
              }
              return res;
            },
            onCancelGiftDishes: (req, {options}) async {
              final res = await GiftCancelProductApi().giftCancelProductDesk(req, options: options);
              if (res) {
                refreshDeskPing?.call();
              }
              return res;
            },
            // 退菜
            onReturningProductDesk: (req, {options}) async {
              final res = await ReturningProductApi().returningProductDesk(req, options: options);
              if (res) {
                refreshDeskPing?.call();
              }
              return res;
            },
            onCancelReturningDishes: (req, {options}) async {
              final res = await ReturningCancelProductApi().returningCancelProductDesk(req, options: options);
              if (res) {
                refreshDeskPing?.call();
              }
              return res;
            },
            // 转菜
            onChangeProductDesk: (detail) {
              openHomeDrawer(
                HomeDrawerType.transferDishes,
                params: RequestChangeDeskProduct(
                  saleOrderProductUuid: detail.uuid,
                  saleBillUuid: saleBillUuid,
                  saleOrderUuid: saleOrderUuid,
                  deskUuid: deskId,
                ).toJson(),
              );
            },
            // 确认下单
            onSendKitchen: () async {
              // 校验密码弹窗
              String password = '';
              if (baseInfoController.isCheckOrder) {
                // 先校验
                final res = await OrderOperation(
                  saleBillUuid: saleBillUuid,
                  saleOrderUuid: saleOrderUuid,
                ).sendKitchen(
                  isCheckCooking: true,
                  fetchOrderCooking: OrderCookingAPI().cookingDesk,
                );
                if (!res) return false;
                // 弹窗输入密码
                password = await DialogManager.showPasswordDialog(
                  onConfirm: AuthAPI().verifyAdvancedPassword,
                );
                if (password.isEmpty) return false;
              }
              // 送厨
              final res = await OrderOperation(
                saleBillUuid: saleBillUuid,
                saleOrderUuid: saleOrderUuid,
              ).sendKitchen(
                ignoreMust: baseInfoController.isCheckOrder,
                isCheckCooking: false,
                password: password,
                fetchOrderCooking: OrderCookingAPI().cookingDesk,
              );
              if (res) {
                refreshDeskPing?.call();
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
            onUnsentKitchenList: () => UnsentKitchenAPI().getUnsentKitchenList(
              saleBillUuid,
              options: ExtraRequestOptions(
                showFailToast: true,
              ),
            ),
            onConfirmPayment: () {
              onConfirmPayment?.call();
            },
          ),
        );
      case HomeDrawerType.mergerListDrawer:
        final deskUuid = drawerParams['deskUuid'] is int ? drawerParams['deskUuid'] : null;
        final saleBillUuid = drawerParams['saleBillUuid'] is int ? drawerParams['saleBillUuid'] : null;
        return DeskSelectUuidView(
          title: '选择以下桌台合并到本桌'.tr,
          multiple: true, // 多选
          hideUuid: deskUuid,
          onDeskList: ({MetaRequest? meta}) => DeskAPI().getDeskList(
            status: 2,
            isBuffet: 0,
            meta: meta,
          ),
          onConfirm: (uuids, {Desk? desk}) async {
            final (mergeDesk, mergeDeskCheckList, message) = await DeskMergeAPI().mergeDesk(
              RequestMergeDesk(
                saleBillUuid: saleBillUuid,
                deskUuids: uuids,
              ),
              options: ExtraRequestOptions(
                showFailToast: true,
                showSuccessToast: true,
              ),
            );
            if (mergeDesk != null) {
              return true;
            }
            return false;
          },
        );
      case HomeDrawerType.turntableListDrawer:
        final deskNo = drawerParams['deskNo'] is String ? drawerParams['deskNo'] : null;
        final saleBillUuid = drawerParams['saleBillUuid'] is int ? drawerParams['saleBillUuid'] : null;
        final saleOrderUuid = drawerParams['saleOrderUuid'] is int ? drawerParams['saleOrderUuid'] : null;
        return DeskSelectUuidView(
          title: '[@name] 转台'.trParams({
            'name': deskNo,
          }),
          multiple: false, // 单选
          onDeskList: ({MetaRequest? meta}) => DeskAPI().getDeskList(
            status: 0,
            meta: meta,
          ),
          onConfirm: (uuids, {Desk? desk}) async {
            final res = await DeskChangeAPI().changeDesk(
              RequestChangeDesk(
                saleBillUuid: saleBillUuid,
                saleOrderUuid: saleOrderUuid,
                deskUuid: uuids[0],
              ),
              options: ExtraRequestOptions(
                showFailToast: true,
                showSuccessToast: true,
              ),
            );
            if (res) {
              DesksMainController.toDeskOrderView(
                DeskStorageModel(
                  deskId: uuids[0],
                  saleBillUuid: saleBillUuid,
                  saleOrderUuid: saleOrderUuid,
                ),
              );
            }
            //
            return res;
          },
        );
      case HomeDrawerType.checkoutDrawer:
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
          onInvoicePrint: drawerParams['onInvoicePrint'],
          onGetPaymentQrcode: drawerParams['onGetPaymentQrcode'],
        );
      case HomeDrawerType.transferDishes:
        final detail = RequestChangeDeskProduct.fromJson(drawerParams);
        return DeskSelectUuidView(
          title: '转菜，请选择要转入的桌台'.tr,
          multiple: false, // 单选
          hideUuid: detail.deskUuid,
          onDeskList: ({MetaRequest? meta}) => DeskAPI().getDeskList(
            status: 1,
            meta: meta,
          ),
          onConfirm: (uuids, {Desk? desk}) async {
            detail.deskUuid = uuids[0];
            final res = await OrderProductChangeDeskAPI().changeProductDesk(
              detail,
              options: ExtraRequestOptions(
                showFailToast: true,
                showSuccessToast: true,
              ),
            );
            return res;
          },
        );
    }
  }

  // 打开某个抽屉
  void openHomeDrawer(
    HomeDrawerType type, {
    Map<String, dynamic>? params,
  }) {
    // 先关闭当前抽屉
    scaffoldKey.currentState?.closeEndDrawer();

    // 重置抽屉状态
    _currentDrawer.value = HomeDrawerType.cartListDrawer;
    _drawerParams.value = {};

    // 等待状态更新
    Future.delayed(Duration.zero, () {
      // 设置新的抽屉类型和参数
      currentDrawer = type;
      drawerParams = params ?? {};

      // 打开抽屉
      scaffoldKey.currentState?.openEndDrawer();
    });
  }

  @override
  void onClose() {
    scaffoldKey.currentState?.closeEndDrawer();

    // 重置所有状态
    _currentDrawer.value = HomeDrawerType.cartListDrawer;
    _drawerParams.value = {};

    super.onClose();
  }

  static Rx<DrawerType> drawerType = DrawerType.none.obs;

  static Future<void> handleDeskChange({
    required int deskUuid,
    required int saleBillUuid,
    required int saleOrderUuid,
    required String deskNo,
  }) async {
    // 重置抽屉状态
    drawerType.value = DrawerType.none;
    await Future.delayed(Duration.zero); // 确保状态更新

    drawerType.value = DrawerType.deskChange;

    // 关闭可能存在的底部弹窗
    if (Get.isBottomSheetOpen ?? false) {
      Get.back();
    }

    // 等待弹窗完全关闭
    await Future.delayed(const Duration(milliseconds: 100));

    // 删除可能存在的旧控制器
    final tag = 'desk_change_${DateTime.now().millisecondsSinceEpoch}';
    if (Get.isRegistered<DeskSelectUuidController>(tag: tag)) {
      Get.delete<DeskSelectUuidController>(tag: tag);
    }

    await Get.bottomSheet(
      DeskSelectUuidView(
        key: Key(tag),
        title: '[@name] 转台'.trParams({
          'name': deskNo,
        }),
        multiple: false, // 单选
        onDeskList: ({MetaRequest? meta}) => DeskAPI().getDeskList(
          status: 0,
          meta: meta,
        ),
        onConfirm: (uuids, {Desk? desk}) async {
          final res = await DeskChangeAPI().changeDesk(
            RequestChangeDesk(
              saleBillUuid: saleBillUuid,
              saleOrderUuid: saleOrderUuid,
              deskUuid: uuids[0],
            ),
            options: ExtraRequestOptions(
              showFailToast: true,
              showSuccessToast: true,
            ),
          );
          if (res) {
            DesksMainController.toDeskOrderView(
              DeskStorageModel(
                deskId: uuids[0],
                saleBillUuid: saleBillUuid,
                saleOrderUuid: saleOrderUuid,
              ),
            );
          }
          return res;
        },
      ),
      isDismissible: true,
      enableDrag: true,
      isScrollControlled: true,
    );
  }

  static void closeDrawer() {
    if (!Get.isRegistered<HomeDrawerController>()) return;

    final controller = Get.find<HomeDrawerController>();
    controller.scaffoldKey.currentState?.closeEndDrawer();
  }

  static Future<void> handleDeskMerge({
    required int deskUuid,
    required int saleBillUuid,
    required int saleOrderUuid,
    required String deskNo,
  }) async {
    // 重置抽屉状态
    drawerType.value = DrawerType.none;
    await Future.delayed(Duration.zero); // 确保状态更新

    drawerType.value = DrawerType.deskMerge;

    // 关闭可能存在的底部弹窗
    if (Get.isBottomSheetOpen ?? false) {
      Get.back();
    }

    // 等待弹窗完全关闭
    await Future.delayed(const Duration(milliseconds: 100));

    // 删除可能存在的旧控制器
    final tag = 'desk_merge_${DateTime.now().millisecondsSinceEpoch}';
    if (Get.isRegistered<DeskSelectUuidController>(tag: tag)) {
      Get.delete<DeskSelectUuidController>(tag: tag);
    }

    await Get.bottomSheet(
      DeskSelectUuidView(
        key: Key(tag),
        title: '选择以下桌台合并到本桌'.tr,
        multiple: true, // 多选
        hideUuid: deskUuid,
        onDeskList: ({MetaRequest? meta}) => DeskAPI().getDeskList(
          status: 2,
          isBuffet: 0,
          meta: meta,
        ),
        onConfirm: (uuids, {Desk? desk}) async {
          final (mergeDesk, mergeDeskCheckList, message) = await DeskMergeAPI().mergeDesk(
            RequestMergeDesk(
              saleBillUuid: saleBillUuid,
              deskUuids: uuids,
            ),
            options: ExtraRequestOptions(
              showFailToast: true,
              showSuccessToast: true,
            ),
          );
          if (mergeDesk != null) {
            return true;
          }
          return false;
        },
      ),
      isDismissible: true,
      enableDrag: true,
      isScrollControlled: true,
    );
  }
}

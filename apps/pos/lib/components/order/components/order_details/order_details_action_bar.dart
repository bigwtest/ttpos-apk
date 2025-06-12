// Flutter imports:
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pos/controllers/base/main_controller.dart';
import 'package:pos/controllers/order_list/order_delete_controller.dart';
import 'package:pos/controllers/order_list/order_dialog_controller.dart';
import 'package:pos/controllers/order_list/order_print_controller.dart';
import 'package:pos/controllers/order_list/order_refund_controller.dart';
import 'package:pos/model/response/order_list_details/extra.dart';
// Package imports:
import 'package:ttpos_ui/components/tt_button/tt_button.dart';
import 'package:ttpos_ui/controllers/font_size_controller.dart';
import 'package:ttpos_ui/controllers/printer_setting_controller.dart';

class DrawerActionBar extends StatelessWidget {
  final Extra extra;
  final int saleBillUuid;
  final int saleOrderUuid;
  final bool isMain;
  final bool isNewOrder;
  DrawerActionBar({
    super.key,
    required this.extra,
    required this.saleBillUuid,
    required this.saleOrderUuid,
    required this.isMain,
    required this.isNewOrder,
  });

  final BaseInfoController baseInfoController = Get.find<BaseInfoController>();
  final PrinterSettingController printerSettingController = Get.find<PrinterSettingController>();
  OrderPrintController get orderPrintController {
    if (Get.isRegistered<OrderPrintController>()) {
      return Get.find<OrderPrintController>();
    }
    return Get.put(OrderPrintController());
  }

  // 获取控制器实例 - 复杂点，但生命力更强
  OrderDeleteController get orderDeleteController {
    if (Get.isRegistered<OrderDeleteController>()) {
      return Get.find<OrderDeleteController>();
    }
    return Get.put(OrderDeleteController());
  }

  OrderRefundController get orderRefundController {
    if (Get.isRegistered<OrderRefundController>()) {
      return Get.find<OrderRefundController>();
    }
    return Get.put(OrderRefundController());
  }

  final OrderDialogController dialogController = Get.find<OrderDialogController>();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 16,
        bottom: 26,
        left: 26,
        right: 26,
      ),
      child: SizedBox(
        width: double.infinity,
        height: 40.0.scaleHeight,
        child: Flex(
          direction: Axis.horizontal,
          spacing: 10,
          children: [
            Expanded(
              flex: 1,
              child: TtButton(
                text: '退出'.tr,
                fontWeight: FontWeight.w600,
                buttonType: ActionButtonType.outline,
                onTap: () {
                  Get.back();
                },
              ),
            ),
            if (extra.isCellDelete && baseInfoController.hasPermission(PermissionKey.orderStoreOrderDelete))
              Expanded(
                flex: 1,
                child: TtButton(
                  text: '删除'.tr,
                  fontWeight: FontWeight.w600,
                  buttonType: ActionButtonType.error,
                  onTap: () {
                    orderDeleteController.delete(saleBillUuid, saleOrderUuid, isMain, isNewOrder, nowType: 'detail');
                  },
                ),
              ),
            if (extra.isCellRefund && baseInfoController.hasPermission(PermissionKey.orderStoreOrderRefund))
              Expanded(
                flex: 1,
                child: TtButton(
                  text: '退款'.tr,
                  buttonType: ActionButtonType.primary,
                  fontWeight: FontWeight.w600,
                  onTap: () {
                    orderRefundController.refund(saleBillUuid, saleOrderUuid, 'detail', isNewOrder);
                  },
                ),
              ),
            if (extra.isCellPrint && baseInfoController.hasPermission(PermissionKey.orderStoreOrderPrint))
              Expanded(
                flex: 1,
                child: TtButton(
                  text: '打印'.tr,
                  buttonType: ActionButtonType.primary,
                  fontWeight: FontWeight.w600,
                  onTap: () {
                    orderPrintController.printTicket(saleBillUuid, saleOrderUuid, isNewOrder);
                  },
                ),
              ),
          ],
        ),
      ),
    );
  }
}

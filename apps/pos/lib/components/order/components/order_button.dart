import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pos/controllers/base/main_controller.dart';
import 'package:pos/controllers/common/drawer_controller.dart';
import 'package:pos/controllers/order_list/order_cancel_controller.dart';
import 'package:pos/controllers/order_list/order_delete_controller.dart';
import 'package:pos/controllers/order_list/order_details_controller.dart';
import 'package:pos/controllers/order_list/order_dialog_controller.dart';
import 'package:pos/controllers/order_list/order_invoice_controller.dart';
import 'package:pos/controllers/order_list/order_print_controller.dart';
import 'package:pos/controllers/order_list/order_refund_controller.dart';
import 'package:pos/controllers/order_list/order_reverse_settle_controller.dart';
import 'package:pos/model/response/order_list/extra.dart';
import 'package:ttpos_ui/components/tt_button/tt_button.dart';
import 'package:ttpos_ui/controllers/config_controller.dart';
import 'package:ttpos_ui/controllers/font_size_controller.dart';
import 'package:ttpos_ui/controllers/printer_setting_controller.dart';
import 'package:ttpos_ui/theme/theme.dart';

class OrderButton extends StatelessWidget {
  final Extra extra;
  final int saleBillUuid;
  final int saleOrderUuid;
  final bool? isMain;
  final bool isNewOrder;
  OrderButton({
    super.key,
    required this.extra,
    required this.saleBillUuid,
    required this.saleOrderUuid,
    this.isMain = false,
    required this.isNewOrder,
  });
  final CustomDrawerController drawerController = Get.find<CustomDrawerController>();
  final OrderDialogController dialogController = Get.find<OrderDialogController>();
  // 获取控制器实例 - 复杂点，但生命力更强
  OrderDetailsController get orderDetailsController {
    if (Get.isRegistered<OrderDetailsController>()) {
      return Get.find<OrderDetailsController>();
    }
    return Get.put(OrderDetailsController());
  }

  // 获取控制器实例 - 复杂点，但生命力更强
  OrderCancelController get orderCancelController {
    if (Get.isRegistered<OrderCancelController>()) {
      return Get.find<OrderCancelController>();
    }
    return Get.put(OrderCancelController());
  }

  // 获取控制器实例 - 复杂点，但生命力更强
  OrderDeleteController get orderDeleteController {
    if (Get.isRegistered<OrderDeleteController>()) {
      return Get.find<OrderDeleteController>();
    }
    return Get.put(OrderDeleteController());
  }

  // 获取控制器实例 - 复杂点，但生命力更强
  OrderRefundController get orderRefundController {
    if (Get.isRegistered<OrderRefundController>()) {
      return Get.find<OrderRefundController>();
    }
    return Get.put(OrderRefundController());
  }

  // 获取控制器实例 - 复杂点，但生命力更强
  OrderReverseSettleController get orderReverseSettleController {
    if (Get.isRegistered<OrderReverseSettleController>()) {
      return Get.find<OrderReverseSettleController>();
    }
    return Get.put(OrderReverseSettleController());
  }

  // 获取控制器实例 - 复杂点，但生命力更强
  OrderPrintController get orderPrintController {
    if (Get.isRegistered<OrderPrintController>()) {
      return Get.find<OrderPrintController>();
    }
    return Get.put(OrderPrintController());
  }

  // 获取控制器实例 - 复杂点，但生命力更强
  OrderInvoiceController get orderInvoiceController {
    if (Get.isRegistered<OrderInvoiceController>()) {
      return Get.find<OrderInvoiceController>();
    }
    return Get.put(OrderInvoiceController());
  }

  final ConfigController configController = Get.find<ConfigController>();
  final BaseInfoController baseInfoController = Get.find<BaseInfoController>();
  final PrinterSettingController printerSettingController = Get.find<PrinterSettingController>();
  @override
  Widget build(BuildContext context) {
    var buttonLength = 1;
    //反结账按钮判断
    if (extra.isCellReverseSettle && baseInfoController.hasPermission(PermissionKey.orderStoreOrderReverseSettle)) {
      buttonLength++;
    }
    //退款按钮判断
    if (extra.isCellRefund && baseInfoController.hasPermission(PermissionKey.orderStoreOrderRefund)) {
      buttonLength++;
    }
    //取消按钮判断
    if (extra.isCellCancel && baseInfoController.hasPermission(PermissionKey.orderStoreOrderCancel)) {
      buttonLength++;
    }
    //  删除按钮
    if (extra.isCellDelete && baseInfoController.hasPermission(PermissionKey.orderStoreOrderDelete)) {
      buttonLength++;
    }
    //打印小票按钮判断
    if (extra.isCellPrint && baseInfoController.hasPermission(PermissionKey.orderStoreOrderPrint)) {
      buttonLength++;
    }
    // 发票按钮判断
    if (extra.isCellInvoice && baseInfoController.hasPermission(PermissionKey.orderStoreOrderPrintInvoice)) {
      buttonLength++;
    }
    return Row(
      spacing: 14,
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        if (baseInfoController.hasPermission(PermissionKey.orderStoreOrderDetail))
          TtButton(
            text: '详情'.tr,
            buttonType: ActionButtonType.secondary,
            sizeType: SizeButtonType.small,
            onTap: () {
              _details();
            },
          ),
        if (extra.isCellReverseSettle && baseInfoController.hasPermission(PermissionKey.orderStoreOrderReverseSettle))
          TtButton(
            text: '反结账'.tr,
            buttonType: ActionButtonType.secondary,
            sizeType: SizeButtonType.small,
            onTap: () {
              _reverseSettle();
            },
          ),
        if (extra.isCellRefund &&
            baseInfoController.hasPermission(PermissionKey.orderStoreOrderRefund) &&
            buttonLength < 5)
          TtButton(
            text: '退款'.tr,
            buttonType: ActionButtonType.secondary,
            sizeType: SizeButtonType.small,
            onTap: () {
              _refund();
            },
          ),
        if (extra.isCellDelete &&
            baseInfoController.hasPermission(PermissionKey.orderStoreOrderDelete) &&
            buttonLength < 4)
          TtButton(
            text: '删除'.tr,
            buttonType: ActionButtonType.error,
            sizeType: SizeButtonType.small,
            onTap: () {
              _delete();
            },
          ),
        if (extra.isCellCancel &&
            baseInfoController.hasPermission(PermissionKey.orderStoreOrderCancel) &&
            buttonLength < 4)
          TtButton(
            text: '取消'.tr,
            buttonType: ActionButtonType.error,
            sizeType: SizeButtonType.small,
            onTap: () {
              _cancel();
            },
          ),
        if (extra.isCellPrint &&
            baseInfoController.hasPermission(PermissionKey.orderStoreOrderPrint) &&
            buttonLength < 4)
          TtButton(
            text: '打印小票'.tr,
            buttonType: ActionButtonType.secondary,
            sizeType: SizeButtonType.small,
            onTap: () {
              _printTicket();
            },
          ),
        if (extra.isCellInvoice &&
            baseInfoController.hasPermission(PermissionKey.orderStoreOrderPrintInvoice) &&
            buttonLength < 4)
          TtButton(
            text: '发票'.tr,
            buttonType: ActionButtonType.secondary,
            sizeType: SizeButtonType.small,
            onTap: () {
              _invoicePrint();
            },
          ),
        if (buttonLength > 3)
          PopupMenuButton<String>(
            offset: Offset(0, 36.0.scaleHeight),
            color: Colors.white,
            child: Container(
              height: 36.0.scaleHeight,
              padding: EdgeInsets.symmetric(horizontal: 14.0),
              decoration: BoxDecoration(
                color: CustomTheme.primaryColor.shade300,
                borderRadius: BorderRadius.circular(4.0),
              ),
              child: Center(
                child: Text(
                  '更多'.tr,
                  style: TextStyle(
                    fontSize: 12.0,
                    color: CustomTheme.secondaryColor,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            onSelected: (item) {
              switch (item) {
                case 'refund':
                  _refund();
                  break;
                case 'print':
                  _printTicket();
                  break;
                case 'invoice':
                  _invoicePrint();
                  break;
              }
            },
            itemBuilder: (context) {
              return <PopupMenuEntry<String>>[
                if (extra.isCellRefund &&
                    baseInfoController.hasPermission(PermissionKey.orderStoreOrderRefund) &&
                    buttonLength > 4)
                  PopupMenuItem<String>(
                    value: 'refund',
                    child: Text('退款'.tr),
                  ),
                if (extra.isCellPrint && baseInfoController.hasPermission(PermissionKey.orderStoreOrderPrint))
                  PopupMenuItem<String>(
                    value: 'print',
                    child: Text('打印小票'.tr),
                  ),
                if (extra.isCellInvoice && baseInfoController.hasPermission(PermissionKey.orderStoreOrderPrintInvoice))
                  PopupMenuItem<String>(
                    value: 'invoice',
                    child: Text('发票'.tr),
                  ),
              ];
            },
          ),
      ],
    );
  }

  void _refund() {
    orderRefundController.refund(saleBillUuid, saleOrderUuid, 'table', isNewOrder);
  }

  void _printTicket() {
    orderPrintController.printTicket(saleBillUuid, saleOrderUuid, isNewOrder);
  }

  void _invoicePrint() {
    // 发票打印
    orderInvoiceController.invoicePrint(saleBillUuid, saleOrderUuid, isNewOrder);
  }

  void _cancel() {
    orderCancelController.cancel(saleBillUuid, isNewOrder);
  }

  void _delete() {
    orderDeleteController.delete(saleBillUuid, saleOrderUuid, isMain ?? false, isNewOrder, nowType: 'table');
  }

  void _reverseSettle() {
    orderReverseSettleController.reverseSettle(saleBillUuid);
  }

  void _details() {
    orderDetailsController.details(saleBillUuid, saleOrderUuid, isMain ?? false, isNewOrder);
  }
}

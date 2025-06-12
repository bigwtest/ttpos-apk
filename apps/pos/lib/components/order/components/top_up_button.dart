import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pos/controllers/base/main_controller.dart';
import 'package:pos/controllers/common/drawer_controller.dart';
import 'package:pos/controllers/top_up_list/top_up_cancel_controller.dart';
import 'package:pos/controllers/top_up_list/top_up_details_controller.dart';
import 'package:pos/controllers/top_up_list/top_up_print_controller.dart';
import 'package:pos/controllers/top_up_list/top_up_refund_controller.dart';
import 'package:pos/controllers/top_up_list/top_up_reverse_controller.dart';
import 'package:pos/model/response/top_up_list/resp_recharge_order_item.dart';
import 'package:ttpos_ui/components/tt_button/tt_button.dart';
import 'package:ttpos_ui/controllers/font_size_controller.dart';
import 'package:ttpos_ui/theme/theme.dart';

class TopUpButton extends StatelessWidget {
  final RespRechargeOrderItem item;
  TopUpButton({
    super.key,
    required this.item,
  });
  final CustomDrawerController drawerController = Get.find<CustomDrawerController>();
  final BaseInfoController baseInfoController = Get.find<BaseInfoController>();

  // 获取控制器实例 - 复杂点，但生命力更强
  TopUpDetailsController get topUpDetailsController {
    if (Get.isRegistered<TopUpDetailsController>()) {
      return Get.find<TopUpDetailsController>();
    }
    return Get.put(TopUpDetailsController());
  }

  // 获取控制器实例 - 复杂点，但生命力更强
  TopUpRefundController get topUpRefundController {
    if (Get.isRegistered<TopUpRefundController>()) {
      return Get.find<TopUpRefundController>();
    }
    return Get.put(TopUpRefundController());
  }

  TopUpCancelController get topUpCancelController {
    if (Get.isRegistered<TopUpCancelController>()) {
      return Get.find<TopUpCancelController>();
    }
    return Get.put(TopUpCancelController());
  }

  TopUpReverseController get topUpReverseController {
    if (Get.isRegistered<TopUpReverseController>()) {
      return Get.find<TopUpReverseController>();
    }
    return Get.put(TopUpReverseController());
  }

  TopUpPrintController get topUpPrintController {
    if (Get.isRegistered<TopUpPrintController>()) {
      return Get.find<TopUpPrintController>();
    }
    return Get.put(TopUpPrintController());
  }

  @override
  Widget build(BuildContext context) {
    var buttonLength = 1;
    if (item.extra.isCellCancel && baseInfoController.hasPermission(PermissionKey.orderStoreOrderCancel)) {
      buttonLength++;
    }
    if (item.extra.isCellRefund && baseInfoController.hasPermission(PermissionKey.orderStoreOrderRefund)) {
      buttonLength++;
    }
    if (item.extra.isCellReverseSettle &&
        baseInfoController.hasPermission(PermissionKey.orderStoreOrderReverseSettle)) {
      buttonLength++;
    }
    if (baseInfoController.hasPermission(PermissionKey.orderStoreOrderPrint)) {
      buttonLength++;
    }
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      spacing: 14.0.scaleWidth,
      children: [
        TtButton(
          text: '详情'.tr,
          buttonType: ActionButtonType.secondary,
          sizeType: SizeButtonType.small,
          onTap: () {
            topUpDetailsController.uuid = item.uuid;
            topUpDetailsController.getTopUpDetails();
            drawerController.openEndDrawer('topUpDetails');
          },
        ),
        if (item.extra.isCellCancel && baseInfoController.hasPermission(PermissionKey.orderStoreOrderCancel))
          TtButton(
            text: '取消'.tr,
            buttonType: ActionButtonType.error,
            sizeType: SizeButtonType.small,
            onTap: () {
              _cancel();
            },
          ),
        if (item.extra.isCellReverseSettle &&
            baseInfoController.hasPermission(PermissionKey.orderStoreOrderReverseSettle))
          TtButton(
            text: '反结账'.tr,
            buttonType: ActionButtonType.secondary,
            sizeType: SizeButtonType.small,
            onTap: () {
              _reverse();
            },
          ),
        if (item.extra.isCellRefund &&
            baseInfoController.hasPermission(PermissionKey.orderStoreOrderRefund) &&
            buttonLength < 4)
          TtButton(
            text: '退款'.tr,
            buttonType: ActionButtonType.secondary,
            sizeType: SizeButtonType.small,
            onTap: () {
              _refund();
            },
          ),
        if (buttonLength < 4 && baseInfoController.hasPermission(PermissionKey.orderStoreOrderPrint))
          TtButton(
            text: '打印小票'.tr,
            buttonType: ActionButtonType.secondary,
            sizeType: SizeButtonType.small,
            onTap: () {
              _print();
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
                borderRadius: BorderRadius.circular(4),
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
            onSelected: (e) {
              switch (e) {
                case 'refund':
                  _refund();
                  break;
                case 'print':
                  _print();
                  break;
              }
            },
            itemBuilder: (context) {
              return <PopupMenuEntry<String>>[
                if (item.extra.isCellRefund &&
                    baseInfoController.hasPermission(PermissionKey.orderStoreOrderRefund) &&
                    buttonLength > 3)
                  PopupMenuItem<String>(
                    value: 'refund',
                    child: Text('退款'.tr),
                  ),
                if (baseInfoController.hasPermission(PermissionKey.orderStoreOrderPrint))
                  PopupMenuItem<String>(
                    value: 'print',
                    child: Text('打印小票'.tr),
                  ),
              ];
            },
          ),
      ],
    );
  }

  void _print() async {
    topUpPrintController.handlePrint(item.uuid);
  }

  void _reverse() {
    topUpReverseController.handleReverse(item);
  }

  void _refund() {
    topUpRefundController.handleRefund(item.uuid);
  }

  void _cancel() {
    topUpCancelController.handleCancel(item.uuid);
  }
}

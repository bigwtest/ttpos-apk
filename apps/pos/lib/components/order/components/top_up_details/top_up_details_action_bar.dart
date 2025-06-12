// Flutter imports:
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pos/controllers/base/main_controller.dart';
import 'package:pos/controllers/order_list/order_dialog_controller.dart';
import 'package:pos/controllers/top_up_list/top_up_print_controller.dart';
import 'package:pos/controllers/top_up_list/top_up_refund_controller.dart';
import 'package:pos/model/response/top_up_details/extra.dart';
// Package imports:
import 'package:ttpos_ui/components/tt_button/tt_button.dart';
import 'package:ttpos_ui/controllers/font_size_controller.dart';

class DrawerActionBar extends StatelessWidget {
  final Extra extra;
  final int uuid;
  DrawerActionBar({
    super.key,
    required this.extra,
    required this.uuid,
  });
  final BaseInfoController baseInfoController = Get.find<BaseInfoController>();

  // 获取控制器实例 - 复杂点，但生命力更强
  TopUpRefundController get topUpRefundController {
    if (Get.isRegistered<TopUpRefundController>()) {
      return Get.find<TopUpRefundController>();
    }
    return Get.put(TopUpRefundController());
  }

  TopUpPrintController get topUpPrintController {
    if (Get.isRegistered<TopUpPrintController>()) {
      return Get.find<TopUpPrintController>();
    }
    return Get.put(TopUpPrintController());
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
            if (extra.isCellRefund && baseInfoController.hasPermission(PermissionKey.orderStoreOrderRefund))
              Expanded(
                flex: 1,
                child: TtButton(
                  text: '退款'.tr,
                  fontWeight: FontWeight.w600,
                  buttonType: ActionButtonType.primary,
                  onTap: () {
                    topUpRefundController.handleRefund(uuid);
                  },
                ),
              ),
            Expanded(
              flex: 1,
              child: TtButton(
                text: '打印'.tr,
                fontWeight: FontWeight.w600,
                buttonType: ActionButtonType.primary,
                onTap: () {
                  topUpPrintController.handlePrint(uuid);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Flutter imports:
import 'package:flutter/material.dart';
// Package imports:
import 'package:get/get.dart';
// Project imports:

import 'package:pos/components/order/components/dialog/order_refund_dialog.dart';
import 'package:pos/components/order/components/dialog/order_reverse_checkout_dialog.dart';
import 'package:pos/components/order/components/dialog/qr_dialog.dart';
import 'package:pos/components/order/components/dialog/top_up_refund_dialog.dart';
import 'package:pos/components/order/components/dialog/top_up_reverse_checkout_dialog.dart';
import 'package:pos/controllers/order_list/order_refund_controller.dart';
import 'package:pos/controllers/order_list/order_reverse_settle_controller.dart';
import 'package:pos/controllers/order_list/qr_dialog_controller.dart';
import 'package:pos/controllers/top_up_list/top_up_refund_controller.dart';
import 'package:pos/controllers/top_up_list/top_up_reverse_controller.dart';
import 'package:pos/model/response/top_up_list/resp_recharge_order_item.dart';
import 'package:ttpos_ui/components/common/dialog/base.dart';

class OrderDialogController extends GetxController {
  void baseDialog(
    Widget child,
  ) {
    Get.dialog(
      DismissKeyboardDialog(
        child: child,
      ),
    );
  }

  void refundDialog() {
    Get.dialog(
      DismissKeyboardDialog(
        child: GetBuilder(
          init: OrderRefundController(),
          dispose: (_) => Get.delete<OrderRefundController>(),
          builder: (controller) {
            return OrderRefundDialog();
          },
        ),
      ),
    );
  }

  void topUpRefundDialog() {
    Get.dialog(
      DismissKeyboardDialog(
        child: GetBuilder(
          init: TopUpRefundController(),
          dispose: (_) => Get.delete<TopUpRefundController>(),
          builder: (controller) {
            return TopUpRefundDialog();
          },
        ),
      ),
    );
  }

  void orderReverseCheckoutDialog() {
    Get.dialog(
      DismissKeyboardDialog(
        child: GetBuilder(
          init: OrderReverseSettleController(),
          dispose: (_) => Get.delete<OrderReverseSettleController>(),
          builder: (controller) {
            return OrderReverseCheckoutDialog();
          },
        ),
      ),
    );
  }

  void topUpReverseCheckoutDialog({required RespRechargeOrderItem item}) {
    Get.dialog(
      DismissKeyboardDialog(
        child: GetBuilder(
          init: TopUpReverseController(),
          dispose: (_) => Get.delete<TopUpReverseController>(),
          builder: (controller) {
            return TopUpReverseCheckoutDialog(item: item);
          },
        ),
      ),
    );
  }

  void qrDialog({required String qrType}) {
    Get.dialog(
      DismissKeyboardDialog(
        child: GetBuilder(
          init: QrDialogController(),
          dispose: (_) => Get.delete<QrDialogController>(),
          builder: (controller) {
            return QrDialogView(qrType: qrType);
          },
        ),
      ),
    );
  }
}

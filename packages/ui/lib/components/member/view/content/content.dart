import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ttpos_ui/components/checkout/views/content/item.dart';
import 'package:ttpos_ui/components/member/controllers/recharge.dart';
import 'package:ttpos_ui/controllers/config_controller.dart';

class RechargeContent extends StatelessWidget {
  const RechargeContent({
    super.key,
    required this.tag,
  });

  final String tag;

  @override
  Widget build(BuildContext context) {
    return GetBuilder<MemberRechargeController>(
      id: tag,
      tag: tag,
      builder: (controller) {
        return Obx(() {
          return ListView.separated(
            itemBuilder: (_, int index) {
              final paymentOrder = controller.paymentOrders[index];
              return PaymentOrderItem(
                label: paymentOrder.paymentMethodName,
                primaryCurrency: paymentOrder.amount.primaryCurrency,
                secondaryCurrency: paymentOrder.amount.secondaryCurrency,
                showActionButton: !paymentOrder.disabledCancel,
                onPressed: () => controller.onCancelOrderTap(paymentOrder.uuid),
              );
            },
            separatorBuilder: (context, index) => SizedBox(height: 8.0),
            itemCount: controller.paymentOrders.length,
          );
        });
      },
    );
  }
}

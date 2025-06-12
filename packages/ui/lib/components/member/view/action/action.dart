import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ttpos_ui/components/member/controllers/recharge.dart';
import 'package:ttpos_ui/components/tt_button/tt_button.dart';
import 'package:ttpos_ui/controllers/config_controller.dart';

class RechargeAction extends StatelessWidget {
  const RechargeAction({super.key, required this.tag});

  final String tag;

  @override
  Widget build(BuildContext context) {
    return GetBuilder<MemberRechargeController>(
      id: tag,
      tag: tag,
      builder: (controller) {
        return Row(
          spacing: 8.0,
          children: [
            SizedBox(
              child: TtButton(
                text: '退出'.tr,
                fontWeight: FontWeight.w600,
                onTap: () => Get.back(),
                sizeType: SizeButtonType.small,
                buttonType: ActionButtonType.outline,
              ),
            ),
            Expanded(
              child: Obx(
                () => TtButton(
                  text: !controller.isRechargeOrderGenerated
                      ? '未创建订单'.tr
                      : controller.isUnCompleted
                          ? '${'还差'.tr}: ${(controller.unpaidAmount.primaryCurrency)}'
                          : '付款完成，确认结账'.tr,
                  onTap: controller.isUnCompleted || !controller.isRechargeOrderGenerated
                      ? null
                      : () => controller.onFinishOrderTap(),
                  isDisabled: controller.isUnCompleted || !controller.isRechargeOrderGenerated,
                  sizeType: SizeButtonType.small,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}

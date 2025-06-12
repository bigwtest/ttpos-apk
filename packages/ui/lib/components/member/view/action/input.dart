import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ttpos_ui/components/member/controllers/recharge.dart';
import 'package:ttpos_ui/components/tt_button/tt_button.dart';
import 'package:ttpos_ui/components/tt_input/tt_input.dart';
import 'package:ttpos_ui/controllers/font_size_controller.dart';
import 'package:ttpos_ui/theme/theme.dart';

class RechargeInput extends StatelessWidget {
  const RechargeInput({super.key, required this.tag});

  final String tag;

  @override
  Widget build(BuildContext context) {
    return GetBuilder<MemberRechargeController>(
      id: tag,
      tag: tag,
      builder: (controller) {
        return Row(
          children: [
            Obx(() {
              return Text(
                controller.selectedPayment?.paymentName ?? '支付方式'.tr,
                style: TextStyle(
                  fontSize: 12.0,
                  color: CustomTheme.secondaryColor,
                ),
              );
            }),
            SizedBox(width: 8.0), // 添加间距
            Expanded(
              child: Obx(
                () => TtInput(
                  height: 36.0.scaleHeight,
                  value: controller.selectedPaymentAmountInput,
                  hintText: '请输入实收金额'.tr,
                  readOnly: true,
                  focusNode: controller.paymentAmountFocusNode,
                  useFocusedBorderAsEnabled: controller.activeNode == ActiveNode.paymentAmount,
                  onChanged: controller.onSelectedPaymentAmountInputChanged,
                  isDisabled: !controller.isUnCompleted,
                  isShowDelete: true,
                ),
              ),
            ),
            SizedBox(width: 8.0), // 添加间距
            Obx(
              () => TtButton(
                text:
                    (controller.selectedPaymentHasQrcode || controller.selectedPaymentIsThirdParty) ? '扫码'.tr : '完成'.tr,
                onTap: controller.isSelectedPaymentAmountInputValid && controller.isUnCompleted
                    ? controller.onCreateOrderTap
                    : null,
                isDisabled: !controller.isCanCreateOrder,
                sizeType: SizeButtonType.small,
                buttonType: ActionButtonType.secondary,
              ),
            ),
          ],
        );
      },
    );
  }
}

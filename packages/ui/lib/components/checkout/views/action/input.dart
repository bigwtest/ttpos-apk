import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ttpos_ui/components/checkout/controllers/container.dart';
import 'package:ttpos_ui/components/tt_button/tt_button.dart';
import 'package:ttpos_ui/components/tt_input/tt_input.dart';
import 'package:ttpos_ui/controllers/font_size_controller.dart';

class CheckoutInput extends StatelessWidget {
  const CheckoutInput({super.key, required this.tag});

  final String tag;

  @override
  Widget build(BuildContext context) {
    return GetBuilder<CheckoutContainerController>(
      id: tag,
      tag: tag,
      builder: (controller) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(() {
              return ConstrainedBox(
                constraints: BoxConstraints(
                  maxWidth: 110.0,
                ),
                child: Text(
                  controller.selectedPayment?.paymentName ?? '支付方式'.tr,
                  style: TextStyle(fontSize: 13.0),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              );
            }),
            SizedBox(width: 8.0), // 添加间距
            Expanded(
              child: Obx(
                () => TtInput(
                  height: 36.0.scaleHeight,
                  fontSize: 13.0,
                  value: controller.selectedPaymentAmountInput,
                  hintText: '请输入实收金额'.tr,
                  readOnly: true,
                  useFocusedBorderAsEnabled: true,
                  onChanged: controller.onSelectedPaymentAmountInputChanged,
                  isDisabled: !controller.isUnCompleted,
                  isShowDelete: true,
                ),
              ),
            ),
            SizedBox(width: 8.0), // 添加间距
            Obx(
              () => TtButton(
                fontSize: 13.0,
                text:
                    (controller.selectedPaymentHasQrcode || controller.selectedPaymentIsThirdParty) ? '扫码'.tr : '完成'.tr,
                onTap: controller.isSelectedPaymentAmountInputValid && controller.isUnCompleted
                    ? controller.onCreateOrderTap
                    : null,
                isDisabled: !(controller.isSelectedPaymentAmountInputValid && controller.isUnCompleted),
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

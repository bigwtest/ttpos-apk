import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ttpos_ui/components/checkout/controllers/container.dart';
import 'package:ttpos_ui/components/checkout/views/action/action.dart';
import 'package:ttpos_ui/components/checkout/views/action/hint.dart';
import 'package:ttpos_ui/components/checkout/views/action/input.dart';
import 'package:ttpos_ui/components/checkout/views/content/content.dart';
import 'package:ttpos_ui/components/checkout/views/payment/payment.dart';
import 'package:ttpos_ui/components/common/dashed_border.dart';
import 'package:ttpos_ui/components/keyboard.dart';
import 'package:ttpos_ui/theme/theme.dart';

class CheckoutContainer extends StatelessWidget {
  const CheckoutContainer({
    super.key,
    required this.tag,
  });

  final String tag;

  @override
  Widget build(BuildContext context) {
    return GetBuilder<CheckoutContainerController>(
      id: tag,
      tag: tag,
      builder: (controller) {
        return Container(
          padding: EdgeInsets.symmetric(vertical: 24.0),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(6.0),
          ),
          child: Row(
            children: [
              Expanded(child: CheckoutPayment(tag: tag)),
              Container(
                width: 1,
                height: double.infinity,
                color: CustomTheme.greyColor.shade300,
              ),
              Expanded(
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                  child: Column(
                    children: [
                      SizedBox(
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            '账单明细'.tr,
                            style: TextStyle(
                              color: CustomTheme.secondaryColor,
                              fontSize: 16.0,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 16.0),
                      Expanded(child: CheckoutContent(tag: tag)),
                      SizedBox(height: 12.0),
                      CheckoutInput(tag: tag),
                      CheckoutHint(tag: tag),
                      SizedBox(height: 12.0),
                      SizedBox(
                        height: 220.0,
                        child: Keyboard(
                          showConfirmButton: false,
                          showFunctionButtons: false,
                          padding: EdgeInsets.all(16.0),
                          onNumberTap: controller.onSelectedPaymentAmountInputChangedByKeyboard,
                        ),
                      ),
                      SizedBox(height: 16.0),
                      SizedBox(
                        width: double.infinity,
                        height: 0.5,
                        child: CustomPaint(
                          painter: DashedBorder(dashSpace: 4, dashWidth: 3),
                        ),
                      ),
                      SizedBox(height: 12.0),
                      CheckoutAction(tag: tag),
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

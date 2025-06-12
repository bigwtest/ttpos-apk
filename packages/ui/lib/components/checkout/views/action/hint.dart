import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ttpos_ui/components/checkout/controllers/container.dart';
import 'package:ttpos_ui/controllers/config_controller.dart';
import 'package:ttpos_ui/theme/theme.dart';

class CheckoutHint extends StatelessWidget {
  const CheckoutHint({super.key, required this.tag});

  final String tag;

  @override
  Widget build(BuildContext context) {
    return GetBuilder<CheckoutContainerController>(
      id: tag,
      tag: tag,
      builder: (controller) {
        return Obx(() {
          if (controller.selectedPaymentIsCash) {
            return Container(
              margin: EdgeInsets.only(top: 8.0),
              child: Row(
                children: [
                  Text(
                    '${'找零'.tr}: ',
                    style: TextStyle(
                      color: CustomTheme.secondaryColor,
                      fontSize: 13.0,
                      fontWeight: FontWeight.w400,
                      height: 1.44,
                    ),
                  ),
                  Text(
                    controller.selectedPaymentChangeAmount.primaryCurrency,
                    style: TextStyle(
                      color: Colors.red,
                      fontSize: 13.0,
                      fontWeight: FontWeight.w400,
                      height: 1.44,
                    ),
                  ),
                ],
              ),
            );
          } else if (controller.selectedPaymentHasFee) {
            return Container(
              margin: EdgeInsets.only(top: 8.0),
              child: Row(
                children: [
                  Text(
                    '${'手续费'.tr}：',
                    style: TextStyle(
                      color: CustomTheme.secondaryColor,
                      fontSize: 13.0,
                      fontWeight: FontWeight.w400,
                      height: 1.44,
                    ),
                  ),
                  Text(
                    controller.selectedPaymentFeeAmount.primaryCurrency,
                    style: TextStyle(
                      color: CustomTheme.secondaryColor,
                      fontSize: 13.0,
                      fontWeight: FontWeight.w400,
                      height: 1.44,
                    ),
                  ),
                  SizedBox(width: 8.0),
                  Text(
                    '${'实际应付'.tr}：',
                    style: TextStyle(
                      color: CustomTheme.secondaryColor,
                      fontSize: 14.0,
                      fontWeight: FontWeight.w400,
                      height: 1.44,
                    ),
                  ),
                  Text(
                    controller.selectedPaymentActualAmount.primaryCurrency,
                    style: TextStyle(
                      color: Colors.red,
                      fontSize: 14.0,
                      fontWeight: FontWeight.w400,
                      height: 1.44,
                    ),
                  ),
                ],
              ),
            );
          }
          return const SizedBox.shrink();
        });
      },
    );
  }
}

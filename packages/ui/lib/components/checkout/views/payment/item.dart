import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ttpos_ui/components/checkout/controllers/container.dart';
import 'package:ttpos_ui/components/checkout/models/payment_method.dart';
import 'package:ttpos_ui/theme/theme.dart';

class CheckoutPaymentItem extends StatelessWidget {
  const CheckoutPaymentItem({
    super.key,
    required this.tag,
    required this.paymentMethod,
  });

  final String tag;
  final PaymentMethodViewModel paymentMethod;

  @override
  Widget build(BuildContext context) {
    return GetBuilder<CheckoutContainerController>(
      id: tag,
      tag: tag,
      builder: (controller) {
        return Obx(() {
          return InkWell(
            onTap: () => controller.togglePaymentMethod(paymentMethod.uuid),
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: 12.0,
                vertical: 8.0,
              ),
              decoration: BoxDecoration(
                color: controller.selectedPaymentMethodUuid == paymentMethod.uuid
                    ? CustomTheme.primaryColor.shade50
                    : Colors.white,
                borderRadius: BorderRadius.circular(8.0),
                border: Border.all(
                  width: 1,
                  color: controller.selectedPaymentMethodUuid == paymentMethod.uuid
                      ? CustomTheme.primaryColor
                      : CustomTheme.secondaryColor.shade300,
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 24.0,
                    height: 24.0,
                    child: Image.network(
                      paymentMethod.icon,
                      width: 24.0,
                      height: 24.0,
                      fit: BoxFit.fill,
                      loadingBuilder: (context, child, loadingProgress) {
                        if (loadingProgress == null) return child;
                        return Center(
                          child: CircularProgressIndicator(
                            strokeWidth: 2,
                          ),
                        );
                      },
                      errorBuilder: (context, error, stackTrace) {
                        return Image.asset(
                          'packages/ttpos_ui/assets/images/wallet-2.png',
                          width: 24.0,
                          height: 24.0,
                          fit: BoxFit.fill,
                        );
                      },
                    ),
                  ),
                  SizedBox(height: 8.0),
                  SizedBox(
                    width: double.infinity,
                    child: Text(
                      paymentMethod.title,
                      style: TextStyle(
                        color: CustomTheme.secondaryColor,
                        fontSize: 14.0,
                        fontWeight: FontWeight.w400,
                        height: 1.44,
                      ),
                      textAlign: TextAlign.center,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                    ),
                  ),
                  if (paymentMethod.subTitle.isNotEmpty) ...[
                    SizedBox(
                      width: double.infinity,
                      child: Text(
                        '(${paymentMethod.subTitle})',
                        style: TextStyle(
                          color: CustomTheme.greyColor,
                          fontSize: 12.0,
                          fontWeight: FontWeight.w400,
                          height: 1.50,
                        ),
                        textAlign: TextAlign.center,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                      ),
                    ),
                  ],
                ],
              ),
            ),
          );
        });
      },
    );
  }
}

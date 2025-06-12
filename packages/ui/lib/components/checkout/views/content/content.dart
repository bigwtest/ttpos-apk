import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ttpos_ui/components/checkout/controllers/container.dart';
import 'package:ttpos_ui/components/checkout/views/content/item.dart';
import 'package:ttpos_ui/components/common/dashed_border.dart';
import 'package:ttpos_ui/components/member/view/card.dart';
import 'package:ttpos_ui/controllers/config_controller.dart';
import 'package:ttpos_ui/theme/theme.dart';

class CheckoutContent extends StatelessWidget {
  CheckoutContent({super.key, required this.tag});

  final String tag;
  final zeroButtonKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return GetBuilder<CheckoutContainerController>(
      id: tag,
      tag: tag,
      builder: (controller) {
        return Obx(() {
          return Expanded(
            child: ListView(
              children: [
                Column(
                  spacing: 8.0,
                  children: [
                    if (controller.paymentOrder?.memberInfo != null)
                      MemberCardView(
                        nickname: controller.currentMemberDiscountMemberNickname,
                        levelName: controller.currentMemberDiscountMemberLevelName,
                        balance: controller.currentMemberDiscountMemberBalance,
                        points: controller.currentMemberDiscountMemberPoints,
                        onAction: controller.onRemoveMemberDiscountTap,
                      ),
                    PaymentOrderItem(
                      label: '订单原价'.tr,
                      primaryCurrency: controller.saleOrderOriginAmount.primaryCurrency,
                      secondaryCurrency: controller.saleOrderOriginAmount.secondaryCurrency,
                      primaryCurrencyColor: CustomTheme.errorColor,
                      secondaryCurrencyColor: CustomTheme.greyColor,
                    ),
                    PaymentOrderItem(
                      label: '应收金额'.tr,
                      primaryCurrency: controller.saleOrderAmount.primaryCurrency,
                      secondaryCurrency: controller.saleOrderAmount.secondaryCurrency,
                      primaryCurrencyColor: CustomTheme.errorColor,
                      secondaryCurrencyColor: CustomTheme.greyColor,
                    ),
                    if (controller.saleOrderZeroAmount > 0 && !controller.selectedPaymentHasFee)
                      PaymentOrderItem(
                        label: controller.zeroRuleText,
                        primaryCurrency: controller.saleOrderZeroAmount.primaryCurrency,
                        secondaryCurrency: controller.saleOrderZeroAmount.secondaryCurrency,
                        primaryCurrencyColor: CustomTheme.errorColor,
                        secondaryCurrencyColor: CustomTheme.greyColor,
                      ),
                    PaymentOrderItem(
                      label: '最终应收'.tr,
                      primaryCurrency: controller.finalAmount.primaryCurrency,
                      secondaryCurrency: controller.finalAmount.secondaryCurrency,
                      primaryCurrencyColor: CustomTheme.errorColor,
                      secondaryCurrencyColor: CustomTheme.greyColor,
                      showZeroButton: !controller.selectedPaymentHasFee,
                      onPressed: !controller.selectedPaymentHasFee &&
                              controller.zeroOptions.isNotEmpty &&
                              controller.paidFeeAmount == 0
                          ? () {
                              controller.onZeroTap(zeroButtonKey);
                            }
                          : null,
                      buttonKey: zeroButtonKey,
                    ),
                    SizedBox(
                      width: double.infinity,
                      height: 0.5,
                      child: CustomPaint(
                        painter: DashedBorder(dashSpace: 4, dashWidth: 3),
                      ),
                    ),
                    Obx(() {
                      return Column(
                        spacing: 8.0,
                        children: [
                          for (final paymentOrder in controller.paymentOrders)
                            PaymentOrderItem(
                              label: paymentOrder.paymentMethodName,
                              primaryCurrency: paymentOrder.amount.primaryCurrency,
                              secondaryCurrency: paymentOrder.amount.secondaryCurrency,
                              showActionButton: !paymentOrder.disabledCancel,
                              onPressed: () => controller.onCancelOrderTap(paymentOrder.uuid),
                            ),
                        ],
                      );
                    }),
                  ],
                ),
              ],
            ),
          );
        });
      },
    );
  }
}

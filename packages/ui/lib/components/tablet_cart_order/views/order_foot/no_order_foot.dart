import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:ttpos_model/number/safety_number.dart';
import 'package:ttpos_model/order/response/unsent_kitchen.dart';
import 'package:ttpos_ui/components/tt_button/tt_button.dart';
import 'package:ttpos_ui/controllers/config_controller.dart';
import 'package:ttpos_ui/controllers/font_size_controller.dart';
import 'package:ttpos_ui/theme/theme.dart';

class NoOrderFoot extends StatelessWidget {
  final bool isLoading;
  final UnsentKitchenAmountInfo amountInfo;
  final void Function()? onTap; // 点击
  const NoOrderFoot({
    super.key,
    this.isLoading = false,
    this.amountInfo = const UnsentKitchenAmountInfo(
      productAmount: SafetyNumber.zero,
      productNum: 0,
    ),
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 16.0,
      children: [
        Column(
          children: [
            Container(
              padding: EdgeInsets.only(
                top: 16.0,
              ),
              decoration: BoxDecoration(
                border: Border(
                  top: BorderSide(
                    width: 0.6,
                    color: CustomTheme.greyColor.shade300,
                  ),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '共@count件'.trParams({
                      'count': amountInfo.productNum.toString(),
                    }),
                    style: TextStyle(
                      color: CustomTheme.secondaryColor,
                      fontSize: 13.0,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Row(
                    children: [
                      Text(
                        '${'商品金额'.tr}:',
                        style: TextStyle(
                          color: CustomTheme.secondaryColor,
                          fontSize: 13.0,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      SizedBox(
                        width: 16.0,
                      ),
                      Text(
                        amountInfo.productAmount.primaryCurrency,
                        style: TextStyle(
                          color: CustomTheme.secondaryColor,
                          fontSize: 13.0,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(
                        width: 8.0,
                      ),
                      if (amountInfo.productAmount.secondaryCurrency.isNotEmpty)
                        Text(
                          amountInfo.productAmount.secondaryCurrency,
                          style: TextStyle(
                            color: CustomTheme.greyColor,
                            fontSize: 13.0,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
        Row(
          spacing: 10.0.scalePadding,
          children: [
            // Expanded(
            //   child: TtButton(
            //     text: '退出'.tr,
            //     fontWeight: FontWeight.w600,
            //     buttonType: ActionButtonType.normal,
            //     onTap: () => Get.back(),
            //   ),
            // ),
            Expanded(
              child: TtButton(
                isLoading: isLoading,
                onTap: onTap,
                height: 40.0.scaleHeight,
                text: '确认下单'.tr,
                fontSize: 13.0,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ],
    );
  }
}

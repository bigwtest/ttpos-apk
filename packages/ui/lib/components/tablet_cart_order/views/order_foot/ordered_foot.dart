import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:ttpos_model/number/safety_number.dart';
import 'package:ttpos_model/order/response/sent_kitchen.dart';
import 'package:ttpos_ui/components/common/dashed_border.dart';
import 'package:ttpos_ui/components/tablet_cart_order/views/order_foot/ordered_foot_item.dart';
import 'package:ttpos_ui/components/tt_button/tt_button.dart';
import 'package:ttpos_ui/controllers/config_controller.dart';
import 'package:ttpos_ui/controllers/font_size_controller.dart';
import 'package:ttpos_ui/theme/theme.dart';

class OrderedFoot extends StatelessWidget {
  final bool isLoading;
  final bool hasSettle; // 结账权限
  final bool isTablet; // 是否为平板端，只有备注按钮
  final SentKitchenAmountInfo amountInfo;
  final void Function()? onTap; // 点击

  const OrderedFoot({
    super.key,
    this.isLoading = false,
    this.hasSettle = false,
    this.isTablet = false,
    this.amountInfo = const SentKitchenAmountInfo(
      amount: SafetyNumber.zero,
      discountAmount: SafetyNumber.zero,
      memberDiscountAmount: SafetyNumber.zero,
      productAmount: SafetyNumber.zero,
      productNum: 0,
      productOriginAmount: SafetyNumber.zero,
      serviceAmount: SafetyNumber.zero,
      taxAmount: SafetyNumber.zero,
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
                        amountInfo.productOriginAmount.primaryCurrency,
                        style: TextStyle(
                          color: CustomTheme.secondaryColor,
                          fontSize: 13.0,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(
                        width: 4.0,
                      ),
                      if (amountInfo.productOriginAmount.secondaryCurrency.isNotEmpty)
                        Text(
                          amountInfo.productOriginAmount.secondaryCurrency,
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
            Column(
              children: [
                SizedBox(
                  height: 10.0,
                ),
                // 虚线开始
                SizedBox(
                  width: double.infinity,
                  height: 0.5,
                  child: CustomPaint(
                    painter: DashedBorder(
                      dashSpace: 2.0,
                      dashWidth: 3.0,
                      color: CustomTheme.greyColor.shade300,
                    ),
                  ),
                ),
                // 虚线结束
                SizedBox(
                  height: 10.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    OrderedFootItem(
                      text: '服务费'.tr,
                      price: amountInfo.serviceAmount,
                    ),
                    OrderedFootItem(
                      text: '优惠折扣'.tr,
                      price: amountInfo.discountAmount,
                    ),
                  ],
                ),
                SizedBox(
                  height: 6.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    OrderedFootItem(
                      text: '消费税'.tr,
                      price: amountInfo.taxAmount,
                    ),
                    OrderedFootItem(
                      text: '会员折扣'.tr,
                      price: amountInfo.memberDiscountAmount,
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
        Row(
          spacing: 10.0.scalePadding,
          children: [
            if (!isTablet || !hasSettle)
              Builder(
                builder: (context) {
                  final bool shouldExpand = isTablet && !hasSettle;
                  final Widget button = TtButton(
                    text: '退出'.tr,
                    fontSize: 13.0,
                    height: 40.0.scaleHeight,
                    fontWeight: FontWeight.w600,
                    buttonType: ActionButtonType.normal,
                    onTap: () => Get.back(),
                  );
                  return shouldExpand ? Expanded(child: button) : button;
                },
              ),
            if (!isTablet && hasSettle)
              Expanded(
                child: TtButton(
                  isLoading: isLoading,
                  fontSize: 13.0,
                  height: 40.0.scaleHeight,
                  onTap: onTap,
                  text: '',
                  textWidget: Row(
                    children: [
                      Text(
                        '结账共'.tr,
                        style: TextStyle(
                          color: CustomTheme.secondaryColor,
                          fontSize: 13.0,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(
                        width: 6.0,
                      ),
                      Text(
                        amountInfo.amount.primaryCurrency,
                        style: TextStyle(
                          color: CustomTheme.errorColor,
                          fontSize: 13.0,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(
                        width: 4.0,
                      ),
                      if (amountInfo.amount.secondaryCurrency.isNotEmpty)
                        Text(
                          amountInfo.amount.secondaryCurrency,
                          style: TextStyle(
                            color: CustomTheme.secondaryColor.shade800,
                            fontSize: 13.0,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                    ],
                  ),
                  fontWeight: FontWeight.w600,
                ),
              ),
          ],
        ),
      ],
    );
  }
}

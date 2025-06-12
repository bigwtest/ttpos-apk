// Flutter imports:
import 'package:flutter/material.dart';
// Package imports:
import 'package:get/get.dart';
// Project imports:
import 'package:pos/model/response/cart/cart_amount_info.dart';
import 'package:ttpos_ui/components/common/dashed_border.dart';
import 'package:ttpos_ui/controllers/config_controller.dart';
import 'package:ttpos_ui/theme/theme.dart';

class Total extends StatelessWidget {
  final ResponseCartAmountInfo? amountInfo;
  final int? num;
  final double? fontSize;

  const Total({
    super.key,
    this.amountInfo,
    this.num = 0,
    this.fontSize = 12.0,
  });

  @override
  Widget build(BuildContext context) {
    // 是否显示原价
    final bool isShowOriginPrice = (amountInfo?.productOriginAmount ?? 0) != (amountInfo?.productAmount ?? 0);

    // 是否显示副币
    final bool isShowSecondaryCurrency =
        (amountInfo?.productOriginAmount.toSafetyString() ?? '0').secondaryCurrency != "";

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 14.0),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 2.0),
              child: Text(
                '共@count件'.trParams({
                  'count': num.toString(),
                }),
                style: TextStyle(
                  fontSize: fontSize,
                ),
              ),
            ),
            const SizedBox(width: 6.0),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // 列1
                  SizedBox(
                    width: double.infinity,
                    child: Wrap(
                      alignment: WrapAlignment.end,
                      crossAxisAlignment: WrapCrossAlignment.start,
                      children: [
                        Text(
                          '${'商品金额'.tr}:',
                          style: const TextStyle(
                            fontSize: 14.0,
                          ),
                        ),
                        const SizedBox(width: 6.0),
                        // 如果原价不等于实际价,则显示原价
                        if (isShowOriginPrice) ...[
                          Text(
                            (amountInfo?.productOriginAmount.toSafetyString() ?? '0').primaryCurrency,
                            style: const TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 14.0,
                              decoration: TextDecoration.lineThrough,
                            ),
                          ),
                          const SizedBox(width: 6.0),
                          Text(
                            (amountInfo?.productOriginAmount.toSafetyString() ?? '0').secondaryCurrency,
                            style: TextStyle(
                              color: CustomTheme.greyColor,
                              fontSize: 14.0,
                              decoration: TextDecoration.lineThrough,
                            ),
                          ),
                        ],
                        // 实际价
                        if (!isShowOriginPrice || !isShowSecondaryCurrency) ...[
                          const SizedBox(width: 6.0),
                          Text(
                            (amountInfo?.productAmount.toSafetyString() ?? '0').primaryCurrency,
                            style: const TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 14.0,
                            ),
                          ),
                          const SizedBox(width: 6.0),
                          Text(
                            (amountInfo?.productAmount.toSafetyString() ?? '0').secondaryCurrency,
                            style: TextStyle(
                              color: CustomTheme.greyColor,
                              fontSize: 14.0,
                            ),
                          ),
                        ],
                      ],
                    ),
                  ),

                  // 列2
                  // 如果原价不等于实际价,则显示实际价
                  if (isShowOriginPrice && isShowSecondaryCurrency) ...[
                    const SizedBox(height: 6.0),
                    SizedBox(
                      width: double.infinity,
                      child: Wrap(
                        alignment: WrapAlignment.end,
                        crossAxisAlignment: WrapCrossAlignment.start,
                        children: [
                          // 实际价
                          Text(
                            (amountInfo?.productAmount.toSafetyString() ?? '0').primaryCurrency,
                            style: const TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 14.0,
                            ),
                          ),
                          const SizedBox(width: 6.0),
                          Text(
                            (amountInfo?.productAmount.toSafetyString() ?? '0').secondaryCurrency,
                            style: TextStyle(
                              color: CustomTheme.greyColor,
                              fontSize: 14.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ],
              ),
            ),
          ],
        ),
        const SizedBox(height: 10.0),
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
        const SizedBox(height: 10.0),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Text(
                  '${'服务费'.tr}:',
                  style: TextStyle(
                    fontSize: fontSize,
                  ),
                ),
                SizedBox(width: 6.0),
                Text(
                  (amountInfo?.serviceAmount.toSafetyString() ?? '0').primaryCurrency,
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: fontSize,
                  ),
                ),
                SizedBox(width: 6.0),
                Text(
                  (amountInfo?.serviceAmount.toSafetyString() ?? '0').secondaryCurrency,
                  style: TextStyle(
                    color: CustomTheme.greyColor,
                    fontSize: fontSize,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Text(
                  '${'优惠折扣'.tr}:',
                  style: TextStyle(
                    fontSize: fontSize,
                  ),
                ),
                SizedBox(width: 6.0),
                Text(
                  (amountInfo?.discountAmount.toSafetyString() ?? '0').primaryCurrency,
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: fontSize,
                  ),
                ),
                SizedBox(width: 6.0),
                Text(
                  (amountInfo?.discountAmount.toSafetyString() ?? '0').secondaryCurrency,
                  style: TextStyle(
                    color: CustomTheme.greyColor,
                    fontSize: fontSize,
                  ),
                ),
              ],
            ),
          ],
        ),
        const SizedBox(height: 8.0),
        SizedBox(
          width: double.infinity,
          child: Wrap(
            alignment: WrapAlignment.spaceBetween,
            crossAxisAlignment: WrapCrossAlignment.start,
            children: [
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    '${'消费税'.tr}:',
                    style: TextStyle(
                      fontSize: fontSize,
                    ),
                  ),
                  SizedBox(width: 6.0),
                  Text(
                    (amountInfo?.taxAmount.toSafetyString() ?? '0').primaryCurrency,
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: fontSize,
                    ),
                  ),
                  SizedBox(width: 6.0),
                  Text(
                    (amountInfo?.taxAmount.toSafetyString() ?? '0').secondaryCurrency,
                    style: TextStyle(
                      color: CustomTheme.greyColor,
                      fontSize: fontSize,
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    '${'会员折扣'.tr}:',
                    style: TextStyle(
                      fontSize: fontSize,
                    ),
                  ),
                  SizedBox(width: 6.0),
                  Text(
                    (amountInfo?.memberDiscountAmount.toSafetyString() ?? '0').primaryCurrency,
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: fontSize,
                    ),
                  ),
                  SizedBox(width: 6.0),
                  Text(
                    (amountInfo?.memberDiscountAmount.toSafetyString() ?? '0').secondaryCurrency,
                    style: TextStyle(
                      color: CustomTheme.greyColor,
                      fontSize: fontSize,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        const SizedBox(height: 14.0),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pos/components/sub_screen/components/cart/controllers/cart_statistics_controller.dart';
import 'package:ttpos_ui/controllers/config_controller.dart';
import 'package:ttpos_ui/theme/theme.dart';

class Index extends GetView<CartStatisticsController> {
  const Index({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.all(12.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(8.0)),
        ),
        child: Obx(
          () {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: SingleChildScrollView(
                    child: Container(
                      width: double.infinity,
                      padding: const EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                        color: CustomTheme.greyColor.shade100,
                        borderRadius: BorderRadius.all(Radius.circular(4.0)),
                      ),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                '${'商品金额'.tr}:',
                                style: TextStyle(
                                  color: CustomTheme.secondaryColor,
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              SizedBox(width: 6.0),
                              Row(
                                children: [
                                  // 副货币
                                  if (controller.amountInfo.productAmount.secondaryCurrency.isNotEmpty)
                                    Text(
                                      controller.amountInfo.productAmount.secondaryCurrency,
                                      style: TextStyle(
                                        color: CustomTheme.greyColor,
                                        fontSize: 12.0,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  SizedBox(width: 6.0),
                                  // 主货币
                                  Text(
                                    controller.amountInfo.productAmount.primaryCurrency,
                                    style: TextStyle(
                                      color: CustomTheme.secondaryColor,
                                      fontSize: 14.0,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                '${'服务费'.tr}:',
                                style: TextStyle(
                                  color: CustomTheme.secondaryColor,
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              SizedBox(width: 6.0),
                              Row(
                                children: [
                                  // 副货币
                                  if (controller.amountInfo.serviceAmount.secondaryCurrency.isNotEmpty)
                                    Text(
                                      controller.amountInfo.serviceAmount.secondaryCurrency,
                                      style: TextStyle(
                                        color: CustomTheme.greyColor,
                                        fontSize: 12.0,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  SizedBox(width: 6.0),
                                  // 主货币
                                  Text(
                                    controller.amountInfo.serviceAmount.primaryCurrency,
                                    style: TextStyle(
                                      color: CustomTheme.secondaryColor,
                                      fontSize: 14.0,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(height: 10.0),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                '${'消费税'.tr}:',
                                style: TextStyle(
                                  color: CustomTheme.secondaryColor,
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              SizedBox(width: 6.0),
                              Row(
                                children: [
                                  // 副货币
                                  if (controller.amountInfo.taxAmount.secondaryCurrency.isNotEmpty)
                                    Text(
                                      controller.amountInfo.taxAmount.secondaryCurrency,
                                      style: TextStyle(
                                        color: CustomTheme.greyColor,
                                        fontSize: 12.0,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  SizedBox(width: 6.0),
                                  // 主货币
                                  Text(
                                    controller.amountInfo.taxAmount.primaryCurrency,
                                    style: TextStyle(
                                      color: CustomTheme.secondaryColor,
                                      fontSize: 14.0,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(height: 10.0),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                '${'优惠折扣'.tr}:',
                                style: TextStyle(
                                  color: CustomTheme.secondaryColor,
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              SizedBox(width: 6.0),
                              Row(
                                children: [
                                  // 副货币
                                  if (controller.amountInfo.discountAmount.secondaryCurrency.isNotEmpty)
                                    Text(
                                      controller.amountInfo.discountAmount.secondaryCurrency,
                                      style: TextStyle(
                                        color: CustomTheme.greyColor,
                                        fontSize: 12.0,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  SizedBox(width: 6.0),
                                  // 主货币
                                  Text(
                                    controller.amountInfo.discountAmount.primaryCurrency,
                                    style: TextStyle(
                                      color: CustomTheme.secondaryColor,
                                      fontSize: 14.0,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(height: 10.0),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                '${'会员折扣'.tr}:',
                                style: TextStyle(
                                  color: CustomTheme.secondaryColor,
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              SizedBox(width: 6.0),
                              Row(
                                children: [
                                  // 副货币
                                  if (controller.amountInfo.discountAmount.secondaryCurrency.isNotEmpty)
                                    Text(
                                      controller.amountInfo.memberDiscountAmount.secondaryCurrency,
                                      style: TextStyle(
                                        color: CustomTheme.greyColor,
                                        fontSize: 12.0,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  SizedBox(width: 6.0),
                                  // 主货币
                                  Text(
                                    controller.amountInfo.memberDiscountAmount.primaryCurrency,
                                    style: TextStyle(
                                      color: CustomTheme.secondaryColor,
                                      fontSize: 14.0,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 8.0),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      '(${'共@count件'.trParams(
                        {
                          'count': controller.totalNum.toString(),
                        },
                      )})',
                      style: TextStyle(
                        color: CustomTheme.greyColor,
                        fontSize: 14.0,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(
                      height: 8.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '${'合计应收'.tr}:',
                          style: TextStyle(
                            color: CustomTheme.secondaryColor,
                            fontSize: 16.0,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Row(
                          children: [
                            // 副货币
                            if (controller.amountInfo.amount.secondaryCurrency.isNotEmpty)
                              Text(
                                controller.amountInfo.amount.secondaryCurrency,
                                style: TextStyle(
                                  color: CustomTheme.greyColor,
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            SizedBox(width: 8.0),
                            // 主货币
                            Text(
                              controller.amountInfo.amount.primaryCurrency,
                              style: TextStyle(
                                color: CustomTheme.errorColor,
                                fontSize: 20.0,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}

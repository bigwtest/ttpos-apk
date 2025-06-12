// Flutter imports:
import 'package:flutter/material.dart';
// Package imports:
import 'package:get/get.dart';
import 'package:pos/controllers/top_up_list/top_up_reverse_controller.dart';
// Project imports:
import 'package:pos/model/response/top_up_list/resp_recharge_order_item.dart';
import 'package:ttpos_ui/components/tt_button/tt_button.dart';
import 'package:ttpos_ui/controllers/config_controller.dart';
import 'package:ttpos_ui/theme/theme.dart';

class TopUpReverseCheckoutDialog extends StatelessWidget {
  final RespRechargeOrderItem item;
  const TopUpReverseCheckoutDialog({
    super.key,
    required this.item,
  });

  @override
  Widget build(BuildContext context) {
    final topUpReverseController = Get.find<TopUpReverseController>();

    return Container(
      width: 670,
      padding: EdgeInsets.all(24.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Obx(() {
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              '反结账'.tr,
              style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
                color: CustomTheme.secondaryColor,
              ),
            ),
            SizedBox(height: 8.0),
            topUpReverseController.isLoading
                ? Center(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      child: CircularProgressIndicator(
                        strokeWidth: 2,
                      ),
                    ),
                  )
                : Column(
                    children: [
                      Obx(() {
                        return Text(
                          topUpReverseController.reverseSettleInfo.status == 0
                              ? '是否将订单恢复为反结账'.tr
                              : topUpReverseController.reverseSettleInfo.message,
                          style: TextStyle(
                            fontSize: 12.06,
                            color: CustomTheme.secondaryColor,
                          ),
                        );
                      }),
                      SizedBox(height: 8.0),
                      //當前充值有待付款訂單，請先完成訂單再進行反結賬
                      if (topUpReverseController.reverseSettleInfo.status != 1)
                        Container(
                          padding: EdgeInsets.all(16.0),
                          decoration: BoxDecoration(
                            color: CustomTheme.greyColor.shade100,
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          child: Column(
                            children: [
                              Flex(
                                direction: Axis.horizontal,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  _buildInfoRow(
                                    '订单号'.tr,
                                    item.orderNo,
                                    false,
                                  ),
                                  SizedBox(width: 16.0),
                                  _buildInfoRow(
                                    '支付方式'.tr,
                                    item.paymentMethods.join(','),
                                    false,
                                  ),
                                ],
                              ),
                              SizedBox(height: 8.0),
                              Flex(
                                direction: Axis.horizontal,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  _buildInfoRow(
                                    '订单金额'.tr,
                                    item.rechargeAmount.toSafetyString().primaryCurrency,
                                    true,
                                  ),
                                  SizedBox(width: 16.0),
                                  _buildInfoRow(
                                    '实付金额'.tr,
                                    item.amount.toSafetyString().primaryCurrency,
                                    false,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      //當前會員賬戶不足反結賬
                      if (topUpReverseController.reverseSettleInfo.status == 1)
                        Obx(() {
                          return Column(
                            mainAxisSize: MainAxisSize.min,
                            spacing: 8.0,
                            children: [
                              Container(
                                padding: EdgeInsets.all(16.0),
                                decoration: BoxDecoration(
                                  color: CustomTheme.greyColor.shade100,
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                child: Column(
                                  children: [
                                    // 订单充值信息
                                    _buildInfoTitle('订单充值信息'.tr),
                                    SizedBox(height: 8.0),
                                    Row(
                                      children: [
                                        _buildInfoLabel('充值金额'.tr),
                                        _buildInfoLabel('赠送金额'.tr),
                                        _buildInfoLabel('赠送积分'.tr),
                                      ],
                                    ),
                                    SizedBox(height: 2.0),
                                    Row(
                                      children: [
                                        _buildInfoText(
                                          topUpReverseController.reverseSettleInfo.memberInfo.balance
                                              .toString()
                                              .primaryCurrency,
                                        ),
                                        _buildInfoText(
                                          topUpReverseController.reverseSettleInfo.memberInfo.giftBalance
                                              .toString()
                                              .primaryCurrency,
                                        ),
                                        _buildInfoText(
                                          topUpReverseController.reverseSettleInfo.memberInfo.points
                                              .toString()
                                              .primaryCurrency,
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.all(16.0),
                                decoration: BoxDecoration(
                                  color: CustomTheme.greyColor.shade100,
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                child: Column(
                                  children: [
                                    // 当前会员剩余
                                    _buildInfoTitle('当前会员剩余'.tr),
                                    SizedBox(height: 8.0),
                                    Row(
                                      children: [
                                        _buildInfoLabel('主账号'.tr),
                                        _buildInfoLabel('赠送账号'.tr),
                                        _buildInfoLabel('积分'.tr),
                                      ],
                                    ),
                                    SizedBox(height: 2.0),
                                    Row(
                                      children: [
                                        _buildInfoText(
                                          topUpReverseController.reverseSettleInfo.memberInfo.balance
                                              .toString()
                                              .primaryCurrency,
                                        ),
                                        _buildInfoText(
                                          topUpReverseController.reverseSettleInfo.memberInfo.giftBalance
                                              .toString()
                                              .primaryCurrency,
                                        ),
                                        _buildInfoText(
                                          topUpReverseController.reverseSettleInfo.memberInfo.points
                                              .toString()
                                              .primaryCurrency,
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          );
                        }),
                    ],
                  ),
            SizedBox(height: 16.0),
            Row(
              spacing: 16,
              children: [
                Expanded(
                  child: TtButton(
                    onTap: () => {Get.back()},
                    text: '退出'.tr,
                    fontWeight: FontWeight.w600,
                    buttonType: ActionButtonType.outline,
                  ),
                ),
                if (topUpReverseController.reverseSettleInfo.status == 0)
                  Expanded(
                    child: TtButton(
                      onTap: () {
                        topUpReverseController.reverseSettle();
                      },
                      isLoading: topUpReverseController.isReverseSettle,
                      text: '确定'.tr,
                      fontWeight: FontWeight.w600,
                      buttonType: ActionButtonType.primary,
                    ),
                  ),
              ],
            ),
          ],
        );
      }),
    );
  }

  Widget _buildInfoRow(String label, String value, bool? refunded) {
    return Expanded(
      flex: 1,
      child: Column(
        children: [
          SizedBox(
            width: double.infinity,
            child: Text(
              label,
              style: TextStyle(
                fontSize: 12.06,
                color: CustomTheme.secondaryColor.shade200,
              ),
            ),
          ),
          SizedBox(
            width: double.infinity,
            child: Text(
              value,
              style: TextStyle(
                fontSize: 12.06,
                color: CustomTheme.secondaryColor,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildInfoTitle(String title) {
    return SizedBox(
      width: double.infinity,
      child: Text(
        title,
        style: TextStyle(
          fontSize: 12.06,
          color: CustomTheme.secondaryColor,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }

  Widget _buildInfoLabel(String label) {
    return Expanded(
      child: Text(
        label,
        style: TextStyle(
          fontSize: 12.06,
          color: CustomTheme.secondaryColor.shade200,
        ),
      ),
    );
  }

  Widget _buildInfoText(String value) {
    return Expanded(
      child: Text(
        value,
        style: TextStyle(
          fontSize: 12.06,
          color: CustomTheme.secondaryColor,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}

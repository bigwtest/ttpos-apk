// Flutter imports:
import 'package:flutter/material.dart';
// Package imports:
import 'package:get/get.dart';
// Project imports:
import 'package:pos/model/response/top_up_list/resp_recharge_order_refund_info.dart';
import 'package:ttpos_ui/controllers/config_controller.dart';
import 'package:ttpos_ui/controllers/extensions/clean_string.dart';
import 'package:ttpos_ui/theme/theme.dart';

class TopUpRefundDetails extends StatelessWidget {
  final RechargeOrderRefundInfo refundInfo;
  const TopUpRefundDetails({
    super.key,
    required this.refundInfo,
  });

  Widget _buildInfoRow(String label, String value) {
    return Expanded(
      flex: 1,
      child: SizedBox(
        width: double.infinity,
        child: Flex(
          direction: Axis.vertical,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              label,
              style: TextStyle(
                fontSize: 12.06,
                color: CustomTheme.secondaryColor.shade200,
              ),
            ),
            SizedBox(height: 4.0),
            Text(
              value,
              style: TextStyle(
                fontSize: 12.06,
                color: CustomTheme.secondaryColor,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSection(String title, List<Widget> children) {
    return Container(
      padding: EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: CustomTheme.greyColor.shade100,
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 12.06,
              fontWeight: FontWeight.w600,
              color: CustomTheme.secondaryColor,
            ),
          ),
          SizedBox(height: 8.0),
          Flex(direction: Axis.horizontal, children: children),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildSection(
            '订单充值信息'.tr,
            [
              _buildInfoRow(
                '充值金额'.tr,
                refundInfo.rechargeAmount.primaryCurrency,
              ),
              _buildInfoRow(
                '赠送金额'.tr,
                refundInfo.giftAmount.primaryCurrency,
              ),
              _buildInfoRow(
                '赠送积分'.tr,
                refundInfo.giftPoint.toCleanString,
              ),
            ],
          ),
          SizedBox(height: 8.0),
          _buildSection(
            '当前会员剩余'.tr,
            [
              _buildInfoRow(
                '主账号'.tr,
                refundInfo.rechargeMemberInfo.balance.primaryCurrency,
              ),
              _buildInfoRow(
                '赠送账户'.tr,
                refundInfo.rechargeMemberInfo.giftBalance.primaryCurrency,
              ),
              _buildInfoRow(
                '积分'.tr,
                refundInfo.rechargeMemberInfo.points.toCleanString,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

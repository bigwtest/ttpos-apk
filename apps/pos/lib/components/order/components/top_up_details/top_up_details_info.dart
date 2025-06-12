// Flutter imports:
import 'package:flutter/material.dart';
// Package imports:
import 'package:get/get.dart';
// Project imports:
import 'package:pos/components/order/components/darwer/drawer_wrap_text.dart';
import 'package:pos/model/response/top_up_details/top_up_details.dart';
import 'package:ttpos_ui/controllers/config_controller.dart';

class TopUpDetailsInfo extends StatelessWidget {
  final TopUpDetails details;
  const TopUpDetailsInfo({
    super.key,
    required this.details,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        // 假设每行显示3个子项
        int itemsPerRow = 4;
        // 每个子项的宽度
        double itemWidth = (constraints.maxWidth - 30) / itemsPerRow; // 20是因为左右的总padding是10+10
        return Wrap(
          spacing: 10.0, // 主轴方向的间距
          runSpacing: 10.0, // 交叉轴方向的间距
          children: [
            DrawerWrapText(
              title: '订单类型'.tr,
              text: '充值订单',
              itemWidth: itemWidth,
            ),
            DrawerWrapText(
              title: '订单号'.tr,
              text: details.orderNo,
              itemWidth: itemWidth,
            ),
            DrawerWrapText(
              title: '会员'.tr,
              text: '${'会员ID'.tr}(${details.member.uuid})',
              itemWidth: itemWidth,
            ),
            DrawerWrapText(
              title: '交易状态'.tr,
              text: details.status == 0
                  ? '待付款'.tr
                  : details.status == 1
                      ? '已完成'.tr
                      : '已取消'.tr,
              itemWidth: itemWidth,
            ),
            DrawerWrapText(
              title: '收银员'.tr,
              text: details.cashier.realName,
              itemWidth: itemWidth,
            ),
            DrawerWrapText(
              title: '订单金额'.tr,
              text: details.rechargeAmount.toSafetyString().primaryCurrency,
              subText: details.rechargeAmount.toSafetyString().secondaryCurrency,
              itemWidth: itemWidth,
            ),
            DrawerWrapText(
              title: '实付金额'.tr,
              text: details.amount.toSafetyString().primaryCurrency,
              subText: details.amount.toSafetyString().secondaryCurrency,
              itemWidth: itemWidth,
            ),
            DrawerWrapText(
              title: '支付方式'.tr,
              text: details.status == 1 ? details.paymentMethods.map((e) => e.name).join(',') : '-',
              itemWidth: itemWidth,
            ),
            DrawerWrapText(
              title: '支付时间'.tr,
              text: details.paymentTime > 0 ? details.paymentTime.tz : '-',
              itemWidth: itemWidth,
            ),
          ],
        );
      },
    );
  }
}

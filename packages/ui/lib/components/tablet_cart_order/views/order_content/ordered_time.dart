import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ttpos_ui/controllers/config_controller.dart';
import 'package:ttpos_ui/controllers/font_size_controller.dart';
import 'package:ttpos_ui/theme/theme.dart';

class OrderedTime extends StatelessWidget {
  final bool isShowTakeTime; // 是否显示接单时间
  final int? takeTime; // 接单时间
  final int orderTime; // 下单时间
  final bool isAccept; // 接单状态. false：拒单，true：接单
  final bool isProduct; // 是否是商品类型

  const OrderedTime({
    super.key,
    this.isShowTakeTime = false,
    this.takeTime,
    this.orderTime = 0,
    this.isAccept = true,
    this.isProduct = true,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(
        vertical: 8.0.scalePadding,
        horizontal: 10.0.scalePadding,
      ),
      decoration: BoxDecoration(
        color: CustomTheme.greyColor.shade100,
      ),
      child: Wrap(
        spacing: 4.0, // 主轴方向的间距
        runSpacing: 4.0, // 交叉轴方向的间距
        alignment: WrapAlignment.spaceBetween,
        children: [
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: '@time 下单'.trParams({
                    'time': orderTime.tz,
                  }),
                  style: TextStyle(
                    color: CustomTheme.greyColor,
                    fontSize: 12.0,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                if (isShowTakeTime && (takeTime == null || takeTime == 0) && isProduct)
                  TextSpan(
                    text: '(${'待接单'.tr})',
                    style: TextStyle(
                      color: CustomTheme.greyColor,
                      fontSize: 12.0,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
              ],
            ),
          ),
          if (isShowTakeTime && !(takeTime == null || takeTime == 0) && isProduct)
            Text(
              '${takeTime?.tz ?? '0'} ${isAccept ? '接单'.tr : '拒单'.tr}',
              style: TextStyle(
                color: CustomTheme.greyColor,
                fontSize: 12.0,
                fontWeight: FontWeight.w400,
              ),
            ),
        ],
      ),
    );
  }
}

// Flutter imports:
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pos/model/view/accept/accept_item.dart';
import 'package:ttpos_ui/controllers/config_controller.dart';
import 'package:ttpos_ui/theme/theme.dart';

class AcceptItem extends StatelessWidget {
  final AcceptItemViewModel data;
  final bool isSelected;
  final Function(AcceptItemViewModel data)? onTap;

  const AcceptItem({
    super.key,
    required this.data,
    required this.isSelected,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap!(data);
      },
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: isSelected
              ? CustomTheme.primaryColor.shade50 // 选中时的高亮颜色
              : CustomTheme.greyColor.shade100, // 默认背景颜色
          border: Border.all(
            width: 1,
            color: isSelected ? CustomTheme.primaryColor.shade300 : CustomTheme.greyColor.shade100,
          ),
          borderRadius: BorderRadius.all(Radius.circular(6.0)),
        ),
        child: Column(
          children: [
            Flex(
              direction: Axis.horizontal,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Text(
                    data.deskNo,
                    style: TextStyle(
                      fontSize: 16.0,
                      color: CustomTheme.secondaryColor,
                      fontWeight: FontWeight.w700,
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                Text(
                  data.status == 1
                      ? '待处理'.tr
                      : data.status == 2
                          ? '已下单'.tr
                          : '已拒单'.tr,
                  style: TextStyle(
                    fontSize: 13.0,
                    color: CustomTheme.secondaryColor,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
            SizedBox(height: 6),
            Flex(
              direction: Axis.horizontal,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              spacing: 24.0,
              children: [
                Expanded(
                  child: Text(
                    data.status == 1
                        ? '${'顾客已等'.tr}: ${data.waitTime}'
                        : data.status == 2
                            ? '${'接单时间'.tr}: ${data.handleTime.tz}'
                            : '${'拒单时间'.tr}: ${data.handleTime.tz}',
                    style: TextStyle(
                      fontSize: 12.0,
                      color: CustomTheme.secondaryColor,
                      fontWeight: FontWeight.w400,
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                Text(
                  '${'共'.tr}${data.productNum}${'个商品'.tr}: ${data.price.toString().primaryCurrency}',
                  style: TextStyle(
                    fontSize: 12.0,
                    color: CustomTheme.secondaryColor,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

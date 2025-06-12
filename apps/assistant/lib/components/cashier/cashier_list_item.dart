import 'package:assistant/model/response/cashier/cashier_info.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ttpos_ui/controllers/font_size_controller.dart';
import 'package:ttpos_ui/theme/theme.dart';

class CashierListItem extends StatelessWidget {
  final bool isActive;
  final ResponseCashierInfo detail;
  final Function(ResponseCashierInfo val)? onTap;

  const CashierListItem({
    super.key,
    this.isActive = false,
    required this.detail,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        if (onTap != null) {
          onTap!(detail);
        }
      },
      child: Container(
        decoration: BoxDecoration(
          color: isActive ? CustomTheme.primaryColor.shade50 : CustomTheme.greyColor.shade100,
          borderRadius: BorderRadius.all(
            Radius.circular(
              8.0,
            ),
          ),
          border: Border.all(
            color: isActive ? CustomTheme.primaryColor : Colors.transparent,
            width: 1,
          ),
        ),
        padding: EdgeInsets.symmetric(
          horizontal: 12.0,
          vertical: 8.0,
        ),
        child: Row(
          spacing: 12.0,
          children: [
            Image.asset(
              'assets/images/cash_register_demo.png',
              width: 67.0.scaleHeight,
              height: 67.0.scaleHeight,
            ),
            Expanded(
              child: Column(
                spacing: 4.0,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    detail.remark,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: CustomTheme.secondaryColor,
                      fontSize: 14.0,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    detail.deviceId,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: CustomTheme.secondaryColor,
                      fontSize: 13.0,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Text(
                    '${'当前账号'.tr}: ${detail.username}',
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: CustomTheme.secondaryColor,
                      fontSize: 13.0,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

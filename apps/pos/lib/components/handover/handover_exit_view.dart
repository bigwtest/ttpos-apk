import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pos/controllers/handover/handover_controller.dart';
import 'package:pos/controllers/login/login_controller.dart';
import 'package:ttpos_ui/components/tt_button/tt_button.dart';
import 'package:ttpos_ui/controllers/config_controller.dart';
import 'package:ttpos_ui/theme/theme.dart';

class HandoverExitView extends StatelessWidget {
  HandoverExitView({
    super.key,
    required this.currentCashTotal,
    required this.currentWithdrawAmountText,
    required this.currentReserveAmountText,
  });
  final String currentCashTotal;
  final String currentWithdrawAmountText;
  final String currentReserveAmountText;

  final HandoverController controller = Get.find<HandoverController>();
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 380,
      padding: EdgeInsets.all(24.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 16.0,
        children: [
          Text(
            '本班情况'.tr,
            style: TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.w600,
              color: CustomTheme.secondaryColor,
            ),
          ),
          Column(
            spacing: 6.0,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              _buildRow('本班收入现金'.tr, controller.currentCashTotal),
              _buildRow('本班取出现金'.tr, controller.currentWithdrawAmountText),
              _buildRow('本班遗留现金'.tr, controller.currentReserveAmountText),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            spacing: 16.0,
            children: [
              Expanded(
                child: TtButton(
                  text: '退出'.tr,
                  fontWeight: FontWeight.w600,
                  buttonType: ActionButtonType.outline,
                  onTap: () async {
                    await LoginController.logout();
                  },
                ),
              ),
              Expanded(
                child: TtButton(
                  text: '打印'.tr,
                  fontWeight: FontWeight.w600,
                  buttonType: ActionButtonType.primary,
                  onTap: () {
                    controller.onPrint();
                  },
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

Widget _buildRow(String title, String value) {
  return Row(
    spacing: 8.0,
    children: [
      Text(
        title,
        style: TextStyle(
          fontSize: 12.0,
          fontWeight: FontWeight.w400,
          color: CustomTheme.secondaryColor,
        ),
      ),
      Text(
        value.primaryCurrency,
        style: TextStyle(
          fontSize: 16.0,
          fontWeight: FontWeight.w600,
          color: CustomTheme.errorColor,
        ),
      ),
      Text(
        value.secondaryCurrency,
        style: TextStyle(
          fontSize: 16.0,
          fontWeight: FontWeight.w600,
          color: CustomTheme.greyColor,
        ),
      ),
    ],
  );
}

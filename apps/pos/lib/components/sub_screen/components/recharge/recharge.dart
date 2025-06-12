import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pos/components/sub_screen/components/qrcode/qrcode.dart';
import 'package:pos/components/sub_screen/components/recharge/controllers/recharge_controller.dart';
import 'package:ttpos_ui/theme/theme.dart';

class Recharge extends GetView<RechargeController> {
  const Recharge({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: CustomTheme.greyColor.shade100,
      child: Center(
        child: Obx(
          () => Qrcode(
            detail: controller.payDetail,
          ),
        ),
      ),
    );
  }
}

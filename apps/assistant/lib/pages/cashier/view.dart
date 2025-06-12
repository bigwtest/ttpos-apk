import 'package:assistant/components/cashier/cashier.dart';
import 'package:assistant/controllers/base/main_controller.dart';
import 'package:assistant/routers/name.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ttpos_ui/controllers/font_size_controller.dart';

class CashierView extends StatelessWidget {
  const CashierView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Cashier(
          padding: EdgeInsets.symmetric(
            horizontal: 50.0.scalePadding,
            vertical: 64.0.scalePadding,
          ),
          onConfirm: () {
            // 请求基础信息
            if (Get.isRegistered<BaseInfoController>()) {
              final BaseInfoController baseInfoController = Get.find<BaseInfoController>();
              baseInfoController.loadBaseInfoFromAPI();
            }
            //
            Get.offAllNamed(RouteNames.home);
          },
        ),
      ),
    );
  }
}

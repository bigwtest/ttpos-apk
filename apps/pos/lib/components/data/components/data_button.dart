// Flutter imports:
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pos/controllers/data/data_controller.dart';
// Package imports:
import 'package:ttpos_ui/components/tt_button/tt_button.dart';
import 'package:ttpos_ui/controllers/font_size_controller.dart';

class DataButton extends StatelessWidget {
  const DataButton({super.key});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Flex(
        direction: Axis.horizontal,
        children: [
          Expanded(
            flex: 1,
            child: TtButton(
              text: '退出'.tr,
              fontWeight: FontWeight.w600,
              height: 40.0.scaleHeight,
              buttonType: ActionButtonType.outline,
              onTap: () => Get.back(),
            ),
          ),
          SizedBox(width: 20),
          Expanded(
            flex: 1,
            child: TtButton(
              text: '打印'.tr,
              fontWeight: FontWeight.w600,
              height: 40.0.scaleHeight,
              buttonType: ActionButtonType.primary,
              onTap: () => {
                Get.find<DataController>().search(),
                Get.find<DataController>().onPrint(),
              },
            ),
          ),
        ],
      ),
    );
  }
}

// Flutter imports:
import 'package:flutter/material.dart';
// Package imports:
import 'package:get/get.dart';
// Project imports:
import 'package:pos/controllers/setting/setting_controller.dart';
import 'package:ttpos_ui/components/tt_button/tt_button.dart';
import 'package:ttpos_ui/controllers/font_size_controller.dart';

class ButtonNav extends StatelessWidget {
  const ButtonNav({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final settingController = Get.find<SettingController>();

    return Obx(() {
      return Padding(
        padding: EdgeInsets.all(16.0.scalePadding),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: 16.0.scalePadding,
          children: [
            TtButton(
              text: '清除缓存'.tr,
              buttonType: ActionButtonType.outline,
              fontWeight: FontWeight.w600,
              onTap: () {
                settingController.reloadGoodsData();
                debugPrint('清除缓存');
              },
            ),
            TtButton(
              text: '重置'.tr,
              buttonType: ActionButtonType.outline,
              fontWeight: FontWeight.w600,
              onTap: () {
                settingController.loadInitDataAndReset();
                debugPrint('重置');
              },
            ),
            TtButton(
              text: '保存'.tr,
              buttonType: ActionButtonType.primary,
              fontWeight: FontWeight.w600,
              onTap: () {
                settingController.handleSaveSetting();
              },
            ),
          ],
        ),
      );
    });
  }
}

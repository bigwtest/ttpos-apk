// Flutter imports:
import 'package:flutter/material.dart';
// Package imports:
import 'package:get/get.dart';
// Project imports:
import 'package:pos/components/common/input_num_components.dart';
import 'package:pos/controllers/accept/accept_setting_controller.dart';
import 'package:ttpos_ui/components/switch/switch_components.dart';
import 'package:ttpos_ui/components/tt_button/tt_button.dart';
import 'package:ttpos_ui/theme/theme.dart';

class AcceptSettingView extends StatelessWidget {
  AcceptSettingView({super.key});
  final controller = Get.find<AcceptSettingController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 371.18,
      padding: EdgeInsets.all(24.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '接单设置'.tr,
            style: TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.w600,
              color: CustomTheme.secondaryColor,
            ),
          ),
          SizedBox(height: 16.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Obx(
                () => SwitchComponents(
                  label: '自动接单'.tr,
                  labelFontSize: 14.0,
                  isHorizontal: true,
                  isSwitch: controller.autoAccept,
                  onSwitchChanged: (val) {
                    controller.changeAutoAccept(val);
                  },
                ),
              ),
            ],
          ),
          SizedBox(height: 8.0),
          Text(
            '订单金额上限'.tr,
            style: TextStyle(
              fontSize: 14.0,
              color: CustomTheme.greyColor,
            ),
          ),
          SizedBox(height: 8.0),
          Obx(
            () => InputNumComponents(
              width: double.infinity,
              value: controller.maxAmount,
              onChanged: controller.changeMaxAmount,
            ),
          ),
          SizedBox(height: 8.0),
          Text(
            '超出此金额的需要进行手动接单'.tr,
            style: TextStyle(
              fontSize: 12.0,
              color: CustomTheme.greyColor,
            ),
          ),
          SizedBox(height: 8.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Obx(
                () => SwitchComponents(
                  label: '语音播报'.tr,
                  labelFontSize: 14.0,
                  isHorizontal: true,
                  isSwitch: controller.voiceNotification,
                  onSwitchChanged: (val) {
                    controller.changeVoiceNotification(val);
                  },
                ),
              ),
            ],
          ),
          SizedBox(height: 16.0),
          Row(
            children: [
              Expanded(
                child: Obx(
                  () => TtButton(
                    text: '取消'.tr,
                    fontWeight: FontWeight.bold,
                    buttonType: ActionButtonType.outline,
                    onTap: controller.isSubmitLoading
                        ? null
                        : () => {
                              Get.back(),
                            },
                  ),
                ),
              ),
              SizedBox(width: 12),
              Expanded(
                child: Obx(
                  () => TtButton(
                    text: '保存'.tr,
                    fontWeight: FontWeight.bold,
                    buttonType: ActionButtonType.primary,
                    isLoading: controller.isSubmitLoading,
                    onTap: controller.isSubmitLoading ? null : controller.submit,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

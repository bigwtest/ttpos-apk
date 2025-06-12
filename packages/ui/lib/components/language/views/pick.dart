import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ttpos_model/language/language_item.dart';
import 'package:ttpos_ui/components/language/controllers/pick.dart';
import 'package:ttpos_ui/components/tt_button/tt_button.dart';
import 'package:ttpos_ui/controllers/font_size_controller.dart';
import 'package:ttpos_ui/theme/theme.dart';

class LanguagePickerView extends StatelessWidget {
  const LanguagePickerView({super.key, this.onConfirm, this.initLanguage});

  final Future<bool> Function(LanguageItem? language)? onConfirm;
  final String? initLanguage;

  @override
  Widget build(BuildContext context) {
    return GetBuilder<LanguagePickerController>(
      init: LanguagePickerController(initLanguage: initLanguage),
      builder: (controller) {
        return Container(
          width: 360.0.scaleWidth,
          height: 320.0,
          padding: EdgeInsets.all(24.0),
          decoration: ShapeDecoration(
            color: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            spacing: 16.0,
            children: [
              SizedBox(
                width: double.infinity,
                child: Text(
                  '请选择打印语言'.tr,
                  // textAlign: TextAlign.center,
                  style: TextStyle(
                    color: CustomTheme.secondaryColor,
                    fontSize: 16.0,
                    fontWeight: FontWeight.w600,
                    height: 1.50,
                  ),
                ),
              ),
              Expanded(
                child: Obx(
                  () => GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 8,
                      crossAxisSpacing: 8,
                      mainAxisExtent: 40.0.scaleHeight,
                    ),
                    itemCount: controller.languages.length,
                    itemBuilder: (context, index) {
                      return Obx(() {
                        final currentLanguage = controller.languages[index];
                        final isSelected = currentLanguage.name == controller.selectedLanguage;

                        return TtButton(
                          onTap: () => controller.onSelectLanguage(currentLanguage),
                          text: currentLanguage.value,
                          buttonType: isSelected ? ActionButtonType.primary : ActionButtonType.outline,
                        );
                      });
                    },
                  ),
                ),
              ),
              Row(
                spacing: 8.0,
                children: [
                  Expanded(
                    child: TtButton(
                      text: '取消'.tr,
                      onTap: () => Get.back(),
                      sizeType: SizeButtonType.small,
                      buttonType: ActionButtonType.outline,
                    ),
                  ),
                  Expanded(
                    child: TtButton(
                      text: '确认'.tr,
                      onTap: () async {
                        final result = await onConfirm?.call(controller.currentLanguage);
                        if (result == true) {
                          Get.back();
                        }
                      },
                      sizeType: SizeButtonType.small,
                      buttonType: ActionButtonType.primary,
                    ),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ttpos_i18n/controllers/language_controller.dart';
import 'package:ttpos_ui/common/iconfont.dart';
import 'package:ttpos_ui/controllers/font_size_controller.dart';
import 'package:ttpos_ui/theme/theme.dart';

class LanguageSwitchView extends StatelessWidget {
  const LanguageSwitchView({
    super.key,
    this.child,
  });

  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return GetBuilder<LanguageController>(
      builder: (controller) {
        return Obx(() {
          return PopupMenuButton(
            offset: Offset(0, 8.0),
            position: PopupMenuPosition.under,
            initialValue: controller.languageCurrent,
            constraints: BoxConstraints(
              maxHeight: 240.0,
            ),
            itemBuilder: (context) => controller.languageList
                .map(
                  (e) => PopupMenuItem(
                    value: e.name,
                    onTap: () {
                      controller.setLanguage(e.name);
                    },
                    padding: EdgeInsets.symmetric(horizontal: 12.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          e.value,
                          style: TextStyle(
                            color: controller.languageCurrent == e.name
                                ? CustomTheme.primaryColor
                                : CustomTheme.secondaryColor,
                          ),
                        ),
                        Icon(
                          Icons.check,
                          color: controller.languageCurrent == e.name ? CustomTheme.primaryColor : Colors.transparent,
                          size: 16.0,
                        ),
                      ],
                    ),
                  ),
                )
                .toList(),
            onSelected: (value) {
              controller.setLanguage(value);
            },
            color: Colors.white,
            child: child ??
                Icon(
                  Iconfont.global,
                  color: Colors.white,
                  size: 24.0.scaleWidth,
                ),
          );
        });
      },
    );
  }
}

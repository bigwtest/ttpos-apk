// Flutter imports:
import 'package:flutter/material.dart';
// Package imports:
import 'package:get/get.dart';
import 'package:ttpos_i18n/controllers/language_controller.dart';
import 'package:ttpos_model/language/language_item.dart';
// Project imports:
import 'package:ttpos_ui/common/iconfont.dart';
import 'package:ttpos_ui/controllers/font_size_controller.dart';
import 'package:ttpos_ui/theme/theme.dart';

import 'select_overlay.dart';

//

class LanguageSelect extends StatelessWidget {
  LanguageSelect({super.key});

  final _languageInputGlobalKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<LanguageController>();

    return Center(
      child: SizedBox(
        key: _languageInputGlobalKey,
        width: 136.0.scaleWidth,
        height: 24.0.scaleHeight,
        child: TextButton(
          onPressed: () {
            _showLanguageOverlay(
              _languageInputGlobalKey,
              controller.languageCurrent,
              controller.languageList,
              (option) {
                if (option.value == null) return;
                controller.setLanguage(option.value!);
              },
            );
          },
          style: TextButton.styleFrom(
            padding: EdgeInsets.symmetric(
              horizontal: 6,
              vertical: 2,
            ), // 移除内边距
            // minimumSize: Size(
            //   91.12,
            //   16.0,
            // ), // 移除最小尺寸限制
            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
            visualDensity: VisualDensity.compact,
            backgroundColor: Colors.transparent,
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            spacing: 8.0,
            children: [
              Icon(
                Iconfont.global,
                color: CustomTheme.secondaryColor.shade600,
                size: 16.0.scaleWidth,
              ),
              Obx(
                () => Text(
                  controller.getLanguageTitle,
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: CustomTheme.secondaryColor,
                    fontSize: 12.0,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w600,
                    height: 1.44,
                  ),
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                ),
              ),
              Icon(
                Iconfont.arrowDown,
                color: CustomTheme.secondaryColor.shade600,
                size: 16.0.scaleWidth,
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _showLanguageOverlay(
    GlobalKey key,
    String lang,
    List<LanguageItem> options,
    Function(SelectOption) onItemSelected,
  ) {
    final RenderBox? renderBox = key.currentContext?.findRenderObject() as RenderBox?;
    if (renderBox == null) return;

    final offset = renderBox.localToGlobal(Offset.zero);
    final size = renderBox.size;

    Get.dialog(
      SelectOverlay(
        offset: offset,
        size: size,
        showDeleteButton: false,
        showCheckIcon: true,
        options: options
            .map(
              (item) => SelectOption(
                title: item.value,
                value: item.name,
                isSelected: lang == item.name,
              ),
            )
            .toList(),
        position: OverlayPosition.top,
        onItemSelected: onItemSelected,
        onTapOutside: () => Get.back(),
      ),
      barrierColor: Colors.transparent,
    );
  }
}

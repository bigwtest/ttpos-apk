import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ttpos_i18n/controllers/language_controller.dart';
import 'package:ttpos_ui/common/iconfont.dart';
import 'package:ttpos_ui/theme/theme.dart';

class SelectLanguageView extends GetView<LanguageController> {
  final void Function()? onSelectLanguage;

  const SelectLanguageView({
    super.key,
    this.onSelectLanguage,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 300.0,
      padding: const EdgeInsets.only(
        top: 24.0,
        left: 16.0,
        right: 16.0,
        bottom: 32.0,
      ),
      child: Column(
        spacing: 16.0,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '切换语言'.tr,
            style: TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.w600,
            ),
          ),
          Expanded(
            child: Obx(() {
              return ListView(
                children: List.generate(controller.languageList.length, (index) {
                  final item = controller.languageList[index];
                  return _languageItem(
                    onTap: () {
                      controller.setLanguage(item.name);
                      //
                      onSelectLanguage?.call();
                    },
                    text: item.value,
                    isSelected: controller.languageCurrent == item.name,
                    symbol: item.name,
                  );
                }),
              );
            }),
          ),
        ],
      ),
    );
  }
}

Widget _languageItem({
  required String text,
  bool isSelected = false,
  VoidCallback? onTap,
  String? symbol,
}) {
  return InkWell(
    onTap: onTap,
    child: Container(
      decoration: BoxDecoration(
        color: isSelected ? CustomTheme.primaryColor.shade50 : Colors.white,
        borderRadius: BorderRadius.circular(8),
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 14,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text,
            style: TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.w400,
              color: CustomTheme.secondaryColor,
              fontFamily: CustomTheme.getGoogleFontTextStyle(symbol ?? 'en').fontFamily,
            ),
          ),
          if (isSelected)
            Icon(
              Iconfont.success,
              color: CustomTheme.primaryColor,
              size: 24,
            ),
        ],
      ),
    ),
  );
}

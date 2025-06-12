import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ttpos_i18n/controllers/language_controller.dart';
import 'package:ttpos_ui/components/language/views/switch.dart';
import 'package:ttpos_ui/controllers/font_size_controller.dart';

class HeaderSelectLanguage extends StatelessWidget {
  HeaderSelectLanguage({super.key});

  final LanguageController languageController = Get.find<LanguageController>();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40.0.scaleHeight,
      width: 40.0.scaleWidth,
      child: LanguageSwitchView(),
    );
  }
}

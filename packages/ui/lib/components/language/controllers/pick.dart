import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ttpos_i18n/controllers/language_controller.dart';
import 'package:ttpos_model/language/language_item.dart';
import 'package:ttpos_ui/components/common/dialog/base.dart';
import 'package:ttpos_ui/components/language/views/pick.dart';
import 'package:ttpos_ui/controllers/printer_setting_controller.dart';

class LanguagePickerController extends GetxController {
  final String? initLanguage;

  LanguagePickerController({this.initLanguage});

  final LanguageController languageController = Get.find<LanguageController>();
  List<LanguageItem> get languages => languageController.languageList;
  late final String? defaultLanguage;
  // 选中的语言
  final RxString _selectedLanguage = ''.obs;
  String get selectedLanguage =>
      _selectedLanguage.value.isEmpty ? languageController.languageDefault : _selectedLanguage.value;
  set selectedLanguage(String value) => _selectedLanguage.value = value;

  LanguageItem? get currentLanguage {
    return languages.firstWhereOrNull((element) => element.name == selectedLanguage);
  }

  void onSelectLanguage(LanguageItem language) {
    selectedLanguage = language.name;
  }

  @override
  void onInit() {
    super.onInit();
    if (initLanguage != null) {
      selectedLanguage = initLanguage!;
    }
  }

  static Future<LanguageItem?> pick() async {
    LanguageItem? selectedLanguage;
    String? initLanguage;

    if (Get.isRegistered<PrinterSettingController>()) {
      final printerSettingController = Get.find<PrinterSettingController>();
      initLanguage = printerSettingController.cashierLanguage;
    }

    await Get.dialog(
      DismissKeyboardDialog(
        child: LanguagePickerView(
          initLanguage: initLanguage,
          onConfirm: (language) async {
            selectedLanguage = language;
            return true;
          },
        ),
      ),
      barrierDismissible: false,
    );
    debugPrint('selectedLanguage: ${selectedLanguage?.toJson()}');
    return selectedLanguage;
  }
}

import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:ttpos_i18n/controllers/language_controller.dart';
import 'package:ttpos_ui/theme/theme.dart';

class FontFamilyController extends GetxController {
  final bool allowRuntimeFetching;
  FontFamilyController({this.allowRuntimeFetching = true});

  LanguageController get controller {
    if (Get.isRegistered<LanguageController>()) {
      return Get.find<LanguageController>();
    } else {
      return Get.put(LanguageController());
    }
  }

  static void changeFontFamily(bool allowRuntimeFetching) {
    try {
      if (!Get.isRegistered<LanguageController>()) return;

      final languageController = Get.find<LanguageController>();
      final currentLanguage = languageController.languageCurrentForTimeController.value;
      final theme = CustomTheme.getThemeData(
        currentLanguage: currentLanguage,
        allowRuntimeFetching: allowRuntimeFetching,
      );

      Get.changeTheme(theme);
    } catch (error, stack) {
      debugPrint('FontFamilyController changeFontFamily error: $error');
      debugPrintStack(stackTrace: stack);
    }
  }

  Worker? _worker;

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    _worker = ever(
      controller.languageCurrentForTimeController,
      (_) {
        changeFontFamily(allowRuntimeFetching);
      },
    );

    super.onReady();
  }

  @override
  void onClose() {
    _worker?.dispose();
    _worker = null;

    super.onClose();
  }
}

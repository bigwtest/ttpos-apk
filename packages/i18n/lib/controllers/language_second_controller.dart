// Flutter imports:
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:ttpos_i18n/controllers/language_controller.dart';
import 'package:ttpos_i18n/controllers/language_enum.dart';
import 'package:ttpos_logger/logger.dart';
// Package imports:
import 'package:ttpos_shared/shared.dart';

class LanguageSecondController extends GetxController {
  //
  final languageController = Get.find<LanguageController>();
  // 缓存
  final SharedPreferencesWithCache _storage = Get.find<SharedPreferencesWithCache>();
  //
  final Log _logger = Log(appName: 'LanguageSecondController');
  Logger get logger => _logger.logger;
  // 副屏语言
  final RxString _languageSecond = 'en'.obs;

  String get languageSecond => _languageSecond.value;

  // 副屏 => 前端设置的-语言
  String get languageSecondCode => getLanguageParts(_languageSecond.value)[0];

  // 副屏 => 前端设置的-语言-地区
  String get countrySecondCode => getLanguageParts(_languageSecond.value)[1];

  Worker? _saveWorker;

  @override
  void onInit() {
    // 加载存储的语言
    _loadSecondLanguage();
    // 监听变化
    _saveWorker = debounce(
      languageController.languageListForTimeController,
      (value) {
        // 如果当前语言在数据
        bool hasLang = value.any((item) => item.name == languageSecond);
        if (!hasLang) saveSecondLanguage(languageController.languageDefault);
      },
      time: const Duration(milliseconds: 300),
    );
    //
    super.onInit();
  }

  @override
  void onClose() {
    _saveWorker?.dispose();
    _saveWorker = null;
    super.onClose();
  }

  Future<void> saveSecondLanguage(String lang) async {
    try {
      if (!languageController.isSupportedLanguage(lang)) {
        logger.severe('saveSecondLanguage Error: $lang is not supported');
        return;
      }
      await _storage.setString(StorageKey.languageSecond.asString, lang);
      _languageSecond.value = lang; // 更新响应式变量
    } catch (error, stackTrace) {
      logger.severe('saveSecondLanguage Error:', error, stackTrace);
    }
  }

  Future<void> _loadSecondLanguage() async {
    try {
      String? lang = _storage.getString(StorageKey.languageSecond.asString);
      _languageSecond.value = lang ?? 'en';
    } catch (error, stackTrace) {
      logger.severe('_loadSecondLanguage Error:', error, stackTrace);
    }
  }

  // 获取映射的本地语言
  List<String> getLanguageParts(String lang) {
    LanguageEnum? language = LanguageEnum.fromBackendLang(lang);
    //
    if (language == null) return ['en', 'US'];
    return language.frontendLang.split('_');
  }
}

// Flutter imports:
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:ttpos_i18n/controllers/language_enum.dart';
import 'package:ttpos_logger/logger.dart';
import 'package:ttpos_model/language/language_item.dart';
// Package imports:
import 'package:ttpos_shared/shared.dart';

class LanguageController extends GetxController {
  // 缓存
  final SharedPreferencesWithCache _storage = Get.find<SharedPreferencesWithCache>();
  //
  final Log _logger = Log(appName: 'LanguageController');
  Logger get logger => _logger.logger;
  // 当前语言，用户设置（缓存本地）
  // 例如'en'，设置的值是 => 接口定义的key
  // 如果要获取本地语言的key值，在通过映射关系获取
  final RxString _languageCurrent = 'en'.obs;

  RxString get languageCurrentForTimeController => _languageCurrent;

  String get languageCurrent => _languageCurrent.value;

  // 前端设置的-语言
  String get languageCode => _getLanguageParts(_languageCurrent.value)[0];

  // 前端设置的-语言-地区
  String get countryCode => _getLanguageParts(_languageCurrent.value)[1];

  String get languageCodeAndCountryCode => _getLanguageParts(_languageCurrent.value).join('_');

  static List<LanguageItem> localLanguageList = [
    LanguageItem(
      name: 'en', // 后台定义的key
      value: 'English', // 英文-美
    ),
    LanguageItem(
      name: 'zh', // 后台定义的key
      value: '简体中文', // 中文-简体
    ),
    LanguageItem(
      name: 'zhtw', // 后台定义的key
      value: '繁體中文', // 中文-繁体
    ),
    LanguageItem(
      name: 'th', // 后台定义的key
      value: 'ภาษาไทย', // 泰语
    ),
    LanguageItem(
      name: 'ja', // 后台定义的key
      value: '日本語', // 日语
    ),
    LanguageItem(
      name: 'ko', // 后台定义的key
      value: '한국어', // 韩语
    ),
    LanguageItem(
      name: 'my', // 后台定义的key
      value: 'မြန်မာဘာသာ', // 缅甸
    ),
    LanguageItem(
      name: 'tr', // 后台定义的key
      value: 'Türkçe', // 土耳其语
    ),
    LanguageItem(
      name: 'de', // 后台定义的key
      value: 'Deutschland', // 德语
    ),
  ];

  // 语言列表（接口返回在覆盖掉 => 缓存本地）
  final RxList<LanguageItem> _languageList = <LanguageItem>[].obs;
  RxList<LanguageItem> get languageListForTimeController => _languageList;
  // 语言列表
  List<LanguageItem> get languageList => _languageList.toList();
  set languageList(List<LanguageItem> value) {
    _languageList.value = value;
    // 如果当前语言在数据列表中不存在，则设置为默认语言
    bool hasLang = value.any((item) => item.name == languageCurrent);
    if (!hasLang) setLanguage(languageDefault);
  }

  // 接口返回 => 默认语言（缓存本地）
  final RxString _languageDefault = 'en'.obs;
  String get languageDefault => _languageDefault.value;
  set languageDefault(value) {
    if (_languageDefault.value == value) return;
    _languageDefault.value = value;

    String? lang = _storage.getString(StorageKey.languageCurrent.asString);
    if (lang == null) {
      setLanguage(value);
    }
  }

  @override
  void onInit() {
    initLanguageList();
    // 加载存储的语言
    _loadLanguageCurrent();
    //
    super.onInit();
  }

  void initLanguageList() {
    languageList = localLanguageList;
  }

  // 保存语言到 SharedPreferences
  Future<void> _saveLanguageCurrent(String lang) async {
    try {
      await _storage.setString(
        StorageKey.languageCurrent.asString,
        lang,
      );
      _languageCurrent.value = lang; // 更新响应式变量
    } catch (error, stackTrace) {
      logger.severe('saveLanguageCurrent Error:', error, stackTrace);
    }
  }

  // 从 SharedPreferences 加载语言
  Future<void> _loadLanguageCurrent() async {
    try {
      String? lang = _storage.getString(StorageKey.languageCurrent.asString);
      _languageCurrent.value = lang ?? 'en';
      // 判断是否一致
      if (Get.locale == Locale(languageCode, countryCode)) return;
      // 更新
      Get.updateLocale(Locale(languageCode, countryCode));
    } catch (error, stackTrace) {
      logger.severe('loadLanguageCurrent Error:', error, stackTrace);
    }
  }

  // 删除存储的语言
  // Future<void> removeLanguageCurrent() async {
  //   try {
  //     await _storage.remove(StorageKey.languageCurrent.asString);
  //     _languageCurrent.value = ''; // 更新响应式变量
  //   } catch (e) {
  //     print('removeLanguageCurrent => $e');
  //   }
  // }

  bool isSupportedLanguage(String lang) {
    return languageList.any((item) => item.name == lang);
  }

  // 设置语言
  void setLanguage(String lang) {
    // 如果传入的语言为空，则设置为列表第一位
    if (lang.isEmpty) {
      lang = languageList.first.name;
    }
    // 如果当前语言与传入的语言一致，则不进行设置
    if (_languageCurrent.value == lang) return;
    // 如果传入的语言不支持，则不进行设置
    if (!isSupportedLanguage(lang)) {
      logger.severe('setLanguage Error: $lang is not supported');
      lang = languageList.first.name;
    }
    // 设置
    _saveLanguageCurrent(lang);
    // 获取语言
    List<String> parts = _getLanguageParts(lang);
    // 判断是否一致
    if (Get.locale == Locale(parts[0], parts[1])) return;
    // 更新
    Get.updateLocale(Locale(parts[0], parts[1]));
  }

  // 获取映射的本地语言
  List<String> _getLanguageParts(String lang) {
    LanguageEnum? language = LanguageEnum.fromBackendLang(lang);
    //
    if (language == null) return ['en', 'US'];
    return language.frontendLang.split('_');
  }

  // 获取语言名称
  String get getLanguageTitle {
    return languageList
            .firstWhereOrNull(
              (item) => item.name == languageCurrent,
            )
            ?.value ??
        '';
  }
}

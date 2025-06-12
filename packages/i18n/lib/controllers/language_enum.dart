import 'package:flutter/foundation.dart';

enum LanguageEnum {
  // 枚举值(后台定义的key, 前端定义的key),
  en('en', 'en_US'), // 英文-美
  zh('zh', 'zh_CN'), // 中文-简体
  zhtw('zhtw', 'zh_TW'), // 中文-繁体
  th('th', 'th_TH'), // 泰语
  ja('ja', 'ja_JP'), // 日语
  ko('ko', 'ko_KR'), // 韩语
  my('my', 'my_MM'), // 缅甸
  tr('tr', 'tr_TR'), // 土耳其语
  de('de', 'de_DE'); // 德语

  final String backendLang; // 后台定义的key
  final String frontendLang; // 前端定义的key
  const LanguageEnum(this.backendLang, this.frontendLang);

  // 静态方法，通过后端的字符串获取枚举值
  static LanguageEnum? fromBackendLang(String backendLang) {
    try {
      for (var language in LanguageEnum.values) {
        if (language.backendLang == backendLang) {
          return language;
        }
      }
      return null;
    } catch (error, stackTrace) {
      debugPrint('LocaleNameTranslate=>translateSecond, name=>$backendLang, error:$error');
      debugPrintStack(stackTrace: stackTrace);
      return null;
    }
  }

  // 通过字符串获取枚举
  // String backendLang = 'zh';
  // LanguageEnum? language = LanguageEnum.fromBackendLang(backendLang);
  // print('The language for name "$backendLang" is ${language.toString()}');

  // 通过枚举获取字符串
  // LanguageEnum language = LanguageEnum.en;
  // print('Language backendLang for English is: ${language.backendLang}'); // 输出: Language backendLang for English is: en
}

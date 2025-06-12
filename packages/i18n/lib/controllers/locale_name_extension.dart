import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:ttpos_i18n/controllers/language_controller.dart';
import 'package:ttpos_i18n/controllers/language_second_controller.dart';
import 'package:ttpos_model/locale_name/locale_name.dart';

extension LocaleNameExtension on LocaleName {
  String? operator [](String key) {
    switch (key) {
      case 'en':
        return en;
      case 'zh':
        return zh;
      case 'zhtw':
        return zhtw;
      case 'th':
        return th;
      case 'ja':
        return ja;
      case 'ko':
        return ko;
      case 'my':
        return my;
      case 'tr':
        return tr;
      // case 'de':
      //   return de;
      default:
        return null;
    }
  }

  // 主屏语言
  String get translate {
    try {
      final languageController = Get.find<LanguageController>();
      return this[languageController.languageCurrent] ?? '';
    } catch (error, stackTrace) {
      debugPrint('LocaleNameTranslate=>translate, this=>$this, error:$error');
      debugPrintStack(stackTrace: stackTrace);
    }
    return '';
  }

  // 副屏语言
  String get translateSecond {
    try {
      final languageSecondController = Get.find<LanguageSecondController>();
      return this[languageSecondController.languageSecond] ?? '';
    } catch (error, stackTrace) {
      debugPrint('LocaleNameTranslate=>translateSecond, this=>$this, error:$error');
      debugPrintStack(stackTrace: stackTrace);
    }
    return '';
  }
}

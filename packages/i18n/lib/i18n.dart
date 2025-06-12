import 'package:get/get.dart';

import 'package:ttpos_i18n/langs/en_us.dart';
import 'package:ttpos_i18n/langs/ja_jp.dart';
import 'package:ttpos_i18n/langs/ko_kr.dart';
import 'package:ttpos_i18n/langs/my_mm.dart';
import 'package:ttpos_i18n/langs/th_th.dart';
import 'package:ttpos_i18n/langs/tr_tr.dart';
import 'package:ttpos_i18n/langs/zh_cn.dart';
import 'package:ttpos_i18n/langs/zh_tw.dart';
import 'package:ttpos_i18n/langs/de_de.dart';

class Messages extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en_US': {
          ...enUS, // 英文-美
        },
        'zh_CN': {
          ...zhCN, // 中文-简体
        },
        'zh_TW': {
          ...zhTW, // 中文-繁体
        },
        'th_TH': {
          ...thTH, // 泰语
        },
        'ja_JP': {
          ...jaJP, // 日语
        },
        'ko_KR': {
          ...koKR, // 韩语
        },
        'my_MM': {
          ...myMM, // 缅甸
        },
        'tr_TR': {
          ...trTR, // 土耳其语
        },
        'de_DE': {
          ...deDE, // 德语
        },
      };
}

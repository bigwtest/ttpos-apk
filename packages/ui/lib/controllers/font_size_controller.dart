// Package imports:
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:ttpos_logger/logger.dart';
// Package imports:
import 'package:ttpos_shared/shared.dart';

enum FontSizeType {
  small('small'),
  normal('normal'),
  large('large'),
  huge('huge');

  //
  final String name;
  const FontSizeType(this.name);

  // 静态方法
  static FontSizeType? fromName(String name) {
    try {
      for (var item in FontSizeType.values) {
        if (item.name == name) {
          return item;
        }
      }
      return null;
    } catch (error, stackTrace) {
      debugPrint('FontSizeType=>fromName, name=>$name, error:$error');
      debugPrintStack(stackTrace: stackTrace);
      return null;
    }
  }
}

class FontSizeController extends GetxController {
  // 缓存
  final SharedPreferencesWithCache _storage = Get.find<SharedPreferencesWithCache>();
  //
  final Log _logger = Log(appName: 'FontSizeController');
  Logger get logger => _logger.logger;
  //
  List<Map<String, dynamic>> get fontSizeList => [
        {
          'value': 16,
          'key': 'normal',
          'label': '标准'.tr,
          'textScaler': 1.0,
        },
        {
          'value': 20,
          'key': 'large',
          'label': '中'.tr,
          'textScaler': 1.2,
        },
        {
          'value': 24,
          'key': 'huge',
          'label': '大'.tr,
          'textScaler': 1.4,
        },
      ];

  final RxInt _currentFontSize = 16.obs;

  // 获取放大倍率
  double get textScaler => fontSizeList.firstWhere(
        (item) => item['value'] == _currentFontSize.value,
      )['textScaler'];
  //
  String get fontSizeKey => fontSizeList.firstWhere(
        (item) => item['value'] == _currentFontSize.value,
      )['key'];

  @override
  void onInit() {
    // 加载存储的语言
    loadFontSize();
    //
    super.onInit();

    ever(
      _currentFontSize,
      (_) async {
        // NOTE: 参考了Get.updateLocale() 的实现，
        // 在 Get.updateLocale() 中，会调用 forceAppUpdate() 来更新应用
        // 这里我们同样需要调用 forceAppUpdate() 来更新应用
        await Get.forceAppUpdate();
      },
    );
  }

  int get currentFontSize => _currentFontSize.value;

  Future<void> setFontSize(int num) async {
    try {
      await _storage.setInt(StorageKey.currentFontSize.asString, num);
      _currentFontSize.value = num;
    } catch (error, stackTrace) {
      logger.severe('setFontSize Error:', error, stackTrace);
    }
  }

  Future<void> loadFontSize() async {
    try {
      int? num = _storage.getInt(StorageKey.currentFontSize.asString);
      _currentFontSize.value = num ?? 16;
    } catch (error, stackTrace) {
      logger.severe('loadFontSize Error:', error, stackTrace);
    }
  }
}

extension DisplayScaler on double {
  double get scalePadding {
    try {
      final FontSizeController fontSizeController = Get.find<FontSizeController>();
      int textScaler = fontSizeController.currentFontSize;

      return this * textScaler / 16;
    } catch (error, stackTrace) {
      debugPrint('scalePadding Error: $error');
      debugPrintStack(stackTrace: stackTrace);
      return this;
    }
  }

  double get scaleMargin {
    try {
      final FontSizeController fontSizeController = Get.find<FontSizeController>();
      int textScaler = fontSizeController.currentFontSize;

      return this * textScaler / 16;
    } catch (error, stackTrace) {
      debugPrint('scaleMargin Error: $error');
      debugPrintStack(stackTrace: stackTrace);
      return this;
    }
  }

  double get scaleHeight {
    try {
      final FontSizeController fontSizeController = Get.find<FontSizeController>();
      int textScaler = fontSizeController.currentFontSize;

      return this * textScaler / 16;
    } catch (error, stackTrace) {
      debugPrint('scaleHeight Error: $error');
      debugPrintStack(stackTrace: stackTrace);
      return this;
    }
  }

  double get scaleWidth {
    try {
      final FontSizeController fontSizeController = Get.find<FontSizeController>();
      int textScaler = fontSizeController.currentFontSize;

      return this * textScaler / 16;
    } catch (error, stackTrace) {
      debugPrint('scaleWidth Error: $error');
      debugPrintStack(stackTrace: stackTrace);
      return this;
    }
  }

  // 自定义倍率
  double get scaleWidthSmall {
    try {
      final FontSizeController fontSizeController = Get.find<FontSizeController>();
      //
      final name = FontSizeType.fromName(fontSizeController.fontSizeKey);
      if (name == FontSizeType.large) {
        return this * 1.2;
      } else if (name == FontSizeType.huge) {
        return this * 1.2;
      }
      //
      return this;
    } catch (error, stackTrace) {
      debugPrint('scaleWidthSmall Error: $error');
      debugPrintStack(stackTrace: stackTrace);
      return this;
    }
  }
}

// Package imports:
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:ttpos_logger/logger.dart';
// Package imports:
import 'package:ttpos_shared/shared.dart';

class CardStyleController extends GetxController {
  // 缓存
  final SharedPreferencesWithCache _storage = Get.find<SharedPreferencesWithCache>();
  //
  final Log _logger = Log(appName: 'CardStyleController');
  Logger get logger => _logger.logger;

  //
  List<Map<String, dynamic>> get cardStyleList => [
        {
          'value': 0,
          'label': '无图模式'.tr,
          // 'key': 'noImageMode',
        },
        {
          'value': 1,
          'label': '图片模式'.tr,
          // 'key': 'imageMode',
        },
      ];

  final RxInt _currentCardStyle = 1.obs;
  // 是否为图片模式
  bool get isImageMode => _currentCardStyle.value == 1;

  @override
  void onInit() {
    // 加载存储的语言
    loadCardStyle();
    //
    super.onInit();
  }

  int get currentCardStyle => _currentCardStyle.value;

  Future<void> setCardStyle(int num) async {
    try {
      await _storage.setInt(StorageKey.currentCardStyle.asString, num);
      _currentCardStyle.value = num;
    } catch (error, stackTrace) {
      logger.severe('setCardStyle Error:', error, stackTrace);
    }
  }

  Future<void> loadCardStyle() async {
    try {
      int? num = _storage.getInt(StorageKey.currentCardStyle.asString);
      _currentCardStyle.value = num ?? 1;
    } catch (error, stackTrace) {
      logger.severe('loadCardStyle Error:', error, stackTrace);
    }
  }
}

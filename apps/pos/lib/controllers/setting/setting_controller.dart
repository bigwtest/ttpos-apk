// Package imports:
import 'package:get/get.dart';
import 'package:pos/api/setting/setting_api.dart';
import 'package:pos/model/response/setting/edit_system_setting.dart';
import 'package:pos/model/response/setting/setting.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:ttpos_api/refresh_service.dart';
import 'package:ttpos_i18n/controllers/language_controller.dart';
import 'package:ttpos_i18n/controllers/language_second_controller.dart';
import 'package:ttpos_logger/logger.dart';
import 'package:ttpos_model/base/request/options.dart';
import 'package:ttpos_shared/shared.dart';
import 'package:ttpos_ui/components/common/dialog/manager.dart';
import 'package:ttpos_ui/controllers/card_style_controller.dart';
import 'package:ttpos_ui/controllers/font_size_controller.dart';
import 'package:ttpos_ui/controllers/subscreen_service.dart';

class SettingController extends GetxController {
  final Log _logger = Log(appName: 'SettingController');
  Logger get logger => _logger.logger;
  Worker? _worker;

  @override
  void onReady() {
    super.onReady();
    _worker = ever(RefreshService.to.signal, (_) => getSetting());

    loadInitDataAndReset();
    getSetting();
  }

  @override
  void onClose() {
    //
    _worker?.dispose();
    //
    super.onClose();
  }

  // 语言-控制器
  LanguageController languageController = Get.find<LanguageController>();
  // 副屏语言-控制器
  LanguageSecondController languageSecondController = Get.find<LanguageSecondController>();
  // 字体-控制器
  FontSizeController fontSizeController = Get.find<FontSizeController>();
  // 菜品卡片样式
  CardStyleController cardStyleController = Get.find<CardStyleController>();
  //
  final SharedPreferencesWithCache _storage = Get.find<SharedPreferencesWithCache>();

  final RxBool _isTabletShowSoldOut = false.obs;
  set isTabletShowSoldOut(bool val) {
    _isTabletShowSoldOut.value = val;
  }

  bool get isTabletShowSoldOut => _isTabletShowSoldOut.value;

  final RxBool _isScanShowSoldOut = false.obs;
  set isScanShowSoldOut(bool val) {
    _isScanShowSoldOut.value = val;
  }

  bool get isScanShowSoldOut => _isScanShowSoldOut.value;

  final RxBool _isMenuShowSoldOut = false.obs;
  set isMenuShowSoldOut(bool val) {
    _isMenuShowSoldOut.value = val;
  }

  bool get isMenuShowSoldOut => _isMenuShowSoldOut.value;

  final RxBool _isAssistantShowSoldOut = false.obs;
  set isAssistantShowSoldOut(bool val) {
    _isAssistantShowSoldOut.value = val;
  }

  bool get isAssistantShowSoldOut => _isAssistantShowSoldOut.value;

  final RxString _deviceRemark = ''.obs;
  set deviceRemark(String val) {
    _deviceRemark.value = val;
  }

  final RxBool _isLoading = false.obs;
  set isLoading(bool val) {
    _isLoading.value = val;
  }

  bool get isLoading => _isLoading.value;

  String get deviceRemark => _deviceRemark.value;

  final RxString _languageCurrent = 'en'.obs;
  set languageCurrent(String val) {
    if (_languageCurrent.value == val) return;
    _languageCurrent.value = val;
  }

  String get languageCurrent => _languageCurrent.value;

  final RxString _languageSecond = 'en'.obs;
  set languageSecond(String val) {
    if (_languageSecond.value == val) return;
    _languageSecond.value = val;
  }

  String get languageSecond => _languageSecond.value;

  final RxInt _currentFontSize = 16.obs;
  set currentFontSize(int val) {
    if (_currentFontSize.value == val) return;
    _currentFontSize.value = val;
  }

  int get currentFontSize => _currentFontSize.value;

  final RxInt _currentCardStyle = 1.obs;
  set currentCardStyle(int val) {
    if (_currentCardStyle.value == val) return;
    _currentCardStyle.value = val;
  }

  int get currentCardStyle => _currentCardStyle.value;

  Future<void> getLanguage() async {
    final res = await SettingAPI().getLanguage();
    // 赋值
    if (res != null) {
      // 语言列表
      languageController.languageList = res.languageList;
      // 默认值
      languageController.languageDefault = res.defaultLanguage;
    }
    DialogManager.showToast('刷新成功'.tr);
  }

  final Rxn<SystemSetting> _settingData = Rxn<SystemSetting>();
  SystemSetting? get settingData => _settingData.value;

  Future<void> getSetting() async {
    final res = await SettingAPI().getSetting();
    if (res != null) {
      _settingData.value = res.system;
      _updateSettingValues();
    }
  }

  void _updateSettingValues() {
    if (_settingData.value == null) return;
    int? num = _storage.getInt(StorageKey.currentCardStyle.asString);
    if (num == null) {
      cardStyleController.setCardStyle(int.tryParse(_settingData.value?.dishCardStyle ?? '0') ?? 0);
    }

    isTabletShowSoldOut = _settingData.value?.isShowSoldOut == 1;
    isMenuShowSoldOut = _settingData.value?.menuShowSoldOut == 1;
    isAssistantShowSoldOut = _settingData.value?.isShowAssistantSoldOut == 1;
    isScanShowSoldOut = _settingData.value?.isShowScanSoldOut == 1;
  }

  //按照原有逻辑，就是重新加载一遍数据替换缓存数据
  void reloadGoodsData() {
    RefreshService.to.fire();
    DialogManager.showToast('清理完成'.tr);
  }

  // 初始化数据和重置数据
  Future<void> loadInitDataAndReset() async {
    // 主屏语言
    languageCurrent = languageController.languageCurrent;
    // 副屏语言
    languageSecond = languageSecondController.languageSecond;
    // 字体大小
    currentFontSize = fontSizeController.currentFontSize;
    // 菜品卡片样式
    currentCardStyle = cardStyleController.currentCardStyle;
    // 机器备注
    deviceRemark = _storage.getString(StorageKey.deviceRemark.asString) ?? '';

    _updateSettingValues();
  }

  // 保存设置数据方法
  Future<void> handleSaveSetting() async {
    try {
      await SettingAPI().editSystemSetting(
        options: ExtraRequestOptions(
          showGlobalLoading: true,
        ),
        setting: EditSystemSetting(
          deviceRemark: _deviceRemark.value,
          dishCardStyle: _currentCardStyle.value.toString(),
          isShowAssistantSoldOut: isAssistantShowSoldOut ? 1 : 0,
          isShowScanSoldOut: isScanShowSoldOut ? 1 : 0,
          isShowSoldOut: isTabletShowSoldOut ? 1 : 0,
          menuShowSoldOut: isMenuShowSoldOut ? 1 : 0,
        ),
      );
    } catch (e) {
      logger.severe('保存设置异常: $e');
      DialogManager.showToast('保存异常'.tr);
      return;
    }
    if (_settingData.value != null) {
      _settingData.value = _settingData.value!.copyWith(
        dishCardStyle: _currentCardStyle.value.toString(),
        isShowSoldOut: isTabletShowSoldOut ? 1 : 0,
        menuShowSoldOut: isMenuShowSoldOut ? 1 : 0,
        isShowAssistantSoldOut: isAssistantShowSoldOut ? 1 : 0,
        isShowScanSoldOut: isScanShowSoldOut ? 1 : 0,
      );
    }

    final remarkValue = _deviceRemark.value;
    // 判断语言是否改变
    if (languageController.languageCurrent != _languageCurrent.value) {
      languageController.setLanguage(_languageCurrent.value);
    }
    // 判断副屏语言是否相同
    if (languageSecondController.languageSecond != _languageSecond.value) {
      languageSecondController.saveSecondLanguage(_languageSecond.value);
      // 发送副屏
      SubScreenService.setLanguage(_languageSecond.value);
    }
    // 判断字体大小
    if (fontSizeController.currentFontSize != _currentFontSize.value) {
      fontSizeController.setFontSize(_currentFontSize.value);
      // 发送副屏
      SubScreenService.setFontSize(_currentFontSize.value);
    }
    // 判断菜品卡片样式
    if (cardStyleController.currentCardStyle != _currentCardStyle.value) {
      cardStyleController.setCardStyle(_currentCardStyle.value);
    }
    // 保存机器备注
    _storage.setString(StorageKey.deviceRemark.asString, remarkValue);
    // 保存USB设备选择

    // 提示
    DialogManager.showToast('操作成功'.tr);
  }
}

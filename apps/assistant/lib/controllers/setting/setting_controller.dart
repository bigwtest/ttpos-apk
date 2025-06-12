import 'package:assistant/api/setting/setting_api.dart';
import 'package:assistant/components/cashier/cashier.dart';
import 'package:assistant/controllers/login/login_controller.dart';
import 'package:assistant/model/request/cashier/edit_setting.dart';
import 'package:get/get.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:ttpos_api/refresh_service.dart';
import 'package:ttpos_logger/logger.dart';
import 'package:ttpos_model/base/request/options.dart';
import 'package:ttpos_shared/shared.dart';
import 'package:ttpos_ui/components/common/dialog/base.dart';
import 'package:ttpos_ui/components/common/dialog/manager.dart';
import 'package:ttpos_ui/components/common/dialog/update/update_controller.dart';
import 'package:ttpos_ui/controllers/card_style_controller.dart';
import 'package:ttpos_ui/controllers/font_size_controller.dart';

class SettingController extends GetxController {
  final Log _logger = Log(appName: 'SettingController');
  Logger get logger => _logger.logger;

  final SharedPreferencesWithCache _storage = Get.find<SharedPreferencesWithCache>();
  // 字体-控制器
  final FontSizeController fontSizeController = Get.find<FontSizeController>();
  // 菜品卡片样式
  final CardStyleController cardStyleController = Get.find<CardStyleController>();
  final UpdateController updateController = Get.put(UpdateController());

  final RxList _fontSizeList = <Map<String, dynamic>>[].obs;
  get fontSizeList => _fontSizeList.toList();
  set fontSizeList(val) {
    _fontSizeList.assignAll(val);
  }

  // 字体-控制器
  final RxInt _currentFontSize = 16.obs;
  int get currentFontSize => _currentFontSize.value;
  set currentFontSize(int val) {
    _currentFontSize.value = val;
  }

  final RxList _cardStyleList = <Map<String, dynamic>>[].obs;
  get cardStyleList => _cardStyleList.toList();
  set cardStyleList(val) {
    _cardStyleList.assignAll(val);
  }

  // 菜品卡片样式-控制器
  final RxInt _currentCardStyle = 1.obs;
  int get currentCardStyle => _currentCardStyle.value;
  set currentCardStyle(int val) {
    _currentCardStyle.value = val;
  }

  // 备注
  final RxString _deviceRemark = ''.obs;
  String get deviceRemark => _deviceRemark.value;
  set deviceRemark(String val) {
    _deviceRemark.value = val;
  }

  @override
  void onInit() {
    handleReset();
    //
    super.onInit();
  }

  // 加载初始数据
  void handleReset() {
    // 字体大小
    currentFontSize = fontSizeController.currentFontSize;
    fontSizeList = fontSizeController.fontSizeList;
    // 菜品卡片样式
    currentCardStyle = cardStyleController.currentCardStyle;
    cardStyleList = cardStyleController.cardStyleList;
    // 机器备注
    deviceRemark = _storage.getString(StorageKey.deviceRemark.asString) ?? '';
  }

  // 保存设置
  Future<void> handleSaveSetting() async {
    if (deviceRemark != _storage.getString(StorageKey.deviceRemark.asString)) {
      try {
        await SettingApi().editSetting(
          setting: EditSettingModel(remark: deviceRemark),
          options: ExtraRequestOptions(showGlobalLoading: true),
        );
      } catch (e) {
        logger.severe('保存设置异常: $e');
        DialogManager.showToast('保存异常'.tr);
        return;
      }
    }
    // 判断字体大小
    if (fontSizeController.currentFontSize != _currentFontSize.value) {
      fontSizeController.setFontSize(_currentFontSize.value);
    }
    // 判断菜品卡片样式
    if (cardStyleController.currentCardStyle != _currentCardStyle.value) {
      cardStyleController.setCardStyle(_currentCardStyle.value);
    }
    // 保存机器备注
    _storage.setString(StorageKey.deviceRemark.asString, deviceRemark);
    //
    Get.back();
    //
    DialogManager.showToast('保存成功'.tr);
  }

  // 更换收银员
  void handleReplaceCashier() async {
    await Get.dialog<bool>(
      DismissKeyboardDialog(
        child: Cashier(
          isShowCancelBtn: true,
          onCancel: () {
            Get.back();
          },
          onConfirm: () {
            Get.back();
          },
        ),
      ),
    );
  }

  //  检查版本
  void handleCheckVersion() async {
    final packageInfo = await PackageInfo.fromPlatform();
    updateController.checkUpdate(
      currentType: 'assistant',
      currentVersion: packageInfo.version,
    );
  }

  // 清除缓存
  void handleClearCache() {
    RefreshService.to.fire();
    DialogManager.showToast('清理完成'.tr);
  }

  // 退出登录
  void handleLogout() async {
    await DialogManager.showConfirmDialog(
      title: '退出确认'.tr,
      message: '确定要退出登录吗？'.tr,
      onConfirm: () async {
        await LoginController.logout();
        return true;
      },
    );
  }
}

import 'package:get/get.dart';
import 'package:kds/api/home/get_kds_setting_api.dart';
import 'package:kds/api/home/setting_bind_api.dart';
import 'package:kds/controllers/accept/accept_list_controller.dart';
import 'package:kds/controllers/common/call_reminder_controller.dart';
import 'package:kds/controllers/common/food_reminder_controller.dart';
import 'package:kds/controllers/login/login_controller.dart';
import 'package:kds/model/request/req_band.dart';
import 'package:kds/model/response/resp_print_list.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:ttpos_logger/logger.dart';
import 'package:ttpos_model/base/request/options.dart';
import 'package:ttpos_shared/shared.dart';
import 'package:ttpos_ui/components/common/dialog/manager.dart';
import 'package:ttpos_ui/components/common/dialog/update/update_controller.dart';
import 'package:ttpos_ui/controllers/font_size_controller.dart';

class SettingController extends GetxController {
  final Log _logger = Log(appName: 'SettingController');
  Logger get logger => _logger.logger;

  final SharedPreferencesWithCache _storage = Get.find<SharedPreferencesWithCache>();

  final UpdateController updateController = Get.put(UpdateController());
  final FontSizeController fontSizeController = Get.find<FontSizeController>();

  final CallReminderController callReminderController = Get.find<CallReminderController>();
  final FoodReminderController foodReminderController = Get.find<FoodReminderController>();

  final isShow = false.obs;

  final RxBool _callReminder = false.obs;
  bool get callReminder => _callReminder.value;
  set callReminder(bool value) => _callReminder.value = value;

  final RxBool _foodArrivalReminder = false.obs;
  bool get foodArrivalReminder => _foodArrivalReminder.value;
  set foodArrivalReminder(bool value) => _foodArrivalReminder.value = value;

  final RxList _fontSizeList = <Map<String, dynamic>>[].obs;
  get fontSizeList => _fontSizeList.toList();
  set fontSizeList(val) {
    _fontSizeList.assignAll(val);
  }

  final RxList _printCounterList = <Map<String, dynamic>>[].obs;
  get printCounterList => _printCounterList.toList();
  set printCounterList(val) {
    _printCounterList.assignAll(val);
  }

  final RxInt _productPrinterUuid = 0.obs;
  int get productPrinterUuid => _productPrinterUuid.value;
  set productPrinterUuid(int value) => _productPrinterUuid.value = value;

  final RxString _deviceRemark = ''.obs;
  String get deviceRemark => _deviceRemark.value;
  set deviceRemark(String value) => _deviceRemark.value = value;

  // 字体-控制器
  final RxInt _currentFontSize = 16.obs;
  int get currentFontSize => _currentFontSize.value;
  set currentFontSize(int val) {
    _currentFontSize.value = val;
  }

  final RxString _serverVersion = ''.obs;
  String get serverVersion => _serverVersion.value;
  set serverVersion(String value) => _serverVersion.value = value;

  @override
  void onInit() {
    super.onInit();
    handleInitAndReset();
    getKdsSettingAPI();
  }

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

  void handleInitAndReset() {
    currentFontSize = fontSizeController.currentFontSize;
    fontSizeList = fontSizeController.fontSizeList;
    callReminder = callReminderController.callReminder;
    foodArrivalReminder = foodReminderController.foodReminder;
    deviceRemark = _storage.getString(StorageKey.deviceRemark.asString) ?? '';
    productPrinterUuid = _storage.getInt(StorageKey.productPrinterUuid.asString) ?? 0;
  }

  void handleCheckVersion() async {
    final packageInfo = await PackageInfo.fromPlatform();
    updateController.checkUpdate(
      currentType: 'kitchen',
      currentVersion: packageInfo.version,
    );
  }

  void handleSaveSetting() async {
    if (fontSizeController.currentFontSize != _currentFontSize.value) {
      fontSizeController.setFontSize(_currentFontSize.value);
    }
    // 保存声音提醒修改时间
    if (callReminderController.callReminder != _callReminder.value) {
      callReminderController.setCallReminder(_callReminder.value, true);
    }
    if (foodReminderController.foodReminder != _foodArrivalReminder.value) {
      foodReminderController.setFoodReminder(_foodArrivalReminder.value, true);
    }
    // 保存机器备注
    await _storage.setString(StorageKey.deviceRemark.asString, deviceRemark);

    // 保存打印档口UUID
    await _storage.setInt(StorageKey.productPrinterUuid.asString, productPrinterUuid);

    handleBind();
    //
    Get.back();
    //
  }

  final GetKdsSettingAPI _getKdsSettingAPI = GetKdsSettingAPI();

  /// 返回API响应数据，如果发生错误则返回null
  Future<RespPrintList?> getKdsSettingAPI() async {
    try {
      final response = await _getKdsSettingAPI.getKdsSetting();
      // 处理数组
      printCounterList = response?.list.map((e) => {'value': e.uuid, 'label': e.name}).toList() ?? [];
      return response;
    } catch (error, stackTrace) {
      logger.severe('getKdsSettingAPI Error:', error, stackTrace);
      return null;
    }
  }

  final SettingBindAPI _settingBindAPI = SettingBindAPI();

  Future<bool> handleBind() async {
    try {
      final response = await _settingBindAPI.bind(
        ReqBand(productPrinterUuid: productPrinterUuid, remark: deviceRemark),
        options: ExtraRequestOptions(
          showFailToast: true,
          showSuccessToast: true,
        ),
      );
      final acceptListController = Get.find<AcceptListController>();
      acceptListController.pageNo = 1;
      acceptListController.pageSize = fontSizeController.currentFontSize == 24 ? 3 : 4;
      acceptListController.getAcceptList();
      Get.back();
      return response;
    } catch (error, stackTrace) {
      logger.severe('handleBind Error:', error, stackTrace);
      return false;
    }
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:tablet/api/setting/setting_api.dart';
import 'package:tablet/common/select_desk_drawer.dart';
import 'package:tablet/components/common/voice_reminder_controller.dart';
import 'package:tablet/controllers/login/login_controller.dart';
import 'package:tablet/model/response/auth/edit_setting/edit_setting_model.dart';
import 'package:tablet/pages/desk_bind/controller.dart';
import 'package:tablet/pages/home/main.dart';
import 'package:ttpos_api/refresh_service.dart';
import 'package:ttpos_logger/logger.dart';
import 'package:ttpos_model/base/request/options.dart';
import 'package:ttpos_model/desk/response/item/item.dart';
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
  final VoiceReminderController voiceReminderController = Get.put(VoiceReminderController());
  final DeskBindController deskBindController = Get.find<DeskBindController>();
  @override
  void onInit() {
    handleInitAndReset();
    //
    super.onInit();
  }

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

  final RxString _deviceRemark = ''.obs;
  String get deviceRemark => _deviceRemark.value;
  set deviceRemark(String value) => _deviceRemark.value = value;

  final RxBool _voiceReminder = true.obs;
  bool get voiceReminder => _voiceReminder.value;
  set voiceReminder(bool value) => _voiceReminder.value = value;

  final RxString _serverVersion = ''.obs;
  String get serverVersion => _serverVersion.value;
  set serverVersion(String value) => _serverVersion.value = value;

  final Rx<Desk?> _currentTable = Rx<Desk?>(null);
  Desk? get currentTable => _currentTable.value;
  set currentTable(Desk? value) => _currentTable.value = value;

  void handleInitAndReset() {
    currentFontSize = fontSizeController.currentFontSize;
    fontSizeList = fontSizeController.fontSizeList;
    voiceReminder = voiceReminderController.voiceReminder;
    deviceRemark = _storage.getString(StorageKey.deviceRemark.asString) ?? '';
    currentTable = deskBindController.desk;
    //从base里拿？或是从别的地方拿
  }

  void handleCheckVersion() async {
    final packageInfo = await PackageInfo.fromPlatform();
    updateController.checkUpdate(
      currentType: 'tablet',
      currentVersion: packageInfo.version,
    );
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

  Future<bool> handleChooseTable(List<int> uuids, {Desk? desk}) async {
    debugPrint('onConfirm:  $desk');
    if (desk == null) {
      DialogManager.showToast('请选择桌位'.tr);
      return false;
    }
    currentTable = desk;
    return true;
  }

  void handleChangeTable() {
    Get.dialog(
      SelectDeskDrawer(onConfirm: handleChooseTable),
      barrierDismissible: false,
    );
  }

  void handleClearCache() {
    RefreshService.to.fire();
    DialogManager.showToast('清理完成'.tr);
  }

  // 保存设置
  Future<void> handleSaveSetting() async {
    //判断如果没有修改桌台，没有修改备注，则不需要请求接口，
    if (currentTable?.uuid != deskBindController.desk?.uuid ||
        deviceRemark != _storage.getString(StorageKey.deviceRemark.asString)) {
      try {
        await SettingAPI().editSetting(
          setting: EditSettingModel(
            deskUuid: currentTable?.uuid ?? 0,
            remark: deviceRemark,
          ),
          options: ExtraRequestOptions(
            showGlobalLoading: true,
          ),
        );
        // 重新跳转路由
        if (currentTable?.uuid != deskBindController.desk?.uuid) {
          if (Get.rootDelegate.currentConfiguration?.locationString == HomeRoutes.desk.homeRoute) {
            Future.microtask(() {
              Get.rootDelegate.offNamed(HomeRoutes.open.homeRoute);
            });
          }
        }
      } catch (e) {
        logger.severe('保存设置异常: $e');
        DialogManager.showToast('保存异常'.tr);
        return;
      }
      deskBindController.setDesk(currentTable);
    }

    // 保存声音提醒修改时间
    if (voiceReminderController.voiceReminder != _voiceReminder.value) {
      voiceReminderController.setVoiceReminder(_voiceReminder.value, true);
    }
    if (fontSizeController.currentFontSize != _currentFontSize.value) {
      fontSizeController.setFontSize(_currentFontSize.value);
    }
    // 保存机器备注
    _storage.setString(StorageKey.deviceRemark.asString, deviceRemark);
    //
    Get.back();
    //
    DialogManager.showToast('保存成功'.tr);

    RefreshService.to.fire();
  }
}

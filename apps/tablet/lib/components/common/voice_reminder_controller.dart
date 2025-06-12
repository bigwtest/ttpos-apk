import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:tablet/controllers/base/main_controller.dart';
import 'package:ttpos_shared/shared.dart';

class VoiceReminderController extends GetxController {
  final SharedPreferencesWithCache _storage = Get.find<SharedPreferencesWithCache>();
  final BaseInfoController baseInfoController = Get.find<BaseInfoController>();
  final RxBool _voiceReminder = true.obs;
  bool get voiceReminder => _voiceReminder.value;
  void setVoiceReminder(bool value, bool isLocal) {
    _voiceReminder.value = value;
    _storage.setBool(
      isLocal ? StorageKey.tabletLocalVoiceReminder.asString : StorageKey.tabletCloudVoiceReminder.asString,
      value,
    );
    _storage.setString(
      isLocal ? StorageKey.tabletLocalVoiceReminderAt.asString : StorageKey.tabletCloudVoiceReminderAt.asString,
      DateTime.now().toIso8601String(),
    );
  }

  @override
  void onInit() {
    super.onInit();
    // 判断本地是否为空
    if (_storage.getString(StorageKey.tabletLocalVoiceReminderAt.asString) == null) {
      // 从base info获取值
      _voiceReminder.value = baseInfoController.data.value?.tablet.isCallService.toSafetyInt() == 1;
      setVoiceReminder(_voiceReminder.value, false);
    } else if (DateTime.parse(_storage.getString(StorageKey.tabletLocalVoiceReminderAt.asString)!)
        .isAfter(DateTime.parse(_storage.getString(StorageKey.tabletCloudVoiceReminderAt.asString)!))) {
      // 本地更新时间大于云端更新时间，使用本地数据
      _voiceReminder.value = _storage.getBool(StorageKey.tabletLocalVoiceReminder.asString) ?? true;
    } else {
      // 云端时间大于本地时间，以云端为准
      _voiceReminder.value = _storage.getBool(StorageKey.tabletCloudVoiceReminder.asString) ?? true;
    }
  }
}

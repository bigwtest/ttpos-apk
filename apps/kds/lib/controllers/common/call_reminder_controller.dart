import 'package:get/get.dart';
import 'package:kds/controllers/base/main_controller.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:ttpos_shared/shared.dart';

class CallReminderController extends GetxController {
  final SharedPreferencesWithCache _storage = Get.find<SharedPreferencesWithCache>();
  final baseInfoController = Get.find<BaseInfoController>();
  Worker? _callReminderWorker;

  final RxBool _callReminder = true.obs;
  bool get callReminder => _callReminder.value;
  void setCallReminder(bool value, bool isLocal) {
    _callReminder.value = value;
    _storage.setBool(
      isLocal ? StorageKey.kdsLocalCallReminder.asString : StorageKey.kdsCloudCallReminder.asString,
      value,
    );
    _storage.setString(
      isLocal ? StorageKey.kdsLocalCallReminderAt.asString : StorageKey.kdsCloudCallReminderAt.asString,
      DateTime.now().toIso8601String(),
    );
  }

  Future<void> initCallReminder() async {
    if (_storage.getString(StorageKey.kdsLocalCallReminderAt.asString) == null) {
      // 从base info获取值
      _callReminder.value = baseInfoController.isCallService;

      setCallReminder(_callReminder.value, false);
    } else if (DateTime.parse(_storage.getString(StorageKey.kdsLocalCallReminderAt.asString)!)
        .isAfter(DateTime.parse(_storage.getString(StorageKey.kdsCloudCallReminderAt.asString)!))) {
      // 本地更新时间大于云端更新时间，使用本地数据
      _callReminder.value = _storage.getBool(StorageKey.kdsLocalCallReminder.asString) ?? true;
    } else {
      // 云端时间大于本地时间，以云端为准
      _callReminder.value = _storage.getBool(StorageKey.kdsCloudCallReminder.asString) ?? true;
    }
  }

  @override
  void onInit() {
    super.onInit();
    _callReminderWorker = ever(baseInfoController.data, (value) {
      _callReminder.value = baseInfoController.isCallService;
      setCallReminder(_callReminder.value, false);
    });
  }

  @override
  void onReady() {
    super.onReady();
    initCallReminder();
  }

  @override
  void onClose() {
    super.onClose();
    _callReminderWorker?.dispose();
    _callReminderWorker = null;
  }
}

import 'package:get/get.dart';
import 'package:kds/controllers/base/main_controller.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:ttpos_shared/shared.dart';

class FoodReminderController extends GetxController {
  final SharedPreferencesWithCache _storage = Get.find<SharedPreferencesWithCache>();
  late final BaseInfoController baseInfoController = Get.find<BaseInfoController>();
  final RxBool _foodReminder = true.obs;
  bool get foodReminder => _foodReminder.value;
  Worker? _foodReminderWorker;
  void setFoodReminder(bool value, bool isLocal) {
    _foodReminder.value = value;
    _storage.setBool(
      isLocal ? StorageKey.kdsLocalFoodArrivalReminder.asString : StorageKey.kdsCloudFoodArrivalReminder.asString,
      value,
    );
    _storage.setString(
      isLocal ? StorageKey.kdsLocalFoodArrivalReminderAt.asString : StorageKey.kdsCloudFoodArrivalReminderAt.asString,
      DateTime.now().toIso8601String(),
    );
  }

  @override
  void onInit() {
    super.onInit();
    _foodReminderWorker = ever(baseInfoController.data, (value) {
      _foodReminder.value = baseInfoController.isComeDish;
      setFoodReminder(_foodReminder.value, false);
    });
    // 判断本地是否为空
  }

  @override
  void onReady() {
    super.onReady();
    if (_storage.getString(StorageKey.kdsLocalFoodArrivalReminderAt.asString) == null) {
      // 从base info获取值
      _foodReminder.value = baseInfoController.isComeDish;
      setFoodReminder(_foodReminder.value, false);
    } else if (DateTime.parse(_storage.getString(StorageKey.kdsLocalFoodArrivalReminderAt.asString)!)
        .isAfter(DateTime.parse(_storage.getString(StorageKey.kdsCloudFoodArrivalReminderAt.asString)!))) {
      // 本地更新时间大于云端更新时间，使用本地数据
      _foodReminder.value = _storage.getBool(StorageKey.kdsLocalFoodArrivalReminder.asString) ?? true;
    } else {
      // 云端时间大于本地时间，以云端为准
      _foodReminder.value = _storage.getBool(StorageKey.kdsCloudFoodArrivalReminder.asString) ?? true;
    }
  }

  @override
  void onClose() {
    super.onClose();
    _foodReminderWorker?.dispose();
    _foodReminderWorker = null;
  }
}

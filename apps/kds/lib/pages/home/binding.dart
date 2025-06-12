// Package imports:
import 'package:get/get.dart';
import 'package:kds/api/customer_call/customer_call_api.dart';
import 'package:kds/controllers/accept/accept_list_controller.dart';
import 'package:kds/controllers/common/call_reminder_controller.dart';
import 'package:kds/controllers/common/drawer_controller.dart';
import 'package:kds/controllers/common/food_reminder_controller.dart';
import 'package:kds/controllers/header/dialog_controller.dart';
import 'package:kds/controllers/home/setting_controller.dart';
import 'package:ttpos_ui/controllers/notification_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    // 全局抽屉
    Get.lazyPut(() => CustomDrawerController(), fenix: true);
    Get.lazyPut(() => DialogController(), fenix: true);
    Get.lazyPut(() => AcceptListController(), fenix: true);
    Get.lazyPut(() => SettingController(), fenix: true);
    Get.put(FoodReminderController());
    Get.put(CallReminderController());
    Get.put(
      NotificationController(
        isKds: true,
        callbacks: NotificationControllerCallbacks(
          getUnprocessedNotice: () => CustomerCallAPI().getUnprocessedNotice(),
          handleUnprocessedCall: (uuid) => CustomerCallAPI().callFinish(uuid),
        ),
      ),
    );
  }
}

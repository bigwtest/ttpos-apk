// Package imports:
import 'package:get/get.dart';
import 'package:tablet/components/open/tips/controllers/open_dialog_controller.dart';
import 'package:tablet/components/setting/setting_controller.dart';
import 'package:tablet/controllers/common/home_drawer_controller.dart';
import 'package:ttpos_ui/controllers/card_style_controller.dart';
import 'package:ttpos_ui/controllers/font_size_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeDrawerController(), fenix: true);
    Get.lazyPut(() => CardStyleController(), fenix: true);
    Get.lazyPut(() => OpenDialogController(), fenix: true);
    Get.lazyPut(() => FontSizeController(), fenix: true);
    Get.lazyPut(() => SettingController(), fenix: true);
  }
}

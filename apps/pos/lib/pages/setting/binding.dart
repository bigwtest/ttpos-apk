// Package imports:
import 'package:get/get.dart';
// Project imports:
import 'package:pos/controllers/setting/setting_controller.dart';

class SettingBinding extends Bindings {
  @override
  void dependencies() {
    // 懒加载设置控制器
    Get.lazyPut(() => SettingController());
  }
}

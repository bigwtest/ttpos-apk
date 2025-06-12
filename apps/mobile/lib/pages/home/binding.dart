// Package imports:
// import 'package:assistant/controllers/home/home_drawer_controller.dart';
import 'package:get/get.dart';
import 'package:mobile/controllers/common/drawer_controller.dart';
import 'package:mobile/pages/home/controller.dart';
import 'package:ttpos_ui/controllers/card_style_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    // 全局抽屉
    Get.lazyPut(() => CustomDrawerController(), fenix: true);
    // 卡片样式-控制器
    Get.lazyPut(() => CardStyleController(), fenix: true);
    // 首页-控制器
    Get.put(HomePageController(), permanent: true);
  }
}

import 'package:get/get.dart';
import 'package:menu/controllers/common/drawer_controller.dart';
import 'package:menu/pages/home/controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    // 全局抽屉
    Get.lazyPut(() => CustomDrawerController(), fenix: true);
    // 首页-控制器
    Get.put(HomePageController(), permanent: true);
  }
}

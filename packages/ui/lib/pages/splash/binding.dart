// Package imports:
import 'package:get/get.dart';

// Project imports:
import 'package:ttpos_ui/pages/splash/controller.dart';

class SplashBinding implements Bindings {
  @override
  void dependencies() {
    Get.put<SplashController>(SplashController());
  }
}

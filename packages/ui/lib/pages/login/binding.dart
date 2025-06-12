import 'package:get/get.dart';
import 'package:ttpos_ui/pages/login/controller.dart';

class LoginBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<UILoginController>(() => UILoginController());
  }
}

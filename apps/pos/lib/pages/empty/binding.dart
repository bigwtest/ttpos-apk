import 'package:get/get.dart';
import 'package:pos/pages/empty/controller.dart';

class EmptyBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(LandingController());
  }
}

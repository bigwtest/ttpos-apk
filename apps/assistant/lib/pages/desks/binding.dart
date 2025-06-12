import 'package:assistant/pages/desks/controller.dart';
import 'package:get/get.dart';

class DesksBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DesksMainController(), fenix: true);
  }
}

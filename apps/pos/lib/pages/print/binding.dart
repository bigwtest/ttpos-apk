// Package imports:
import 'package:get/get.dart';

// Project imports:
import 'package:pos/controllers/print/print_list_controller.dart';

class PrintBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PrintListController(), fenix: true);
  }
}

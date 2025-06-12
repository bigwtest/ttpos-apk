// Package imports:
import 'package:get/get.dart';

// Project imports:
import 'package:pos/controllers/order_list/order_dialog_controller.dart';
import 'package:pos/controllers/order_list/order_for_meals_controller.dart';
import 'package:pos/controllers/top_up_list/top_up_order_controller.dart';

class OrderBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => OrderDialogController(), fenix: true);
    Get.lazyPut(() => OrderForMealsController(), fenix: true);
    Get.lazyPut(() => TopUpOrderController(), fenix: true);
  }
}

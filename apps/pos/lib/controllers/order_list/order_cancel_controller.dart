import 'package:get/get.dart';
import 'package:pos/api/order_list/order_cancel_api.dart';
import 'package:pos/components/order/components/dialog/base.dart';
import 'package:pos/controllers/order_list/order_dialog_controller.dart';
import 'package:pos/controllers/order_list/order_for_meals_controller.dart';
import 'package:pos/model/request/order_list/request_order_cancel.dart';
import 'package:ttpos_model/base/request/options.dart';

class OrderCancelController extends GetxController {
  final OrderForMealsController orderForMealsController = Get.find<OrderForMealsController>();
  final RxInt _saleBillUuid = 0.obs;
  int get saleBillUuid => _saleBillUuid.value;
  set saleBillUuid(int value) => _saleBillUuid.value = value;
  final RxBool _isLoading = false.obs;
  bool get isLoading => _isLoading.value;
  set isLoading(bool value) => _isLoading.value = value;

  final RxBool _isNewOrder = false.obs;
  bool get isNewOrder => _isNewOrder.value;
  set isNewOrder(bool value) => _isNewOrder.value = value;

  final OrderCancelAPI _orderCancelAPI = OrderCancelAPI();

  Future<bool> cancelOrder() async {
    isLoading = true;
    try {
      final response = isNewOrder
          ? await _orderCancelAPI.cancelOrder(
              RequestOrderCancel(
                saleBillUuid: saleBillUuid,
              ),
              options: ExtraRequestOptions(
                showFailToast: true,
                showSuccessToast: true,
              ),
            )
          : await _orderCancelAPI.cancelOldOrder(
              RequestOrderCancel(
                saleBillUuid: saleBillUuid,
              ),
              options: ExtraRequestOptions(
                showFailToast: true,
                showSuccessToast: true,
              ),
            );
      if (response == true) {
        orderForMealsController.getOrderForMealsListAPI();
      }
      return response;
    } catch (e) {
      return false;
    } finally {
      isLoading = false;
      Get.back();
    }
  }

  final OrderDialogController dialogController = Get.find<OrderDialogController>();
  void cancel(int saleBillUuid, bool isNewOrder) {
    this.saleBillUuid = saleBillUuid;
    this.isNewOrder = isNewOrder;
    dialogController.baseDialog(
      Obx(() {
        return BaseView(
          subtitle: '是否取消此订单？'.tr,
          onPressed: () async {
            cancelOrder();
          },
          isLoading: isLoading,
        );
      }),
    );
  }
}

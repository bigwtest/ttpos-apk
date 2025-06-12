import 'package:get/get.dart';
import 'package:pos/api/order_list/order_delete_api.dart';
import 'package:pos/components/order/components/dialog/base.dart';
import 'package:pos/controllers/order_list/order_dialog_controller.dart';
import 'package:pos/controllers/order_list/order_for_meals_controller.dart';
import 'package:pos/model/request/order_list/request_order_uuid.dart';
import 'package:ttpos_model/base/request/options.dart';

class OrderDeleteController extends GetxController {
  final OrderForMealsController orderForMealsController = Get.find<OrderForMealsController>();
  final RxInt _saleBillUuid = 0.obs;
  int get saleBillUuid => _saleBillUuid.value;
  set saleBillUuid(int value) => _saleBillUuid.value = value;
  final RxBool _isLoading = false.obs;
  bool get isLoading => _isLoading.value;
  set isLoading(bool value) => _isLoading.value = value;

  final RxInt _saleOrderUuid = 0.obs;
  int get saleOrderUuid => _saleOrderUuid.value;
  set saleOrderUuid(int value) => _saleOrderUuid.value = value;

  final RxBool _isNewOrder = false.obs;
  bool get isNewOrder => _isNewOrder.value;
  set isNewOrder(bool value) => _isNewOrder.value = value;

  final OrderDeleteAPI _orderDeleteAPI = OrderDeleteAPI();

  Future<bool> deleteOrder({String? nowType}) async {
    isLoading = true;
    try {
      final response = isNewOrder
          ? await _orderDeleteAPI.deleteOrder(
              RequestOrderUuid(
                saleBillUuid: saleBillUuid,
                saleOrderUuid: saleOrderUuid,
              ),
              options: ExtraRequestOptions(
                showFailToast: true,
                showSuccessToast: true,
              ),
            )
          : await _orderDeleteAPI.deleteOldOrder(
              RequestOrderUuid(
                saleBillUuid: saleBillUuid,
                saleOrderUuid: saleOrderUuid,
              ),
              options: ExtraRequestOptions(
                showFailToast: true,
                showSuccessToast: true,
              ),
            );
      if (response == true) {
        orderForMealsController.getOrderForMealsListAPI();
      }
      if (nowType != 'table') {
        Get.back();
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
  void delete(int saleBillUuid, int saleOrderUuid, bool isMain, bool isNewOrder, {String? nowType = 'table'}) {
    this.saleBillUuid = saleBillUuid;
    this.saleOrderUuid = isMain == true ? 0 : saleOrderUuid;
    this.isNewOrder = isNewOrder;
    dialogController.baseDialog(
      Obx(() {
        return BaseView(
          subtitle: '是否删除此订单？'.tr,
          onPressed: () {
            deleteOrder(nowType: nowType);
          },
          isLoading: isLoading,
        );
      }),
    );
  }
}

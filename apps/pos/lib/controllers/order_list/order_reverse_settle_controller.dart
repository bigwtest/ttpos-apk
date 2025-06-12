import 'package:get/get.dart';
import 'package:pos/api/order_list/order_reverse_api.dart';
import 'package:pos/api/order_list/order_reverse_settle_api.dart';
import 'package:pos/components/home/menu/menu_controller.dart';
import 'package:pos/controllers/order_list/order_dialog_controller.dart';
import 'package:pos/model/request/order_list/request_order_reverse.dart';
import 'package:pos/model/request/order_list/request_uuid.dart';
import 'package:pos/model/response/order_list/order_reverse_settle_details.dart';
import 'package:pos/pages/desks/controller.dart';
import 'package:pos/pages/home/main.dart';
import 'package:ttpos_model/base/request/options.dart';
import 'package:ttpos_ui/components/desks/models/open.dart';

class OrderReverseSettleController extends GetxController {
  final MenuController menuController = Get.find<MenuController>();

  final RxInt _saleBillUuid = 0.obs;
  int get saleBillUuid => _saleBillUuid.value;
  set saleBillUuid(int value) => _saleBillUuid.value = value;

  final RxInt _selectedIndex = 0.obs;
  int get selectedIndex => _selectedIndex.value;
  set selectedIndex(int value) => _selectedIndex.value = value;

  final RxInt _selectedDeskUuid = 0.obs;
  int get selectedDeskUuid => _selectedDeskUuid.value;
  set selectedDeskUuid(int value) => _selectedDeskUuid.value = value;

  final RxBool _isLoading = false.obs;
  bool get isLoading => _isLoading.value;
  set isLoading(bool value) => _isLoading.value = value;

  final Rx<OrderReverseSettleDetails> _reverseSettleDetails = OrderReverseSettleDetails(
    orderAmount: 0,
    payMethods: [],
    paymentAmount: 0,
    saleBillNo: '',
    saleBillType: 0,
    saleBillUuid: 0,
    desks: Desks(
      list: [],
      originDeskAvailable: false,
    ),
    hasInstantOrder: false,
  ).obs;
  OrderReverseSettleDetails get reverseSettleDetails => _reverseSettleDetails.value;
  set reverseSettleDetails(OrderReverseSettleDetails? value) => _reverseSettleDetails.value = value!;

  final OrderReverseSettleAPI _orderReverseSettleAPI = OrderReverseSettleAPI();

  Future<OrderReverseSettleDetails?> getReverseSettleOrder() async {
    isLoading = true;
    try {
      final response = await _orderReverseSettleAPI.getOrderReverseSettle(
        RequestUuid(
          saleBillUuid: saleBillUuid,
        ),
      );
      reverseSettleDetails = response!;
      if (reverseSettleDetails.desks != null) {
        selectedDeskUuid = reverseSettleDetails.desks?.list[0].uuid ?? 0;
      }
      return response;
    } catch (e) {
      return null;
    } finally {
      isLoading = false;
    }
  }

  final OrderReverseAPI _orderReverseAPI = OrderReverseAPI();

  Future<bool?> postOrderReverse() async {
    isLoading = true;
    dynamic data;
    if (reverseSettleDetails.saleBillType == 1) {
      data = RequestOrderReverse(
        hideOrder: reverseSettleDetails.hasInstantOrder,
        saleBillUuid: saleBillUuid,
      );
    } else {
      data = RequestOrderReverse(
        saleBillUuid: saleBillUuid,
        deskUuid: selectedDeskUuid,
      );
    }
    try {
      final response = await _orderReverseAPI.postOrderReverse(
        data,
        options: ExtraRequestOptions(
          showFailToast: true,
          showSuccessToast: true,
        ),
      );

      if (response == true && reverseSettleDetails.saleBillType == 1) {
        Get.back();
        //路由跳转到点餐
        menuController.currentRoute.value = HomeRoutes.instant.homeRoute;
        Get.rootDelegate.toNamed(HomeRoutes.instant.homeRoute);
      }
      if (response == true && reverseSettleDetails.saleBillType != 1) {
        Get.back();
        //路由跳转到桌台
        menuController.currentRoute.value = HomeRoutes.desks.homeRoute;
        DesksMainController.toDeskOrderView(
          DeskStorageModel(
            deskId: selectedDeskUuid,
            saleBillUuid: saleBillUuid,
            saleOrderUuid: 0,
          ),
        );
      }
      return response;
    } catch (e) {
      return null;
    } finally {
      isLoading = false;
    }
  }

  final OrderDialogController dialogController = Get.find<OrderDialogController>();
  void reverseSettle(int saleBillUuid) {
    this.saleBillUuid = saleBillUuid;
    getReverseSettleOrder();
    dialogController.orderReverseCheckoutDialog();
  }
}

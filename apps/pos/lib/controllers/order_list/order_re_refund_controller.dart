import 'package:get/get.dart';
import 'package:pos/api/order_list/order_re_return_api.dart';
import 'package:pos/controllers/order_list/order_dialog_controller.dart';
import 'package:pos/controllers/order_list/qr_dialog_controller.dart';
import 'package:pos/model/request/order_list/request_order_re_return.dart';
import 'package:ttpos_model/base/request/options.dart';

class OrderReRefundController extends GetxController {
  final OrderDialogController dialogController = Get.find<OrderDialogController>();

  // 获取控制器实例 - 复杂点，但生命力更强
  QrDialogController get qrDialogController {
    if (Get.isRegistered<QrDialogController>()) {
      return Get.find<QrDialogController>();
    }
    return Get.put(QrDialogController());
  }

  final RxInt _returnAmountUuid = 0.obs;
  int get returnAmountUuid => _returnAmountUuid.value;
  set returnAmountUuid(int value) => _returnAmountUuid.value = value;

  final RxInt _returnOrderUuid = 0.obs;
  int get returnOrderUuid => _returnOrderUuid.value;
  set returnOrderUuid(int value) => _returnOrderUuid.value = value;

  final RxString _accountName = ''.obs;
  String get accountName => _accountName.value;
  set accountName(String value) => _accountName.value = value;

  final RxString _accountNo = ''.obs;
  String get accountNo => _accountNo.value;
  set accountNo(String value) => _accountNo.value = value;

  final RxString _bankCode = ''.obs;
  String get bankCode => _bankCode.value;
  set bankCode(String value) => _bankCode.value = value;

  final OrderReReturnAPI _orderReReturnAPI = OrderReReturnAPI();

  Future<bool> reReturnOrder() async {
    try {
      final response = await _orderReReturnAPI.reReturnOrder(
        RequestOrderReReturn(
          returnAmountUuid: returnAmountUuid,
          returnOrderUuid: returnOrderUuid,
          accountName: accountName,
          accountNo: accountNo,
          bankCode: bankCode,
        ),
        options: ExtraRequestOptions(
          showSuccessToast: true,
          showFailToast: true,
        ),
      );
      return response;
    } catch (e) {
      return false;
    }
  }

  void handleReReturnOrder(
    int returnAmountUuid,
    int returnOrderUuid,
    String bankCode,
    String accountName,
    String accountNo,
  ) {
    if (bankCode.isNotEmpty) {
      this.returnAmountUuid = returnAmountUuid;
      this.returnOrderUuid = returnOrderUuid;
      qrDialogController.accountName = accountName;
      qrDialogController.accountNo = accountNo;
      qrDialogController.bankCode = bankCode;
      qrDialogController.isEditMode = true;
      dialogController.qrDialog(qrType: 'reReturnOrder');
      return;
    }
    this.returnAmountUuid = returnAmountUuid;
    this.returnOrderUuid = returnOrderUuid;
    reReturnOrder();
  }

  void qrReReturnOrder(String bankCode, String accountName, String accountNo) {
    this.bankCode = bankCode;
    this.accountName = accountName;
    this.accountNo = accountNo;
    reReturnOrder();
  }
}

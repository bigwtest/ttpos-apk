import 'package:get/get.dart';
import 'package:pos/api/order_list/order_refund_api.dart';
import 'package:pos/api/order_list/order_refund_sub_api.dart';
import 'package:pos/controllers/common/cash_box_controller.dart';
import 'package:pos/controllers/order_list/order_details_controller.dart';
import 'package:pos/controllers/order_list/order_dialog_controller.dart';
import 'package:pos/controllers/order_list/order_for_meals_controller.dart';
import 'package:pos/model/request/order_list/request_order_refund_sub.dart';
import 'package:pos/model/request/order_list/request_order_uuid.dart';
import 'package:pos/model/response/order/refund_data.dart';
import 'package:pos/model/response/order_list/order_refund_details.dart';
import 'package:ttpos_model/base/request/options.dart';
import 'package:ttpos_model/base/response/base.dart';
import 'package:ttpos_ui/components/common/dialog/manager.dart';

class OrderRefundController extends GetxController {
  final OrderForMealsController orderForMealsController = Get.find<OrderForMealsController>();
  final RxInt _refundType = 1.obs;
  int get refundType => _refundType.value;
  set refundType(int value) => _refundType.value = value;

  final RxBool _isLoading = false.obs;
  bool get isLoading => _isLoading.value;
  set isLoading(bool value) => _isLoading.value = value;

  final RxInt _saleBillUuid = 0.obs;
  int get saleBillUuid => _saleBillUuid.value;
  set saleBillUuid(int value) => _saleBillUuid.value = value;

  final RxInt _saleOrderUuid = 0.obs;
  int get saleOrderUuid => _saleOrderUuid.value;
  set saleOrderUuid(int value) => _saleOrderUuid.value = value;

  final RxBool _isNewOrder = false.obs;
  bool get isNewOrder => _isNewOrder.value;
  set isNewOrder(bool value) => _isNewOrder.value = value;

  final RxDouble _refundAmount = 0.0.obs;
  double get refundAmount => _refundAmount.value;
  set refundAmount(double value) => _refundAmount.value = value;

  final RxList<RespOrderReturnPaymentRecord> _paymentRecords = <RespOrderReturnPaymentRecord>[].obs;
  set paymentRecords(List<RespOrderReturnPaymentRecord> value) => _paymentRecords.value = value;
  List<RespOrderReturnPaymentRecord> get paymentRecords => _paymentRecords.toList();

  final RxList<OrderReturnProductList> _refundProductList = <OrderReturnProductList>[].obs;
  List<OrderReturnProductList> get refundProductList => _refundProductList.toList();
  set refundProductList(List<OrderReturnProductList> value) => _refundProductList.value = value;

  final RxString _nowType = ''.obs;
  String get nowType => _nowType.value;
  set nowType(String value) => _nowType.value = value;

  final OrderRefundAPI _orderRefundAPI = OrderRefundAPI();

  Future<OrderRefundDetails?> getRefundOrder() async {
    isLoading = true;
    try {
      final response = isNewOrder
          ? await _orderRefundAPI.getOrderRefund(
              RequestOrderUuid(
                saleBillUuid: saleBillUuid,
                saleOrderUuid: saleOrderUuid,
              ),
            )
          : await _orderRefundAPI.getOldOrderRefund(
              RequestOrderUuid(
                saleBillUuid: saleBillUuid,
                saleOrderUuid: saleOrderUuid,
              ),
            );
      refundAmount = response?.canReturnAmount ?? 0;
      paymentRecords = response?.paymentRecords ?? [];
      refundProductList = response?.products
              .map(
                (e) => OrderReturnProductList(
                  canReturnAmount: e.canReturnAmount,
                  currencyUnit: e.currencyUnit,
                  localeAttributeName: e.localeAttributeName,
                  localeName: e.localeName,
                  num: e.num,
                  price: e.price,
                  saleOrderProductUuid: e.saleOrderProductUuid,
                  refundNum: 0,
                ),
              )
              .toList() ??
          [];
      return response;
    } catch (e) {
      return null;
    } finally {
      isLoading = false;
    }
  }

  final RxBool _isRefunding = false.obs;
  bool get isRefunding => _isRefunding.value;
  set isRefunding(bool value) => _isRefunding.value = value;

  final OrderRefundSubAPI _orderRefundSubAPI = OrderRefundSubAPI();

  Future<BaseResponse<dynamic>> refundOrder({
    String? type,
    String? accountName = '',
    String? accountNo = '',
    String? bankCode = '',
  }) async {
    // 退款类型为2时，退款的时候起码要有一个商品的数量为1
    if (refundType == 2 && refundProductList.every((e) => e.refundNum == 0)) {
      DialogManager.showToast('请输入退款数量'.tr);
      return BaseResponse(code: -1, message: '请输入退款数量'.tr);
    }
    isRefunding = true;
    try {
      final response = isNewOrder
          ? await _orderRefundSubAPI.refundOrder(
              RequestOrderRefundSub(
                saleBillUuid: saleBillUuid,
                saleOrderUuid: saleOrderUuid,
                products: refundType == 2
                    ? refundProductList
                        .map(
                          (e) => ReqOrderReturnProduct(
                            num: e.refundNum,
                            saleOrderProductUuid: e.saleOrderProductUuid,
                          ),
                        )
                        .toList()
                    : [],
                accountName: accountName,
                accountNo: accountNo,
                bankCode: bankCode,
              ),
              options: ExtraRequestOptions(
                showSuccessToast: true,
              ),
            )
          : await _orderRefundSubAPI.oldRefundOrder(
              RequestOrderRefundSub(
                saleBillUuid: saleBillUuid,
                saleOrderUuid: saleOrderUuid,
                products: refundType == 2
                    ? refundProductList
                        .map(
                          (e) => ReqOrderReturnProduct(
                            num: e.refundNum,
                            saleOrderProductUuid: e.saleOrderProductUuid,
                          ),
                        )
                        .toList()
                    : [],
                accountName: accountName,
                accountNo: accountNo,
                bankCode: bankCode,
              ),
              options: ExtraRequestOptions(
                showSuccessToast: true,
              ),
            );
      // 退款成功，返回上一页并刷新数据
      if (response.code == 0) {
        if (response.data != null) {
          final refundData = RefundData.fromJson(response.data);
          if (refundData.isOpenCashBox == true) {
            CashBoxController.openCashBox();
          }
        }
        orderForMealsController.getOrderForMealsListAPI();
        if (nowType == 'detail') {
          Get.find<OrderDetailsController>().getOrderDetailsAPI();
        }
        Get.back();
        // 对于二维码支付方式，额外返回一次
        if (type == 'QrPromptPay') {
          Get.back();
        }
      } else if (response.code == -401) {
        // 认证失败，显示二维码对话框
        Get.find<OrderDialogController>().qrDialog(qrType: 'order_refund');
        return response;
      } else if (response.code != 0 && response.code != -401) {
        DialogManager.showToast(response.message);
        return response;
      }
      return response;
    } catch (e) {
      return BaseResponse(code: -1, message: '退款失败'.tr);
    } finally {
      isRefunding = false;
    }
  }

  void refund(int saleBillUuid, int saleOrderUuid, String nowType, bool isNewOrder) {
    this.nowType = nowType;
    this.saleBillUuid = saleBillUuid;
    this.saleOrderUuid = saleOrderUuid;
    this.isNewOrder = isNewOrder;
    getRefundOrder();
    Get.find<OrderDialogController>().refundDialog();
  }
}

import 'package:get/get.dart';
import 'package:ttpos_i18n/controllers/locale_name_extension.dart';
import 'package:ttpos_model/base/request/options.dart';
import 'package:ttpos_model/base/response/list.dart';
import 'package:ttpos_model/goods/response/must/must_goods_item.dart';
import 'package:ttpos_model/invoice/invoice_info.dart';
import 'package:ttpos_model/order/request/cancel_desk.dart';
import 'package:ttpos_model/order/request/cooking_product.dart';
import 'package:ttpos_model/order/request/free_desk.dart';
import 'package:ttpos_model/order/response/product.dart';
import 'package:ttpos_model/payment/response/finish.dart';
import 'package:ttpos_model/print/request/invoice.dart';
import 'package:ttpos_model/print/request/pre_checkout.dart';
import 'package:ttpos_model/print/response/printer_data.dart';
import 'package:ttpos_shared/shared.dart';
import 'package:ttpos_ui/components/checkout/views/finish.dart';
import 'package:ttpos_ui/components/common/dialog/base.dart';
import 'package:ttpos_ui/components/common/dialog/manager.dart';
import 'package:ttpos_ui/components/tt_order_action/dialog/desk_cancel/desk_cancel_model.dart';
import 'package:ttpos_ui/components/tt_order_action/dialog/desk_cancel/desk_cancel_view.dart';
import 'package:ttpos_ui/controllers/config_controller.dart';

class OrderOperation {
  final int saleBillUuid; // 账单号
  final int saleOrderUuid; // 订单号
  final int deskUuid; // 桌台ID
  OrderOperation({
    required this.saleBillUuid,
    required this.saleOrderUuid,
    this.deskUuid = 0,
  });

  final ConfigController _configController = Get.find<ConfigController>();

  // 清台（整单取消）
  void onCloseOrder({
    // 获取已送厨商品列表接口
    Future<(bool, BaseList<Product>?, String, bool)> Function({
      int saleBillUuid,
      int deskUuid,
      ExtraRequestOptions? options,
    })? fetchKitchenProducts,
    List<Product>? sendKitchenList, // 或者传入已送厨商品
    // 密码校验接口
    Future<bool> Function({required String password})? fetchPassword,
    // 关闭桌台接口（关闭订单接口）
    Future<bool> Function(RequestCancelDesk req, {ExtraRequestOptions? options})? fetchCancelDesk,
    // 成功返回
    void Function()? callbackSuccess,
  }) async {
    // 第一步：获取已送厨商品列表接口
    final res = await fetchKitchenProducts?.call(
      saleBillUuid: saleBillUuid,
      deskUuid: deskUuid,
    );

    if (res == null) return;

    final (bool isSuccess, BaseList<Product>? products, String reason, bool isDisabled) = res;

    // 判断接口是否请求成功
    if (isDisabled == true) {
      DialogManager.showConfirmDialog(title: '提示'.tr, message: reason, showCancelButton: false);
      return;
    }

    // 已送厨商品
    final sentProducts = products?.list ?? sendKitchenList ?? [];

    // 第二步：判断是否需要密码
    String password = '';
    if (_configController.isActionNeedPassword) {
      password = await DialogManager.showPasswordDialog(
        onConfirm: ({required String password}) async {
          final res = await fetchPassword?.call(password: password);
          return res != null && res;
        },
      );
      if (password.isEmpty) return;
    }

    // 第三步：判断是否有送厨商品，并填写取消原因
    if (sentProducts.isNotEmpty) {
      Get.dialog(
        barrierDismissible: false,
        DismissKeyboardDialog(
          child: DeskCancelView(
            message: reason,
            products: sentProducts
                .map(
                  (item) => DeskCancelModel(
                    name: item.localeName.translate,
                    quantity: item.num,
                  ),
                )
                .toList(),
            onConfirm: (String value) async {
              if (value.isEmpty) {
                DialogManager.showToast('请输入原因'.tr);
                return false;
              }
              bool response = await cancelOrders(
                cancelReason: value,
                password: password,
                fetchCancelDesk: fetchCancelDesk,
              );
              return response;
            },
          ),
        ),
      );
      return;
    }

    // 第四步：如果没有送厨商品，提示是否取消
    DialogManager.showConfirmDialog(
      message: '是否取消此笔交易？'.tr,
      onConfirm: () => cancelOrders(
        password: password,
        fetchCancelDesk: fetchCancelDesk,
      ),
    );
  }

  // 取消订单
  Future<bool> cancelOrders({
    String cancelReason = '',
    String password = '',
    Future<bool> Function(RequestCancelDesk req, {ExtraRequestOptions? options})? fetchCancelDesk,
    void Function()? callbackSuccess,
  }) async {
    final res = await fetchCancelDesk?.call(
      RequestCancelDesk(
        saleBillUuid: saleBillUuid,
        cancelReason: cancelReason,
        password: password,
      ),
      options: ExtraRequestOptions(
        showFailToast: true,
        showSuccessToast: true,
      ),
    );
    // 成功返回
    if (res != null && res) {
      callbackSuccess?.call();
      return true;
    }
    return false;
  }

  // 送厨
  Future<bool> sendKitchen({
    Future<(bool, BaseList<Product>?, BaseList<MustGoodsItem>?, String?)> Function(
      RequestCooking req, {
      ExtraRequestOptions? options,
    })? fetchOrderCooking,
    bool ignoreMust = false,
    bool isCheckCooking = false,
    String? password,
    void Function()? callbackSuccess,
    List<RequestCookingProducts>? products,
  }) async {
    final res = await fetchOrderCooking?.call(
      RequestCooking(
        saleBillUuid: saleBillUuid,
        saleOrderUuid: saleOrderUuid,
        ignoreMust: ignoreMust,
        products: products ?? [],
        password: password,
        isCheckCooking: isCheckCooking,
      ),
    );
    // 判断
    if (res == null) return false;
    // 解构
    final (success, cartProduct, mustGoodsList, message) = res;
    // 商品提示
    if (cartProduct != null) {
      DialogManager.showOrderCheckDialog(
        message: message,
        content: cartProduct.list
            .map(
              (item) =>
                  '${item.localeName.translate} ${item.localeAttributeName.translate != '' ? '(${item.localeAttributeName.translate})' : ''}',
            )
            .toList(),
      );
      return false;
    }
    // 必选提示
    if (mustGoodsList != null) {
      final isConfirm = await DialogManager.showOrderCheckDialog(
        title: '未点必点商品'.tr,
        message: message,
        content: mustGoodsList.list
            .map(
              (item) => '${item.name} (${'少点'.tr}${item.needNum}${'份'.tr})',
            )
            .toList(),
      );

      if (isConfirm) {
        return await sendKitchen(
          fetchOrderCooking: fetchOrderCooking,
          ignoreMust: true,
          callbackSuccess: callbackSuccess,
          products: products ?? [],
          password: password,
          isCheckCooking: isCheckCooking,
        );
      }
    }
    // 成功返回
    if (success) {
      callbackSuccess?.call();
      return true;
    }
    // 失败返回
    return false;
  }

  // 免单
  Future<bool> freeOrder({
    List<int> reasonIds = const [],
    String reason = '',
    List<Product> products = const [],
    Future<(bool, BaseList<Product>?, BaseList<MustGoodsItem>?, String?)> Function(
      RequestCooking req, {
      ExtraRequestOptions? options,
    })? fetchOrderCooking,
    Future<(bool, PaymentFinish?)> Function(RequestFreeDesk req, {ExtraRequestOptions? options})? fetchFreeDesk,
    Future<RespPrinterData?> Function({required RespPrinterRequest data, ExtraRequestOptions? options})?
        fetchPrintDeskPreCheckout,
    Future<RespPrinterData?> Function({required InvoicePrintRequest data, ExtraRequestOptions? options})?
        fetchDeskPrintInvoice,
    // 成功返回
    void Function()? callbackSuccess,
  }) async {
    // 第一步：验证是否存在未送厨的
    if (products.isNotEmpty) {
      final isConfirm = await DialogManager.showOrderCheckDialog(
        message: ErrorCode.orderCheckFailed.message.tr,
        content: products.map((item) => item.localeName.translate).toList(),
        onConfirm: () => sendKitchen(
          fetchOrderCooking: fetchOrderCooking,
          ignoreMust: true,
        ),
      );
      //
      if (isConfirm == false) return false;
    }

    // 第二步：去免单
    final res = await fetchFreeDesk?.call(
      RequestFreeDesk(
        saleBillUuid: saleBillUuid,
        saleOrderUuid: saleOrderUuid,
        reasonIds: reasonIds,
        reason: reason,
      ),
      options: ExtraRequestOptions(
        showFailToast: true,
      ),
    );
    if (res == null) return false;
    final (bool isSuccess, PaymentFinish? info) = res;

    // 第三步：免单成功提示结账信息
    if (isSuccess) {
      return await Get.dialog(
        DismissKeyboardDialog(
          child: FinishView(
            shouldPayAmount: info?.amountInfo.orderAmount.toSafetyDouble() ?? 0,
            actualPayAmount: info?.amountInfo.payAmount.toSafetyDouble() ?? 0,
            changeAmount: info?.amountInfo.changeAmount.toSafetyDouble() ?? 0,
            payMethodNames: info?.payMethods.list.map((e) => e.name).toList() ?? [],
            onExitTap: () async {
              //
              callbackSuccess?.call();
              return true;
            },
            requestPrinterData: ({String? printLang}) async {
              final request = RespPrinterRequest(
                printLang: printLang,
                saleBillUuid: saleBillUuid,
                saleOrderUuid: saleOrderUuid,
              );

              final options = ExtraRequestOptions(
                showGlobalLoading: true,
                showFailToast: true,
                showSuccessToast: true,
              );
              return await fetchPrintDeskPreCheckout?.call(data: request, options: options);
            },
            requestInvoicePrinterData: ({InvoiceInfo? invoiceInfo, String? printLang}) async {
              final request = InvoicePrintRequest(
                saleBillUuid: saleBillUuid,
                saleOrderUuid: saleOrderUuid,
                printLang: printLang,
                companyAddr: invoiceInfo?.companyAddress,
                companyName: invoiceInfo?.companyName,
                companyPhone: invoiceInfo?.companyPhone ?? '',
                companyTaxNumber: invoiceInfo?.companyTaxNumber,
              );

              final options = ExtraRequestOptions(
                showGlobalLoading: true,
                showFailToast: true,
                showSuccessToast: true,
              );
              return await fetchDeskPrintInvoice?.call(data: request, options: options);
            },
          ),
        ),
        barrierDismissible: false,
      );
    }

    //
    return false;
  }
}

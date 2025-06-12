import 'package:get/get.dart';
import 'package:ttpos_i18n/controllers/locale_name_extension.dart';
import 'package:ttpos_model/base/request/options.dart';
import 'package:ttpos_model/base/response/list.dart';
import 'package:ttpos_model/order/request/delete_product.dart';
import 'package:ttpos_model/order/request/gift_product.dart';
import 'package:ttpos_model/order/request/opt_product.dart';
import 'package:ttpos_model/order/request/price_product.dart';
import 'package:ttpos_model/order/request/remark_product.dart';
import 'package:ttpos_model/order/request/returning_product.dart';
import 'package:ttpos_model/order/response/product.dart';
import 'package:ttpos_model/reason/free_or_gift_reason.dart';
import 'package:ttpos_model/reason/return_reason.dart';
import 'package:ttpos_ui/components/common/dialog/base.dart';
import 'package:ttpos_ui/components/common/dialog/manager.dart';
import 'package:ttpos_ui/components/tt_order_action/dialog/order_gift_dishes/order_gift_dishes_view.dart';
import 'package:ttpos_ui/components/tt_order_action/dialog/order_price/order_price_view.dart';
import 'package:ttpos_ui/components/tt_order_action/dialog/order_remark/order_remark_view.dart';
import 'package:ttpos_ui/components/tt_order_action/dialog/order_return_dishes/order_return_dishes_view.dart';
import 'package:ttpos_ui/controllers/config_controller.dart';

class OrderProductOperation {
  final Product orderProduct; // 商品详细
  final int saleBillUuid; // 账单号
  final int saleOrderUuid; // 订单号
  OrderProductOperation({
    required this.orderProduct,
    this.saleBillUuid = 0,
    this.saleOrderUuid = 0,
  });

  final ConfigController _configController = Get.find<ConfigController>();

  // 赠菜
  void giftDishes({
    Future<BaseList<ResponseFreeOrGiftReason>?> Function()? fetchReasons, // 获取退菜原因接口
    Future<bool> Function(RequestGiftingProduct req, {ExtraRequestOptions? options})? fetchGiftProductDesk, // 请求赠菜接口
    void Function()? callbackSuccess,
  }) async {
    Get.dialog(
      barrierDismissible: false,
      DismissKeyboardDialog(
        child: OrderGiftDishesView(
          onReasons: fetchReasons,
          onConfirm: (data) async {
            final res = await fetchGiftProductDesk?.call(
              RequestGiftingProduct(
                saleBillUuid: saleBillUuid,
                saleOrderUuid: saleOrderUuid,
                saleOrderProductUuid: orderProduct.uuid,
                reason: data.reason,
                giftIds: data.giftIds,
              ),
              options: ExtraRequestOptions(
                showFailToast: true,
                showSuccessToast: true,
              ),
            );
            if (res != null && res) {
              //
              callbackSuccess?.call();
              return res;
            }
            return false;
          },
        ),
      ),
    );
  }

  // 取消赠菜
  void cancelGiftDishes({
    Future<bool> Function(RequestOptProduct req, {ExtraRequestOptions? options})? fetchCancelGiftDishes, // 取消退菜接口
    void Function()? callbackSuccess,
  }) {
    DialogManager.showConfirmDialog(
      message: "是否取消赠菜？".tr,
      onConfirm: () async {
        final res = await fetchCancelGiftDishes?.call(
          RequestOptProduct(
            saleBillUuid: saleBillUuid,
            saleOrderUuid: saleOrderUuid,
            saleOrderProductUuid: orderProduct.uuid,
          ),
          options: ExtraRequestOptions(
            showFailToast: true,
            showSuccessToast: true,
          ),
        );
        if (res != null && res) {
          // 请求列表
          callbackSuccess?.call();
          return true;
        }
        return false;
      },
    );
  }

  // 退菜
  void returningDishes({
    Future<bool> Function({required String password})? fetchPassword, // 请求验证密码接口
    Future<BaseList<ResponseReturnReason>?> Function()? fetchReasons, // 获取退菜原因接口
    Future<bool> Function(RequestReturningProduct req, {ExtraRequestOptions? options})?
        fetchReturningProductDesk, // 请求退菜接口
    void Function()? callbackSuccess,
  }) async {
    // 是否需要密码
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
    // 退菜dialog
    Get.dialog(
      barrierDismissible: false,
      DismissKeyboardDialog(
        child: OrderReturnDishesView(
          isFinished: orderProduct.isShowKitchen == 0 || (orderProduct.finishedNum ?? 0) > 0,
          productNum: orderProduct.num,
          productName: orderProduct.localeName.translate,
          onReasons: fetchReasons,
          onConfirm: (data) async {
            final res = await fetchReturningProductDesk?.call(
              RequestReturningProduct(
                saleBillUuid: saleBillUuid,
                saleOrderUuid: saleOrderUuid,
                saleOrderProductUuid: orderProduct.uuid,
                password: password,
                // 弹窗返回
                reason: data.reason,
                returnIds: data.returnIds,
                num: data.num,
              ),
              options: ExtraRequestOptions(
                showFailToast: true,
                showSuccessToast: true,
              ),
            );
            if (res != null && res) {
              //
              callbackSuccess?.call();
              return res;
            }
            return false;
          },
        ),
      ),
    );
  }

  // 取消退菜
  void returningDishesCancel({
    Future<bool> Function(RequestOptProduct req, {ExtraRequestOptions? options})? fetchCancelReturningDishes, // 取消退菜接口
    void Function()? callbackSuccess,
  }) {
    DialogManager.showConfirmDialog(
      message: "是否取消退菜？".tr,
      onConfirm: () async {
        final res = await fetchCancelReturningDishes?.call(
          RequestOptProduct(
            saleBillUuid: saleBillUuid,
            saleOrderUuid: saleOrderUuid,
            saleOrderProductUuid: orderProduct.uuid,
          ),
          options: ExtraRequestOptions(
            showFailToast: true,
            showSuccessToast: true,
          ),
        );
        if (res != null && res) {
          // 请求列表
          callbackSuccess?.call();
          return true;
        }
        return false;
      },
    );
  }

  // 改价
  void priceProduct({
    Future<bool> Function(RequestPriceProduct req, {ExtraRequestOptions? options})? fetchPriceProductDesk, // 请求改价接口
    void Function()? callbackSuccess,
  }) {
    Get.dialog(
      barrierDismissible: false,
      DismissKeyboardDialog(
        child: OrderPriceView(
          productName: orderProduct.localeName.translate,
          // price: orderProduct.price.toString() ?? '',
          onConfirm: (price) async {
            final res = await fetchPriceProductDesk?.call(
              RequestPriceProduct(
                saleBillUuid: saleBillUuid,
                saleOrderUuid: saleOrderUuid,
                orderProductUuid: orderProduct.uuid,
                price: price,
              ),
              options: ExtraRequestOptions(
                showFailToast: true,
                showSuccessToast: true,
              ),
            );
            if (res != null && res) {
              Get.back();
              callbackSuccess?.call();
            }
            return false;
          },
        ),
      ),
    );
  }

  // 删除
  void deleteProduct({
    Future<bool> Function(RequestDeleteProduct req, {ExtraRequestOptions? options})? fetchDeleteProductDesk, // 请求改价接口
    void Function()? callbackSuccess,
  }) {
    DialogManager.showConfirmDialog(
      message: orderProduct.isMust ? '此商品为必点商品，是否删除此商品？'.tr : '是否删除此商品？'.tr,
      onConfirm: () async {
        final res = await fetchDeleteProductDesk?.call(
          RequestDeleteProduct(
            saleBillUuid: saleBillUuid,
            saleOrderUuid: saleOrderUuid,
            orderProductUuid: orderProduct.uuid,
          ),
          options: ExtraRequestOptions(
            showFailToast: true,
            showSuccessToast: true,
          ),
        );
        if (res != null && res) {
          // 请求列表
          callbackSuccess?.call();
          return true;
        }
        return false;
      },
    );
  }

  // 备注
  void remarkProduct({
    Future<bool> Function(RequestRemarkProduct req, {ExtraRequestOptions? options})? fetchRemarkProductDesk, // 请求改价接口
    void Function()? callbackSuccess,
  }) {
    Get.dialog(
      barrierDismissible: false,
      DismissKeyboardDialog(
        child: OrderRemarkView(
          productName: orderProduct.localeName.translate,
          remark: orderProduct.remark,
          onConfirm: (remark) async {
            final res = await fetchRemarkProductDesk?.call(
              RequestRemarkProduct(
                saleBillUuid: saleBillUuid,
                saleOrderUuid: saleOrderUuid,
                orderProductUuid: orderProduct.uuid,
                remark: remark,
              ),
              options: ExtraRequestOptions(
                showFailToast: true,
                showSuccessToast: true,
              ),
            );
            if (res != null && res) {
              // 请求列表
              callbackSuccess?.call();
              return true;
            }
            return false;
          },
        ),
      ),
    );
  }
}

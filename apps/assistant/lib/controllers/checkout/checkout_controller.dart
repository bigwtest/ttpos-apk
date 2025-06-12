import 'package:assistant/controllers/home/home_drawer_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ttpos_model/base/request/options.dart';
import 'package:ttpos_model/base/response/list.dart';
import 'package:ttpos_model/member/response/search_member.dart';
import 'package:ttpos_model/order/request/check.dart';
import 'package:ttpos_model/order/response/check.dart';
import 'package:ttpos_model/payment/request/cancel.dart';
import 'package:ttpos_model/payment/request/create.dart';
import 'package:ttpos_model/payment/request/member.dart';
import 'package:ttpos_model/payment/request/qrcode.dart';
import 'package:ttpos_model/payment/request/uuid.dart';
import 'package:ttpos_model/payment/request/zero_rule.dart';
import 'package:ttpos_model/payment/response/finish.dart';
import 'package:ttpos_model/payment/response/info.dart';
import 'package:ttpos_model/payment/response/member.dart';
import 'package:ttpos_model/payment/response/qrcode.dart';
import 'package:ttpos_model/print/request/invoice.dart';
import 'package:ttpos_model/print/request/pre_checkout.dart';
import 'package:ttpos_model/print/response/printer_data.dart';
import 'package:ttpos_shared/shared.dart';
import 'package:ttpos_ui/components/common/dialog/manager.dart';

part 'callbacks.dart';
part 'error_handler.dart';

class CheckoutController {
  static Future<bool> onCheckOutTap({
    required int saleBillUuid,
    required int saleOrderUuid,
    required CheckoutCallbacks callbacks,
    bool skipCheckMustPlans = false,
  }) async {
    final checkResult = await _checkOrder(
      saleBillUuid: saleBillUuid,
      saleOrderUuid: saleOrderUuid,
      skipCheckMustPlans: skipCheckMustPlans,
      callbacks: callbacks,
    );

    if (checkResult) {
      await _openCheckoutDrawer(
        saleBillUuid: saleBillUuid,
        saleOrderUuid: saleOrderUuid,
        callbacks: callbacks,
      );
      return true;
    }

    return false;
  }

  static Future<bool> _checkOrder({
    required int saleBillUuid,
    required int saleOrderUuid,
    required CheckoutCallbacks callbacks,
    bool skipCheckMustPlans = false,
  }) async {
    final (bool canCheckout, OrderCheck? orderCheck, ErrorCode? errorCode) = await callbacks.onCheckPaymentOrder(
      query: RequestOrderCheck(
        saleBillUuid: saleBillUuid,
        saleOrderUuid: saleOrderUuid,
        ignoreMust: skipCheckMustPlans,
      ),
      options: ExtraRequestOptions(showGlobalLoading: true),
    );

    if (canCheckout) return true;

    if (orderCheck != null) {
      final canProceed = await CheckoutErrorHandler.handleError(
        orderCheck: orderCheck,
        errorCode: errorCode ?? ErrorCode.unknownError,
        onCookingTap: () => callbacks.onCooking(),
        onCheckFailed: () => callbacks.onCheckFailed(),
      );

      if (canProceed) {
        return await onCheckOutTap(
          saleBillUuid: saleBillUuid,
          saleOrderUuid: saleOrderUuid,
          callbacks: callbacks,
          skipCheckMustPlans: true,
        );
      }
    }

    return false;
  }

  static Future<void> _openCheckoutDrawer({
    required int saleBillUuid,
    required int saleOrderUuid,
    required CheckoutCallbacks callbacks,
  }) async {
    if (!Get.isRegistered<HomeDrawerController>()) {
      debugPrint('HomeDrawerController 未注册');
      return;
    }

    final HomeDrawerController customDrawerController = Get.find<HomeDrawerController>();

    customDrawerController.openHomeDrawer(
      HomeDrawerType.checkoutDrawer,
      params: {
        'saleBillUuid': saleBillUuid,
        'saleOrderUuid': saleOrderUuid,
        'onCheckOutComplete': callbacks.onCheckOutComplete,
        'onRefreshCart': callbacks.onRefreshCart,
        'onGetPaymentOrder': callbacks.onGetPaymentOrder,
        'onCreatePaymentOrder': callbacks.onCreatePaymentOrder,
        'onCancelPaymentOrder': callbacks.onCancelPaymentOrder,
        'onFinishPaymentOrder': callbacks.onFinishPaymentOrder,
        'onGetMemberDiscount': callbacks.onGetMemberDiscount,
        'onUseMemberDiscount': callbacks.onUseMemberDiscount,
        'onRemoveMemberDiscount': callbacks.onRemoveMemberDiscount,
        'onZeroRulePaymentOrder': callbacks.onZeroRulePaymentOrder,
        'onSearchMember': callbacks.onSearchMember,
        'onPreCheckoutPrint': callbacks.onPreCheckoutPrint,
        'onOrderSetLock': callbacks.onOrderSetLock,
        'onInvoicePrint': callbacks.onInvoicePrint,
        'onGetPaymentQrcode': callbacks.onGetPaymentMethodQrcode,
      },
    );
  }
}

import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:decimal/decimal.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ttpos_api/refresh_service.dart';
// import 'package:shared_preferences/shared_preferences.dart';
import 'package:ttpos_logger/controller.dart';
import 'package:ttpos_model/base/request/options.dart';
import 'package:ttpos_model/base/response/list.dart';
import 'package:ttpos_model/language/language_item.dart';
import 'package:ttpos_model/member/response/search_member.dart';
import 'package:ttpos_model/payment/request/cancel.dart';
import 'package:ttpos_model/payment/request/create.dart';
import 'package:ttpos_model/payment/request/member.dart';
import 'package:ttpos_model/payment/request/qrcode.dart';
import 'package:ttpos_model/payment/request/uuid.dart';
import 'package:ttpos_model/payment/request/zero_rule.dart';
import 'package:ttpos_model/payment/response/amount.dart';
import 'package:ttpos_model/payment/response/finish.dart';
import 'package:ttpos_model/payment/response/info.dart';
import 'package:ttpos_model/payment/response/member.dart';
import 'package:ttpos_model/payment/response/method.dart';
import 'package:ttpos_model/payment/response/order.dart';
import 'package:ttpos_model/payment/response/qrcode.dart';
import 'package:ttpos_model/print/request/invoice.dart';
import 'package:ttpos_model/print/request/pre_checkout.dart';
import 'package:ttpos_model/print/response/printer_data.dart';
import 'package:ttpos_shared/shared.dart';
import 'package:ttpos_ui/components/checkout/models/payment_method.dart';
import 'package:ttpos_ui/components/checkout/views/finish.dart';
import 'package:ttpos_ui/components/checkout/views/qrcode.dart';
import 'package:ttpos_ui/components/common/dialog/base.dart';
import 'package:ttpos_ui/components/common/dialog/manager.dart';
import 'package:ttpos_ui/components/language/controllers/pick.dart';
import 'package:ttpos_ui/components/member/view/pick.dart';
import 'package:ttpos_ui/components/select_overlay.dart';
import 'package:ttpos_ui/controllers/config_controller.dart';
import 'package:ttpos_ui/controllers/extensions/clean_string.dart';
import 'package:ttpos_ui/controllers/font_size_controller.dart';
import 'package:ttpos_ui/controllers/print_controller.dart';
import 'package:ttpos_ui/controllers/printer_setting_controller.dart';
import 'package:ttpos_ui/controllers/sub_screen/cart_data_type.dart';
import 'package:ttpos_ui/controllers/subscreen_service.dart';

part 'mixin/member.dart';
part 'mixin/payment.dart';

class CheckoutContainerController extends GetxController with MixinCheckoutPayment, MixinCheckoutMember {
  @override
  final int saleBillUuid;
  @override
  final int saleOrderUuid;

  final VoidCallback onComplete;

  @override
  final VoidCallback onRefreshCart;

  @override
  final VoidCallback? onOrderSetLock; // 锁定方法

  @override
  final VoidCallback? onOpenCashBox; // 打开钱箱
  @override
  void Function() get onPaymentOrderCompleted => onComplete;
  @override
  final Future<PaymentInfo?> Function({required RequestUuid query, ExtraRequestOptions? options}) onGetPaymentOrder;
  @override
  final Future<PaymentInfo?> Function({required RequestCreatePaymentOrder data, ExtraRequestOptions? options})
      onCreatePaymentOrder;
  @override
  final Future<PaymentInfo?> Function({required RequestCancelPaymentOrder data, ExtraRequestOptions? options})
      onCancelPaymentOrder;
  @override
  final Future<PaymentFinish?> Function({required RequestUuid data, ExtraRequestOptions? options}) onFinishPaymentOrder;
  @override
  final Future<PaymentInfo?> Function({required RequestZeroRule data, ExtraRequestOptions? options})
      onZeroRulePaymentOrder;

  @override
  final Future<BaseList<SearchMember>?> Function(String keyword, {ExtraRequestOptions? options}) onSearchMember;
  @override
  final Future<MemberDiscount?> Function({required RequestGetMemberDiscount query, ExtraRequestOptions? options})
      onGetMemberDiscount;
  @override
  final Future<PaymentInfo?> Function({required RequestUseMemberDiscount data, ExtraRequestOptions? options})
      onUseMemberDiscount;
  @override
  final Future<PaymentInfo?> Function({required RequestUuid data, ExtraRequestOptions? options}) onRemoveMemberDiscount;

  @override
  final Future<RespPrinterData?> Function({required RespPrinterRequest data, ExtraRequestOptions? options})
      onPreCheckoutPrint;

  @override
  final Future<RespPrinterData?> Function({required InvoicePrintRequest data, ExtraRequestOptions? options})
      onInvoicePrint;

  @override
  final Future<PaymentQrcode?> Function({required RequestPaymentQrcode data, ExtraRequestOptions? options})
      onGetPaymentQrcode;

  /// 是否开启会员模块
  final bool isModuleAvailableMember;

  CheckoutContainerController({
    required this.saleBillUuid,
    required this.saleOrderUuid,
    required this.onComplete,
    required this.onRefreshCart,
    required this.onGetPaymentOrder,
    required this.onCreatePaymentOrder,
    required this.onCancelPaymentOrder,
    required this.onFinishPaymentOrder,
    required this.onZeroRulePaymentOrder,
    required this.onGetMemberDiscount,
    required this.onUseMemberDiscount,
    required this.onRemoveMemberDiscount,
    required this.onSearchMember,
    required this.onPreCheckoutPrint,
    this.onOrderSetLock,
    this.onOpenCashBox,
    required this.onInvoicePrint,
    required this.onGetPaymentQrcode,
    this.isModuleAvailableMember = false,
  });

  // @override
  String get _appName => 'CheckoutContainerController';
  @override
  Logger get _logger {
    try {
      return Get.isRegistered<LoggerController>(tag: _appName)
          ? Get.find<LoggerController>(tag: _appName).logger
          : Get.put(LoggerController(appName: _appName), tag: _appName).logger;
    } catch (e) {
      return Get.put(LoggerController(appName: _appName), tag: _appName).logger;
    }
  }

  // @override
  // final SharedPreferencesWithCache _storage = Get.find<SharedPreferencesWithCache>();

  /// 支付订单信息
  @override
  final Rx<PaymentInfo?> _paymentOrder = Rx<PaymentInfo?>(null);

  /// 当前选择的支付方式UUID
  @override
  final Rx<int> _selectedPaymentMethodUuid = 0.obs;

  /// 当前输入的支付金额
  @override
  final RxString _selectedPaymentAmountInput = ''.obs;

  // @override
  // void onInit() {
  //   super.onInit();
  // }

  // @override
  // void onReady() {
  //   super.onReady();
  // }

  // @override
  // void onClose() {
  //   super.onClose();
  // }
}

import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:decimal/decimal.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ttpos_api/refresh_service.dart';
import 'package:ttpos_model/base/request/options.dart';
import 'package:ttpos_model/base/response/list.dart';
import 'package:ttpos_model/language/language_item.dart';
import 'package:ttpos_model/member/request/recharge.dart';
import 'package:ttpos_model/member/response/member.dart';
import 'package:ttpos_model/member/response/recharge.dart';
import 'package:ttpos_model/member/response/search_member.dart';
import 'package:ttpos_model/number/safety_number.dart';
import 'package:ttpos_model/payment/request/qrcode.dart';
import 'package:ttpos_model/payment/response/method.dart';
import 'package:ttpos_model/payment/response/order.dart';
import 'package:ttpos_model/payment/response/qrcode.dart';
import 'package:ttpos_model/print/response/printer_data.dart';
import 'package:ttpos_shared/shared.dart';
import 'package:ttpos_ui/components/checkout/models/payment_method.dart';
import 'package:ttpos_ui/components/checkout/views/finish.dart';
import 'package:ttpos_ui/components/checkout/views/qrcode.dart';
import 'package:ttpos_ui/components/common/dialog/base.dart';
import 'package:ttpos_ui/components/common/dialog/manager.dart';
import 'package:ttpos_ui/components/common/empty_data.dart';
import 'package:ttpos_ui/components/language/controllers/pick.dart';
import 'package:ttpos_ui/components/select_overlay.dart';
import 'package:ttpos_ui/controllers/extensions/clean_string.dart';
import 'package:ttpos_ui/controllers/print_controller.dart';
import 'package:ttpos_ui/controllers/subscreen_service.dart';

part 'mixin/payment.dart';

class MemberRechargeController extends GetxController with MixinPayment {
  MemberRechargeController({
    this.originalRechargeOrder,
    this.onOpenCashBox,
    required this.onComplete,
    required this.onGetRechargeOrder,
    //
    required this.onCreateRechargeOrder,
    required this.onConfirmRechargeOrder,
    required this.onCreatePaymentOrder,
    required this.onCancelPaymentOrder,
    required this.onGetPaymentMethod,
    //
    required this.onSearchMember,
    required this.onGetMember,
    required this.onRechargeReceipt,
    //
    required this.onGetPaymentQrcode,
  });

  final RechargeOrder? originalRechargeOrder;

  /// 打开钱箱
  @override
  final VoidCallback? onOpenCashBox;

  final Function() onComplete;
  @override
  VoidCallback get onPaymentOrderCompleted => onComplete;
  @override
  Future<(bool, RechargeOrder?)> Function() onGetRechargeOrder;

  @override
  final Future<RechargeOrder?> Function(
    RequestCreateRechargeOrder data, {
    ExtraRequestOptions? options,
  }) onCreateRechargeOrder;
  @override
  final Future<ConfirmRechargeOrder?> Function(
    RequestConfirmRechargeOrder data, {
    ExtraRequestOptions? options,
  }) onConfirmRechargeOrder;
  @override
  final Future<RechargeOrder?> Function(
    RequestCreatePaymentOrder data, {
    ExtraRequestOptions? options,
  }) onCreatePaymentOrder;
  @override
  final Future<RechargeOrder?> Function(
    RequestCancelPaymentOrder data, {
    ExtraRequestOptions? options,
  }) onCancelPaymentOrder;
  @override
  final Future<BaseList<PaymentMethod>?> Function({
    String type,
    ExtraRequestOptions? options,
  }) onGetPaymentMethod;
  //
  @override
  final Future<BaseList<SearchMember>?> Function(String keyword, {ExtraRequestOptions? options}) onSearchMember;
  @override
  final Future<Member?> Function(int uuid, {ExtraRequestOptions? options}) onGetMember;

  @override
  final Future<RespPrinterData?> Function({required RequestPrintRechargeReceipt data, ExtraRequestOptions? options})
      onRechargeReceipt;

  @override
  final Future<PaymentQrcode?> Function(
    RequestPaymentQrcodeForRecharge data, {
    ExtraRequestOptions? options,
  }) onGetPaymentQrcode;

  @override
  void onInit() {
    super.onInit();
    _rechargeOrder.value = originalRechargeOrder;
  }

  // @override
  // void onReady() {
  //   super.onReady();
  // }

  // @override
  // void onClose() {
  //   super.onClose();
  // }
}

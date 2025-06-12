import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ttpos_model/base/request/options.dart';
import 'package:ttpos_model/base/response/list.dart';
import 'package:ttpos_model/member/request/recharge.dart';
import 'package:ttpos_model/member/response/member.dart';
import 'package:ttpos_model/member/response/recharge.dart';
import 'package:ttpos_model/member/response/search_member.dart';
import 'package:ttpos_model/payment/request/qrcode.dart';
import 'package:ttpos_model/payment/response/method.dart';
import 'package:ttpos_model/payment/response/qrcode.dart';
import 'package:ttpos_model/print/response/printer_data.dart';
import 'package:ttpos_ui/components/member/controllers/recharge.dart';
import 'package:ttpos_ui/components/member/view/recharge/recharge.dart';
import 'package:ttpos_ui/controllers/font_size_controller.dart';

class DrawerMemberRecharge extends StatelessWidget {
  const DrawerMemberRecharge({
    super.key,
    this.rechargeOrder,
    required this.onGetRechargeOrder,
    required this.onComplete,
    //
    required this.onCreateRechargeOrder,
    required this.onConfirmRechargeOrder,
    required this.onCreatePaymentOrder,
    required this.onCancelPaymentOrder,
    //
    required this.onGetPaymentMethod,
    required this.onSearchMember,
    required this.onGetMember,
    required this.onRechargeReceipt,
    //
    required this.onGetPaymentQrcode,
    this.onOpenCashBox,
  });

  final RechargeOrder? rechargeOrder;
  final Function() onComplete;
  final Future<(bool, RechargeOrder?)> Function() onGetRechargeOrder;
  final VoidCallback? onOpenCashBox;
  //
  final Future<RechargeOrder?> Function(
    RequestCreateRechargeOrder data, {
    ExtraRequestOptions? options,
  }) onCreateRechargeOrder;
  final Future<ConfirmRechargeOrder?> Function(
    RequestConfirmRechargeOrder data, {
    ExtraRequestOptions? options,
  }) onConfirmRechargeOrder;
  final Future<RechargeOrder?> Function(
    RequestCreatePaymentOrder data, {
    ExtraRequestOptions? options,
  }) onCreatePaymentOrder;
  final Future<RechargeOrder?> Function(
    RequestCancelPaymentOrder data, {
    ExtraRequestOptions? options,
  }) onCancelPaymentOrder;
  //
  final Future<BaseList<PaymentMethod>?> Function({
    String type,
    ExtraRequestOptions? options,
  }) onGetPaymentMethod;
  final Future<BaseList<SearchMember>?> Function(
    String keyword, {
    ExtraRequestOptions? options,
  }) onSearchMember;
  final Future<Member?> Function(int uuid, {ExtraRequestOptions? options}) onGetMember;

  final Future<RespPrinterData?> Function({required RequestPrintRechargeReceipt data, ExtraRequestOptions? options})
      onRechargeReceipt;

  final Future<PaymentQrcode?> Function(
    RequestPaymentQrcodeForRecharge data, {
    ExtraRequestOptions? options,
  }) onGetPaymentQrcode;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: 900.0.scaleWidth,
      child: GetBuilder<MemberRechargeController>(
        id: '${rechargeOrder?.uuid ?? 0}',
        tag: '${rechargeOrder?.uuid ?? 0}',
        init: MemberRechargeController(
          originalRechargeOrder: rechargeOrder,
          onComplete: onComplete,
          onGetRechargeOrder: onGetRechargeOrder,
          //
          onCreateRechargeOrder: onCreateRechargeOrder,
          onConfirmRechargeOrder: onConfirmRechargeOrder,
          onCreatePaymentOrder: onCreatePaymentOrder,
          onCancelPaymentOrder: onCancelPaymentOrder,
          //
          onGetPaymentMethod: onGetPaymentMethod,
          onSearchMember: onSearchMember,
          onGetMember: onGetMember,
          onRechargeReceipt: onRechargeReceipt,
          onGetPaymentQrcode: onGetPaymentQrcode,
          onOpenCashBox: onOpenCashBox,
        ),
        dispose: (_) {
          if (Get.isRegistered<MemberRechargeController>(tag: '${rechargeOrder?.uuid ?? 0}')) {
            Get.delete<MemberRechargeController>(tag: '${rechargeOrder?.uuid ?? 0}', force: true);
          }
        },
        builder: (controller) {
          return GestureDetector(
            behavior: HitTestBehavior.opaque,
            onTap: () {
              controller.clearActiveNode();
            },
            child: MemberRechargeView(tag: '${rechargeOrder?.uuid ?? 0}'),
          );
        },
      ),
    );
  }
}

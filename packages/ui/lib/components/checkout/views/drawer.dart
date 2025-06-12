import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ttpos_model/base/request/options.dart';
import 'package:ttpos_model/base/response/list.dart';
import 'package:ttpos_model/member/response/search_member.dart';
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
import 'package:ttpos_ui/components/checkout/controllers/container.dart';
import 'package:ttpos_ui/components/checkout/views/container.dart';
import 'package:ttpos_ui/controllers/font_size_controller.dart';

class DrawerCheckout extends StatelessWidget {
  const DrawerCheckout({
    super.key,
    required this.saleBillUuid,
    required this.saleOrderUuid,
    required this.onComplete,
    required this.onRefreshCart,
    required this.onGetPaymentOrder,
    required this.onCreatePaymentOrder,
    required this.onCancelPaymentOrder,
    required this.onFinishPaymentOrder,
    required this.onGetMemberDiscount,
    required this.onUseMemberDiscount,
    required this.onRemoveMemberDiscount,
    required this.onZeroRulePaymentOrder,
    required this.onSearchMember,
    required this.onPreCheckoutPrint,
    this.onOrderSetLock,
    required this.onInvoicePrint,
    required this.onGetPaymentQrcode,
    this.onOpenCashBox,
    this.isModuleAvailableMember = true,
  });

  final int saleBillUuid;
  final int saleOrderUuid;
  final VoidCallback onComplete;
  final VoidCallback onRefreshCart;
  final Future<PaymentInfo?> Function({required RequestUuid query, ExtraRequestOptions? options}) onGetPaymentOrder;
  final Future<PaymentInfo?> Function({required RequestCreatePaymentOrder data, ExtraRequestOptions? options})
      onCreatePaymentOrder;
  final Future<PaymentInfo?> Function({required RequestCancelPaymentOrder data, ExtraRequestOptions? options})
      onCancelPaymentOrder;
  final Future<PaymentFinish?> Function({required RequestUuid data, ExtraRequestOptions? options}) onFinishPaymentOrder;
  final Future<PaymentInfo?> Function({required RequestZeroRule data, ExtraRequestOptions? options})
      onZeroRulePaymentOrder;
  final Future<MemberDiscount?> Function({required RequestGetMemberDiscount query, ExtraRequestOptions? options})
      onGetMemberDiscount;
  final Future<PaymentInfo?> Function({required RequestUseMemberDiscount data, ExtraRequestOptions? options})
      onUseMemberDiscount;
  final Future<PaymentInfo?> Function({required RequestUuid data, ExtraRequestOptions? options}) onRemoveMemberDiscount;
  final Future<BaseList<SearchMember>?> Function(String keyword, {ExtraRequestOptions? options}) onSearchMember;
  final Future<RespPrinterData?> Function({required RespPrinterRequest data, ExtraRequestOptions? options})
      onPreCheckoutPrint;
  final VoidCallback? onOrderSetLock; // 锁定方法
  final VoidCallback? onOpenCashBox; // 打开钱箱
  final Future<RespPrinterData?> Function({required InvoicePrintRequest data, ExtraRequestOptions? options})
      onInvoicePrint;
  final Future<PaymentQrcode?> Function({required RequestPaymentQrcode data, ExtraRequestOptions? options})
      onGetPaymentQrcode;
  final bool isModuleAvailableMember;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: 900.0.scaleWidth,
      child: GetBuilder(
        id: '$saleBillUuid-$saleOrderUuid',
        tag: '$saleBillUuid-$saleOrderUuid',
        init: CheckoutContainerController(
          saleBillUuid: saleBillUuid,
          saleOrderUuid: saleOrderUuid,
          onComplete: onComplete,
          onRefreshCart: onRefreshCart,
          onGetPaymentOrder: onGetPaymentOrder,
          onCreatePaymentOrder: onCreatePaymentOrder,
          onCancelPaymentOrder: onCancelPaymentOrder,
          onFinishPaymentOrder: onFinishPaymentOrder,
          onGetMemberDiscount: onGetMemberDiscount,
          onUseMemberDiscount: onUseMemberDiscount,
          onRemoveMemberDiscount: onRemoveMemberDiscount,
          onZeroRulePaymentOrder: onZeroRulePaymentOrder,
          onSearchMember: onSearchMember,
          onPreCheckoutPrint: onPreCheckoutPrint,
          onOrderSetLock: onOrderSetLock,
          onInvoicePrint: onInvoicePrint,
          onGetPaymentQrcode: onGetPaymentQrcode,
          onOpenCashBox: onOpenCashBox,
          isModuleAvailableMember: isModuleAvailableMember,
        ),
        dispose: (_) => Get.delete<CheckoutContainerController>(tag: '$saleBillUuid-$saleOrderUuid'),
        builder: (controller) {
          return CheckoutContainer(tag: '$saleBillUuid-$saleOrderUuid');
        },
      ),
    );
  }
}

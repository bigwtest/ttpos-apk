import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:pos/api/member/member_api.dart';
import 'package:pos/api/payment/payment_api.dart';
import 'package:pos/api/print/print_api.dart';
import 'package:pos/controllers/common/cash_box_controller.dart';
import 'package:pos/controllers/common/drawer_controller.dart';
import 'package:ttpos_model/base/request/options.dart';
import 'package:ttpos_model/member/response/recharge.dart';
import 'package:ttpos_ui/controllers/subscreen_service.dart';

class MemberRechargeController {
  static void onRechargeTap() async {
    final (bool success, RechargeOrder? rechargeOrder) = await MemberAPI().getRechargeOrderInProgress(
      options: ExtraRequestOptions(
        showGlobalLoading: true,
        showFailToast: true,
      ),
    );

    if (!success) return;

    void onRechargeComplete() {
      //
      Get.back();
      // 副屏跳转到轮播图页面
      if (!kIsWeb && Platform.isAndroid) {
        try {
          SubScreenService.send(
            method: ScreenMessageType.carouselName,
            data: {},
          );
        } catch (error, stacktrace) {
          debugPrint('sendMsgToSubScreen error: $error\n$stacktrace');
        }
      }
    }

    final CustomDrawerController customDrawerController = Get.find<CustomDrawerController>();
    customDrawerController.openEndDrawer('memberRecharge', {
      'rechargeOrder': rechargeOrder,
      'onRechargeComplete': onRechargeComplete,
      'onGetRechargeOrder': () => MemberAPI().getRechargeOrderInProgress(
            options: ExtraRequestOptions(
              showFailToast: true,
              showGlobalLoading: false,
            ),
          ),
      //
      'onCreateRechargeOrder': MemberAPI().createRechargeOrder,
      'onConfirmRechargeOrder': MemberAPI().confirmRechargeOrder,
      'onCreatePaymentOrder': MemberAPI().createPaymentOrder,
      'onCancelPaymentOrder': MemberAPI().cancelPaymentOrder,
      //
      'onGetPaymentMethod': PaymentAPI().getPaymentMethodList,
      'onSearchMember': MemberAPI().searchMemberList,
      'onGetMember': MemberAPI().getMemberDetail,
      'onRechargeReceipt': PrintAPI().printRechargeReceipt,
      'onGetPaymentQrcode': MemberAPI().getPaymentQrcode,
      'onOpenCashBox': () {
        CashBoxController.openCashBox();
      },
    });
  }
}

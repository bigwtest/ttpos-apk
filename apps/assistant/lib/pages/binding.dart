// Package imports:
import 'package:assistant/controllers/base/main_controller.dart';
import 'package:assistant/pages/cashier/controller.dart';
import 'package:assistant/routers/name.dart';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:ttpos_api/controller.dart';
import 'package:ttpos_api/websocket_service.dart';
import 'package:ttpos_i18n/controllers/language_controller.dart';
import 'package:ttpos_logger/controller.dart';
import 'package:ttpos_ui/controllers/config_controller.dart';
import 'package:ttpos_ui/controllers/font_family_controller.dart';
import 'package:ttpos_ui/controllers/font_size_controller.dart';
import 'package:ttpos_ui/controllers/printer_setting_controller.dart';

class InitBinding extends Bindings {
  @override
  void dependencies() {
    /// 日志
    Get.put<LoggerController>(
      LoggerController(appName: 'Assistant'),
      permanent: true,
    );

    /// 字体
    Get.put<FontSizeController>(
      FontSizeController(),
      permanent: true,
    );

    /// 语言
    Get.put<LanguageController>(
      LanguageController(),
      permanent: true,
    );

    /// 字体
    Get.put<FontFamilyController>(
      FontFamilyController(),
      permanent: true,
    );

    /// 配置
    Get.put<ConfigController>(
      ConfigController(),
      permanent: true,
    );

    /// 打印设置
    Get.put<PrinterSettingController>(
      PrinterSettingController(),
      permanent: true,
    );

    /// 令牌
    Get.put<TokenController>(
      TokenController(),
      permanent: true,
    );

    /// WebSocket 服务
    Get.lazyPut(() => WebSocketService(), fenix: true);

    /// NOTE: 基础信息，只有这个是各端的差异
    Get.put<BaseInfoController>(
      BaseInfoController(),
      permanent: true,
    );

    /// API
    Get.put<APIController>(
      APIController(
        onRedirectToLogin: (String? currentAPIPath) async {
          try {
            if (Get.isRegistered<BaseInfoController>()) {
              await Get.find<BaseInfoController>().clear();
            }
          } catch (error, stackTrace) {
            debugPrint('onRedirectToLogin error: $error\n$stackTrace');
          } finally {
            if (Get.currentRoute != RouteNames.login) {
              Future.microtask(() {
                Get.offAllNamed(RouteNames.login);
              });
            }
          }
        },
        onShowCasherDialog: () async {
          DeskMainController.showCasherDialog();
        },
        isSameToRedirectToLoginWhenOrderMethodDisabled: true,
      ),
      permanent: true,
    );
  }
}

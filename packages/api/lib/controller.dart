// Package imports:
import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:bot_toast/bot_toast.dart';
import 'package:crypto/crypto.dart';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart' hide Key;
import 'package:flutter/material.dart' hide Key;
import 'package:flutter/services.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get/get.dart' as getx;
import 'package:shared_preferences/shared_preferences.dart';
import 'package:timezone/data/latest.dart' as tz;
// import 'package:timezone/timezone.dart' as tz;
import 'package:ttpos_api/api.dart';
import 'package:ttpos_api/error_dialog_manager.dart';
import 'package:ttpos_api/loading_manager.dart';
import 'package:ttpos_api/refresh_service.dart';
import 'package:ttpos_api/utils/encrypt_helper.dart';
import 'package:ttpos_api/websocket_service.dart';
import 'package:ttpos_i18n/controllers/language_controller.dart';
import 'package:ttpos_logger/controller.dart';
import 'package:ttpos_model/auth/response/login.dart';
import 'package:ttpos_model/auth/response/public_key.dart';
import 'package:ttpos_model/base/request/options.dart';
import 'package:ttpos_model/base/response/base.dart';
import 'package:ttpos_model/base/response/list.dart';
import 'package:ttpos_model/print/response/printer_data.dart';
// import 'package:ttpos_model/print/response/printer_data.dart';
import 'package:ttpos_shared/shared.dart';
import 'package:uuid/uuid.dart';
import 'package:uuid/v4.dart';

export 'package:ttpos_shared/shared.dart' show ErrorCodeExtension;

part 'device_id.dart';
part 'device_info.dart';
part 'enum.dart';
part 'extension.dart';
part 'interceptors/auth.dart';
part 'interceptors/dev.dart';
part 'interceptors/encrypt.dart';
part 'interceptors/header.dart';
part 'interceptors/loading.dart';
part 'token.dart';

class APIController extends getx.GetxController {
  APIController({
    this.onRedirectToLogin,
    this.onShowCasherDialog,
    this.onPrint,
    this.onOrderMethodDisabled,
    this.isSameToRedirectToLoginWhenOrderMethodDisabled = true,
    this.isShowExpired = false,
  });

  /// 重定向到登录
  final void Function(String path)? onRedirectToLogin;

  /// 显示收银机登录信息失效的弹窗
  final void Function()? onShowCasherDialog;

  /// 打印
  final void Function(RespPrinterData? data)? onPrint;

  /// 用餐方式变更
  final void Function()? onOrderMethodDisabled;

  /// 用餐方式变更时是否与重定向到登录相同
  final bool isSameToRedirectToLoginWhenOrderMethodDisabled;

  /// 是否显示即将到期
  final bool isShowExpired;

  late API api;

  late LoadingInterceptor _loadingInterceptor;

  @override
  void onInit() async {
    super.onInit();

    tz.initializeTimeZones();

    final String apiBaseUrl = const String.fromEnvironment('API_BASE_URL');

    _loadingInterceptor = LoadingInterceptor();

    api = API(
      baseUrl: apiBaseUrl,
      interceptors: [
        if (kDebugMode)
          DevInterceptor(
            mockTokenExpired: false,
            mockTokenExpiredWhiteList: [
              APIPath.passportCaptcha.path,
              APIPath.authLogin.cashierPath,
              APIPath.authLogin.assistantPath,
              APIPath.authLogin.tabletPath,
              APIPath.authLogin.kitchenPath,
              APIPath.authGetBaseInfo.cashierPath,
              APIPath.authGetBaseInfo.assistantPath,
              APIPath.authGetBaseInfo.tabletPath,
              APIPath.authGetBaseInfo.kitchenPath,
            ],
            mockCodeFailure: kDebugMode,
            mockCodeFailureList: [
              //
            ],
          ),
        AuthInterceptor(
          onRedirectToLogin: onRedirectToLogin,
          onShowCasherDialog: onShowCasherDialog,
          onPrint: onPrint,
          onOrderMethodDisabled: onOrderMethodDisabled,
          isSameToRedirectToLoginWhenOrderMethodDisabled: isSameToRedirectToLoginWhenOrderMethodDisabled,
          isShowExpired: isShowExpired,
        ),
        HeaderInterceptor(),
        // FIXME: 加密拦截器的实现比较吃设备性能，暂时关闭
        // EncryptInterceptor(),
        _loadingInterceptor,
      ],
    );
  }

  @override
  void onClose() {
    _loadingInterceptor.dispose();
    super.onClose();
  }
}

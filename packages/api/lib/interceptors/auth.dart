part of '../controller.dart';

class AuthInterceptor extends Interceptor {
  AuthInterceptor({
    this.extraWhiteList = const [],
    this.onRedirectToLogin,
    this.onShowCasherDialog,
    this.onPrint,
    this.onOrderMethodDisabled,
    this.isSameToRedirectToLoginWhenOrderMethodDisabled = true,
    this.isShowExpired = false,
  });

  final List<String> extraWhiteList;

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

  // 定义不需要token的接口白名单
  static List<String> whiteList = [
    APIPath.passportCaptcha.path, // 验证码
    APIPath.authLogin.cashierPath, // 点餐登录
    APIPath.authLogin.assistantPath, // 点餐助手登录
    APIPath.authLogin.tabletPath, // 平板
    APIPath.authLogin.kitchenPath, // 厨显
  ];

  // 跟踪弹窗状态
  static bool _isShowingDialog = false;

  // 检查是否在白名单中
  bool _isInWhiteList(String path) {
    return whiteList.any((endpoint) => path.contains(endpoint)) ||
        extraWhiteList.any((endpoint) => path.contains(endpoint));
  }

  // 显示错误弹窗的方法
  Future<bool> _showErrorDialog(
    String message, {
    bool isSaasExpired = false,
    String? title,
    bool enableIcon = true,
  }) async {
    if (_isShowingDialog) return false;
    BotToast.removeAll();
    BotToast.cleanAll();
    _isShowingDialog = true;
    try {
      final completer = Completer<bool>();

      await getx.Get.dialog<void>(
        PopScope(
          canPop: false,
          child: Dialog(
            child: ErrorDialog(
              titleKey: title ?? (isSaasExpired ? '店铺到期' : '鉴权失败'),
              messageKey: message,
              isSaasExpired: isSaasExpired,
              onConfirm: () {
                getx.Get.back();
                completer.complete(true);
              },
              enableIcon: enableIcon,
            ),
          ),
        ),
        barrierDismissible: false, // 禁止点击外部关闭
      );

      return await completer.future;
    } finally {
      _isShowingDialog = false;
    }
  }

  /// NOTE: 处理登录成功
  Future<void> _handleLoginSuccess(BaseResponse<dynamic> baseResponse) async {
    if (!getx.Get.isRegistered<SharedPreferencesWithCache>()) return;
    final storage = getx.Get.find<SharedPreferencesWithCache>();

    final data = await baseResponse.safeFromJson(
      ResponseDataLogin.fromJson,
      baseResponse.data,
      modelName: 'ResponseDataLogin',
    );

    if (data == null) return;

    debugPrint('AuthInterceptor 登录成功 token: ${data.token}');
    if (data.token.isNotEmpty) {
      await storage.setString(StorageKey.authToken.asString, data.token);
    }

    debugPrint('AuthInterceptor 登录成功 refreshToken: ${data.refreshToken}');
    if (data.refreshToken?.isNotEmpty == true) {
      await storage.setString(StorageKey.authRefreshToken.asString, data.refreshToken!);
    }
  }

  /// NOTE: 处理 SaaS 过期
  void _handleSaasExpired(
    BaseResponse<dynamic> baseResponse, {
    required Response response,
  }) async {
    if (!getx.Get.isRegistered<SharedPreferencesWithCache>()) return;
    final storage = getx.Get.find<SharedPreferencesWithCache>();

    final pathCode = APIPath.getPathCode(response.requestOptions.path);
    if (pathCode == APIPath.authGetBaseInfo.code.toString()) {
      final int? saasExpiredAt = baseResponse.data['company']['expire_time'];
      if (saasExpiredAt == null) return;

      await storage.setInt(StorageKey.saasExpiredAt.asString, saasExpiredAt);
    }

    final int? saasExpiredAt = storage.getInt(StorageKey.saasExpiredAt.asString);
    if (saasExpiredAt == null || saasExpiredAt == 0) return;

    final now = DateTime.now().millisecondsSinceEpoch ~/ 1000;
    // NOTE: 如果当前时间戳距离过期时间戳小于等于 7 天，则提示用户
    final saasExpiredDays = (saasExpiredAt - now) ~/ (24 * 60 * 60);
    if (saasExpiredDays <= 0 || saasExpiredDays > 7) {
      await storage.remove(StorageKey.saasExpiredShowDialogAtDays.asString);
      return;
    }
    debugPrint('AuthInterceptor SaaS 过期，剩余天数: $saasExpiredDays');
    int? showDialogAtDays = storage.getInt(StorageKey.saasExpiredShowDialogAtDays.asString);
    if (showDialogAtDays != null && saasExpiredDays == showDialogAtDays) return;

    if (isShowExpired) {
      ErrorDialogManager().showSaasExpiredDialog(days: saasExpiredDays);
    }

    await storage.setInt(StorageKey.saasExpiredShowDialogAtDays.asString, saasExpiredDays);
  }

  @override
  Future<void> onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    // 检查是否在白名单中
    if (_isInWhiteList(options.path)) {
      return handler.next(options);
    }

    try {
      final TokenController tokenController =
          getx.Get.isRegistered<TokenController>() ? getx.Get.find<TokenController>() : getx.Get.put(TokenController());
      final token = tokenController.token;
      if (token == null) {
        // final confirmed = await _showErrorDialog(
        //   '${'未登录'.tr} ${options.path}',
        // );
        // if (confirmed) {
        //   await tokenController.clearToken();
        //   onRedirectToLogin?.call(options.path);
        // }

        await tokenController.clearToken();
        onRedirectToLogin?.call(options.path);

        return handler.reject(
          DioException.badCertificate(
            requestOptions: options,
          ),
        );
      }

      // 添加token到请求头
      options.headers['Authorization'] = 'Bearer $token';

      handler.next(options);
    } catch (error, stackTrace) {
      debugPrint('AuthInterceptor onRequest Error: $error\n$stackTrace');
      return handler.reject(
        DioException.badCertificate(
          requestOptions: options,
        ),
      );
    }
  }

  void _onRedirectToLogin(BaseResponse<dynamic> baseResponse, {required String path}) async {
    /// 停止刷新
    RefreshService.to.stopTimer();

    /// 关闭 WebSocket
    WebSocketService.close();

    /// 打印
    if (baseResponse.code == ErrorCode.tokenInvalid.code) {
      try {
        debugPrint('AuthInterceptor onPrint: ${baseResponse.data['printer_data']}');
        if (baseResponse.data['printer_data'] != null) {
          onPrint?.call(RespPrinterData.fromJson(baseResponse.data['printer_data']));
        }
      } catch (error, stackTrace) {
        debugPrint('AuthInterceptor onPrint 错误: $error');
        debugPrintStack(stackTrace: stackTrace);
      }
    }

    /// 移除缓存
    if (getx.Get.isRegistered<SharedPreferencesWithCache>()) {
      await Future.wait([
        /// 移除锁屏
        getx.Get.find<SharedPreferencesWithCache>().remove(StorageKey.isLockScreen.asString),

        /// 移除token
        getx.Get.find<SharedPreferencesWithCache>().remove(StorageKey.authToken.asString),

        /// 移除点餐助手token
        getx.Get.find<SharedPreferencesWithCache>().remove(StorageKey.authTokenAssistant.asString),

        /// 移除点餐助手是否选择收银机
        getx.Get.find<SharedPreferencesWithCache>().remove(StorageKey.authIsSelectCashier.asString),

        /// 移除是否首次登录
        getx.Get.find<SharedPreferencesWithCache>().remove(StorageKey.isFirstLogin.asString),

        /// 移除 SaaS 过期时间
        getx.Get.find<SharedPreferencesWithCache>().remove(StorageKey.saasExpiredAt.asString),
      ]);
    }

    /// 确保控制器内也移除 token
    if (getx.Get.isRegistered<TokenController>()) {
      await getx.Get.find<TokenController>().clearToken();
    }

    /// 显示错误弹窗
    final confirmed = await _showErrorDialog(
      baseResponse.message,
      isSaasExpired: baseResponse.code.isSaasExpired || baseResponse.code.isModuleNotAvailable,
      title: (path.startsWith(APIPrefix.h5Prefix) || path.startsWith(APIPrefix.menuPrefix))
          ? '扫码失效'.tr
          : baseResponse.code.isModuleNotAvailable
              ? '商户配置变更'.tr
              : null,
      enableIcon: !path.startsWith(APIPrefix.h5Prefix) && !path.startsWith(APIPrefix.menuPrefix),
    );

    if (confirmed) {
      /// 执行重定向到登录
      onRedirectToLogin?.call(path);
    }
  }

  @override
  Future<void> onResponse(
    Response response,
    ResponseInterceptorHandler handler,
  ) async {
    final baseResponse = BaseResponse.fromJson(response.data as Map<String, dynamic>);
    if (baseResponse.code.redirectToLogin) {
      _onRedirectToLogin(
        baseResponse,
        path: response.requestOptions.path,
      );

      handler.resolve(response);
      return;
    }

    if (baseResponse.code.instantOrDeskOrderMethodDisabled) {
      if (isSameToRedirectToLoginWhenOrderMethodDisabled) {
        _onRedirectToLogin(
          baseResponse,
          path: response.requestOptions.path,
        );
      }

      onOrderMethodDisabled?.call();

      handler.resolve(response);
      return;
    }

    if (baseResponse.code.isShowCasherDialog) {
      if (!getx.Get.isRegistered<SharedPreferencesWithCache>()) return;
      final storage = getx.Get.find<SharedPreferencesWithCache>();
      await storage.remove(StorageKey.authIsSelectCashier.asString);

      // 点餐助手专用
      onShowCasherDialog?.call();
    }

    Future.microtask(() async {
      try {
        if (!baseResponse.code.success) return;

        // 处理登录
        if (APIPath.isLoginPath(response.requestOptions.path)) {
          _handleLoginSuccess(baseResponse);
        }

        // 处理 SaaS 过期
        _handleSaasExpired(
          baseResponse,
          response: response,
        );
      } catch (error, stackTrace) {
        debugPrint('AuthInterceptor onResponse Error: $error');
        debugPrintStack(stackTrace: stackTrace);
      }
    });

    handler.next(response);
  }
}

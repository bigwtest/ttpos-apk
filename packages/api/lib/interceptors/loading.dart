part of '../controller.dart';

class LoadingInterceptor extends Interceptor {
  static const String showLoadingHeader = 'Show-Loading';
  static const String showFailToastHeader = 'Show-Fail-Toast';
  static const String showSuccessToastHeader = 'Show-Success-Toast';

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    if (options.headers[showLoadingHeader] == 'true') {
      final requestId = options.extra['requestId'] ?? UuidV4().toString();
      LoadingManager.showLoading(requestId);

      // 将 requestId 保存到请求中，以便后续使用
      options.extra['loadingRequestId'] = requestId;
    }

    if (options.headers[showFailToastHeader] == 'true') {
      options.extra['showFailToast'] = true;
    }

    if (options.headers[showSuccessToastHeader] == 'true') {
      options.extra['showSuccessToast'] = true;
    }

    handler.next(options);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    final requestId = err.requestOptions.extra['loadingRequestId'] as String?;
    if (requestId != null) {
      LoadingManager.hideLoading(requestId);
    }

    debugPrint('HTTP Error: ${err.response?.statusCode} - ${err.response?.statusMessage}');
    debugPrint('HTTP Error Path: ${err.response?.requestOptions.path}');

    ErrorDialogManager.showToast(
      '${APIPath.getPathCode(err.response?.requestOptions.path)}.${err.response?.statusCode ?? '000'}:${'网络繁忙，请稍后重试'.tr}',
      duration: Duration(seconds: 10),
      contentColor: const Color.fromARGB(204, 162, 102, 102),
    );

    handler.next(err);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    final requestId = response.requestOptions.extra['loadingRequestId'] as String?;
    if (requestId != null) {
      LoadingManager.hideLoading(requestId);
    }

    if (response.requestOptions.extra['showFailToast'] != true &&
        response.requestOptions.extra['showSuccessToast'] != true) {
      handler.next(response);
      return;
    }

    final responseData = BaseResponse.fromJson(response.data);
    if (!responseData.code.success && response.requestOptions.extra['showFailToast'] == true) {
      if (responseData.code == ErrorCode.casherInfoInvalid.code) {
        // NOTE: -107 点餐助手专用-收银机登录信息失效，需要重新选择, 不需要弹出 toast
        debugPrint('点餐助手专用-收银机登录信息失效，需要重新选择');
      } else {
        ErrorDialogManager.showToast(responseData.message);
      }
    }

    if (responseData.code.success && response.requestOptions.extra['showSuccessToast'] == true) {
      ErrorDialogManager.showToast(responseData.message);
    }

    handler.next(response);
  }

  void dispose() {
    LoadingManager.clearLoading();
  }
}

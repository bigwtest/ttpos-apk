part of 'controller.dart';

extension SafetyJsonExtension on BaseResponse {
  Future<T?> safeFromJson<T>(
    T Function(Map<String, dynamic>) fromJson,
    dynamic data, {
    String? modelName,
    Logger? logger,
    ExtraRequestOptions? options,
    Future<T?> Function(TypeError, StackTrace)? onTypeError,
    Future<T?> Function(Object, StackTrace)? onOtherError,
  }) async {
    final showFailDialog = true;
    final failDialogMessage = options?.failDialogMessage ?? '$modelName模型转换错误';

    try {
      return fromJson(data as Map<String, dynamic>);
    } on TypeError catch (typeError, typeErrorStack) {
      if (onTypeError != null) {
        return await onTypeError.call(typeError, typeErrorStack);
      }

      debugPrint('$modelName模型转换错误: $typeError');
      debugPrintStack(stackTrace: typeErrorStack);

      if (showFailDialog) {
        await ErrorDialogManager().showErrorDialog(
          titleKey: '数据格式错误',
          messageKey: kDebugMode ? '$modelName\n$typeError' : failDialogMessage,
        );
      }
      return null;
    } catch (error, stackTrace) {
      if (onOtherError != null) {
        return await onOtherError.call(error, stackTrace);
      }

      debugPrint('$modelName模型转换其他错误: $error');
      debugPrintStack(stackTrace: stackTrace);

      if (showFailDialog) {
        await ErrorDialogManager().showErrorDialog(
          titleKey: '模型转换其他错误',
          messageKey: kDebugMode ? '$modelName\n$error' : failDialogMessage,
          barrierDismissible: false,
        );
      }
      return null;
    }
  }

  Future<BaseList<T>?> safeFromJsonList<T>(
    T Function(Map<String, dynamic>) fromJson,
    dynamic data, {
    String? modelName,
    Logger? logger,
    ExtraRequestOptions? options,
    Future<BaseList<T>?> Function(TypeError, StackTrace)? onTypeError,
    Future<BaseList<T>?> Function(Object, StackTrace)? onOtherError,
  }) async {
    final showFailDialog = true;
    final failDialogMessage = options?.failDialogMessage ?? '$modelName模型转换错误';

    try {
      return BaseList.fromJson(
        data as Map<String, dynamic>,
        (json) => fromJson(json as Map<String, dynamic>),
      );
    } on TypeError catch (typeError, typeErrorStack) {
      if (onTypeError != null) {
        return await onTypeError.call(typeError, typeErrorStack);
      }
      debugPrint('$modelName模型转换错误: $typeError');
      debugPrintStack(stackTrace: typeErrorStack);

      if (showFailDialog) {
        await ErrorDialogManager().showErrorDialog(
          titleKey: '数据格式错误',
          messageKey: kDebugMode ? '$modelName\n$typeError' : failDialogMessage,
        );
      }
      return null;
    } catch (error, stackTrace) {
      debugPrint('$modelName模型转换其他错误: $error');
      debugPrintStack(stackTrace: stackTrace);

      if (showFailDialog) {
        await ErrorDialogManager().showErrorDialog(
          titleKey: '模型转换其他错误',
          messageKey: kDebugMode ? '$modelName\n$error' : failDialogMessage,
          barrierDismissible: false,
        );
      }
      return null;
    }
  }
}

extension APIRequestExtension on API {
  Future<BaseResponse<T>> getWithRequestOptions<T>(
    String path, {
    Object? data,
    Map<String, dynamic>? queryParameters,
    CancelToken? cancelToken,
    Options? options,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
    ExtraRequestOptions? requestOptions,
  }) {
    final newOptions = (options ?? Options()).copyWith(
      headers: {
        ...?options?.headers,
        LoadingInterceptor.showLoadingHeader: requestOptions?.showGlobalLoading == true ? 'true' : null,
        LoadingInterceptor.showFailToastHeader: requestOptions?.showFailToast == true ? 'true' : null,
        LoadingInterceptor.showSuccessToastHeader: requestOptions?.showSuccessToast == true ? 'true' : null,
      },
    );

    return get(
      path,
      data: data,
      options: newOptions,
      queryParameters: queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );
  }

  Future<BaseResponse<T>> postWithRequestOptions<T>(
    String path, {
    Object? data,
    Map<String, dynamic>? queryParameters,
    CancelToken? cancelToken,
    Options? options,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
    ExtraRequestOptions? requestOptions,
  }) {
    final newOptions = (options ?? Options()).copyWith(
      headers: {
        ...?options?.headers,
        LoadingInterceptor.showLoadingHeader: requestOptions?.showGlobalLoading == true ? 'true' : null,
        LoadingInterceptor.showFailToastHeader: requestOptions?.showFailToast == true ? 'true' : null,
        LoadingInterceptor.showSuccessToastHeader: requestOptions?.showSuccessToast == true ? 'true' : null,
      },
    );

    return post(
      path,
      data: data,
      options: newOptions,
      queryParameters: queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );
  }

  Future<BaseResponse<T>> deleteWithRequestOptions<T>(
    String path, {
    Object? data,
    Map<String, dynamic>? queryParameters,
    CancelToken? cancelToken,
    Options? options,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
    ExtraRequestOptions? requestOptions,
  }) {
    final newOptions = (options ?? Options()).copyWith(
      headers: {
        ...?options?.headers,
        LoadingInterceptor.showLoadingHeader: requestOptions?.showGlobalLoading == true ? 'true' : null,
        LoadingInterceptor.showFailToastHeader: requestOptions?.showFailToast == true ? 'true' : null,
        LoadingInterceptor.showSuccessToastHeader: requestOptions?.showSuccessToast == true ? 'true' : null,
      },
    );

    return delete(
      path,
      data: data,
      options: newOptions,
      queryParameters: queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );
  }
}

import 'package:dio/dio.dart';
// import 'package:dio_smart_retry/dio_smart_retry.dart';
import 'package:flutter/foundation.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:ttpos_api/interceptors/connect.dart';
import 'package:ttpos_api/utils/package_info_helper.dart';
import 'package:ttpos_model/base/response/base.dart';

export 'package:dio/dio.dart' show Options;

class API {
  final String _baseUrl;
  late Dio _dio;

  API({
    required String baseUrl,
    List<Interceptor>? interceptors,
  }) : _baseUrl = baseUrl {
    _dio = Dio(
      BaseOptions(
        headers: {
          'Content-Type': 'application/json',
          'client-version': PackageInfoHelper.version,
        },
        baseUrl: _baseUrl,
        connectTimeout: const Duration(seconds: 10),
        receiveTimeout: const Duration(seconds: 10),
      ),
    );

    // 添加默认拦截器
    _dio.interceptors.addAll([
      if (kDebugMode)
        PrettyDioLogger(
          requestHeader: true,
          requestBody: true,
          responseHeader: true,
          responseBody: true,
          enabled: false,
        ),
      ConnectInterceptor(),
    ]);

    // 如果有自定义拦截器，添加到默认拦截器后面
    if (interceptors is List<Interceptor>) {
      _dio.interceptors.addAll(interceptors);
    }

    // FIXME: 这个太不可控了，需要重构
    // _dio.interceptors.add(
    //   RetryInterceptor(
    //     dio: _dio,
    //     retries: 2,
    //     // NOTE: https://pub.dev/packages/dio_smart_retry#default-retryable-status-codes-list
    //     retryEvaluator: DefaultRetryEvaluator({
    //       status429TooManyRequests,
    //       status500InternalServerError,
    //       status502BadGateway,
    //       status503ServiceUnavailable,
    //       status504GatewayTimeout,
    //       status440LoginTimeout,
    //       status460ClientClosedRequest,
    //       status499ClientClosedRequest,
    //       status520WebServerReturnedUnknownError,
    //       status521WebServerIsDown,
    //       status522ConnectionTimedOut,
    //       status523OriginIsUnreachable,
    //       status524TimeoutOccurred,
    //       status525SSLHandshakeFailed,
    //       status527RailgunError,
    //       status598NetworkReadTimeoutError,
    //       status599NetworkConnectTimeoutError,
    //     }).evaluate,
    //   ),
    // );
  }

  Future<BaseResponse<T>> _request<T>(
    String path, {
    String method = 'GET',
    Object? data,
    Map<String, dynamic>? queryParameters,
    CancelToken? cancelToken,
    Options? options,
    String? contentType,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final response = await _dio.request(
      path,
      data: data,
      queryParameters: queryParameters,
      cancelToken: cancelToken,
      options: (options ?? Options()).copyWith(
        method: method,
        contentType: contentType,
      ),
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    return BaseResponse.fromJson(response.data);
  }

  // GET 请求
  Future<BaseResponse<T>> get<T>(
    String path, {
    Object? data,
    Map<String, dynamic>? queryParameters,
    CancelToken? cancelToken,
    Options? options,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) =>
      _request<T>(
        path,
        method: 'GET',
        data: data,
        queryParameters: queryParameters,
        cancelToken: cancelToken,
        options: options,
        onSendProgress: onSendProgress,
        onReceiveProgress: onReceiveProgress,
      );

  // POST 请求
  Future<BaseResponse<T>> post<T>(
    String path, {
    Object? data,
    Map<String, dynamic>? queryParameters,
    CancelToken? cancelToken,
    Options? options,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) =>
      _request<T>(
        path,
        method: 'POST',
        data: data,
        queryParameters: queryParameters,
        cancelToken: cancelToken,
        options: options,
        onSendProgress: onSendProgress,
        onReceiveProgress: onReceiveProgress,
      );

  // POST FormData 请求
  Future<BaseResponse<T>> postFormData<T>(
    String path, {
    Object? data,
    Map<String, dynamic>? queryParameters,
    CancelToken? cancelToken,
    Options? options,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) =>
      _request<T>(
        path,
        method: 'POST',
        data: data,
        queryParameters: queryParameters,
        cancelToken: cancelToken,
        options: options,
        contentType: Headers.multipartFormDataContentType,
        onSendProgress: onSendProgress,
        onReceiveProgress: onReceiveProgress,
      );

  // POST FormUrlEncoded 请求
  Future<BaseResponse<T>> postFormUrlencoded<T>(
    String path, {
    Object? data,
    Map<String, dynamic>? queryParameters,
    CancelToken? cancelToken,
    Options? options,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) =>
      _request<T>(
        path,
        method: 'POST',
        data: data,
        queryParameters: queryParameters,
        cancelToken: cancelToken,
        options: options,
        contentType: Headers.formUrlEncodedContentType,
        onSendProgress: onSendProgress,
        onReceiveProgress: onReceiveProgress,
      );

  // PUT 请求
  Future<BaseResponse<T>> put<T>(
    String path, {
    Object? data,
    Map<String, dynamic>? queryParameters,
    CancelToken? cancelToken,
    Options? options,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) =>
      _request<T>(
        path,
        method: 'PUT',
        data: data,
        queryParameters: queryParameters,
        cancelToken: cancelToken,
        options: options,
        onSendProgress: onSendProgress,
        onReceiveProgress: onReceiveProgress,
      );

  // DELETE 请求
  Future<BaseResponse<T>> delete<T>(
    String path, {
    Object? data,
    Map<String, dynamic>? queryParameters,
    CancelToken? cancelToken,
    Options? options,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) =>
      _request<T>(
        path,
        method: 'DELETE',
        data: data,
        queryParameters: queryParameters,
        cancelToken: cancelToken,
        options: options,
        onSendProgress: onSendProgress,
        onReceiveProgress: onReceiveProgress,
      );

  // PATCH 请求
  Future<BaseResponse<T>> patch<T>(
    String path, {
    Object? data,
    Map<String, dynamic>? queryParameters,
    CancelToken? cancelToken,
    Options? options,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) =>
      _request<T>(
        path,
        method: 'PATCH',
        data: data,
        queryParameters: queryParameters,
        cancelToken: cancelToken,
        options: options,
        onSendProgress: onSendProgress,
        onReceiveProgress: onReceiveProgress,
      );

  // HEAD 请求
  Future<BaseResponse<T>> head<T>(
    String path, {
    Object? data,
    Map<String, dynamic>? queryParameters,
    CancelToken? cancelToken,
    Options? options,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) =>
      _request<T>(
        path,
        method: 'HEAD',
        data: data,
        queryParameters: queryParameters,
        cancelToken: cancelToken,
        options: options,
        onSendProgress: onSendProgress,
        onReceiveProgress: onReceiveProgress,
      );

  // OPTIONS 请求
  Future<BaseResponse<T>> options<T>(
    String path, {
    Object? data,
    Map<String, dynamic>? queryParameters,
    CancelToken? cancelToken,
    Options? options,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) =>
      _request<T>(
        path,
        method: 'OPTIONS',
        data: data,
        queryParameters: queryParameters,
        cancelToken: cancelToken,
        options: options,
        onSendProgress: onSendProgress,
        onReceiveProgress: onReceiveProgress,
      );
}

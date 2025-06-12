part of '../checkout_api.dart';

mixin MixinInfo {
  API get _api;
  Logger get logger;

  // 获取结账页面信息
  Future<PaymentInfo?> getInstantPaymentOrder({
    required RequestUuid query,
    ExtraRequestOptions? options,
  }) async {
    try {
      final response = await _api.getWithRequestOptions(
        APIPath.instantOrderGetPaymentInfo.assistantPath,
        queryParameters: query.toJson(),
        requestOptions: options,
      );
      if (response.code.success) {
        return await response.safeFromJson(
          PaymentInfo.fromJson,
          response.data,
          modelName: 'PaymentInfo',
          options: options,
          logger: logger,
        );
      }
      return null;
    } catch (error, stackTrace) {
      logger.severe('getInstantPaymentOrder Error:', error, stackTrace);
      return null;
    }
  }

  // 获取桌台结账页面信息
  Future<PaymentInfo?> getDeskPaymentOrder({
    required RequestUuid query,
    ExtraRequestOptions? options,
  }) async {
    try {
      final response = await _api.getWithRequestOptions(
        APIPath.deskOrderGetPaymentInfo.assistantPath,
        queryParameters: query.toJson(),
        requestOptions: options,
      );
      if (response.code.success) {
        return await response.safeFromJson(
          PaymentInfo.fromJson,
          response.data,
          modelName: 'PaymentInfo',
          options: options,
          logger: logger,
        );
      }
      return null;
    } catch (error, stackTrace) {
      logger.severe('getDeskPaymentOrder Error:', error, stackTrace);
      return null;
    }
  }
}

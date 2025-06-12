part of '../checkout_api.dart';

mixin MixinOrderCreate {
  API get _api;
  Logger get logger;

  // 创建一个点餐的支付单
  Future<PaymentInfo?> createInstantPaymentOrder({
    required RequestCreatePaymentOrder data,
    ExtraRequestOptions? options,
  }) async {
    try {
      final response = await _api.postWithRequestOptions(
        APIPath.instantOrderCreatePaymentOrder.cashierPath,
        data: data.toJson(),
        requestOptions: options,
      );
      if (response.code.success) {
        if (response.data == null || (response.data as Map).isEmpty) return null;
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
      logger.severe('createInstantPaymentOrder Error:', error, stackTrace);
      return null;
    }
  }

  // 创建一个桌台的支付单
  Future<PaymentInfo?> createDeskPaymentOrder({
    required RequestCreatePaymentOrder data,
    ExtraRequestOptions? options,
  }) async {
    try {
      final response = await _api.postWithRequestOptions(
        APIPath.deskOrderCreatePaymentOrder.cashierPath,
        data: data.toJson(),
        requestOptions: options,
      );
      if (response.code.success) {
        if (response.data == null || (response.data as Map).isEmpty) return null;
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
      logger.severe('createDeskPaymentOrder Error:', error, stackTrace);
      return null;
    }
  }
}

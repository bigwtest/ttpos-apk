part of '../checkout_api.dart';

mixin MixinOrderFinish {
  API get _api;
  Logger get logger;

  // 完成一个点餐的支付单
  Future<PaymentFinish?> finishInstantPaymentOrder({
    required RequestUuid data,
    ExtraRequestOptions? options,
  }) async {
    try {
      final response = await _api.postWithRequestOptions(
        APIPath.instantOrderFinishPaymentOrder.cashierPath,
        data: data.toJson(),
        requestOptions: options,
      );
      if (response.code.success) {
        if (response.data == null || (response.data as Map).isEmpty) return null;
        return await response.safeFromJson(
          PaymentFinish.fromJson,
          response.data,
          modelName: 'PaymentFinish',
          options: options,
          logger: logger,
        );
      }
      return null;
    } catch (error, stackTrace) {
      logger.severe('finishInstantPaymentOrder Error:', error, stackTrace);
      return null;
    }
  }

  // 完成一个桌台的支付单
  Future<PaymentFinish?> finishDeskPaymentOrder({
    required RequestUuid data,
    ExtraRequestOptions? options,
  }) async {
    try {
      final response = await _api.postWithRequestOptions(
        APIPath.deskOrderFinishPaymentOrder.cashierPath,
        data: data.toJson(),
        requestOptions: options,
      );
      if (response.code.success) {
        if (response.data == null || (response.data as Map).isEmpty) return null;
        return await response.safeFromJson(
          PaymentFinish.fromJson,
          response.data,
          modelName: 'PaymentInfo',
          options: options,
          logger: logger,
        );
      }
      return null;
    } catch (error, stackTrace) {
      logger.severe('finishDeskPaymentOrder Error:', error, stackTrace);
      return null;
    }
  }
}

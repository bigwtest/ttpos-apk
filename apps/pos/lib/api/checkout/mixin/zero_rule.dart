part of '../checkout_api.dart';

mixin MixinZeroRule {
  API get _api;
  Logger get logger;

  // 设置一个点餐的抹零规则
  Future<PaymentInfo?> setInstantPaymentZeroRule({
    required RequestZeroRule data,
    ExtraRequestOptions? options,
  }) async {
    try {
      final response = await _api.postWithRequestOptions(
        APIPath.instantOrderSetPaymentZeroRule.cashierPath,
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
      logger.severe('setInstantPaymentZeroRule Error:', error, stackTrace);
      return null;
    }
  }

  // 设置一个桌台的抹零规则
  Future<PaymentInfo?> setDeskPaymentZeroRule({
    required RequestZeroRule data,
    ExtraRequestOptions? options,
  }) async {
    try {
      final response = await _api.postWithRequestOptions(
        APIPath.deskOrderSetPaymentZeroRule.cashierPath,
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
      logger.severe('setDeskPaymentZeroRule Error:', error, stackTrace);
      return null;
    }
  }
}

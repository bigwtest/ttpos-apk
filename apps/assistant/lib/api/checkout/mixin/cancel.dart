part of '../checkout_api.dart';

mixin MixinOrderCancel {
  API get _api;
  Logger get logger;

  // 撤销一个点餐的支付单
  Future<PaymentInfo?> cancelInstantPaymentOrder({
    required RequestCancelPaymentOrder data,
    ExtraRequestOptions? options,
  }) async {
    try {
      final response = await _api.postWithRequestOptions(
        APIPath.instantOrderCancelPaymentOrder.assistantPath,
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
      logger.severe('cancelInstantPaymentOrder Error:', error, stackTrace);
      return null;
    }
  }

  // 撤销一个桌台的支付单
  Future<PaymentInfo?> cancelDeskPaymentOrder({
    required RequestCancelPaymentOrder data,
    ExtraRequestOptions? options,
  }) async {
    try {
      final response = await _api.postWithRequestOptions(
        APIPath.deskOrderCancelPaymentOrder.assistantPath,
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

      if (response.code == ErrorCode.orderCheckIsSplit.code) {
        DialogManager.closeAllToast();
        DialogManager.showConfirmDialog(
          message: ErrorCode.orderCheckIsSplit.message.tr,
          showCancelButton: false,
        );
      }

      return null;
    } catch (error, stackTrace) {
      logger.severe('cancelDeskPaymentOrder Error:', error, stackTrace);
      return null;
    }
  }
}

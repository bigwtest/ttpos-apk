part of '../checkout_api.dart';

mixin MixinQrcode {
  API get _api;
  Logger get logger;

  // 获取支付方式的二维码信息
  Future<PaymentQrcode?> getInstantPaymentMethodQrcode({
    required RequestPaymentQrcode data,
    ExtraRequestOptions? options,
  }) async {
    try {
      final response = await _api.getWithRequestOptions(
        APIPath.instantOrderPaymentQrcode.assistantPath,
        queryParameters: data.toJson(),
        requestOptions: options,
      );
      if (response.code.success) {
        return await response.safeFromJson(
          PaymentQrcode.fromJson,
          response.data,
          modelName: 'PaymentQrcode',
          options: options,
          logger: logger,
        );
      }
      return null;
    } catch (error, stackTrace) {
      logger.severe('getInstantPaymentMethodQrcode Error:', error, stackTrace);
      return null;
    }
  }

  // 获取支付方式的二维码信息
  Future<PaymentQrcode?> getDeskPaymentMethodQrcode({
    required RequestPaymentQrcode data,
    ExtraRequestOptions? options,
  }) async {
    try {
      final response = await _api.getWithRequestOptions(
        APIPath.deskOrderPaymentQrcode.assistantPath,
        queryParameters: data.toJson(),
        requestOptions: options,
      );
      if (response.code.success) {
        return await response.safeFromJson(
          PaymentQrcode.fromJson,
          response.data,
          modelName: 'PaymentQrcode',
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
      logger.severe('getDeskPaymentMethodQrcode Error:', error, stackTrace);
      return null;
    }
  }
}

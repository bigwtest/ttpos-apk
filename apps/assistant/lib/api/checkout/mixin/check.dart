part of '../checkout_api.dart';

mixin MixinCheck {
  API get _api;
  Logger get logger;

  // 检查点餐订单是否可结账
  Future<(bool, OrderCheck?, ErrorCode?)> checkInstantOrder({
    required RequestOrderCheck query,
    ExtraRequestOptions? options,
  }) async {
    try {
      final response = await _api.getWithRequestOptions(
        APIPath.instantOrderGetCheck.assistantPath,
        queryParameters: query.toJson(),
        requestOptions: options,
      );
      if (response.code.success) {
        return (
          true,
          await response.safeFromJson(
            OrderCheck.fromJson,
            response.data,
            modelName: 'OrderCheck',
            options: options,
            logger: logger,
          ),
          null
        );
      } else if (response.code.isShowOrderCheckDialog) {
        return (
          false,
          await response.safeFromJson(
            OrderCheck.fromJson,
            response.data,
            modelName: 'OrderCheck',
            options: options,
            logger: logger,
          ),
          ErrorCode.fromCode(response.code)
        );
      }
      return (false, null, null);
    } catch (error, stackTrace) {
      logger.severe('checkInstantOrder Error:', error, stackTrace);
      return (false, null, null);
    }
  }

  // 检查桌台订单是否可结账
  Future<(bool, OrderCheck?, ErrorCode?)> checkDeskOrder({
    required RequestOrderCheck query,
    ExtraRequestOptions? options,
  }) async {
    try {
      final response = await _api.getWithRequestOptions(
        APIPath.deskOrderGetCheck.assistantPath,
        queryParameters: query.toJson(),
        requestOptions: options,
      );
      if (response.code.success) {
        return (
          true,
          await response.safeFromJson(
            OrderCheck.fromJson,
            response.data,
            modelName: 'OrderCheck',
            options: options,
            logger: logger,
          ),
          null,
        );
      } else if (response.code.isShowOrderCheckDialog) {
        return (
          false,
          await response.safeFromJson(
            OrderCheck.fromJson,
            response.data,
            modelName: 'OrderCheck',
            options: options,
            logger: logger,
          ),
          ErrorCode.fromCode(response.code)
        );
      }
      return (false, null, null);
    } catch (error, stackTrace) {
      logger.severe('checkDeskOrder Error:', error, stackTrace);
      return (false, null, null);
    }
  }
}

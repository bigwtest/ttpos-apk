part of '../checkout_api.dart';

mixin MixinMember {
  API get _api;
  Logger get logger;

  // 获取点餐订单会员优惠
  Future<MemberDiscount?> getInstantOrderMemberDiscount({
    required RequestGetMemberDiscount query,
    ExtraRequestOptions? options,
  }) async {
    try {
      final response = await _api.getWithRequestOptions(
        APIPath.instantOrderGetMemberDiscount.assistantPath,
        queryParameters: query.toJson(),
        requestOptions: options,
      );
      if (response.code.success) {
        return await response.safeFromJson(
          MemberDiscount.fromJson,
          response.data,
          modelName: 'MemberDiscount',
          options: options,
          logger: logger,
        );
      }
      return null;
    } catch (error, stackTrace) {
      logger.severe('checkInstantOrder Error:', error, stackTrace);
      return null;
    }
  }

  // 获取桌台订单会员优惠
  Future<MemberDiscount?> getDeskOrderMemberDiscount({
    required RequestGetMemberDiscount query,
    ExtraRequestOptions? options,
  }) async {
    try {
      final response = await _api.getWithRequestOptions(
        APIPath.deskOrderGetMemberDiscount.assistantPath,
        queryParameters: query.toJson(),
        requestOptions: options,
      );
      if (response.code.success) {
        return await response.safeFromJson(
          MemberDiscount.fromJson,
          response.data,
          modelName: 'MemberDiscount',
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
      logger.severe('checkDeskOrder Error:', error, stackTrace);
      return null;
    }
  }

  // 使用点餐订单会员优惠
  Future<PaymentInfo?> useInstantOrderMemberDiscount({
    required RequestUseMemberDiscount data,
    ExtraRequestOptions? options,
  }) async {
    try {
      final response = await _api.postWithRequestOptions(
        APIPath.instantOrderMemberDiscountConfirm.assistantPath,
        data: data.toJson(),
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
      logger.severe('useInstantOrderMemberDiscount Error:', error, stackTrace);
      return null;
    }
  }

  // 使用桌台订单会员优惠
  Future<PaymentInfo?> useDeskOrderMemberDiscount({
    required RequestUseMemberDiscount data,
    ExtraRequestOptions? options,
  }) async {
    try {
      final response = await _api.postWithRequestOptions(
        APIPath.deskOrderMemberDiscountConfirm.assistantPath,
        data: data.toJson(),
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

      if (response.code == ErrorCode.orderCheckIsSplit.code) {
        DialogManager.closeAllToast();
        DialogManager.showConfirmDialog(
          message: ErrorCode.orderCheckIsSplit.message.tr,
          showCancelButton: false,
        );
      }

      return null;
    } catch (error, stackTrace) {
      logger.severe('useDeskOrderMemberDiscount Error:', error, stackTrace);
      return null;
    }
  }

  // 不使用点餐订单会员优惠
  Future<PaymentInfo?> removeInstantOrderMemberDiscount({
    required RequestUuid data,
    ExtraRequestOptions? options,
  }) async {
    try {
      final response = await _api.deleteWithRequestOptions(
        APIPath.instantOrderMemberCancel.assistantPath,
        data: data.toJson(),
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
      logger.severe('removeInstantOrderMemberDiscount Error:', error, stackTrace);
      return null;
    }
  }

  // 不使用桌台订单会员优惠
  Future<PaymentInfo?> removeDeskOrderMemberDiscount({
    required RequestUuid data,
    ExtraRequestOptions? options,
  }) async {
    try {
      final response = await _api.deleteWithRequestOptions(
        APIPath.deskOrderMemberCancel.assistantPath,
        data: data.toJson(),
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

      if (response.code == ErrorCode.orderCheckIsSplit.code) {
        DialogManager.closeAllToast();
        DialogManager.showConfirmDialog(
          message: ErrorCode.orderCheckIsSplit.message.tr,
          showCancelButton: false,
        );
      }

      return null;
    } catch (error, stackTrace) {
      logger.severe('removeDeskOrderMemberDiscount Error:', error, stackTrace);
      return null;
    }
  }
}

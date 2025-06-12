// Package imports:
import 'package:get/get.dart';
import 'package:pos/model/response/cart/cart.dart';
import 'package:ttpos_api/api.dart';
// Project imports:
import 'package:ttpos_api/controller.dart';
import 'package:ttpos_logger/logger.dart';
import 'package:ttpos_model/base/request/options.dart';
import 'package:ttpos_shared/shared.dart';

/// 购物车API
class CartAPI {
  final API _api = Get.find<APIController>().api;
  final Log _logger = Log(appName: 'CartAPI');
  Logger get logger => _logger.logger;

  // 获取购物车列表
  Future<(ResponseCart?, ErrorCode)> getCartInfo({
    int saleBillUuid = 0,
    int h5OrderUuid = 0,
    ExtraRequestOptions? options,
  }) async {
    try {
      final response = await _api.getWithRequestOptions(
        APIPath.instantOrderCartInfo.cashierPath,
        queryParameters: {
          'sale_bill_uuid': saleBillUuid,
          'h5_order_uuid': h5OrderUuid,
        },
        requestOptions: options,
      );
      if (response.code == ErrorCode.deskCartInfoInvalid.code) {
        return (null, ErrorCode.deskCartInfoInvalid);
      }
      // 正常返回购物车数据
      if (response.code.success) {
        final cart = await response.safeFromJson(
          ResponseCart.fromJson,
          response.data,
          modelName: 'ResponseCart',
          options: options,
          logger: logger,
        );
        return (cart, ErrorCode.success);
      }
      return (null, ErrorCode.failure);
    } catch (error, stackTrace) {
      logger.severe('getCartInfo Error:', error, stackTrace);
      return (null, ErrorCode.failure);
    }
  }

  // 获取桌台购物车列表
  Future<(ResponseCart?, ErrorCode)> getDeskCartInfo({
    int saleBillUuid = 0,
    int h5OrderUuid = 0,
    ExtraRequestOptions? options,
  }) async {
    try {
      final response = await _api.getWithRequestOptions(
        APIPath.deskOrderCartInfo.cashierPath,
        queryParameters: {
          'sale_bill_uuid': saleBillUuid,
          'h5_order_uuid': h5OrderUuid,
        },
        requestOptions: options,
      );
      if (response.code == ErrorCode.deskCartInfoInvalid.code) {
        return (null, ErrorCode.deskCartInfoInvalid);
      }
      if (response.code.success) {
        final cart = await response.safeFromJson(
          ResponseCart.fromJson,
          response.data,
          modelName: 'ResponseCart',
          options: options,
          logger: logger,
        );
        return (cart, ErrorCode.success);
      }
      return (null, ErrorCode.failure);
    } catch (error, stackTrace) {
      logger.severe('getDeskCartInfo Error:', error, stackTrace);
      return (null, ErrorCode.failure);
    }
  }
}

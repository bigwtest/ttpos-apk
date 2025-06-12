// Package imports:
import 'package:get/get.dart';
import 'package:pos/model/request/order/price_product.dart';
import 'package:pos/model/response/cart/cart.dart';
import 'package:ttpos_api/api.dart';
// Project imports:
import 'package:ttpos_api/controller.dart';
import 'package:ttpos_logger/logger.dart';
import 'package:ttpos_model/base/request/options.dart';

/// 订单商品改价
class OrderPriceProductAPI {
  final API _api = Get.find<APIController>().api;
  final Log _logger = Log(appName: 'OrderPriceProductAPI');
  Logger get logger => _logger.logger;

  // 点餐
  Future<ResponseCart?> price(
    RequestOrderPriceProduct req, {
    ExtraRequestOptions? options,
  }) async {
    try {
      final response = await _api.postWithRequestOptions(
        APIPath.instantOrderProductPrice.cashierPath,
        data: req.toJson(),
        requestOptions: options,
      );
      if (response.code.success) {
        return await response.safeFromJson(
          ResponseCart.fromJson,
          response.data,
          modelName: 'ResponseCart',
          options: options,
          logger: logger,
        );
      }
      return null;
    } catch (error, stackTrace) {
      logger.severe('price Error:', error, stackTrace);
      return null;
    }
  }

  // 桌台
  Future<ResponseCart?> priceDesk(
    RequestOrderPriceProduct req, {
    ExtraRequestOptions? options,
  }) async {
    try {
      final response = await _api.postWithRequestOptions(
        APIPath.deskOrderProductPrice.cashierPath,
        data: req.toJson(),
        requestOptions: options,
      );
      if (response.code.success) {
        return await response.safeFromJson(
          ResponseCart.fromJson,
          response.data,
          modelName: 'ResponseCart',
          options: options,
          logger: logger,
        );
      }
      return null;
    } catch (error, stackTrace) {
      logger.severe('priceDesk Error:', error, stackTrace);
      return null;
    }
  }
}

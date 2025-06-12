// Package imports:
import 'package:get/get.dart';
import 'package:pos/model/request/order/remark_product.dart';
import 'package:pos/model/response/cart/cart.dart';
import 'package:ttpos_api/api.dart';
// Project imports:
import 'package:ttpos_api/controller.dart';
import 'package:ttpos_logger/logger.dart';
import 'package:ttpos_model/base/request/options.dart';

/// 订单商品备注
class OrderRemarkProductAPI {
  final API _api = Get.find<APIController>().api;
  final Log _logger = Log(appName: 'OrderRemarkProductAPI');
  Logger get logger => _logger.logger;

  // 点餐
  Future<ResponseCart?> instant(
    RequestOrderRemarkProduct req, {
    ExtraRequestOptions? options,
  }) async {
    try {
      final response = await _api.postWithRequestOptions(
        APIPath.instantOrderProductRemark.cashierPath,
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
      logger.severe('remark Error:', error, stackTrace);
      return null;
    }
  }

  // 桌台
  Future<ResponseCart?> desk(
    RequestOrderRemarkProduct req, {
    ExtraRequestOptions? options,
  }) async {
    try {
      final response = await _api.postWithRequestOptions(
        APIPath.deskOrderProductRemark.cashierPath,
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
      logger.severe('remarkDesk Error:', error, stackTrace);
      return null;
    }
  }
}

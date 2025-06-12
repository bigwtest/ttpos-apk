// Package imports:
import 'package:get/get.dart';
import 'package:pos/model/response/cart/cart.dart';
import 'package:ttpos_api/api.dart';
// Project imports:
import 'package:ttpos_api/controller.dart';
import 'package:ttpos_logger/logger.dart';
import 'package:ttpos_model/base/request/options.dart';

/// 创建一个销售订单
class OrderCreateSaleOrderAPI {
  final API _api = Get.find<APIController>().api;
  final Log _logger = Log(appName: 'OrderCreateSaleOrderAPI');
  Logger get logger => _logger.logger;

  // 点餐
  Future<ResponseCart?> createSaleOrder(
    int saleBillUuid, {
    ExtraRequestOptions? options,
  }) async {
    try {
      final response = await _api.postWithRequestOptions(
        APIPath.instantOrderSaleOrderCreate.cashierPath,
        data: {
          'sale_bill_uuid': saleBillUuid,
        },
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
  Future<ResponseCart?> createSaleOrderDesk(
    int saleBillUuid, {
    ExtraRequestOptions? options,
  }) async {
    try {
      final response = await _api.postWithRequestOptions(
        APIPath.deskOrderSaleOrderCreate.cashierPath,
        data: {
          'sale_bill_uuid': saleBillUuid,
        },
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

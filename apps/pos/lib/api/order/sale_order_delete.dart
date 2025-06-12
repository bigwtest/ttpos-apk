// Package imports:
import 'package:get/get.dart';
import 'package:pos/model/response/cart/cart.dart';
import 'package:ttpos_api/api.dart';
// Project imports:
import 'package:ttpos_api/controller.dart';
import 'package:ttpos_logger/logger.dart';
import 'package:ttpos_model/base/request/options.dart';

// 删除一个销售订单(删除拆单)
class OrderSaleOrderDeleteAPI {
  final API _api = Get.find<APIController>().api;
  final Log _logger = Log(appName: 'OrderSaleOrderDeleteAPI');
  Logger get logger => _logger.logger;

  // 点餐
  Future<ResponseCart?> delete({
    required int saleBillUuid,
    required int saleOrderUuid,
    ExtraRequestOptions? options,
  }) async {
    try {
      final response = await _api.deleteWithRequestOptions(
        APIPath.instantOrderSaleOrderDelete.cashierPath,
        data: {
          'sale_bill_uuid': saleBillUuid,
          'sale_order_uuid': saleOrderUuid,
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
      logger.severe('delete Error:', error, stackTrace);
      return null;
    }
  }

  // 桌台
  Future<ResponseCart?> deskDelete({
    required int saleBillUuid,
    required int saleOrderUuid,
    ExtraRequestOptions? options,
  }) async {
    try {
      final response = await _api.deleteWithRequestOptions(
        APIPath.deskOrderSaleOrderDelete.cashierPath,
        data: {
          'sale_bill_uuid': saleBillUuid,
          'sale_order_uuid': saleOrderUuid,
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
      logger.severe('deskDelete Error:', error, stackTrace);
      return null;
    }
  }
}

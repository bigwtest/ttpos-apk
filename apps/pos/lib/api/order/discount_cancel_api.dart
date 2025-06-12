// Package imports:
import 'package:get/get.dart';
import 'package:pos/model/response/cart/cart.dart';
import 'package:ttpos_api/api.dart';
// Project imports:
import 'package:ttpos_api/controller.dart';
import 'package:ttpos_logger/logger.dart';
import 'package:ttpos_model/base/request/options.dart';

// 折扣取消
class OrderDiscountCancelAPI {
  final API _api = Get.find<APIController>().api;
  final Log _logger = Log(appName: 'OrderDiscountCancelAPI');
  Logger get logger => _logger.logger;

  // 点餐
  Future<ResponseCart?> instant({
    required int saleBillUuid, // 销售账单ID
    required int saleOrderUuid, // 销售订单ID
    ExtraRequestOptions? options,
  }) async {
    try {
      final response = await _api.postWithRequestOptions(
        APIPath.instantOrderDiscountCancel.cashierPath,
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
  Future<ResponseCart?> desk({
    required int saleBillUuid, // 销售账单ID
    required int saleOrderUuid, // 销售订单ID
    ExtraRequestOptions? options,
  }) async {
    try {
      final response = await _api.postWithRequestOptions(
        // '/desk/order/discount/cancel',
        APIPath.deskOrderDiscountCancel.cashierPath,
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
}

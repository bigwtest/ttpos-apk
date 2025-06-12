// Package imports:
import 'package:get/get.dart';
import 'package:pos/model/response/cart/cart.dart';
import 'package:ttpos_api/api.dart';
// Project imports:
import 'package:ttpos_api/controller.dart';
import 'package:ttpos_logger/logger.dart';
import 'package:ttpos_model/base/request/options.dart';

// 撤销拆单
class OrderSaleOrderDeleteAllAPI {
  final API _api = Get.find<APIController>().api;
  final Log _logger = Log(appName: 'OrderSaleOrderDeleteAllAPI');
  Logger get logger => _logger.logger;

  // 点餐
  Future<ResponseCart?> deleteAll({
    required int saleBillUuid,
    int? memberUuid,
    ExtraRequestOptions? options,
  }) async {
    try {
      final response = await _api.deleteWithRequestOptions(
        APIPath.instantOrderSaleOrderDeleteAll.cashierPath,
        data: {
          'sale_bill_uuid': saleBillUuid,
          'member_uuid': memberUuid,
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
      logger.severe('deleteAll Error:', error, stackTrace);
      return null;
    }
  }

  // 桌台
  Future<ResponseCart?> deskDeleteAll({
    required int saleBillUuid,
    int? memberUuid,
    ExtraRequestOptions? options,
  }) async {
    try {
      final response = await _api.deleteWithRequestOptions(
        APIPath.deskOrderSaleOrderDeleteAll.cashierPath,
        data: {
          'sale_bill_uuid': saleBillUuid,
          'member_uuid': memberUuid,
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
      logger.severe('deskDeleteAll Error:', error, stackTrace);
      return null;
    }
  }
}

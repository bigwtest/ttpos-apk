// Package imports:
import 'package:get/get.dart';
import 'package:pos/model/response/cart/cart.dart';
import 'package:ttpos_api/api.dart';
// Project imports:
import 'package:ttpos_api/controller.dart';
import 'package:ttpos_logger/logger.dart';
import 'package:ttpos_model/base/request/options.dart';

// 转菜
class OrderProductChangeDeskAPI {
  final API _api = Get.find<APIController>().api;
  final Log _logger = Log(appName: 'OrderProductChangeDeskAPI');
  Logger get logger => _logger.logger;

  Future<ResponseCart?> changeDesk({
    required int saleBillUuid, // 销售账单ID
    required int saleOrderUuid, // 销售订单ID
    required int saleOrderProductUuid, // 销售订单商品ID
    required int deskUuid, // 目标桌台ID
    ExtraRequestOptions? options,
  }) async {
    try {
      final response = await _api.postWithRequestOptions(
        APIPath.deskOrderCartProductChangeDesk.cashierPath,
        data: {
          'sale_bill_uuid': saleBillUuid,
          'sale_order_uuid': saleOrderUuid,
          'sale_order_product_uuid': saleOrderProductUuid,
          'desk_uuid': deskUuid,
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

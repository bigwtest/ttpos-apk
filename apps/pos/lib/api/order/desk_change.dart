// Package imports:
import 'package:get/get.dart';
import 'package:pos/model/response/cart/cart.dart';
import 'package:ttpos_api/api.dart';
// Project imports:
import 'package:ttpos_api/controller.dart';
import 'package:ttpos_logger/logger.dart';
import 'package:ttpos_model/base/request/options.dart';

/// 桌台变更
class DeskChangeAPI {
  final API _api = Get.find<APIController>().api;
  final Log _logger = Log(appName: 'DeskChangeAPI');
  Logger get logger => _logger.logger;

  // 获取桌台列表
  Future<ResponseCart?> change({
    int saleBillUuid = 0,
    int saleOrderUuid = 0,
    int deskUuid = 0,
    ExtraRequestOptions? options,
  }) async {
    try {
      final response = await _api.postWithRequestOptions(
        APIPath.deskChange.cashierPath,
        data: {
          'sale_bill_uuid': saleBillUuid,
          'sale_order_uuid': saleOrderUuid,
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
      logger.severe('getCartInfo Error:', error, stackTrace);
      return null;
    }
  }
}

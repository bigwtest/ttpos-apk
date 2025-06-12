// Package imports:
import 'package:get/get.dart';
import 'package:pos/model/request/order/adjust_buffet.dart';
import 'package:pos/model/response/cart/cart.dart';
import 'package:ttpos_api/api.dart';
// Project imports:
import 'package:ttpos_api/controller.dart';
import 'package:ttpos_logger/logger.dart';
import 'package:ttpos_model/base/request/options.dart';

/// 订单修改就餐人数
class OrderAdjustBuffetAPI {
  final API _api = Get.find<APIController>().api;
  final Log _logger = Log(appName: 'OrderAdjustBuffetAPI');
  Logger get logger => _logger.logger;

  // 桌台
  Future<ResponseCart?> adjustBuffet({
    required RequestOrderAdjustBuffet req,
    ExtraRequestOptions? options,
  }) async {
    try {
      final response = await _api.postWithRequestOptions(
        APIPath.deskOrderAdjustBuffet.cashierPath,
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
      logger.severe('populationDesk Error:', error, stackTrace);
      return null;
    }
  }
}

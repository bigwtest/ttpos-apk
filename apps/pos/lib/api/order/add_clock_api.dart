// Package imports:
// Project imports:
// Package imports:
import 'package:get/get.dart';
import 'package:pos/model/request/order/add_clock.dart';
import 'package:pos/model/response/cart/cart.dart';
import 'package:ttpos_api/api.dart';
// Project imports:
import 'package:ttpos_api/controller.dart';
import 'package:ttpos_logger/logger.dart';
import 'package:ttpos_model/base/request/options.dart';

/// 加钟API
class OrderAddClockAPI {
  final API _api = Get.find<APIController>().api;
  final Log _logger = Log(appName: 'OrderAddClockAPI');
  Logger get logger => _logger.logger;

  // 桌台
  Future<ResponseCart?> addClock({
    required RequestOrderAddClock req,
    ExtraRequestOptions? options,
  }) async {
    try {
      final response = await _api.postWithRequestOptions(
        APIPath.deskOrderAddClock.cashierPath,
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
      logger.severe('addClock Error:', error, stackTrace);
      return null;
    }
  }
}

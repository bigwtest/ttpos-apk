// Package imports:
import 'package:get/get.dart';
// Model imports:
import 'package:pos/model/request/order_list/request_uuid.dart';
import 'package:pos/model/response/order_list/order_reverse_settle_details.dart';
import 'package:ttpos_api/api.dart';
// Project imports:
import 'package:ttpos_api/controller.dart';
import 'package:ttpos_logger/logger.dart';
import 'package:ttpos_model/base/request/options.dart';

class OrderReverseSettleAPI {
  final API _api = Get.find<APIController>().api;
  final Log _logger = Log(appName: 'OrderReverseSettleAPI');
  Logger get logger => _logger.logger;

  Future<OrderReverseSettleDetails?> getOrderReverseSettle(
    RequestUuid data, {
    ExtraRequestOptions? options,
  }) async {
    try {
      final response = await _api.getWithRequestOptions(
        APIPath.orderReverseSettle.cashierPath,
        queryParameters: data.toJson(),
        requestOptions: options,
      );
      if (response.code.success) {
        return await response.safeFromJson(
          OrderReverseSettleDetails.fromJson,
          response.data,
          modelName: 'ResponseOrderReverseSettle',
          options: options,
          logger: logger,
        );
      }
      return null;
    } catch (error, stackTrace) {
      logger.severe('getOrderReverseSettle Error:', error, stackTrace);
      return null;
    }
  }
}

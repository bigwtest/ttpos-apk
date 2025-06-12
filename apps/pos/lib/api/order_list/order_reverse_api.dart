// Package imports:
import 'package:get/get.dart';
import 'package:pos/model/request/order_list/request_order_reverse.dart';
import 'package:ttpos_api/api.dart';
// Project imports:
import 'package:ttpos_api/controller.dart';
import 'package:ttpos_logger/logger.dart';
import 'package:ttpos_model/base/request/options.dart';

class OrderReverseAPI {
  final API _api = Get.find<APIController>().api;
  final Log _logger = Log(appName: 'OrderReverseAPI');
  Logger get logger => _logger.logger;

  Future<bool?> postOrderReverse(
    RequestOrderReverse data, {
    ExtraRequestOptions? options,
  }) async {
    try {
      final response = await _api.postWithRequestOptions(
        APIPath.orderReverseSettle.cashierPath,
        data: data.toJson(),
        requestOptions: options,
      );
      return response.code.success;
    } catch (error, stackTrace) {
      logger.severe('getOrderReverse Error:', error, stackTrace);
      return false;
    }
  }
}

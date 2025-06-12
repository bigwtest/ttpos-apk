import 'package:get/get.dart';
import 'package:pos/model/request/order_list/request_order_cancel.dart';
import 'package:ttpos_api/api.dart';
import 'package:ttpos_api/controller.dart';
import 'package:ttpos_logger/logger.dart';
import 'package:ttpos_model/base/request/options.dart';

class OrderCancelAPI {
  final API _api = Get.find<APIController>().api;
  final Log _logger = Log(appName: 'OrderCancelAPI');
  Logger get logger => _logger.logger;

  Future<bool> cancelOrder(
    RequestOrderCancel data, {
    ExtraRequestOptions? options,
  }) async {
    try {
      final response = await _api.postWithRequestOptions(
        APIPath.orderCancel.cashierPath,
        data: data.toJson(),
        requestOptions: options,
      );
      return response.code.success;
    } catch (error, stackTrace) {
      logger.severe('Deposit Cash Error:', error, stackTrace);
      return false;
    }
  }

  Future<bool> cancelOldOrder(
    RequestOrderCancel data, {
    ExtraRequestOptions? options,
  }) async {
    try {
      final response = await _api.postWithRequestOptions(
        APIPath.oldOrderCancel.cashierPath,
        data: data.toJson(),
        requestOptions: options,
      );
      return response.code.success;
    } catch (error, stackTrace) {
      logger.severe('Deposit Cash Error:', error, stackTrace);
      return false;
    }
  }
}

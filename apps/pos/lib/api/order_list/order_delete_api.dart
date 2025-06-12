import 'package:get/get.dart';
import 'package:pos/model/request/order_list/request_order_uuid.dart';
import 'package:ttpos_api/api.dart';
import 'package:ttpos_api/controller.dart';
import 'package:ttpos_logger/logger.dart';
import 'package:ttpos_model/base/request/options.dart';

class OrderDeleteAPI {
  final API _api = Get.find<APIController>().api;
  final Log _logger = Log(appName: 'OrderDeleteAPI');
  Logger get logger => _logger.logger;

  Future<bool> deleteOrder(
    RequestOrderUuid data, {
    ExtraRequestOptions? options,
  }) async {
    try {
      final response = await _api.deleteWithRequestOptions(
        APIPath.orderDelete.cashierPath,
        data: data.toJson(),
        requestOptions: options,
      );
      return response.code.success;
    } catch (error, stackTrace) {
      logger.severe('Deposit Cash Error:', error, stackTrace);
      return false;
    }
  }

  Future<bool> deleteOldOrder(
    RequestOrderUuid data, {
    ExtraRequestOptions? options,
  }) async {
    try {
      final response = await _api.deleteWithRequestOptions(
        APIPath.oldOrderDelete.cashierPath,
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

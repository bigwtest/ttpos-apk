// Package imports:
import 'package:get/get.dart';
// Model imports:
import 'package:pos/model/request/order_list/request_order_uuid.dart';
import 'package:pos/model/response/order_list/order_refund_details.dart';
import 'package:ttpos_api/api.dart';
// Project imports:
import 'package:ttpos_api/controller.dart';
import 'package:ttpos_logger/logger.dart';
import 'package:ttpos_model/base/request/options.dart';

class OrderRefundAPI {
  final API _api = Get.find<APIController>().api;
  final Log _logger = Log(appName: 'OrderRefundAPI');
  Logger get logger => _logger.logger;

  Future<OrderRefundDetails?> getOrderRefund(
    RequestOrderUuid data, {
    ExtraRequestOptions? options,
  }) async {
    try {
      final response = await _api.getWithRequestOptions(
        APIPath.orderRefund.cashierPath,
        queryParameters: data.toJson(),
        requestOptions: options,
      );
      if (response.code.success) {
        return await response.safeFromJson(
          OrderRefundDetails.fromJson,
          response.data,
          modelName: 'ResponseOrderForMeals',
          options: options,
          logger: logger,
        );
      }
      return null;
    } catch (error, stackTrace) {
      logger.severe('getOrderForMealsList Error:', error, stackTrace);
      return null;
    }
  }

  Future<OrderRefundDetails?> getOldOrderRefund(
    RequestOrderUuid data, {
    ExtraRequestOptions? options,
  }) async {
    try {
      final response = await _api.getWithRequestOptions(
        APIPath.oldOrderRefund.cashierPath,
        queryParameters: data.toJson(),
        requestOptions: options,
      );
      if (response.code.success) {
        return await response.safeFromJson(
          OrderRefundDetails.fromJson,
          response.data,
          modelName: 'ResponseOrderForMeals',
          options: options,
          logger: logger,
        );
      }
      return null;
    } catch (error, stackTrace) {
      logger.severe('getOrderForMealsList Error:', error, stackTrace);
      return null;
    }
  }
}

// Package imports:
import 'package:get/get.dart';
// Model imports:
import 'package:pos/model/request/order_list_details/order_details.dart';
import 'package:pos/model/response/order_list_details/order_details.dart';
import 'package:ttpos_api/api.dart';
// Project imports:
import 'package:ttpos_api/controller.dart';
import 'package:ttpos_logger/logger.dart';
import 'package:ttpos_model/base/request/options.dart';

class OrderDetailsAPI {
  final API _api = Get.find<APIController>().api;
  final Log _logger = Log(appName: 'OrderDetailsAPI');
  Logger get logger => _logger.logger;

  Future<ResponseOrderDetails?> getOrderDetails(
    RequestOrderDetails data, {
    ExtraRequestOptions? options,
  }) async {
    try {
      final response = await _api.getWithRequestOptions(
        APIPath.orderGetInfo.cashierPath,
        queryParameters: data.toJson(),
        requestOptions: options,
      );
      if (response.code.success) {
        return await response.safeFromJson(
          ResponseOrderDetails.fromJson,
          response.data,
          modelName: 'ResponseOrderDetails',
          options: options,
          logger: logger,
        );
      }
      return null;
    } catch (error, stackTrace) {
      logger.severe('getOrderDetails Error:', error, stackTrace);
      return null;
    }
  }

  Future<ResponseOrderDetails?> getOldOrderDetails(
    RequestOrderDetails data, {
    ExtraRequestOptions? options,
  }) async {
    try {
      final response = await _api.getWithRequestOptions(
        APIPath.oldOrderInfo.cashierPath,
        queryParameters: data.toJson(),
        requestOptions: options,
      );
      if (response.code.success) {
        return await response.safeFromJson(
          ResponseOrderDetails.fromJson,
          response.data,
          modelName: 'ResponseOrderDetails',
          options: options,
          logger: logger,
        );
      }
      return null;
    } catch (error, stackTrace) {
      logger.severe('getOldOrderDetails Error:', error, stackTrace);
      return null;
    }
  }
}

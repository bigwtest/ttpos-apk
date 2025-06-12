// Package imports:
import 'package:get/get.dart';
// Model imports:
import 'package:pos/model/request/order_list/request_order_for_meals.dart';
import 'package:pos/model/response/order_list/response_order_for_meals.dart';
import 'package:ttpos_api/api.dart';
// Project imports:
import 'package:ttpos_api/controller.dart';
import 'package:ttpos_logger/logger.dart';
import 'package:ttpos_model/base/request/options.dart';

class OrderForMealsListAPI {
  final API _api = Get.find<APIController>().api;
  final Log _logger = Log(appName: 'OrderForMealsListAPI');
  Logger get logger => _logger.logger;

  Future<ResponseOrderForMeals?> getOrderForMealsList(
    RequestOrderForMeals searchForm, {
    ExtraRequestOptions? options,
  }) async {
    try {
      final response = await _api.getWithRequestOptions(
        APIPath.orderGetList.cashierPath,
        queryParameters: searchForm.toJson(),
        requestOptions: options,
      );
      if (response.code.success) {
        return await response.safeFromJson(
          ResponseOrderForMeals.fromJson,
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

  Future<ResponseOrderForMeals?> getOldOrderForMealsList(
    RequestOrderForMeals searchForm, {
    ExtraRequestOptions? options,
  }) async {
    try {
      final response = await _api.getWithRequestOptions(
        APIPath.oldOrderList.cashierPath,
        queryParameters: searchForm.toJson(),
        requestOptions: options,
      );
      if (response.code.success) {
        return await response.safeFromJson(
          ResponseOrderForMeals.fromJson,
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

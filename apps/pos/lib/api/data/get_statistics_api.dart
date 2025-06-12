import 'package:get/get.dart';
import 'package:pos/model/request/data/requ_statistics.dart';
import 'package:pos/model/response/data/resp_business_statistics.dart';
import 'package:pos/model/response/data/resp_payment_statistics.dart';
import 'package:pos/model/response/data/resp_product_category_statistics.dart';
import 'package:pos/model/response/data/resp_product_statistics.dart';
import 'package:ttpos_api/api.dart';
import 'package:ttpos_api/controller.dart';
import 'package:ttpos_logger/logger.dart';
import 'package:ttpos_model/base/request/options.dart';

class GetStatisticsAPI {
  final API _api = Get.find<APIController>().api;
  final Log _logger = Log(appName: 'GetStatisticsAPI');
  Logger get logger => _logger.logger;
  //全部
  Future<RespBusinessStatistics?> getBusinessStatistics(
    RequStatistics data, {
    ExtraRequestOptions? options,
  }) async {
    try {
      final response = await _api.getWithRequestOptions(
        APIPath.statisticsGetBusiness.cashierPath,
        queryParameters: data.toJson(),
        requestOptions: options,
      );
      if (response.code.success) {
        return await response.safeFromJson(
          RespBusinessStatistics.fromJson,
          response.data,
          modelName: 'RespBusinessStatistics',
          options: options,
          logger: logger,
        );
      }
      return null;
    } catch (error, stackTrace) {
      logger.severe('getBusinessStatistics Error:', error, stackTrace);
      return null;
    }
  }

  //按支付方式
  Future<RespPaymentStatistics?> getPaymentStatistics(
    RequStatistics data, {
    ExtraRequestOptions? options,
  }) async {
    try {
      final response = await _api.getWithRequestOptions(
        APIPath.statisticsGetPayment.cashierPath,
        queryParameters: data.toJson(),
        requestOptions: options,
      );
      if (response.code.success) {
        return await response.safeFromJson(
          RespPaymentStatistics.fromJson,
          response.data,
          modelName: 'RespPaymentStatistics',
          options: options,
          logger: logger,
        );
      }
      return null;
    } catch (error, stackTrace) {
      logger.severe('getPaymentStatistics Error:', error, stackTrace);
      return null;
    }
  }

  //按商品分类
  Future<RespProductCategoryStatistics?> getProductCategoryStatistics(
    RequStatistics data, {
    ExtraRequestOptions? options,
  }) async {
    try {
      final response = await _api.getWithRequestOptions(
        APIPath.statisticsGetProductCategory.cashierPath,
        queryParameters: data.toJson(),
        requestOptions: options,
      );
      if (response.code.success) {
        return await response.safeFromJson(
          RespProductCategoryStatistics.fromJson,
          response.data,
          modelName: 'RespProductCategoryStatistics',
          options: options,
          logger: logger,
        );
      }
      return null;
    } catch (error, stackTrace) {
      logger.severe('getProductCategoryStatistics Error:', error, stackTrace);
      return null;
    }
  }

  //按商品
  Future<RespProductStatistics?> getProductStatistics(
    RequStatistics data, {
    ExtraRequestOptions? options,
  }) async {
    try {
      final response = await _api.getWithRequestOptions(
        APIPath.statisticsGetProduct.cashierPath,
        queryParameters: data.toJson(),
        requestOptions: options,
      );
      if (response.code.success) {
        return await response.safeFromJson(
          RespProductStatistics.fromJson,
          response.data,
          modelName: 'RespProductStatistics',
          options: options,
          logger: logger,
        );
      }
      return null;
    } catch (error, stackTrace) {
      logger.severe('getProductStatistics Error:', error, stackTrace);
      return null;
    }
  }
}

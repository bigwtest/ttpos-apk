// Package imports:
import 'package:get/get.dart';
import 'package:pos/model/request/sold_out/add_sold_out.dart';
import 'package:pos/model/request/sold_out/cancel_sold_out.dart';
import 'package:pos/model/response/sold_out/sold_out_list.dart';
import 'package:ttpos_api/api.dart';
// Project imports:
import 'package:ttpos_api/controller.dart';
import 'package:ttpos_logger/logger.dart';
import 'package:ttpos_model/base/request/options.dart';
import 'package:ttpos_model/base/response/list.dart';
// Model imports:
import 'package:ttpos_model/common/request/base_page_query.dart';

class SoldOutAPI {
  final API _api = Get.find<APIController>().api;
  final Log _logger = Log(appName: 'SoldOutAPI');
  Logger get logger => _logger.logger;

  // 获取估清商品列表
  Future<BaseList<ResponseSoldOutList>?> getSoldOutList(
    BasePageQuery data, {
    ExtraRequestOptions? options,
  }) async {
    try {
      final response = await _api.getWithRequestOptions(
        APIPath.soldOutList.cashierPath,
        queryParameters: data.toJson(),
        requestOptions: options,
      );
      if (response.code.success) {
        final result = await response.safeFromJsonList(
          ResponseSoldOutList.fromJson,
          response.data,
          modelName: 'ResponseSoldOutList',
          options: options,
          logger: logger,
        );
        return result;
      }
      return null;
    } catch (error, stackTrace) {
      logger.severe('getSoldOutList Error:', error, stackTrace);
      return null;
    }
  }

  // 添加沽清商品
  Future<bool> addSoldOut(
    RequestAddSoldOut data, {
    ExtraRequestOptions? options,
  }) async {
    try {
      final response = await _api.postWithRequestOptions(
        APIPath.soldOutAdd.cashierPath,
        data: data.toJson(),
        requestOptions: options,
      );
      return response.code.success;
    } catch (error, stackTrace) {
      logger.severe('addSoldOut Error:', error, stackTrace);
      return false;
    }
  }

  // 取消沽清商品
  Future<bool> cancelSoldOut(
    RequestCancelSoldOut data, {
    ExtraRequestOptions? options,
  }) async {
    try {
      final response = await _api.postWithRequestOptions(
        APIPath.soldOutCancel.cashierPath,
        data: data.toJson(),
        requestOptions: options,
      );
      return response.code.success;
    } catch (error, stackTrace) {
      logger.severe('cancelSoldOut Error:', error, stackTrace);
      return false;
    }
  }

  // 全部取消沽清商品
  Future<bool> cancelAllSoldOut({
    ExtraRequestOptions? options,
  }) async {
    try {
      final response = await _api.postWithRequestOptions(
        APIPath.soldOutCancelAll.cashierPath,
        requestOptions: options,
      );
      return response.code.success;
    } catch (error, stackTrace) {
      logger.severe('cancelAllSoldOut Error:', error, stackTrace);
      return false;
    }
  }
}

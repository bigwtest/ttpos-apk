// Package imports:
import 'package:get/get.dart';
import 'package:ttpos_api/api.dart';
// Project imports:
import 'package:ttpos_api/controller.dart';
import 'package:ttpos_logger/logger.dart';
import 'package:ttpos_model/base/request/options.dart';
import 'package:ttpos_model/base/response/list.dart';
import 'package:ttpos_model/common/request/base_page_query.dart';
import 'package:ttpos_model/customer_call/response/resp_unprocessed_list.dart';
import 'package:ttpos_model/customer_call/response/unprocessed_call.dart';
import 'package:ttpos_model/customer_call/response/unprocessed_call_list.dart';

class CustomerCallAPI {
  final API _api = Get.find<APIController>().api;
  final Log _logger = Log(appName: 'CustomerCallAPI');
  Logger get logger => _logger.logger;

  // 未处理呼叫列表
  Future<BaseList<ResponseUnprocessedCallList>?> getUnprocessedCallList(
    BasePageQuery data, {
    ExtraRequestOptions? options,
  }) async {
    try {
      final response = await _api.getWithRequestOptions(
        APIPath.callGetUnprocessedList.kitchenPath,
        queryParameters: data.toJson(),
        requestOptions: options,
      );
      if (response.code.success) {
        return await response.safeFromJsonList(
          ResponseUnprocessedCallList.fromJson,
          response.data,
          modelName: 'getUnprocessedCallList',
          options: options,
          logger: logger,
        );
      }
      return null;
    } catch (error, stackTrace) {
      logger.severe('getUnprocessedCallList Error:', error, stackTrace);
      return null;
    }
  }

  // 获取未处理消息数量
  Future<ResponseUnprocessedCall?> getUnprocessedCallCount({
    ExtraRequestOptions? options,
  }) async {
    try {
      final response = await _api.getWithRequestOptions(
        APIPath.callGetUnprocessedCount.kitchenPath,
        requestOptions: options,
      );
      if (response.code.success) {
        return await response.safeFromJson(
          ResponseUnprocessedCall.fromJson,
          response.data,
          modelName: 'getUnprocessedCallCount',
          options: options,
          logger: logger,
        );
      }
      return null;
    } catch (error, stackTrace) {
      logger.severe('getUnprocessedCallCount Error:', error, stackTrace);
      return null;
    }
  }

  // 处理呼叫
  Future<bool> callFinish(
    int uuid, {
    ExtraRequestOptions? options,
  }) async {
    try {
      final response = await _api.postWithRequestOptions(
        APIPath.callPostProcessed.kitchenPath,
        data: {'uuid': uuid},
        requestOptions: options,
      );
      return response.code.success;
    } catch (error, stackTrace) {
      logger.severe('callFinish Error:', error, stackTrace);
      return false;
    }
  }

  // 获取未处理消息
  Future<ResponseUnprocessedList?> getUnprocessedNotice() async {
    try {
      final response = await _api.get(APIPath.callUnprocessedNotice.kitchenPath);
      if (response.code.success) {
        return await response.safeFromJson(
          ResponseUnprocessedList.fromJson,
          response.data,
          modelName: 'ResponseUnprocessedList',
          logger: logger,
        );
      }
      return null;
    } catch (error, stackTrace) {
      logger.severe('getUnprocessedNotice Error:', error, stackTrace);
      return null;
    }
  }
}

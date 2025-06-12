import 'package:get/get.dart';
import 'package:ttpos_api/api.dart';
// Project imports:
import 'package:ttpos_api/controller.dart';
import 'package:ttpos_logger/logger.dart';
import 'package:ttpos_model/base/request/options.dart';
import 'package:ttpos_model/base/response/list.dart';
import 'package:ttpos_model/common/request/base_page_query.dart';
import 'package:ttpos_model/customer_call/response/abnormal_print_item.dart';
import 'package:ttpos_model/customer_call/response/resp_unprocessed_list.dart';
import 'package:ttpos_model/customer_call/response/unprocessed_call.dart';
import 'package:ttpos_model/customer_call/response/unprocessed_call_list.dart';
import 'package:ttpos_model/print/response/printer_data.dart';

class CallAPI {
  final API _api = Get.find<APIController>().api;
  final Log _logger = Log(appName: 'CallAPI');
  Logger get logger => _logger.logger;

  // 获取所有未处理数量
  Future<ResponseUnprocessedCall?> getUnprocessedCount() async {
    try {
      final response = await _api.get(
        APIPath.callGetUnprocessedCount.cashierPath,
      );
      if (response.code.success) {
        return await response.safeFromJson(
          ResponseUnprocessedCall.fromJson,
          response.data,
          modelName: 'ResponseUnprocessedCall',
          logger: logger,
        );
      }
      return null;
    } catch (error, stackTrace) {
      logger.severe('getAcceptList Error:', error, stackTrace);
      return null;
    }
  }

  // 获取所有未处理呼叫列表
  Future<BaseList<ResponseUnprocessedCallList>?> getUnprocessedCallList(
    BasePageQuery pageQuery, {
    ExtraRequestOptions? options,
  }) async {
    try {
      final response = await _api.get(
        APIPath.callGetUnprocessedList.cashierPath,
        queryParameters: pageQuery.toJson(),
      );
      if (response.code.success) {
        return await response.safeFromJsonList(
          ResponseUnprocessedCallList.fromJson,
          response.data,
          modelName: 'ResponseUnprocessedCallList',
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

  // 获取异常打印列表
  Future<BaseList<AbnormalPrintItem>?> getAbnormalPrintList(
    BasePageQuery pageQuery, {
    ExtraRequestOptions? options,
  }) async {
    try {
      final response = await _api.getWithRequestOptions(
        APIPath.callGetAbnormalPrintList.cashierPath,
        queryParameters: pageQuery.toJson(),
        requestOptions: options,
      );
      if (response.code.success) {
        return await response.safeFromJsonList(
          AbnormalPrintItem.fromJson,
          response.data,
          modelName: 'AbnormalPrintItem',
          options: options,
          logger: logger,
        );
      }
      return null;
    } catch (error, stackTrace) {
      logger.severe('getAbnormalList Error:', error, stackTrace);
      return null;
    }
  }

  // 重新打印
  Future<RespPrinterData?> reprint(
    int uuid, {
    ExtraRequestOptions? options,
  }) async {
    try {
      final response = await _api.postWithRequestOptions(
        APIPath.callReprint.cashierPath,
        data: {'uuid': uuid},
        requestOptions: options,
      );
      if (response.code.success) {
        return await response.safeFromJson(
          RespPrinterData.fromJson,
          response.data,
          modelName: 'RespPrinterData',
          logger: logger,
        );
      }
      return null;
    } catch (error, stackTrace) {
      logger.severe('reprint Error:', error, stackTrace);
      return null;
    }
  }

  // 删除打印
  Future<bool> deletePrint(
    int uuid, {
    ExtraRequestOptions? options,
  }) async {
    try {
      final response = await _api.deleteWithRequestOptions(
        APIPath.callDeletePrint.cashierPath,
        data: {'uuid': uuid},
        requestOptions: options,
      );
      return response.code.success;
    } catch (error, stackTrace) {
      logger.severe('delete Error:', error, stackTrace);
      return false;
    }
  }

  // 处理呼叫
  Future<bool> callFinish(
    int uuid, {
    ExtraRequestOptions? options,
  }) async {
    try {
      final response = await _api.postWithRequestOptions(
        APIPath.callPostProcessed.cashierPath,
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
      final response = await _api.get(APIPath.callUnprocessedNotice.cashierPath);
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

import 'package:get/get.dart';
import 'package:kds/model/response/resp_history_list.dart';
import 'package:ttpos_api/api.dart';
import 'package:ttpos_api/controller.dart';
import 'package:ttpos_logger/logger.dart';
import 'package:ttpos_model/base/request/options.dart';

class HistoryListAPI {
  final API _api = Get.find<APIController>().api;
  final Log _logger = Log(appName: 'HistoryListAPI');
  Logger get logger => _logger.logger;

  //获取历史列表
  Future<ResponseHistoryList?> getHistoryList({
    ExtraRequestOptions? options,
  }) async {
    try {
      final response = await _api.getWithRequestOptions(
        APIPath.kitchenProductHistory.kitchenPath,
      );
      if (response.code.success) {
        final result = await response.safeFromJson(
          ResponseHistoryList.fromJson,
          response.data,
          modelName: 'ResponseHistoryList',
          options: options,
          logger: logger,
        );
        return result;
      }
      return null;
    } catch (error, stackTrace) {
      logger.severe('ResponseHistoryList Error:', error, stackTrace);
      return null;
    }
  }
}

// Package imports:
import 'package:get/get.dart';
import 'package:ttpos_api/api.dart';
// Project imports:
import 'package:ttpos_api/controller.dart';
import 'package:ttpos_logger/logger.dart';
import 'package:ttpos_model/base/request/options.dart';
import 'package:ttpos_model/base/response/list.dart';
import 'package:ttpos_model/reason/return_reason.dart';

// 获取退菜原因
class ReturnReasonAPI {
  final API _api = Get.find<APIController>().api;
  final Log _logger = Log(appName: 'ReturnReasonAPI');
  Logger get logger => _logger.logger;

  // 获取退菜原因
  Future<BaseList<ResponseReturnReason>?> getReturnReasons({ExtraRequestOptions? options}) async {
    try {
      final response = await _api.getWithRequestOptions(
        APIPath.baseGetReturnReason.assistantPath,
        requestOptions: options,
      );
      if (response.code.success) {
        return await response.safeFromJsonList(
          ResponseReturnReason.fromJson,
          response.data,
          modelName: 'ResponseReturnReason',
          options: options,
          logger: logger,
        );
      }
      return null;
    } catch (error, stackTrace) {
      logger.severe('ReturnReasonAPI Error:', error, stackTrace);
      return null;
    }
  }
}

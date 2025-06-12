// Package imports:
import 'package:get/get.dart';
import 'package:ttpos_api/api.dart';
// Project imports:
import 'package:ttpos_api/controller.dart';
import 'package:ttpos_logger/logger.dart';
import 'package:ttpos_model/base/request/options.dart';
import 'package:ttpos_model/base/response/list.dart';
import 'package:ttpos_model/reason/free_or_gift_reason.dart';

// 获取退菜原因
class OrderFreeOrGiftReasonAPI {
  final API _api = Get.find<APIController>().api;
  final Log _logger = Log(appName: 'OrderFreeOrGiftReasonAPI');
  Logger get logger => _logger.logger;

  // 获取退菜原因
  Future<BaseList<ResponseFreeOrGiftReason>?> getFreeOrGiftReasons({ExtraRequestOptions? options}) async {
    try {
      final response = await _api.getWithRequestOptions(
        APIPath.baseGetFreeOrGiftReason.cashierPath,
        requestOptions: options,
      );
      if (response.code.success) {
        return await response.safeFromJsonList(
          ResponseFreeOrGiftReason.fromJson,
          response.data,
          modelName: 'ResponseFreeOrGiftReason',
          options: options,
          logger: logger,
        );
      }
      return null;
    } catch (error, stackTrace) {
      logger.severe('getGoodsList Error:', error, stackTrace);
      return null;
    }
  }
}

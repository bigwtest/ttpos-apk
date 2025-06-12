// Package imports:
import 'package:get/get.dart';
import 'package:ttpos_api/api.dart';
// Project imports:
import 'package:ttpos_api/controller.dart';
import 'package:ttpos_logger/logger.dart';
import 'package:ttpos_model/base/request/options.dart';
import 'package:ttpos_model/order/request/cancel_desk.dart';

/// 清台
class OrderCancelAPI {
  final API _api = Get.find<APIController>().api;
  final Log _logger = Log(appName: 'OrderCancelAPI');
  Logger get logger => _logger.logger;

  // 清台
  Future<bool> cancelDesk(
    RequestCancelDesk req, {
    ExtraRequestOptions? options,
  }) async {
    try {
      final response = await _api.postWithRequestOptions(
        APIPath.deskOrderCancel.assistantPath,
        data: req.toJson(),
        requestOptions: options,
      );
      return response.code.success;
    } catch (error, stackTrace) {
      logger.severe('cancelDesk Error:', error, stackTrace);
      return false;
    }
  }
}

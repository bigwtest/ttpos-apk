// Package imports:
import 'package:get/get.dart';
import 'package:ttpos_api/api.dart';
// Project imports:
import 'package:ttpos_api/controller.dart';
import 'package:ttpos_logger/logger.dart';
import 'package:ttpos_model/base/request/options.dart';
import 'package:ttpos_model/order/request/free_desk.dart';
import 'package:ttpos_model/payment/response/finish.dart';

// 免单
class OrderFreeAPI {
  final API _api = Get.find<APIController>().api;
  final Log _logger = Log(appName: 'OrderFreeAPI');
  Logger get logger => _logger.logger;

  // 桌台
  Future<(bool, PaymentFinish?)> freeDesk(
    RequestFreeDesk req, {
    ExtraRequestOptions? options,
  }) async {
    try {
      final response = await _api.postWithRequestOptions(
        APIPath.deskOrderFree.assistantPath,
        data: req.toJson(),
        requestOptions: options,
      );
      if (response.code.success) {
        return (
          true,
          await response.safeFromJson(
            PaymentFinish.fromJson,
            response.data,
            modelName: 'PaymentFinish',
            logger: logger,
          )
        );
      }
      return (false, null);
    } catch (error, stackTrace) {
      logger.severe('freeDesk Error:', error, stackTrace);
      return (false, null);
    }
  }
}

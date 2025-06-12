// Package imports:
import 'package:get/get.dart';
import 'package:ttpos_api/api.dart';
// Project imports:
import 'package:ttpos_api/controller.dart';
import 'package:ttpos_logger/logger.dart';
import 'package:ttpos_model/base/request/options.dart';
import 'package:ttpos_model/order/request/change_desk.dart';

/// 转台
class DeskChangeAPI {
  final API _api = Get.find<APIController>().api;
  final Log _logger = Log(appName: 'DeskChangeAPI');
  Logger get logger => _logger.logger;

  // 转台
  Future<bool> changeDesk(
    RequestChangeDesk req, {
    ExtraRequestOptions? options,
  }) async {
    try {
      final response = await _api.postWithRequestOptions(
        APIPath.deskChange.assistantPath,
        data: req.toJson(),
        requestOptions: options,
      );
      if (response.code.success) {
        return true;
      }
      return false;
    } catch (error, stackTrace) {
      logger.severe('changeDesk Error:', error, stackTrace);
      return false;
    }
  }
}

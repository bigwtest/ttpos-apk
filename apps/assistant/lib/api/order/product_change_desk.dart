// Package imports:
import 'package:get/get.dart';
import 'package:ttpos_api/api.dart';
// Project imports:
import 'package:ttpos_api/controller.dart';
import 'package:ttpos_logger/logger.dart';
import 'package:ttpos_model/base/request/options.dart';
import 'package:ttpos_model/order/request/product_change_desk.dart';

// 转菜
class OrderProductChangeDeskAPI {
  final API _api = Get.find<APIController>().api;
  final Log _logger = Log(appName: 'OrderProductChangeDeskAPI');
  Logger get logger => _logger.logger;

  Future<bool> changeProductDesk(
    RequestChangeDeskProduct res, {
    ExtraRequestOptions? options,
  }) async {
    try {
      final response = await _api.postWithRequestOptions(
        APIPath.deskOrderCartProductChangeDesk.assistantPath,
        data: res.toJson(),
        requestOptions: options,
      );
      if (response.code.success) {
        return true;
      }
      return false;
    } catch (error, stackTrace) {
      logger.severe('delete Error:', error, stackTrace);
      return false;
    }
  }
}

import 'package:get/get.dart';
import 'package:pos/model/request/order_list/request_order_re_return.dart';
import 'package:ttpos_api/api.dart';
import 'package:ttpos_api/controller.dart';
import 'package:ttpos_logger/logger.dart';
import 'package:ttpos_model/base/request/options.dart';

class TopUpReReturnAPI {
  final API _api = Get.find<APIController>().api;
  final Log _logger = Log(appName: 'TopUpReReturnAPI');
  Logger get logger => _logger.logger;

  Future<bool> reReturnOrder(
    RequestOrderReReturn data, {
    ExtraRequestOptions? options,
  }) async {
    try {
      final response = await _api.postWithRequestOptions(
        APIPath.topUpReReturn.cashierPath,
        data: data.toJson(),
        requestOptions: options,
      );
      return response.code.success;
    } catch (error, stackTrace) {
      logger.severe('Recharge Order Re-Return Error:', error, stackTrace);
      return false;
    }
  }
}

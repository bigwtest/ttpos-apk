import 'package:get/get.dart';
import 'package:pos/model/request/top_up_list/request_top_up_refund.dart';
import 'package:ttpos_api/api.dart';
import 'package:ttpos_api/controller.dart';
import 'package:ttpos_logger/logger.dart';
import 'package:ttpos_model/base/request/options.dart';
import 'package:ttpos_model/base/response/base.dart';

class TopUpRefundAPI {
  final API _api = Get.find<APIController>().api;
  final Log _logger = Log(appName: 'TopUpRefundAPI');
  Logger get logger => _logger.logger;

  Future<BaseResponse<dynamic>> refund(
    RequestTopUpRefund data, {
    ExtraRequestOptions? options,
  }) async {
    try {
      final response = await _api.postWithRequestOptions(
        APIPath.topUpRefund.cashierPath,
        data: data.toJson(),
        requestOptions: options,
      );
      return response;
    } catch (error, stackTrace) {
      logger.severe('TopUpRefund Error:', error, stackTrace);
      return BaseResponse(code: -1, message: '退款失败');
    }
  }
}

import 'package:get/get.dart';
import 'package:pos/model/request/order_list/request_order_refund_sub.dart';
import 'package:ttpos_api/api.dart';
import 'package:ttpos_api/controller.dart';
import 'package:ttpos_logger/logger.dart';
import 'package:ttpos_model/base/request/options.dart';
import 'package:ttpos_model/base/response/base.dart';

class OrderRefundSubAPI {
  final API _api = Get.find<APIController>().api;
  final Log _logger = Log(appName: 'OrderRefundSubAPI');
  Logger get logger => _logger.logger;

  Future<BaseResponse<dynamic>> refundOrder(
    RequestOrderRefundSub data, {
    ExtraRequestOptions? options,
  }) async {
    try {
      final response = await _api.postWithRequestOptions(
        APIPath.orderRefund.cashierPath,
        data: data.toJson(),
        requestOptions: options,
      );
      return response;
    } catch (error, stackTrace) {
      logger.severe('Deposit Cash Error:', error, stackTrace);
      return BaseResponse(code: -1, message: '退款失败');
    }
  }

  Future<BaseResponse<dynamic>> oldRefundOrder(
    RequestOrderRefundSub data, {
    ExtraRequestOptions? options,
  }) async {
    try {
      final response = await _api.postWithRequestOptions(
        APIPath.oldOrderRefund.cashierPath,
        data: data.toJson(),
        requestOptions: options,
      );
      return response;
    } catch (error, stackTrace) {
      logger.severe('Deposit Cash Error:', error, stackTrace);
      return BaseResponse(code: -1, message: '退款失败');
    }
  }
}

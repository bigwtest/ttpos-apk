// Package imports:
import 'package:get/get.dart';
import 'package:ttpos_api/api.dart';
// Project imports:
import 'package:ttpos_api/controller.dart';
import 'package:ttpos_logger/logger.dart';
import 'package:ttpos_model/base/request/options.dart';
import 'package:ttpos_model/order/request/cancel_discount.dart';
import 'package:ttpos_model/order/request/discount.dart';

// 折扣
class OrderDiscountAPI {
  final API _api = Get.find<APIController>().api;
  final Log _logger = Log(appName: 'OrderDiscountAPI');
  Logger get logger => _logger.logger;

  // 折扣
  Future<bool> discountDesk(RequestDiscountDesk req, {ExtraRequestOptions? options}) async {
    try {
      final response = await _api.postWithRequestOptions(
        APIPath.deskOrderDiscount.assistantPath,
        data: req.toJson(),
        requestOptions: options,
      );
      if (response.code.success) {
        return true;
      }
      return false;
    } catch (error, stackTrace) {
      logger.severe('discountDesk Error:', error, stackTrace);
      return false;
    }
  }

  // 取消折扣
  Future<bool> cancelDiscountDesk(
    RequestCancelDiscountDesk req, {
    ExtraRequestOptions? options,
  }) async {
    try {
      final response = await _api.postWithRequestOptions(
        APIPath.deskOrderDiscountCancel.assistantPath,
        data: req.toJson(),
        requestOptions: options,
      );
      if (response.code.success) {
        return true;
      }
      return false;
    } catch (error, stackTrace) {
      logger.severe('cancelDiscountDesk Error:', error, stackTrace);
      return false;
    }
  }
}

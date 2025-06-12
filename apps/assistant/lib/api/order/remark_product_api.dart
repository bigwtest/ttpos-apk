// Package imports:
import 'package:get/get.dart';
import 'package:ttpos_api/api.dart';
// Project imports:
import 'package:ttpos_api/controller.dart';
import 'package:ttpos_logger/logger.dart';
import 'package:ttpos_model/base/request/options.dart';
import 'package:ttpos_model/order/request/remark_product.dart';

/// 订单商品备注
class OrderRemarkProductAPI {
  final API _api = Get.find<APIController>().api;
  final Log _logger = Log(appName: 'OrderRemarkProductAPI');
  Logger get logger => _logger.logger;

  // 桌台
  Future<bool> remarkProductDesk(
    RequestRemarkProduct req, {
    ExtraRequestOptions? options,
  }) async {
    try {
      final response = await _api.postWithRequestOptions(
        APIPath.deskOrderProductRemark.assistantPath,
        data: req.toJson(),
        requestOptions: options,
      );
      if (response.code.success) {
        return true;
      }
      return false;
    } catch (error, stackTrace) {
      logger.severe('remarkProductDesk Error:', error, stackTrace);
      return false;
    }
  }
}

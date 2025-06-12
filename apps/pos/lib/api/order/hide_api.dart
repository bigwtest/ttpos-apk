// Package imports:
import 'package:get/get.dart';
import 'package:pos/model/response/cart/cart.dart';
import 'package:ttpos_api/api.dart';
// Project imports:
import 'package:ttpos_api/controller.dart';
import 'package:ttpos_logger/logger.dart';
import 'package:ttpos_model/base/request/options.dart';

/// 订单挂单 - 隐藏
class OrderHideAPI {
  final API _api = Get.find<APIController>().api;
  final Log _logger = Log(appName: 'OrderHideAPI');
  Logger get logger => _logger.logger;

  // 点餐
  Future<ResponseCart?> hide({
    required int saleBillUuid,
    ExtraRequestOptions? options,
  }) async {
    try {
      final response = await _api.postWithRequestOptions(
        APIPath.instantOrderHide.cashierPath,
        data: {
          'sale_bill_uuid': saleBillUuid,
        },
        requestOptions: options,
      );
      if (response.code.success) {
        return await response.safeFromJson(
          ResponseCart.fromJson,
          response.data,
          modelName: 'ResponseCart',
          options: options,
          logger: logger,
        );
      }
      return null;
    } catch (error, stackTrace) {
      logger.severe('remark Error:', error, stackTrace);
      return null;
    }
  }
}

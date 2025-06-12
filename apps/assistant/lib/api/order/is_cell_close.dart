// Package imports:
import 'package:get/get.dart';
import 'package:ttpos_api/api.dart';
// Project imports:
import 'package:ttpos_api/controller.dart';
import 'package:ttpos_logger/logger.dart';
import 'package:ttpos_model/base/request/options.dart';
import 'package:ttpos_model/base/response/list.dart';
import 'package:ttpos_model/order/response/product.dart';

// 判断订单是否可关闭
class OrderIsCellCloseAPI {
  final API _api = Get.find<APIController>().api;
  final Log _logger = Log(appName: 'OrderIsCellCloseAPI');
  Logger get logger => _logger.logger;

  Future<(bool, BaseList<Product>?, String, bool)> isCellClose({
    int saleBillUuid = 0,
    int deskUuid = 0,
    ExtraRequestOptions? options,
  }) async {
    try {
      final response = await _api.getWithRequestOptions(
        APIPath.orderIsCellClose.assistantPath,
        queryParameters: {
          'sale_bill_uuid': saleBillUuid,
          'desk_uuid': deskUuid,
        },
        requestOptions: options,
      );

      if (response.code.success) {
        return (true, null, response.message, false);
      }
      if (response.code.isShowOrderCheckCloseDialog) {
        return (
          false,
          await response.safeFromJsonList(
            Product.fromJson,
            response.data,
            modelName: 'Product',
            options: options,
            logger: logger,
          ),
          response.message,
          false,
        );
      }
      return (false, null, response.message, true);
    } catch (error, stackTrace) {
      logger.severe('remark Error:', error, stackTrace);
      return (false, null, '发生未知错误'.tr, true);
    }
  }
}

// Package imports:
import 'package:get/get.dart';
import 'package:ttpos_api/api.dart';
// Project imports:
import 'package:ttpos_api/controller.dart';
import 'package:ttpos_logger/logger.dart';
import 'package:ttpos_model/base/request/options.dart';
import 'package:ttpos_model/order/response/unsent_kitchen.dart';

class UnsentKitchenAPI {
  final API _api = Get.find<APIController>().api;
  final Log _logger = Log(appName: 'UnsentKitchenAPI');
  Logger get logger => _logger.logger;

  // 获取已送厨商品
  Future<UnsentKitchen?> getUnsentKitchenList(int saleBillUuid, {ExtraRequestOptions? options}) async {
    try {
      final response = await _api.getWithRequestOptions(
        APIPath.deskOrderUnsentKitchen.assistantPath,
        queryParameters: {
          'sale_bill_uuid': saleBillUuid,
        },
        requestOptions: options,
      );
      if (response.code.success) {
        return await response.safeFromJson(
          UnsentKitchen.fromJson,
          response.data,
          modelName: 'UnsentKitchen',
          logger: logger,
        );
      }
      return null;
    } catch (error, stackTrace) {
      logger.severe('getUnsentKitchenList Error:', error, stackTrace);
      return null;
    }
  }
}

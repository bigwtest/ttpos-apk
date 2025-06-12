// Package imports:
import 'package:get/get.dart';
import 'package:ttpos_api/api.dart';
// Project imports:
import 'package:ttpos_api/controller.dart';
import 'package:ttpos_logger/logger.dart';
import 'package:ttpos_model/base/request/options.dart';
import 'package:ttpos_model/order/response/sent_kitchen.dart';

class SentKitchenAPI {
  final API _api = Get.find<APIController>().api;
  final Log _logger = Log(appName: 'SentKitchenAPI');
  Logger get logger => _logger.logger;

  // 获取已送厨商品
  Future<SentKitchen?> getSentKitchenList(int saleBillUuid, {ExtraRequestOptions? options}) async {
    try {
      final response = await _api.getWithRequestOptions(
        APIPath.deskOrderSentKitchen.tabletPath,
        queryParameters: {
          'sale_bill_uuid': saleBillUuid,
        },
        requestOptions: options,
      );
      if (response.code.success) {
        return await response.safeFromJson(
          SentKitchen.fromJson,
          response.data,
          modelName: 'SentKitchen',
          logger: logger,
        );
      }
      return null;
    } catch (error, stackTrace) {
      logger.severe('getSentKitchenList Error:', error, stackTrace);
      return null;
    }
  }
}

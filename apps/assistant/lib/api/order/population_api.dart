// Package imports:
import 'package:get/get.dart';
import 'package:ttpos_api/api.dart';
// Project imports:
import 'package:ttpos_api/controller.dart';
import 'package:ttpos_logger/logger.dart';
import 'package:ttpos_model/base/request/options.dart';

/// 订单修改就餐人数
class OrderPopulationAPI {
  final API _api = Get.find<APIController>().api;
  final Log _logger = Log(appName: 'OrderPopulationAPI');
  Logger get logger => _logger.logger;

  // 桌台
  Future<bool> population({
    required int saleBillUuid,
    required int population,
    ExtraRequestOptions? options,
  }) async {
    try {
      final response = await _api.postWithRequestOptions(
        APIPath.deskOrderPopulation.assistantPath,
        data: {
          'sale_bill_uuid': saleBillUuid,
          'population': population,
        },
        requestOptions: options,
      );
      if (response.code.success) {
        return true;
      }
      return false;
    } catch (error, stackTrace) {
      logger.severe('populationDesk Error:', error, stackTrace);
      return false;
    }
  }
}

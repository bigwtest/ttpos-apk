// Package imports:
import 'package:get/get.dart';
import 'package:ttpos_api/api.dart';
// Project imports:
import 'package:ttpos_api/controller.dart';
import 'package:ttpos_logger/logger.dart';
import 'package:ttpos_model/base/request/options.dart';

class MustAPI {
  final API _api = Get.find<APIController>().api;
  final Log _logger = Log(appName: 'MustAPI');
  Logger get logger => _logger.logger;

  // 点餐-确认必点商品
  Future<bool> fetchConfirmMustInstant(
    int saleBillUuid,
    ExtraRequestOptions? options,
  ) async {
    try {
      final response = await _api.postWithRequestOptions(
        APIPath.instantOrderConfirmMustPlan.cashierPath,
        requestOptions: options,
        data: {
          'sale_bill_uuid': saleBillUuid,
        },
      );
      return response.code.success;
    } catch (error, stackTrace) {
      logger.severe('fetchConfirmMustInstant Error:', error, stackTrace);
      return false;
    }
  }

  // 桌台-确认必点商品
  Future<bool> fetchConfirmMustDesk(
    int saleBillUuid,
    ExtraRequestOptions? options,
  ) async {
    try {
      final response = await _api.postWithRequestOptions(
        APIPath.deskOrderConfirmMustPlan.cashierPath,
        requestOptions: options,
        data: {
          'sale_bill_uuid': saleBillUuid,
        },
      );
      return response.code.success;
    } catch (error, stackTrace) {
      logger.severe('fetchConfirmMustDesk Error:', error, stackTrace);
      return false;
    }
  }
}

// Package imports:
// Project imports:
// Package imports:
import 'package:get/get.dart';
import 'package:ttpos_api/api.dart';
// Project imports:
import 'package:ttpos_api/controller.dart';
import 'package:ttpos_logger/logger.dart';
import 'package:ttpos_model/base/request/options.dart';

/// 解锁API
class OrderUnlockAPI {
  final API _api = Get.find<APIController>().api;
  final Log _logger = Log(appName: 'OrderUnlockAPI');
  Logger get logger => _logger.logger;

  // 点餐
  Future<bool> orderUnlock(
    int saleBillUuid, {
    ExtraRequestOptions? options,
  }) async {
    try {
      final response = await _api.postWithRequestOptions(
        APIPath.instantOrderUnlock.cashierPath,
        data: {
          'sale_bill_uuid': saleBillUuid, // 销售账单UUID, 必填
        },
        requestOptions: options,
      );
      if (response.code.success) {
        return true;
      }
      return false;
    } catch (error, stackTrace) {
      logger.severe('orderUnlock Error:', error, stackTrace);
      return false;
    }
  }

  // 桌台
  Future<bool> deskOrderUnlock(
    int saleBillUuid, {
    ExtraRequestOptions? options,
  }) async {
    try {
      final response = await _api.postWithRequestOptions(
        APIPath.deskOrderUnlock.cashierPath,
        data: {
          'sale_bill_uuid': saleBillUuid, // 销售账单UUID, 必填
        },
        requestOptions: options,
      );
      return response.code.success;
    } catch (error, stackTrace) {
      logger.severe('deskOrderUnlock Error:', error, stackTrace);
      return false;
    }
  }
}

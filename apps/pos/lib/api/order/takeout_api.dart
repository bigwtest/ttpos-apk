// Package imports:
import 'package:get/get.dart';
import 'package:pos/model/response/cart/cart.dart';
import 'package:ttpos_api/api.dart';
// Project imports:
import 'package:ttpos_api/controller.dart';
import 'package:ttpos_logger/logger.dart';
import 'package:ttpos_model/base/request/options.dart';

// 打包
class OrderTakeoutAPI {
  final API _api = Get.find<APIController>().api;
  final Log _logger = Log(appName: 'OrderTakeoutAPI');
  Logger get logger => _logger.logger;

  // 点餐
  Future<ResponseCart?> instant({
    required int saleBillUuid, // 销售账单ID
    required bool takeout, // 打包
  }) async {
    try {
      final response = await _api.postWithRequestOptions(
        APIPath.instantOrderTakeout.cashierPath,
        data: {
          'sale_bill_uuid': saleBillUuid,
          'takeout': takeout,
        },
        requestOptions: ExtraRequestOptions(
          showFailToast: true,
          showGlobalLoading: true,
        ),
      );
      if (response.code.success) {
        return await response.safeFromJson(
          ResponseCart.fromJson,
          response.data,
          modelName: 'ResponseCart',
          logger: logger,
        );
      }
      return null;
    } catch (error, stackTrace) {
      logger.severe('instant Error:', error, stackTrace);
      return null;
    }
  }

  // 桌台
  Future<ResponseCart?> desk({
    required int saleBillUuid, // 销售账单ID
    required bool takeout, // 打包
  }) async {
    try {
      final response = await _api.postWithRequestOptions(
        APIPath.deskOrderTakeout.cashierPath,
        data: {
          'sale_bill_uuid': saleBillUuid,
          'takeout': takeout,
        },
        requestOptions: ExtraRequestOptions(
          showFailToast: true,
          showGlobalLoading: true,
        ),
      );
      if (response.code.success) {
        return await response.safeFromJson(
          ResponseCart.fromJson,
          response.data,
          modelName: 'ResponseCart',
          logger: logger,
        );
      }
      return null;
    } catch (error, stackTrace) {
      logger.severe('desk Error:', error, stackTrace);
      return null;
    }
  }
}

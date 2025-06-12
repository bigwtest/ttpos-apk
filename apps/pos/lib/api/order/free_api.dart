// Package imports:
import 'package:get/get.dart';
import 'package:ttpos_api/api.dart';
// Project imports:
import 'package:ttpos_api/controller.dart';
import 'package:ttpos_logger/logger.dart';
import 'package:ttpos_model/base/request/options.dart';
import 'package:ttpos_model/payment/response/finish.dart';

// 免单
class OrderFreeAPI {
  final API _api = Get.find<APIController>().api;
  final Log _logger = Log(appName: 'OrderFreeAPI');
  Logger get logger => _logger.logger;

  // 点餐
  Future<(bool, PaymentFinish?)> instant({
    required int saleBillUuid, // 销售账单ID
    required int saleOrderUuid, // 销售订单ID
    required List<int> reasonIds, // 免单标签ids
    required String reason, // 免单原因
  }) async {
    try {
      final response = await _api.postWithRequestOptions(
        APIPath.instantOrderFree.cashierPath,
        data: {
          'sale_bill_uuid': saleBillUuid,
          'sale_order_uuid': saleOrderUuid,
          'reason_ids': reasonIds,
          'reason': reason,
        },
        requestOptions: ExtraRequestOptions(
          showFailToast: true,
        ),
      );
      if (response.code.success) {
        return (
          true,
          await response.safeFromJson(
            PaymentFinish.fromJson,
            response.data,
            modelName: 'PaymentFinish',
            logger: logger,
          )
        );
      }
      return (false, null);
    } catch (error, stackTrace) {
      logger.severe('instant Error:', error, stackTrace);
      return (false, null);
    }
  }

  // 桌台
  Future<(bool, PaymentFinish?)> desk({
    required int saleBillUuid, // 销售账单ID
    required int saleOrderUuid, // 销售订单ID
    required List<int> reasonIds, // 免单标签ids
    required String reason, // 免单原因
  }) async {
    try {
      final response = await _api.postWithRequestOptions(
        APIPath.deskOrderFree.cashierPath,
        data: {
          'sale_bill_uuid': saleBillUuid,
          'sale_order_uuid': saleOrderUuid,
          'reason_ids': reasonIds,
          'reason': reason,
        },
        requestOptions: ExtraRequestOptions(
          showFailToast: true,
        ),
      );
      if (response.code.success) {
        return (
          true,
          await response.safeFromJson(
            PaymentFinish.fromJson,
            response.data,
            modelName: 'PaymentFinish',
            logger: logger,
          )
        );
      }
      return (false, null);
    } catch (error, stackTrace) {
      logger.severe('desk Error:', error, stackTrace);
      return (false, null);
    }
  }
}

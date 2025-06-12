// Package imports:
import 'package:get/get.dart';
import 'package:pos/model/response/cart/cart.dart';
import 'package:ttpos_api/api.dart';
// Project imports:
import 'package:ttpos_api/controller.dart';
import 'package:ttpos_logger/logger.dart';
import 'package:ttpos_model/base/request/options.dart';

/// 订单取消
class OrderCancelAPI {
  final API _api = Get.find<APIController>().api;
  final Log _logger = Log(appName: 'OrderCancelAPI');
  Logger get logger => _logger.logger;

  // 点餐
  Future<ResponseCart?> instant({
    required int saleBillUuid,
    required String cancelReason,
    String password = '',
    ExtraRequestOptions? options,
  }) async {
    try {
      final response = await _api.postWithRequestOptions(
        APIPath.instantOrderCancel.cashierPath,
        data: {
          'sale_bill_uuid': saleBillUuid,
          'cancel_reason': cancelReason,
          'password': password,
        },
        requestOptions: options,
      );
      // 正常返回购物车数据
      if (response.code.success) {
        final cart = await response.safeFromJson(
          ResponseCart.fromJson,
          response.data,
          modelName: 'ResponseCart',
          options: options,
          logger: logger,
        );
        return cart;
      }
      return null;
    } catch (error, stackTrace) {
      logger.severe('cancel Error:', error, stackTrace);
      return null;
    }
  }

  // 桌台
  Future<ResponseCart?> desk({
    required int saleBillUuid,
    required String cancelReason,
    String password = '',
    ExtraRequestOptions? options,
  }) async {
    try {
      final response = await _api.postWithRequestOptions(
        APIPath.deskOrderCancel.cashierPath,
        data: {
          'sale_bill_uuid': saleBillUuid,
          'cancel_reason': cancelReason,
          'password': password,
        },
        requestOptions: options,
      );
      // 正常返回购物车数据
      if (response.code.success) {
        final cart = await response.safeFromJson(
          ResponseCart.fromJson,
          {
            'sale_bill_uuid': saleBillUuid,
            'sale_order_list': [],
            'is_desk_order': true,
            'dining_method': 0,
          },
          modelName: 'ResponseCart',
          options: options,
          logger: logger,
        );
        return cart;
      }
      return null;
    } catch (error, stackTrace) {
      logger.severe('cancelDesk Error:', error, stackTrace);
      return null;
    }
  }
}

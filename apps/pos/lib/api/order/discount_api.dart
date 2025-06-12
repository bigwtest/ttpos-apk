// Package imports:
import 'package:get/get.dart';
import 'package:pos/model/response/cart/cart.dart';
import 'package:ttpos_api/api.dart';
// Project imports:
import 'package:ttpos_api/controller.dart';
import 'package:ttpos_logger/logger.dart';
import 'package:ttpos_model/base/request/options.dart';

// 折扣
class OrderDiscountAPI {
  final API _api = Get.find<APIController>().api;
  final Log _logger = Log(appName: 'OrderDiscountAPI');
  Logger get logger => _logger.logger;

  // 点餐
  Future<ResponseCart?> instant({
    required int discountMethod, // 折扣方式
    required int saleBillUuid, // 销售账单ID
    required int saleOrderUuid, // 销售订单ID
    required double price, // 金额
    required int zeroRule, // 抹零规则
    required int discountType, // 打折类型 0=百分比折扣，如八折为80% 1=百分比减免Off，如八折为20% off
    required double discount, // 打折。0-100之间
  }) async {
    try {
      final response = await _api.postWithRequestOptions(
        APIPath.instantOrderDiscount.cashierPath,
        data: {
          'discount_method': discountMethod,
          'sale_bill_uuid': saleBillUuid,
          'sale_order_uuid': saleOrderUuid,
          'price': price,
          'zero_rule': zeroRule,
          'discount_type': discountType,
          'discount': discount,
        },
        requestOptions: ExtraRequestOptions(
          showFailToast: true,
        ),
      );
      if (response.code.success) {
        return await response.safeFromJson(
          ResponseCart.fromJson,
          response.data,
          modelName: 'ResponseCart',
          options: ExtraRequestOptions(
            showFailToast: true,
          ),
          logger: logger,
        );
      }
      return null;
    } catch (error, stackTrace) {
      logger.severe('delete Error:', error, stackTrace);
      return null;
    }
  }

  // 桌台
  Future<ResponseCart?> desk({
    required int discountMethod, // 折扣方式
    required int saleBillUuid, // 销售账单ID
    required int saleOrderUuid, // 销售订单ID
    required double price, // 金额
    required int zeroRule, // 抹零规则
    required int discountType, // 打折类型 0=百分比折扣，如八折为80% 1=百分比减免Off，如八折为20% off
    required double discount, // 打折。0-100之间
  }) async {
    try {
      final response = await _api.postWithRequestOptions(
        APIPath.deskOrderDiscount.cashierPath,
        data: {
          'discount_method': discountMethod,
          'sale_bill_uuid': saleBillUuid,
          'sale_order_uuid': saleOrderUuid,
          'price': price,
          'zero_rule': zeroRule,
          'discount_type': discountType,
          'discount': discount,
        },
        requestOptions: ExtraRequestOptions(
          showFailToast: true,
        ),
      );
      if (response.code.success) {
        return await response.safeFromJson(
          ResponseCart.fromJson,
          response.data,
          modelName: 'ResponseCart',
          options: ExtraRequestOptions(
            showFailToast: true,
          ),
          logger: logger,
        );
      }
      return null;
    } catch (error, stackTrace) {
      logger.severe('delete Error:', error, stackTrace);
      return null;
    }
  }
}

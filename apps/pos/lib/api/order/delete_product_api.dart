// Package imports:
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pos/model/response/cart/cart.dart';
import 'package:ttpos_api/api.dart';
// Project imports:
import 'package:ttpos_api/controller.dart';
import 'package:ttpos_logger/logger.dart';
import 'package:ttpos_model/base/request/options.dart';

/// 订单商品删除
class OrderDeleteProductAPI {
  final API _api = Get.find<APIController>().api;
  final Log _logger = Log(appName: 'OrderDeleteProductAPI');
  Logger get logger => _logger.logger;

  // 点餐
  Future<ResponseCart?> delete({
    required int saleBillUuid,
    required int saleOrderUuid,
    required int orderProductUuid,
    ExtraRequestOptions? options,
  }) async {
    try {
      debugPrint(
        "delete, { 'sale_bill_uuid': $saleBillUuid,'sale_order_uuid': $saleOrderUuid,'order_product_uuid': $orderProductUuid }",
      );

      final response = await _api.deleteWithRequestOptions(
        APIPath.instantOrderProductDelete.cashierPath,
        data: {
          'sale_bill_uuid': saleBillUuid,
          'sale_order_uuid': saleOrderUuid,
          'order_product_uuid': orderProductUuid,
        },
        requestOptions: options,
      );
      if (response.code.success) {
        return await response.safeFromJson(
          ResponseCart.fromJson,
          response.data,
          modelName: 'ResponseCart',
          options: options,
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
  Future<ResponseCart?> deleteDesk({
    required int saleBillUuid,
    required int saleOrderUuid,
    required int orderProductUuid,
    ExtraRequestOptions? options,
  }) async {
    try {
      final response = await _api.deleteWithRequestOptions(
        APIPath.deskOrderProductDelete.cashierPath,
        data: {
          'sale_bill_uuid': saleBillUuid,
          'sale_order_uuid': saleOrderUuid,
          'order_product_uuid': orderProductUuid,
        },
        requestOptions: options,
      );
      if (response.code.success) {
        return await response.safeFromJson(
          ResponseCart.fromJson,
          response.data,
          modelName: 'ResponseCart',
          options: options,
          logger: logger,
        );
      }
      return null;
    } catch (error, stackTrace) {
      logger.severe('deleteDesk Error:', error, stackTrace);
      return null;
    }
  }
}

// Package imports:
import 'package:get/get.dart';
import 'package:pos/model/response/order/add_product.dart';
import 'package:ttpos_api/api.dart';
// Project imports:
import 'package:ttpos_api/controller.dart';
import 'package:ttpos_logger/logger.dart';
import 'package:ttpos_model/base/request/options.dart';
import 'package:ttpos_model/goods/request/add_product.dart';

// Model imports:
class OrderAddProductAPI {
  final API _api = Get.find<APIController>().api;
  final Log _logger = Log(appName: 'OrderAddProductAPI');
  Logger get logger => _logger.logger;

  // 点餐添加商品
  Future<ResponseOrderAddProduct?> addProduct(
    RequestOrderAddProduct product, {
    ExtraRequestOptions? options,
  }) async {
    try {
      final response = await _api.postWithRequestOptions(
        APIPath.instantOrderCartProductAdd.cashierPath,
        data: product.toJson(),
        requestOptions: options,
      );
      if (response.code.success) {
        return await response.safeFromJson(
          ResponseOrderAddProduct.fromJson,
          {'response_cart': response.data as Map<String, dynamic>},
          modelName: 'ResponseOrderAddProduct',
          options: options,
          logger: logger,
        );
      }

      if (response.code == -20001) {
        return await response.safeFromJson(
          ResponseOrderAddProduct.fromJson,
          {'product_delete': response.data as Map<String, dynamic>},
          modelName: 'ResponseOrderAddProduct',
          options: options,
          logger: logger,
        );
      }
      if (response.code == -20002) {
        return await response.safeFromJson(
          ResponseOrderAddProduct.fromJson,
          {'product_sku_delete': response.data as Map<String, dynamic>},
          modelName: 'ResponseOrderAddProduct',
          options: options,
          logger: logger,
        );
      }
      if (response.code == -20003) {
        return await response.safeFromJson(
          ResponseOrderAddProduct.fromJson,
          {'product_feed_delete': response.data as List<dynamic>},
          modelName: 'ResponseOrderAddProduct',
          options: options,
          logger: logger,
        );
      }
      return null;
    } catch (error, stackTrace) {
      logger.severe('addProduct Error:', error, stackTrace);
      return null;
    }
  }

  // 桌台添加商品
  Future<ResponseOrderAddProduct?> deskAddProduct(
    RequestOrderAddProduct product, {
    ExtraRequestOptions? options,
  }) async {
    try {
      final response = await _api.postWithRequestOptions(
        APIPath.deskOrderCartProductAdd.cashierPath,
        data: product.toJson(),
        requestOptions: options,
      );

      if (response.code.success) {
        return await response.safeFromJson(
          ResponseOrderAddProduct.fromJson,
          {'response_cart': response.data as Map<String, dynamic>},
          modelName: 'ResponseOrderAddProduct',
          options: options,
          logger: logger,
        );
      }

      if (response.code == -20001) {
        return await response.safeFromJson(
          ResponseOrderAddProduct.fromJson,
          {'product_delete': response.data as Map<String, dynamic>},
          modelName: 'ResponseOrderAddProduct',
          options: options,
          logger: logger,
        );
      }
      if (response.code == -20002) {
        return await response.safeFromJson(
          ResponseOrderAddProduct.fromJson,
          {'product_sku_delete': response.data as Map<String, dynamic>},
          modelName: 'ResponseOrderAddProduct',
          options: options,
          logger: logger,
        );
      }
      if (response.code == -20003) {
        return await response.safeFromJson(
          ResponseOrderAddProduct.fromJson,
          {'product_feed_delete': response.data as List<dynamic>},
          modelName: 'ResponseOrderAddProduct',
          options: options,
          logger: logger,
        );
      }
      return null;
    } catch (error, stackTrace) {
      logger.severe('tableAddProduct Error:', error, stackTrace);
      return null;
    }
  }
}

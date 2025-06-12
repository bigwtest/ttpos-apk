// Package imports:
import 'package:get/get.dart';
import 'package:pos/model/response/cart/cart.dart';
import 'package:pos/model/response/cart/cart_product.dart';
import 'package:ttpos_api/api.dart';
// Project imports:
import 'package:ttpos_api/controller.dart';
import 'package:ttpos_logger/logger.dart';
import 'package:ttpos_model/base/request/options.dart';
import 'package:ttpos_model/base/response/list.dart';
import 'package:ttpos_model/goods/response/must/must_goods_item.dart';
import 'package:ttpos_ui/components/common/dialog/manager.dart';

/// 送厨API
class OrderCookingAPI {
  final API _api = Get.find<APIController>().api;
  final Log _logger = Log(appName: 'OrderCookingAPI');
  Logger get logger => _logger.logger;

  // 点餐送厨购物车商品
  Future<
      (
        ResponseCart?,
        BaseList<ResponseCartProduct>?,
        BaseList<MustGoodsItem>?,
        String?,
      )> cookingInstant({
    int saleBillUuid = 0,
    int saleOrderUuid = 0,
    bool? isIgnoreMust,
    ExtraRequestOptions? options,
  }) async {
    try {
      final response = await _api.postWithRequestOptions(
        APIPath.instantOrderCartCooking.cashierPath,
        data: {
          'sale_bill_uuid': saleBillUuid,
          'sale_order_uuid': saleOrderUuid,
          'ignore_must': isIgnoreMust ?? false,
        },
        requestOptions: options,
      );
      if (response.data['products'] != null) {
        return (
          null,
          await response.safeFromJsonList(
            ResponseCartProduct.fromJson,
            response.data['products'],
            modelName: 'ResponseCartProduct',
            options: options,
            logger: logger,
          ),
          null,
          response.message
        );
      }
      if (response.data['product_must_plans'] != null) {
        return (
          null,
          null,
          await response.safeFromJsonList(
            MustGoodsItem.fromJson,
            response.data['product_must_plans'],
            modelName: 'MustGoodsItem',
            options: options,
            logger: logger,
          ),
          response.message
        );
      }
      if (response.code.success) {
        return (
          await response.safeFromJson(
            ResponseCart.fromJson,
            response.data,
            modelName: 'ResponseCart',
            options: options,
            logger: logger,
          ),
          null,
          null,
          null
        );
      }
      DialogManager.showErrorDialog(message: response.message);
      return (null, null, null, response.message);
    } catch (error, stackTrace) {
      logger.severe('cooking Error:', error, stackTrace);
      return (null, null, null, null);
    }
  }

  // 桌台送厨购物车商品
  Future<
      (
        ResponseCart?,
        BaseList<ResponseCartProduct>?,
        BaseList<MustGoodsItem>?,
        String?,
      )> cookingDesk({
    required int saleBillUuid,
    required int saleOrderUuid,
    bool? isIgnoreMust,
    ExtraRequestOptions? options,
  }) async {
    try {
      final response = await _api.postWithRequestOptions(
        APIPath.deskOrderCartCooking.cashierPath,
        data: {
          'sale_bill_uuid': saleBillUuid,
          'sale_order_uuid': saleOrderUuid,
          'ignore_must': isIgnoreMust ?? false,
        },
        requestOptions: options,
      );
      if (response.data['products'] != null) {
        return (
          null,
          await response.safeFromJsonList(
            ResponseCartProduct.fromJson,
            response.data['products'],
            modelName: 'ResponseCartProduct',
            options: options,
            logger: logger,
          ),
          null,
          response.message
        );
      }
      if (response.data['product_must_plans'] != null) {
        return (
          null,
          null,
          await response.safeFromJsonList(
            MustGoodsItem.fromJson,
            response.data['product_must_plans'],
            modelName: 'MustGoodsItem',
            options: options,
            logger: logger,
          ),
          response.message
        );
      }
      if (response.code.success) {
        return (
          await response.safeFromJson(
            ResponseCart.fromJson,
            response.data,
            modelName: 'ResponseCart',
            options: options,
            logger: logger,
          ),
          null,
          null,
          null
        );
      }
      DialogManager.showErrorDialog(message: response.message);
      return (null, null, null, response.message);
    } catch (error, stackTrace) {
      logger.severe('cookingDesk Error:', error, stackTrace);
      return (null, null, null, null);
    }
  }
}

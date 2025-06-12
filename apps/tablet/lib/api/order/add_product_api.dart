// Package imports:
import 'package:get/get.dart';
import 'package:ttpos_api/api.dart';
// Project imports:
import 'package:ttpos_api/controller.dart';
import 'package:ttpos_logger/logger.dart';
import 'package:ttpos_model/base/request/options.dart';
import 'package:ttpos_model/base/response/list.dart';
import 'package:ttpos_model/goods/request/add_product.dart';
import 'package:ttpos_model/goods/response/must/must_goods_item.dart';
import 'package:ttpos_model/order/request/cooking_product.dart';
import 'package:ttpos_model/order/request/num_change.dart';
import 'package:ttpos_model/order/response/product.dart';
import 'package:ttpos_shared/shared.dart';
import 'package:ttpos_ui/components/common/dialog/manager.dart';

// Model imports:
class OrderAddProductAPI {
  final API _api = Get.find<APIController>().api;
  final Log _logger = Log(appName: 'OrderAddProductAPI');
  Logger get logger => _logger.logger;

  // 桌台添加商品
  Future<bool?> deskAddProduct(
    RequestOrderAddProduct product, {
    ExtraRequestOptions? options,
  }) async {
    try {
      final response = await _api.postWithRequestOptions(
        APIPath.deskOrderCartProductAdd.tabletPath,
        data: product.toJson(),
        requestOptions: options,
      );
      // 返回
      if (response.code.success) {
        //
        return true;
      }
      return null;
    } catch (error, stackTrace) {
      logger.severe('deskAddProduct Error:', error, stackTrace);
      return null;
    }
  }

  // 桌台修改订单商品数量
  Future<bool> numChangeDesk(
    RequestNumChange req, {
    ExtraRequestOptions? options,
  }) async {
    try {
      final response = await _api.postWithRequestOptions(
        APIPath.deskOrderCartProductNum.tabletPath,
        data: req.toJson(),
        requestOptions: options,
      );
      if (response.code.success) {
        //
        return true;
      }
      return false;
    } catch (error, stackTrace) {
      logger.severe('numChangeDesk Error:', error, stackTrace);
      return false;
    }
  }

  // 向购物车添加商品并送厨
  Future<(bool, BaseList<Product>?, BaseList<MustGoodsItem>?, String?)> deskAddProductCooking(
    RequestCooking req, {
    ExtraRequestOptions? options,
  }) async {
    try {
      final response = await _api.postWithRequestOptions(
        APIPath.deskOrderCartProductAddCooking.tabletPath,
        data: req.toJson(),
        requestOptions: options,
      );
      // 商品提示
      if (response.data != null && response.data['products'] != null) {
        return (
          false,
          await response.safeFromJsonList(
            Product.fromJson,
            response.data['products'],
            modelName: 'Product',
            options: options,
            logger: logger,
          ),
          null,
          response.message
        );
      }
      // 必选商品提示
      if (response.data != null && response.data['product_must_plans'] != null) {
        return (
          false,
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
      // 成功返回
      if (response.code.success) {
        return (true, null, null, null);
      }
      // 提示错误
      String message = response.message;
      if (response.data != null && response.code == ErrorCode.orderValueQuantityCooking.code) {
        message = ErrorCode.orderValueQuantityCooking.message.trParams({"value": "${response.data['value']}"});
      } else if (response.data != null && response.code == ErrorCode.orderContinuePlacingCooking.code) {
        message = ErrorCode.orderContinuePlacingCooking.message
            .trParams({"value": "${double.tryParse(((response.data['value'] ?? 0) / 60).toString())?.ceil()}"});
      }
      DialogManager.showErrorDialog(title: '提示'.tr, message: message);
      return (false, null, null, response.message);
    } catch (error, stackTrace) {
      logger.severe('deskAddProductCooking Error:', error, stackTrace);
      return (false, null, null, null);
    }
  }
}

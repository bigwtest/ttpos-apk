// Package imports:
import 'package:get/get.dart';
import 'package:ttpos_api/api.dart';
// Project imports:
import 'package:ttpos_api/controller.dart';
import 'package:ttpos_logger/logger.dart';
import 'package:ttpos_model/base/request/options.dart';
import 'package:ttpos_model/base/response/list.dart';
import 'package:ttpos_model/goods/response/must/must_goods_item.dart';
import 'package:ttpos_model/order/request/cooking_product.dart';
import 'package:ttpos_model/order/response/product.dart';
import 'package:ttpos_ui/components/common/dialog/manager.dart';

/// 送厨API
class OrderCookingAPI {
  final API _api = Get.find<APIController>().api;
  final Log _logger = Log(appName: 'OrderCookingAPI');
  Logger get logger => _logger.logger;

  // 桌台送厨商品
  Future<(bool, BaseList<Product>?, BaseList<MustGoodsItem>?, String?)> cookingDesk(
    RequestCooking req, {
    ExtraRequestOptions? options,
  }) async {
    try {
      final response = await _api.postWithRequestOptions(
        APIPath.deskOrderCartCooking.assistantPath,
        data: req.toJson(),
        requestOptions: options,
      );
      // 商品提示
      if (response.data['products'] != null) {
        return (
          response.code.success,
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
      if (response.data['product_must_plans'] != null) {
        return (
          response.code.success,
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
      DialogManager.showErrorDialog(message: response.message);
      return (false, null, null, response.message);
    } catch (error, stackTrace) {
      logger.severe('cookingDesk Error:', error, stackTrace);
      return (false, null, null, null);
    }
  }
}

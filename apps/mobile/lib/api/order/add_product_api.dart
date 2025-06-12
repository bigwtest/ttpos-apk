// Package imports:
import 'package:get/get.dart';
import 'package:ttpos_api/api.dart';
// Project imports:
import 'package:ttpos_api/controller.dart';
import 'package:ttpos_logger/logger.dart';
import 'package:ttpos_model/base/request/options.dart';
import 'package:ttpos_model/goods/request/add_product.dart';
import 'package:ttpos_model/order/request/num_change.dart';

// Model imports:
class OrderAddProductAPI {
  final API _api = Get.find<APIController>().api;
  final Log _logger = Log(appName: 'OrderAddProductAPI');
  Logger get logger => _logger.logger;

  // 桌台添加商品
  Future<bool?> addProduct(
    RequestOrderAddProduct product, {
    ExtraRequestOptions? options,
  }) async {
    try {
      final response = await _api.postWithRequestOptions(
        APIPath.orderCartProductAdd.h5Path,
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
      logger.severe('addProduct Error:', error, stackTrace);
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
        APIPath.orderCartProductNum.h5Path,
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
}

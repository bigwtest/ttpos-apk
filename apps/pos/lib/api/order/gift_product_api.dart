// Package imports:
import 'package:get/get.dart';
import 'package:pos/model/request/order/gift_product.dart';
import 'package:pos/model/response/cart/cart.dart';
import 'package:ttpos_api/api.dart';
import 'package:ttpos_api/controller.dart';
import 'package:ttpos_logger/logger.dart';
import 'package:ttpos_model/base/request/options.dart';
import 'package:ttpos_ui/components/common/dialog/manager.dart';

/// 订单商品赠菜
class OrderGiftProductApi {
  final API _api = Get.find<APIController>().api;
  final Log _logger = Log(appName: 'OrderGiftProductApi');
  Logger get logger => _logger.logger;

  // 点餐
  Future<ResponseCart?> instant(RequestOrderGiftingProduct req, {ExtraRequestOptions? options}) async {
    try {
      try {
        req.validate();
      } catch (e) {
        DialogManager.showToast(e.toString());
        return null;
      }
      //
      final response = await _api.postWithRequestOptions(
        APIPath.instantOrderCartProductGiving.cashierPath,
        data: req.toJson(),
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
      DialogManager.showToast(response.message);
      return null;
    } catch (error, stackTrace) {
      logger.severe('订单商品赠菜:', error, stackTrace);
      return null;
    }
  }

  // 桌台
  Future<ResponseCart?> desk(RequestOrderGiftingProduct req, {ExtraRequestOptions? options}) async {
    try {
      try {
        req.validate();
      } catch (e) {
        DialogManager.showToast(e.toString());
        return null;
      }
      final response = await _api.postWithRequestOptions(
        APIPath.deskOrderCartProductGiving.cashierPath,
        data: req.toJson(),
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
      DialogManager.showToast(response.message);
      return null;
    } catch (error, stackTrace) {
      logger.severe('订单商品赠菜 Error:', error, stackTrace);
      return null;
    }
  }
}

// Package imports:
import 'package:get/get.dart';
import 'package:pos/model/request/order/opt_product.dart';
import 'package:pos/model/response/cart/cart.dart';
import 'package:ttpos_api/api.dart';
import 'package:ttpos_api/controller.dart';
import 'package:ttpos_logger/logger.dart';
import 'package:ttpos_model/base/request/options.dart';
import 'package:ttpos_ui/components/common/dialog/manager.dart';

/// 订单商品取消赠菜
class OrderGiftCancelProductApi {
  final API _api = Get.find<APIController>().api;
  final Log _logger = Log(appName: 'OrderGiftCancelProductApi');
  Logger get logger => _logger.logger;

  // 点餐
  Future<ResponseCart?> instant(RequestOrderOptProduct req, {ExtraRequestOptions? options}) async {
    try {
      final response = await _api.postWithRequestOptions(
        APIPath.instantOrderCartProductCancelGiving.cashierPath,
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
      DialogManager.showToast('网络异常！'.tr);
      logger.severe('num Error:', error, stackTrace);
      return null;
    }
  }

  // 桌台
  Future<ResponseCart?> desk(RequestOrderOptProduct req, {ExtraRequestOptions? options}) async {
    try {
      final response = await _api.postWithRequestOptions(
        APIPath.deskOrderCartProductCancelGiving.cashierPath,
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
      DialogManager.showToast('网络异常！'.tr);
      logger.severe('numDesk Error:', error, stackTrace);
      return null;
    }
  }
}

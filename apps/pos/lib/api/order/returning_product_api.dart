// Package imports:
import 'package:get/get.dart';
// Project imports:
import 'package:pos/model/request/order/returning_product.dart';
import 'package:pos/model/response/cart/cart.dart';
import 'package:ttpos_api/api.dart';
import 'package:ttpos_api/controller.dart';
import 'package:ttpos_logger/logger.dart';
import 'package:ttpos_ui/components/common/dialog/manager.dart';

/// 订单商品退菜
class OrderReturningProductApi {
  final API _api = Get.find<APIController>().api;
  final Log _logger = Log(appName: 'OrderReturningProductApi');
  Logger get logger => _logger.logger;

  // 点餐
  Future<ResponseCart?> instant(RequestOrderReturningProduct req) async {
    try {
      try {
        req.validate();
      } catch (e) {
        DialogManager.showToast(e.toString());
        return null;
      }
      //
      final response = await _api.post(
        APIPath.instantOrderCartReturning.cashierPath,
        data: req.toJson(),
      );
      if (response.code.success) {
        return ResponseCart.fromJson(response.data as Map<String, dynamic>);
      }
      DialogManager.showToast(response.message);
      return null;
    } catch (error, stackTrace) {
      DialogManager.showToast('网络异常！'.tr);
      logger.severe('numInstant Error:', error, stackTrace);
      return null;
    }
  }

  // 桌台
  Future<ResponseCart?> desk(RequestOrderReturningProduct req) async {
    try {
      try {
        req.validate();
      } catch (e) {
        DialogManager.showToast(e.toString());
        return null;
      }
      final response = await _api.post(
        APIPath.deskOrderCartReturning.cashierPath,
        data: req.toJson(),
      );
      if (response.code.success) {
        return ResponseCart.fromJson(response.data as Map<String, dynamic>);
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

// Package imports:
import 'package:get/get.dart';
import 'package:ttpos_api/api.dart';
import 'package:ttpos_api/controller.dart';
import 'package:ttpos_logger/logger.dart';
import 'package:ttpos_model/base/request/options.dart';
import 'package:ttpos_model/order/request/gift_product.dart';
import 'package:ttpos_ui/components/common/dialog/manager.dart';

/// 订单商品赠菜
class OrderGiftProductApi {
  final API _api = Get.find<APIController>().api;
  final Log _logger = Log(appName: 'OrderGiftProductApi');
  Logger get logger => _logger.logger;

  // 桌台
  Future<bool> giftProductDesk(RequestGiftingProduct req, {ExtraRequestOptions? options}) async {
    try {
      try {
        req.validate();
      } catch (e) {
        DialogManager.showToast(e.toString());
        return false;
      }
      final response = await _api.postWithRequestOptions(
        APIPath.deskOrderCartProductGiving.assistantPath,
        data: req.toJson(),
        requestOptions: options,
      );
      if (response.code.success) {
        return true;
      }
      DialogManager.showToast(response.message);
      return false;
    } catch (error, stackTrace) {
      logger.severe('订单商品赠菜 Error:', error, stackTrace);
      return false;
    }
  }
}

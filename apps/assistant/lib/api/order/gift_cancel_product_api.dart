// Package imports:
import 'package:get/get.dart';
import 'package:ttpos_api/api.dart';
import 'package:ttpos_api/controller.dart';
import 'package:ttpos_logger/logger.dart';
import 'package:ttpos_model/base/request/options.dart';
import 'package:ttpos_model/order/request/opt_product.dart';
import 'package:ttpos_ui/components/common/dialog/manager.dart';

/// 订单商品取消赠菜
class GiftCancelProductApi {
  final API _api = Get.find<APIController>().api;
  final Log _logger = Log(appName: 'GiftCancelProductApi');
  Logger get logger => _logger.logger;

  // 桌台
  Future<bool> giftCancelProductDesk(RequestOptProduct req, {ExtraRequestOptions? options}) async {
    try {
      final response = await _api.postWithRequestOptions(
        APIPath.deskOrderCartProductCancelGiving.assistantPath,
        data: req.toJson(),
        requestOptions: options,
      );
      if (response.code.success) {
        return true;
      }
      DialogManager.showToast(response.message);
      return false;
    } catch (error, stackTrace) {
      DialogManager.showToast('网络异常！'.tr);
      logger.severe('numDesk Error:', error, stackTrace);
      return false;
    }
  }
}

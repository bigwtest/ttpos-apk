// Package imports:
import 'package:get/get.dart';
// Project imports:=
import 'package:ttpos_api/api.dart';
import 'package:ttpos_api/controller.dart';
import 'package:ttpos_logger/logger.dart';
import 'package:ttpos_model/base/request/options.dart';
import 'package:ttpos_model/order/request/returning_product.dart';
import 'package:ttpos_ui/components/common/dialog/manager.dart';

/// 订单商品退菜
class ReturningProductApi {
  final API _api = Get.find<APIController>().api;
  final Log _logger = Log(appName: 'ReturningProductApi');
  Logger get logger => _logger.logger;

  // 退菜
  Future<bool> returningProductDesk(
    RequestReturningProduct req, {
    ExtraRequestOptions? options,
  }) async {
    try {
      try {
        req.validate();
      } catch (e) {
        DialogManager.showToast(e.toString());
        return false;
      }
      final response = await _api.post(
        APIPath.deskOrderCartReturning.assistantPath,
        data: req.toJson(),
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

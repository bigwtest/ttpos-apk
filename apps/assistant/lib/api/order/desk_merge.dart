// Package imports:
import 'package:get/get.dart';
import 'package:ttpos_api/api.dart';
// Project imports:
import 'package:ttpos_api/controller.dart';
import 'package:ttpos_logger/logger.dart';
import 'package:ttpos_model/base/request/options.dart';
import 'package:ttpos_model/base/response/list.dart';
import 'package:ttpos_model/order/request/merge_desk.dart';
import 'package:ttpos_model/order/response/merge_desk.dart';
import 'package:ttpos_ui/components/common/dialog/manager.dart';

/// 合并桌台
class DeskMergeAPI {
  final API _api = Get.find<APIController>().api;
  final Log _logger = Log(appName: 'DeskMergeAPI');
  Logger get logger => _logger.logger;

  // 合并桌台
  Future<
      (
        ResponseOrderMergeDesk?,
        BaseList<ResponseOrderMergeDeskCheck>?,
        String? msg,
      )> mergeDesk(
    RequestMergeDesk req, {
    ExtraRequestOptions? options,
  }) async {
    try {
      final response = await _api.postWithRequestOptions(
        APIPath.deskMerge.assistantPath,
        data: req.toJson(),
        requestOptions: options,
      );
      if (!response.code.success) {
        return (
          null,
          await response.safeFromJsonList(
            ResponseOrderMergeDeskCheck.fromJson,
            response.data,
            modelName: 'ResponseOrderMergeDeskCheck',
            options: ExtraRequestOptions(
              showFailToast: true,
            ),
            logger: logger,
          ),
          response.message
        );
      }
      if (response.code.success) {
        return (
          await response.safeFromJson(
            ResponseOrderMergeDesk.fromJson,
            response.data,
            modelName: 'ResponseOrderMergeDesk',
            options: ExtraRequestOptions(
              showFailToast: true,
            ),
            logger: logger,
          ),
          null,
          ''
        );
      }
      // 未找到桌台
      DialogManager.showToast(response.message);
      //
      return (null, null, '');
    } catch (error, stackTrace) {
      logger.severe('mergeDesk Error:', error, stackTrace);
      return (null, null, '');
    }
  }
}

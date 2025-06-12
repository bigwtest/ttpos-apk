import 'package:get/get.dart';
import 'package:ttpos_api/api.dart';
import 'package:ttpos_api/controller.dart';
import 'package:ttpos_logger/logger.dart';
import 'package:pos/model/request/top_up_list/request_top_up_uuid.dart';
import 'package:ttpos_model/base/request/options.dart';
import 'package:pos/model/response/top_up_list/top_up_reverse_settle_info.dart';

class TopUpCheckReverseSettleAPI extends GetxController {
  final API _api = Get.find<APIController>().api;
  final Log _logger = Log(appName: 'TopUpCheckReverseSettleAPI');
  Logger get logger => _logger.logger;

  Future<TopUpReverseSettleInfo?> checkReverseSettle(
    RequestTopUpUuid data, {
    ExtraRequestOptions? options,
  }) async {
    try {
      final response = await _api.getWithRequestOptions(
        APIPath.topUpCheckReverseSettle.cashierPath,
        queryParameters: data.toJson(),
        requestOptions: options,
      );
      if (response.code.success) {
        return await response.safeFromJson(
          TopUpReverseSettleInfo.fromJson,
          response.data,
          modelName: 'TopUpReverseSettleInfo',
          options: options,
          logger: logger,
        );
      }
      return null;
    } catch (error, stackTrace) {
      logger.severe('TopUpCancel Error:', error, stackTrace);
      return null;
    }
  }
}

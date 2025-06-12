import 'package:get/get.dart';

import 'package:ttpos_api/api.dart';
import 'package:ttpos_api/controller.dart';
import 'package:ttpos_logger/logger.dart';
import 'package:ttpos_model/base/request/options.dart';
import 'package:pos/model/request/top_up_list/request_top_up_uuid.dart';

class TopUpCancelAPI {
  final API _api = Get.find<APIController>().api;
  final Log _logger = Log(appName: 'TopUpCancelAPI');
  Logger get logger => _logger.logger;

  Future<dynamic> cancel(
    RequestTopUpUuid data, {
    ExtraRequestOptions? options,
  }) async {
    try {
      final response = await _api.postWithRequestOptions(
        APIPath.topUpCancel.cashierPath,
        data: data.toJson(),
        requestOptions: options,
      );
      return response;
    } catch (error, stackTrace) {
      logger.severe('TopUpCancel Error:', error, stackTrace);
      return false;
    }
  }
}

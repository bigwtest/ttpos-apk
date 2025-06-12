// Package imports:
import 'package:get/get.dart';
// Model imports:
import 'package:pos/model/request/top_up_list/request_top_up.dart';
import 'package:pos/model/response/top_up_list/response_top_up.dart';
import 'package:ttpos_api/api.dart';
// Project imports:
import 'package:ttpos_api/controller.dart';
import 'package:ttpos_logger/logger.dart';
import 'package:ttpos_model/base/request/options.dart';

class TopUpListAPI {
  final API _api = Get.find<APIController>().api;
  final Log _logger = Log(appName: 'TopUpListAPI');
  Logger get logger => _logger.logger;

  Future<ResponseTopUp?> getTopUpList(
    RequestTopUp searchForm, {
    ExtraRequestOptions? options,
  }) async {
    try {
      final response = await _api.getWithRequestOptions(
        APIPath.topUpGetList.cashierPath,
        queryParameters: searchForm.toJson(),
        requestOptions: options,
      );
      if (response.code.success) {
        return await response.safeFromJson(
          ResponseTopUp.fromJson,
          response.data,
          modelName: 'ResponseTopUp',
          options: options,
          logger: logger,
        );
      }
      return null;
    } catch (error, stackTrace) {
      logger.severe('getTopUpList Error:', error, stackTrace);
      return null;
    }
  }
}

// Package imports:
import 'package:get/get.dart';
// Model imports:
import 'package:pos/model/request/top_up_list/request_top_up_uuid.dart';
import 'package:pos/model/response/top_up_details/top_up_details.dart';
import 'package:ttpos_api/api.dart';
// Project imports:
import 'package:ttpos_api/controller.dart';
import 'package:ttpos_logger/logger.dart';
import 'package:ttpos_model/base/request/options.dart';

class TopUpDetailsAPI {
  final API _api = Get.find<APIController>().api;
  final Log _logger = Log(appName: 'TopUpDetailsAPI');
  Logger get logger => _logger.logger;

  Future<TopUpDetails?> getTopUpDetails(
    RequestTopUpUuid data, {
    ExtraRequestOptions? options,
  }) async {
    try {
      final response = await _api.getWithRequestOptions(
        APIPath.topUpGetDetails.cashierPath,
        queryParameters: data.toJson(),
        requestOptions: options,
      );
      if (response.code.success) {
        return await response.safeFromJson(
          TopUpDetails.fromJson,
          response.data,
          modelName: 'TopUpDetails',
          options: options,
          logger: logger,
        );
      }
      return null;
    } catch (error, stackTrace) {
      logger.severe('getTopUpDetails Error:', error, stackTrace);
      return null;
    }
  }
}

// Package imports:
import 'package:get/get.dart';
import 'package:ttpos_api/api.dart';
// Project imports:
import 'package:ttpos_api/controller.dart';
import 'package:ttpos_logger/logger.dart';
import 'package:ttpos_model/base/request/options.dart';
import 'package:ttpos_model/order/response/desk_ping.dart';
import 'package:ttpos_shared/shared.dart';

class DeskPingAPI {
  final API _api = Get.find<APIController>().api;
  final Log _logger = Log(appName: 'DeskPingAPI');
  Logger get logger => _logger.logger;

  Future<(ResponseDeskPing?, ErrorCode)> getDeskPing(
    // 桌台ID
    int deskId, {
    ExtraRequestOptions? options,
  }) async {
    try {
      final response = await _api.getWithRequestOptions(
        APIPath.deskPing.h5Path,
        queryParameters: {
          'uuid': deskId,
        },
        requestOptions: options,
      );
      if (response.code == ErrorCode.deskCartInfoInvalid.code) {
        return (null, ErrorCode.deskCartInfoInvalid);
      }
      if (response.code.success) {
        final result = await response.safeFromJson(
          ResponseDeskPing.fromJson,
          response.data,
          modelName: 'ResponseDeskPing',
          options: options,
          logger: logger,
        );
        return (result, ErrorCode.success);
      }
      return (null, ErrorCode.failure);
    } catch (error, stackTrace) {
      logger.severe('getDeskPing Error:', error, stackTrace);
      return (null, ErrorCode.failure);
    }
  }
}

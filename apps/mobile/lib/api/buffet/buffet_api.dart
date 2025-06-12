// Package imports:
import 'package:get/get.dart';
import 'package:ttpos_api/api.dart';
// Project imports:
import 'package:ttpos_api/controller.dart';
import 'package:ttpos_logger/logger.dart';
import 'package:ttpos_model/base/request/options.dart';
import 'package:ttpos_model/buffet/response/list/list.dart';

class BuffetAPI {
  final API _api = Get.find<APIController>().api;
  final Log _logger = Log(appName: 'BuffetAPI');
  Logger get logger => _logger.logger;

  Future<BuffetList?> getBuffetList({
    ExtraRequestOptions? options,
  }) async {
    try {
      final response = await _api.getWithRequestOptions(
        APIPath.buffetGetBuffetList.h5Path,
        requestOptions: options,
      );
      if (response.code.success) {
        return await response.safeFromJson(
          BuffetList.fromJson,
          response.data,
          modelName: 'BuffetList',
          options: options,
          logger: logger,
        );
      }
      return null;
    } catch (error, stackTrace) {
      logger.severe('getBuffetList Error:', error, stackTrace);
      return null;
    }
  }
}

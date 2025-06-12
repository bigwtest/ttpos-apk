import 'package:get/get.dart';
import 'package:mobile/model/response/auth/base_info.dart';
import 'package:ttpos_api/api.dart';
import 'package:ttpos_api/controller.dart';
import 'package:ttpos_logger/logger.dart';
import 'package:ttpos_model/base/request/options.dart';

class AuthAPI {
  final API _api = Get.find<APIController>().api;
  final Log _logger = Log(appName: 'AuthAPI');
  Logger get logger => _logger.logger;

  // 获取基础信息
  Future<BaseInfo?> getBaseInfo({
    ExtraRequestOptions? requestOptions,
  }) async {
    try {
      final response = await _api.getWithRequestOptions(
        APIPath.authGetBaseInfo.h5Path,
        requestOptions: requestOptions,
      );
      if (response.code.success) {
        return response.safeFromJson(
          BaseInfo.fromJson,
          response.data,
          options: requestOptions,
          modelName: 'BaseInfo',
          logger: logger,
        );
      }
      return null;
    } catch (error, stackTrace) {
      logger.severe('Get Base Info Error:', error, stackTrace);
      return null;
    }
  }
}

// Package imports:
import 'package:get/get.dart';
import 'package:ttpos_api/api.dart';
// Project imports:
import 'package:ttpos_api/controller.dart';
import 'package:ttpos_logger/logger.dart';
import 'package:ttpos_model/base/request/options.dart';
import 'package:ttpos_model/common/request/create_publickey.dart';
import 'package:ttpos_model/common/response/publickey.dart';

class CommonAPI {
  final API _api = Get.find<APIController>().api;
  final Log _logger = Log(appName: 'CommonAPI');
  Logger get logger => _logger.logger;

  // 创建加密公钥
  Future<ResponseCreatePublicKey?> createPublicKey(
    RequestDataCreatePublicKey createPublicKey, {
    ExtraRequestOptions? options,
  }) async {
    try {
      final response = await _api.postWithRequestOptions(
        APIPath.commonCreatePublicKey.cashierPath,
        data: createPublicKey.toJson(),
        requestOptions: options,
      );
      if (response.code.success) {
        return await response.safeFromJson(
          ResponseCreatePublicKey.fromJson,
          response.data,
          modelName: 'ResponseCreatePublicKey',
          options: options,
          logger: logger,
        );
      }
      return null;
    } catch (error, stackTrace) {
      logger.severe('Create Public Key Error:', error, stackTrace);
      return null;
    }
  }
}

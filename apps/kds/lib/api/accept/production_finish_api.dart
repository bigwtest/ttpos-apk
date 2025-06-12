import 'package:get/get.dart';
import 'package:kds/model/request/req_product_uuid.dart';
import 'package:ttpos_api/api.dart';
import 'package:ttpos_api/controller.dart';
import 'package:ttpos_logger/logger.dart';
import 'package:ttpos_model/base/request/options.dart';

class ProductionFinishAPI {
  final API _api = Get.find<APIController>().api;
  final Log _logger = Log(appName: 'ProductionFinishAPI');
  Logger get logger => _logger.logger;

  // 处理呼叫
  Future<bool> finish(
    ReqProductUuid data, {
    ExtraRequestOptions? options,
  }) async {
    try {
      final response = await _api.postWithRequestOptions(
        APIPath.kitchenProductFinish.kitchenPath,
        data: data.toJson(),
        requestOptions: options,
      );
      return response.code.success;
    } catch (error, stackTrace) {
      logger.severe('ProductionFinishAPI Error:', error, stackTrace);
      return false;
    }
  }
}

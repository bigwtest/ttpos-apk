import 'package:get/get.dart';
import 'package:kds/model/response/resp_print_list.dart';
import 'package:ttpos_api/api.dart';
import 'package:ttpos_api/controller.dart';
import 'package:ttpos_logger/logger.dart';

class GetKdsSettingAPI {
  final API _api = Get.find<APIController>().api;
  final Log _logger = Log(appName: 'GetKdsSettingAPI');
  Logger get logger => _logger.logger;

  //获取分类
  Future<RespPrintList?> getKdsSetting() async {
    try {
      final response = await _api.getWithRequestOptions(
        APIPath.productPrinterList.kitchenPath,
      );

      if (response.code.success) {
        return await response.safeFromJson(
          RespPrintList.fromJson,
          response.data,
          modelName: 'RespPrintList',
          logger: logger,
        );
      }
      return null;
    } catch (error, stackTrace) {
      logger.severe('RespPrintList Error:', error, stackTrace);
      return null;
    }
  }
}

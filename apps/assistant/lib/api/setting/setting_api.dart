import 'package:assistant/model/request/cashier/edit_setting.dart';
import 'package:get/get.dart';
import 'package:ttpos_api/api.dart';
import 'package:ttpos_api/controller.dart';
import 'package:ttpos_logger/logger.dart';
import 'package:ttpos_model/base/request/options.dart';

class SettingApi {
  final API _api = Get.find<APIController>().api;
  final Log _logger = Log(appName: 'SettingApi');
  Logger get logger => _logger.logger;

  Future<bool?> editSetting({
    required EditSettingModel setting,
    ExtraRequestOptions? options,
  }) async {
    try {
      final response = await _api.postWithRequestOptions(
        APIPath.settingGetSetting.assistantPath,
        data: setting.toJson(), // 添加请求数据
        requestOptions: options,
      );
      return response.code.success;
    } catch (error, stackTrace) {
      logger.severe('Edit Setting Error:', error, stackTrace);
      return false;
    }
  }
}

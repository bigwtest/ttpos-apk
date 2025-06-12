import 'package:get/get.dart';
import 'package:tablet/model/response/auth/edit_setting/edit_setting_model.dart';
import 'package:ttpos_api/api.dart';
import 'package:ttpos_api/controller.dart';
import 'package:ttpos_logger/logger.dart';
import 'package:ttpos_model/base/request/options.dart';

class SettingAPI {
  final API _api = Get.find<APIController>().api;

  final Log _logger = Log(appName: 'SettingAPI');
  Logger get logger => _logger.logger;

  Future<bool?> editSetting({
    required EditSettingModel setting,
    ExtraRequestOptions? options,
  }) async {
    try {
      final response = await _api.postWithRequestOptions(
        APIPath.settingGetSetting.tabletPath,
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

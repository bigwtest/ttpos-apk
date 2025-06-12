// Package imports:
import 'package:get/get.dart';
import 'package:pos/model/response/setting/edit_system_setting.dart';
import 'package:pos/model/response/setting/setting.dart';
import 'package:ttpos_api/api.dart';
// Project imports:
import 'package:ttpos_api/controller.dart';
import 'package:ttpos_logger/logger.dart';
import 'package:ttpos_model/base/request/options.dart';
import 'package:ttpos_model/language/language_list.dart';

class SettingAPI {
  final API _api = Get.find<APIController>().api;
  final Log _logger = Log(appName: 'SettingAPI');
  Logger get logger => _logger.logger;

  Future<bool?> editSystemSetting({
    required EditSystemSetting setting,
    ExtraRequestOptions? options,
  }) async {
    try {
      final response = await _api.postWithRequestOptions(
        APIPath.settingUpdateSystemConfig.cashierPath,
        data: setting.toJson(), // 添加请求数据
        requestOptions: options,
      );
      return response.code.success;
    } catch (error, stackTrace) {
      logger.severe('Edit System Setting Error:', error, stackTrace);
      return false;
    }
  }

  // 修改接单设置
  Future<bool> editAcceptOrderSetting({
    required String autoOrderLimit,
    required String isAutoOrder,
    ExtraRequestOptions? options,
  }) async {
    try {
      final response = await _api.postWithRequestOptions(
        APIPath.settingUpdateAcceptOrderConfig.cashierPath,
        data: {
          'auto_order_limit': autoOrderLimit,
          'is_auto_order': isAutoOrder,
        }, // 添加请求数据
        requestOptions: options,
      );
      if (response.code.success) {
        return true;
      }
      return false;
    } catch (error, stackTrace) {
      logger.severe('Edit Order Setting Error:', error, stackTrace);
      return false;
    }
  }

  //获取系统设置
  Future<SettingResponse?> getSetting({
    ExtraRequestOptions? options,
  }) async {
    try {
      final response = await _api.getWithRequestOptions(
        APIPath.settingGetSetting.cashierPath,
        requestOptions: options,
      );
      if (response.code.success) {
        return response.safeFromJson(
          SettingResponse.fromJson,
          response.data,
          modelName: 'SettingResponse',
          options: options,
          logger: logger,
        );
      }
      return null;
    } catch (error, stackTrace) {
      logger.severe('Get Setting Error:', error, stackTrace);
      return null;
    }
  }

  //获取语言
  Future<LanguageList?> getLanguage({
    ExtraRequestOptions? options,
  }) async {
    try {
      final response = await _api.getWithRequestOptions(
        APIPath.baseGetLanguage.cashierPath,
      );
      if (response.code.success) {
        return await response.safeFromJson(
          LanguageList.fromJson,
          response.data,
          modelName: 'LanguageList',
          options: options,
          logger: logger,
        );
      }
      return null;
    } catch (error, stackTrace) {
      logger.severe('Get Captcha Error:', error, stackTrace);
      return null;
    }
  }
}

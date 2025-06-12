import 'package:get/get.dart';
import 'package:tablet/model/response/auth/base_info.dart';
import 'package:ttpos_api/api.dart';
import 'package:ttpos_api/controller.dart';
import 'package:ttpos_logger/logger.dart';
import 'package:ttpos_model/auth/request/form.dart';
import 'package:ttpos_model/auth/response/login.dart';
import 'package:ttpos_model/base/request/options.dart';
import 'package:ttpos_ui/components/common/dialog/manager.dart';

class AuthAPI {
  final API _api = Get.find<APIController>().api;
  final Log _logger = Log(appName: 'AuthAPI');
  Logger get logger => _logger.logger;

  /// 用户登录
  Future<ResponseDataLogin?> login({
    required RequestDataLoginForm loginForm,
    required String sign,
    ExtraRequestOptions? requestOptions,
  }) async {
    try {
      final response = await _api.postWithRequestOptions(
        APIPath.authLogin.tabletPath,
        data: loginForm.toJson(),
        options: Options(
          headers: {'X-SIGN': sign},
        ),
        requestOptions: requestOptions,
      );
      if (response.code.success) {
        return response.safeFromJson(
          ResponseDataLogin.fromJson,
          response.data,
          options: requestOptions,
          modelName: 'ResponseDataLogin',
          logger: logger,
        );
      }

      if (response.code.isSaasExpired) return null;

      await DialogManager.showErrorDialog(
        title: '登录失败'.tr,
        message: response.message,
        showIconNotification: true,
      );

      return null;
    } catch (error, stackTrace) {
      logger.severe('Login Error:', error, stackTrace);
      return null;
    }
  }

  // 退出登录
  Future<bool> logout({
    ExtraRequestOptions? requestOptions,
  }) async {
    try {
      final response = await _api.postWithRequestOptions(
        APIPath.authLogout.tabletPath,
        requestOptions: requestOptions,
      );
      // 退出成功或需要重新登录
      return response.code.success || response.code.redirectToLogin;
    } catch (error, stackTrace) {
      logger.severe('Logout Error:', error, stackTrace);
      return false;
    }
  }

  // 获取基础信息
  Future<BaseInfo?> getBaseInfo({
    ExtraRequestOptions? requestOptions,
  }) async {
    try {
      final response = await _api.getWithRequestOptions(
        APIPath.authGetBaseInfo.tabletPath,
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

  Future<bool> verifyAdvancedPassword({
    required String password,
  }) async {
    try {
      final response = await _api.postWithRequestOptions(
        APIPath.authVerifyAdvancedPassword.tabletPath,
        data: {
          "password": password,
        },
        requestOptions: ExtraRequestOptions(
          showFailToast: true,
        ),
      );
      return response.code.success;
    } catch (error, stackTrace) {
      logger.severe('Verify Password Error:', error, stackTrace);
      return false;
    }
  }
}

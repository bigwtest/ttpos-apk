// Package imports:
import 'package:assistant/model/request/cashier/bind_cashier.dart';
import 'package:assistant/model/response/cashier/cashier_info.dart';
import 'package:get/get.dart';
import 'package:ttpos_api/api.dart';
import 'package:ttpos_api/controller.dart';
import 'package:ttpos_logger/logger.dart';
import 'package:ttpos_model/auth/response/login.dart';
import 'package:ttpos_model/base/request/options.dart';
import 'package:ttpos_model/base/response/list.dart';

class CashierAPI {
  final API _api = Get.find<APIController>().api;
  final Log _logger = Log(appName: 'CashierAPI');
  Logger get logger => _logger.logger;

  // 获取在线收银机
  Future<BaseList<ResponseCashierInfo>?> getOnlineCashiers() async {
    try {
      final response = await _api.getWithRequestOptions(
        APIPath.onlineCashiers.assistantPath,
      );
      if (response.code.success) {
        return await response.safeFromJsonList(
          ResponseCashierInfo.fromJson,
          response.data,
          modelName: 'CashierList',
          logger: logger,
        );
      }
      return null;
    } catch (error, stackTrace) {
      logger.severe('getOnlineCashiers Error:', error, stackTrace);
      return null;
    }
  }

  // 点餐助手绑定收银机
  Future<ResponseDataLogin?> fetchBindCashier(
    RequestBindCashier data, {
    ExtraRequestOptions? options,
  }) async {
    try {
      final response = await _api.postWithRequestOptions(
        APIPath.bindCashier.assistantPath,
        data: data.toJson(),
        requestOptions: options,
      );
      if (response.code.success) {
        return ResponseDataLogin.fromJson(response.data);
      }

      return null;
    } catch (error, stackTrace) {
      logger.severe('fetchBindCashier Error:', error, stackTrace);
      return null;
    }
  }
}

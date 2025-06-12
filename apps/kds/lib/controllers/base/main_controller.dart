import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kds/api/auth/auth_api.dart';
import 'package:kds/model/response/auth/base_info.dart';
import 'package:kds/routers/name.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:ttpos_api/controller.dart';
import 'package:ttpos_api/refresh_service.dart';
import 'package:ttpos_i18n/controllers/language_controller.dart';
import 'package:ttpos_logger/logger.dart';
import 'package:ttpos_model/base/request/options.dart';
import 'package:ttpos_model/options/cloud.dart';
import 'package:ttpos_model/options/kitchen.dart';
import 'package:ttpos_shared/shared.dart';
import 'package:ttpos_ui/components/common/dialog/manager.dart';
import 'package:ttpos_ui/controllers/config_controller.dart';
import 'package:ttpos_ui/theme/theme.dart';

part 'mixin/buffet_mixin.dart';
part 'mixin/business_mixin.dart';
part 'mixin/cloud_mixin.dart';
part 'mixin/company_mixin.dart';
part 'mixin/currency_mixin.dart';
part 'mixin/kitchen_mixin.dart';

class BaseInfoController extends GetxController
    with BaseInfoBuffet, BaseInfoKitchen, BaseInfoBusiness, BaseInfoCompany, BaseInfoCurrency, BaseInfoCloud {
  // 存储
  final SharedPreferencesWithCache _storage = Get.find<SharedPreferencesWithCache>();
  // 日志
  final Log _loggerController = Log(appName: 'BaseInfoController');
  Logger get _logger => _loggerController.logger;

  final RxBool isLoading = false.obs;

  @override
  final Rx<BaseInfo?> data = Rx<BaseInfo?>(null);

  Future<void> clear() async {
    try {
      data.value = null;
      await _storage.remove(StorageKey.authBaseInfo.asString);
    } catch (error, stackTrace) {
      _logger.severe('clearBaseInfo error:', error, stackTrace);
    }
  }

  Future<void> updateBaseInfo(BaseInfo value) async {
    try {
      data.value = value;

      /// 更新配置
      if (Get.isRegistered<ConfigController>()) {
        Get.find<ConfigController>().setConfig(
          buffet: buffet,
          business: business,
          company: company,
          currency: currency,
          cloud: cloud,
        );
      }
    } catch (error, stackTrace) {
      _logger.severe('updateBaseInfo error:', error, stackTrace);
    }
  }

  Future<void> setBaseInfoToStorage(BaseInfo? value) async {
    try {
      if (value == null) return;
      await _storage.setString(
        StorageKey.authBaseInfo.asString,
        jsonEncode(value.toJson()),
      );
    } catch (error, stackTrace) {
      _logger.severe('setBaseInfoToStorage error:', error, stackTrace);
    }
  }

  Future<void> loadBaseInfoFromStorage() async {
    try {
      final baseInfo = await getBaseInfoFromStorage();
      if (baseInfo == null) return;
      updateBaseInfo(baseInfo);
    } catch (error, stackTrace) {
      _logger.severe('loadBaseInfoFromStorage error:', error, stackTrace);
    }
  }

  Future<BaseInfo?> getBaseInfoFromStorage() async {
    try {
      final baseInfo = _storage.getString(StorageKey.authBaseInfo.asString);
      if (baseInfo == null) return null;
      return BaseInfo.fromJson(jsonDecode(baseInfo));
    } catch (error, stackTrace) {
      _logger.severe('getBaseInfoFromStorage error:', error, stackTrace);
      return null;
    }
  }

  Future<void> loadBaseInfoFromAPI() async {
    try {
      final response = await getBaseInfoFromAPI();
      if (response == null) return;

      /// 检查商家是否切换
      await checkCompany(response);

      /// 更新基础信息
      updateBaseInfo(response);
    } catch (error, stackTrace) {
      _logger.severe('getBaseInfo error:', error, stackTrace);
    }
  }

  Future<BaseInfo?> getBaseInfoFromAPI() async {
    if (isLoading.value) return null;

    try {
      isLoading.value = true;
      return await AuthAPI().getBaseInfo(
        requestOptions: ExtraRequestOptions(showFailToast: true),
      );
    } catch (error, stackTrace) {
      _logger.severe('getBaseInfo error:', error, stackTrace);
      return null;
    } finally {
      isLoading.value = false;
    }
  }

  void loadBaseInfo({bool fromStorage = false, bool fromAPI = true}) async {
    if (fromStorage) {
      await loadBaseInfoFromStorage();
    }

    if (fromAPI) {
      if (!Get.isRegistered<TokenController>()) return;
      final tokenController = Get.find<TokenController>();
      if (tokenController.token == null || tokenController.token?.isEmpty == true) return;
      await loadBaseInfoFromAPI();
    }
  }

  Worker? _refreshWorker;
  Worker? _saveWorker;

  @override
  void onInit() {
    super.onInit();

    _refreshWorker = ever(RefreshService.to.signal, (_) => loadBaseInfoFromAPI());
  }

  @override
  void onReady() {
    super.onReady();

    loadBaseInfo(fromStorage: true, fromAPI: true);

    _saveWorker = debounce(
      data,
      setBaseInfoToStorage,
      time: const Duration(milliseconds: 200),
      onError: (error) {
        _logger.severe('debounce save base info error: $error');
      },
      onDone: () {
        _logger.info('debounce save base info done');
      },
    );
  }

  @override
  void onClose() {
    _refreshWorker?.dispose();
    _refreshWorker = null;
    _saveWorker?.dispose();
    _saveWorker = null;
    super.onClose();
  }
}

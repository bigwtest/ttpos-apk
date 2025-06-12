import 'package:assistant/routers/name.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:ttpos_shared/shared.dart';

class AuthMiddleware extends GetMiddleware {
  @override
  RouteSettings? redirect(String? route) {
    // 获取存储的token
    final SharedPreferencesWithCache storage = Get.find<SharedPreferencesWithCache>();
    final token = storage.getString(StorageKey.authToken.asString);
    final assistantToken = storage.getString(StorageKey.authTokenAssistant.asString);
    final isSelectCashier = storage.getInt(StorageKey.authIsSelectCashier.asString) == 1;

    if (assistantToken == null) {
      return const RouteSettings(name: RouteNames.login);
    } else if (!isSelectCashier || token == null) {
      return const RouteSettings(name: RouteNames.cashier);
    }
    return null;
  }
}

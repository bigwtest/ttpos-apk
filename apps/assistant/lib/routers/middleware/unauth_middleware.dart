// Flutter imports:
import 'package:assistant/routers/name.dart';
import 'package:flutter/material.dart';
// Package imports:
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
// Project imports:
import 'package:ttpos_shared/shared.dart';

class UnauthMiddleware extends GetMiddleware {
  @override
  RouteSettings? redirect(String? route) {
    // 获取存储的token
    final SharedPreferencesWithCache storage = Get.find<SharedPreferencesWithCache>();
    final token = storage.getString(StorageKey.authToken.asString);
    final assistantToken = storage.getString(StorageKey.authTokenAssistant.asString);
    final isSelectCashier = storage.getInt(StorageKey.authIsSelectCashier.asString) == 1;

    if (assistantToken != null) {
      if ((!isSelectCashier || token == null)) {
        return const RouteSettings(name: RouteNames.cashier);
      }
      return const RouteSettings(name: RouteNames.home);
    }
    return null;
  }
}

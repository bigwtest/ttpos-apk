// Flutter imports:
import 'package:flutter/material.dart';
// Package imports:
import 'package:get/get.dart';
// Project imports:
import 'package:pos/routers/name.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:ttpos_shared/shared.dart';

class UnauthMiddleware extends GetMiddleware {
  @override
  RouteSettings? redirect(String? route) {
    // 获取存储的token
    final SharedPreferencesWithCache storage = Get.find<SharedPreferencesWithCache>();
    final token = storage.getString(StorageKey.authToken.asString);

    if (token != null && token.isNotEmpty) {
      return const RouteSettings(name: RouteNames.home);
    }
    return null;
  }
}

// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashController extends GetxController {
  final RxBool _isLogoShown = false.obs;
  bool get isLogoShown => _isLogoShown.value;
  set isLogoShown(bool value) => _isLogoShown.value = value;

  final RxBool _isFirstLaunch = true.obs;
  bool get isFirstLaunch => _isFirstLaunch.value;
  set isFirstLaunch(bool value) => _isFirstLaunch.value = value;

  final RxBool _isLogged = false.obs;
  bool get isLogged => _isLogged.value;
  set isLogged(bool value) => _isLogged.value = value;

  late SharedPreferencesWithCache prefsWithCache;

  @override
  void onInit() async {
    prefsWithCache = await SharedPreferencesWithCache.create(
      cacheOptions: const SharedPreferencesWithCacheOptions(
        // When an allowlist is included, any keys that aren't included cannot be used.
        allowList: <String>{'isFirstLaunch', 'isLogged'},
      ),
    );

    final bool? isFirstLaunchInCache = prefsWithCache.getBool('isFirstLaunch');
    isFirstLaunch = isFirstLaunchInCache ?? true;

    final bool? isLoggedInCache = prefsWithCache.getBool('isLogged');
    isLogged = isLoggedInCache ?? false;

    super.onInit();

    once(_isLogoShown, watchLogoShown);

    Future<void>.delayed(
      const Duration(milliseconds: 3500),
      () {
        if (isLogoShown) return;
        isLogoShown = true;
      },
    );
  }

  void watchLogoShown(bool _) async {
    if (isFirstLaunch) {
      showGuides();
      await prefsWithCache.setBool('isFirstLaunch', false);
      isFirstLaunch = false;
      return;
    }

    if (isLogged) {
      Get.offAllNamed('/home');
      return;
    }

    Get.offAllNamed('/login');
  }

  void showGuides() {
    Get.dialog(
      Scaffold(
        appBar: AppBar(
          backgroundColor: Get.theme.scaffoldBackgroundColor,
          elevation: 0,
          automaticallyImplyLeading: false,
        ),
        body: Center(
          child: TextButton(
            onPressed: () async {
              watchLogoShown(true);
            },
            child: Text(
              'Skip Guides',
              style: Get.textTheme.headlineLarge,
            ),
          ),
        ),
      ),
      useSafeArea: false,
    );
  }
}

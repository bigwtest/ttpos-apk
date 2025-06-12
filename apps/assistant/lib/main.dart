// Flutter imports:
import 'dart:io';

import 'package:assistant/app.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:sentry_flutter/sentry_flutter.dart';
import 'package:ttpos_api/refresh_service.dart';
import 'package:ttpos_api/utils/package_info_helper.dart';
// Package imports:
import 'package:ttpos_shared/shared.dart' as shared;
import 'package:ttpos_ui/controllers/cache_service.dart';
import 'package:ttpos_ui/utils/environment.dart';
import 'package:window_manager/window_manager.dart';

void mainEntry() async {
  WidgetsFlutterBinding.ensureInitialized();

  appRunner() async {
    // NOTE: 初始化缓存
    await Get.putAsync(() => CacheService().initWithCache(), permanent: true);

    // NOTE: 初始化刷新服务
    Get.put(RefreshService(), permanent: true);

    shared.initializeTimeZones();

    await initializeUISettings();

    await EnvironmentUtils.checkEnvironment();

    // 初始化版本信息
    await PackageInfoHelper.init();

    runApp(const App());
  }

  final sentryDsn = const String.fromEnvironment('SENTRY_DSN');
  if (sentryDsn.isEmpty || !sentryDsn.startsWith('http')) {
    appRunner();
    return;
  }

  await SentryFlutter.init(
    (SentryFlutterOptions options) {
      options.dsn = sentryDsn;
      // Set tracesSampleRate to 1.0 to capture 100% of transactions for tracing.
      // We recommend adjusting this value in production.
      options.tracesSampleRate = 1.0;
      // The sampling rate for profiling is relative to tracesSampleRate
      // Setting to 1.0 will profile 100% of sampled transactions:
      options.profilesSampleRate = 1.0;

      options.debug = kDebugMode;
      options.environment = const String.fromEnvironment('ENV', defaultValue: 'development');
    },
    appRunner: appRunner,
  );
}

Future<void> initializeUISettings() async {
  // 设置横屏
  SystemChrome.setPreferredOrientations(
    [
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.landscapeRight,
    ],
  );

  if (!kIsWeb) {
    if (Platform.isAndroid) {
      await SystemChrome.setEnabledSystemUIMode(
        SystemUiMode.immersiveSticky,
        overlays: [],
      );
    } else if (Platform.isIOS) {
      await SystemChrome.setEnabledSystemUIMode(
        SystemUiMode.manual,
        overlays: [
          SystemUiOverlay.bottom,
        ],
      );
    } else if (Platform.isMacOS || Platform.isLinux || Platform.isWindows) {
      await windowManager.ensureInitialized();

      WindowOptions windowOptions = WindowOptions(
        size: Size(1280, 720),
        minimumSize: Size(1280, 720),
        center: true,
        backgroundColor: Colors.transparent,
      );

      windowManager.waitUntilReadyToShow(windowOptions, () async {
        await windowManager.show();
        await windowManager.focus();
      });
    }
  }
}

void main() {
  mainEntry();
}

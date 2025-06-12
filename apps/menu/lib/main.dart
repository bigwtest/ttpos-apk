import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_web_plugins/url_strategy.dart';
import 'package:get/get.dart';
import 'package:menu/app.dart';
import 'package:sentry_flutter/sentry_flutter.dart';
import 'package:ttpos_api/refresh_service.dart';
import 'package:ttpos_api/utils/package_info_helper.dart';
import 'package:ttpos_shared/shared.dart' as shared;
import 'package:ttpos_ui/controllers/cache_service.dart';

void mainEntry() async {
  WidgetsFlutterBinding.ensureInitialized();

  appRunner() async {
    // NOTE: 初始化缓存
    await Get.putAsync(() => CacheService().initWithCache(), permanent: true);

    // NOTE: 初始化刷新服务
    Get.put(RefreshService(), permanent: true);

    shared.initializeTimeZones();

    await initializeUISettings();

    // 初始化版本信息
    await PackageInfoHelper.init();

    if (kIsWeb) {
      usePathUrlStrategy();
    }

    runApp(const App());
  }

  final sentryDsn = const String.fromEnvironment('SENTRY_DSN');
  if (sentryDsn.isEmpty || !sentryDsn.startsWith('http')) {
    appRunner();
    return;
  }

  // NOTE: 初始化 Sentry
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

Future<void> initializeUISettings() async {}

void main() {
  mainEntry();
}

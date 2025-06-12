// Flutter imports:
// Package imports:
import 'dart:ui';

import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:get/get.dart';
// Project imports:
import 'package:pos/pages/binding.dart';
import 'package:pos/routers/middleware.dart';
import 'package:pos/routers/name.dart';
import 'package:ttpos_api/refresh_service.dart';
import 'package:ttpos_i18n/i18n.dart';
import 'package:ttpos_ui/components/common/dialog/notification.dart';
import 'package:ttpos_ui/components/error/views/error.dart';
import 'package:ttpos_ui/controllers/font_size_controller.dart';
import 'package:ttpos_ui/controllers/subscreen_service.dart';
import 'package:ttpos_ui/theme/theme.dart';
import 'package:wakelock_plus/wakelock_plus.dart';

import 'routers/main.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  late final AppLifecycleListener _lifecycleListener;

  @override
  void initState() {
    super.initState();
    _lifecycleListener = AppLifecycleListener(
      onResume: () {
        debugPrint('AppLifecycleListener onResume 应用恢复到前台');
        RefreshService.to.startTimer();
      },
      onPause: () {
        debugPrint('AppLifecycleListener onPause 应用进入后台');
        RefreshService.to.stopTimer();
        NotificationHelper.closeAllNotifications();
      },
      onShow: () {
        debugPrint('AppLifecycleListener onShow 应用变为可见');
        WakelockPlus.enable();
        RefreshService.to.startTimer();
      },
      onHide: () {
        debugPrint('AppLifecycleListener onHide 应用变为不可见');
        WakelockPlus.disable();
        RefreshService.to.stopTimer();
        NotificationHelper.closeAllNotifications();
      },
      onInactive: () {
        debugPrint('AppLifecycleListener onInactive 应用处于非活动状态');
        RefreshService.to.stopTimer();
        NotificationHelper.closeAllNotifications();
      },
      onDetach: () {
        debugPrint('AppLifecycleListener onDetach 应用从 Flutter 引擎分离');
        RefreshService.to.stopTimer();
        NotificationHelper.closeAllNotifications();
      },
      onExitRequested: () {
        debugPrint('AppLifecycleListener onExitRequested 应用请求退出');
        RefreshService.to.stopTimer();
        NotificationHelper.closeAllNotifications();
        return Future.value(AppExitResponse.exit);
      },
    );

    SubScreenService.isSupportMultipleScreen();
  }

  @override
  void dispose() {
    _lifecycleListener.dispose();
    NotificationHelper.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final botToastBuilder = BotToastInit();
    return GetMaterialApp(
      initialRoute: RouteNames.login,
      initialBinding: InitBinding(),
      getPages: Pages.routes,
      routingCallback: MainMiddleware.handleRoute,
      debugShowCheckedModeBanner: kDebugMode,
      title: 'TTPOS',
      theme: CustomTheme.getThemeData(isDark: false),
      darkTheme: CustomTheme.getThemeData(isDark: true),
      themeMode: ThemeMode.light,
      popGesture: true,
      translations: Messages(),
      locale: Get.deviceLocale, // 设备语言
      fallbackLocale: const Locale('en', 'US'),
      localizationsDelegates: GlobalMaterialLocalizations.delegates,
      supportedLocales: const [
        Locale('en', 'US'),
        Locale('zh', 'CN'),
        Locale('zh-TW', 'CN'),
        Locale('ja', 'JP'),
        Locale('th', 'TH'),
        Locale('ko', 'KR'),
        Locale('my', 'MM'),
        Locale('de', 'DE'),
      ],

      builder: (context, child) {
        final FontSizeController fontSizeController = Get.find<FontSizeController>();
        //
        child = botToastBuilder(context, child);

        ErrorWidget.builder = (errorDetails) => ErrorView(
              errorDetails: errorDetails,
              showScaffold: child is Scaffold || child is Navigator,
            );

        // 禁用系统字体缩放
        return Obx(
          () => MediaQuery(
            data: MediaQuery.of(context).copyWith(
              // 固定文本缩放比例为1.0
              textScaler: TextScaler.linear(fontSizeController.textScaler),
              // 固定设备像素比
              devicePixelRatio: 1.0,
            ),
            child: child ?? const SizedBox.shrink(),
          ),
        );
      },
      navigatorObservers: [BotToastNavigatorObserver()],
    );
  }
}

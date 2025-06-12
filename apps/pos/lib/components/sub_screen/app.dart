// Flutter imports:
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pos/components/sub_screen/routers/binding.dart';
import 'package:pos/components/sub_screen/routers/main.dart';
// Package imports:
import 'package:ttpos_i18n/i18n.dart';
import 'package:ttpos_ui/controllers/font_size_controller.dart';
import 'package:ttpos_ui/controllers/subscreen_service.dart';
import 'package:ttpos_ui/theme/theme.dart';

class SubScreenApp extends StatelessWidget {
  const SubScreenApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: SubScreenRouteNames.carousel,
      getPages: Pages.routes,
      initialBinding: InitBinding(),
      debugShowCheckedModeBanner: kDebugMode,
      title: 'TTPOS',
      theme: CustomTheme.getThemeData(isDark: false),
      darkTheme: CustomTheme.getThemeData(isDark: true),
      themeMode: ThemeMode.light,
      popGesture: true,
      translations: Messages(),
      locale: Get.deviceLocale, // 设备语言
      fallbackLocale: const Locale('en', 'US'),
      builder: (context, child) {
        final FontSizeController fontSizeController = Get.find<FontSizeController>();

        // 禁用系统字体缩放
        return Obx(
          () => MediaQuery(
            data: MediaQuery.of(context).copyWith(
              // 固定文本缩放比例为1.0
              textScaler: TextScaler.linear(fontSizeController.textScaler),
              // 固定设备像素比
              devicePixelRatio: 1.0,
            ),
            child: child!,
          ),
        );
      },
    );
  }
}

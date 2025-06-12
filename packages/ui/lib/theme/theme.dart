// Flutter imports:
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
// Package imports:

class CustomTheme {
  // 主题颜色
  static const int _primaryColor = 0xFFFFBE00;
  static const MaterialColor primaryColor = MaterialColor(
    _primaryColor,
    <int, Color>{
      50: Color(0xFFFFF6DE), // 浅色背景图
      100: Color(0xFFFFECB3),
      200: Color(0xFFFFE17B), // 使用
      300: Color(0xFFFBDB7D), // => 浅色按钮颜色
      400: Color(0xFFFFCA28),
      500: Color(_primaryColor), // 主题色
      600: Color(0xFFFFBE00),
      700: Color(0xFFF2A000),
      800: Color(0xFFFF8E5E), // 渐变颜色
      900: Color(0xFF92400E),
    },
  );

  // 次要颜色
  static const int _secondaryColor = 0xFF100A05;
  static const MaterialColor secondaryColor = MaterialColor(
    _secondaryColor,
    <int, Color>{
      50: Color(0x4B100A05), // 边框样式
      100: Color(0x99100A05), // 边框颜色
      200: Color(0xA424160B), // 更浅的边框
      300: Color(0x2624160B), // 边框
      400: Color(0x40100A05), // 使用
      500: Color(_secondaryColor), // 主色
      600: Color(0xFF24160B),
      700: Color(0x2524160B),
      800: Color(0xA524160B),
      900: Color(0xFF080501),
    },
  );

  // 绿色
  static const int _greenColor = 0xFF20A939;
  static const MaterialColor greenColor = MaterialColor(
    _greenColor,
    <int, Color>{
      50: Color(0xFFE0F2E9),
      100: Color(0xFFB3DFC8),
      200: Color(0xFF80CBA4),
      300: Color(0xFF4DB680),
      400: Color(0xFF26A65A),
      500: Color(_greenColor), // 主色
      600: Color(0xFF1D9B33),
      700: Color(0xFF198F2C),
      800: Color(0xFF148324),
      900: Color(0xFF0C7117),
    },
  );

  // 红色
  static const int _errorColor = 0xFFE50028;
  static const MaterialColor errorColor = MaterialColor(
    _errorColor,
    <int, Color>{
      50: Color(0xFFFFE5E8),
      100: Color(0xFFE50028),
      200: Color.fromRGBO(229, 0, 40, 0.2),
      300: Color(0xFFFF5C6D),
      400: Color(0xFFFF384E),
      500: Color(_errorColor), // 主色
      600: Color(0xFFD50025),
      700: Color(0xFFBE001F),
      800: Color(0xFFA8001A),
      900: Color(0x33FE3333), // 背景图
    },
  );

  // 灰色
  static const int _greyColor = 0xFF9E9E9E;
  static const MaterialColor greyColor = MaterialColor(
    _greyColor,
    <int, Color>{
      50: Color(0xFFDFE3E8), // 边框颜色
      100: Color(0xFFF3F5F6), // 更浅颜色
      200: Color(0xFFF5F7FA), // 边框颜色
      300: Color(0xFFE8E9EA), // 背景颜色
      350: Color(0xFFD6D6D6),
      400: Color(0xFFBDBDBD),
      500: Color(_greyColor), // 灰色
      600: Color(0xFF757575),
      700: Color(0xFF616161),
      800: Color(0x4C999999), // 备注
      850: Color(0xFF303030),
      900: Color(0xFF212121),
    },
  );

  // RGBO颜色
  // 弹窗、抽屉、刷新等等的背景颜色
  static const Color rgbBgColor = Color.fromRGBO(16, 10, 5, 0.70);

  static TextStyle getGoogleFontTextStyle(String currentLanguage) {
    switch (currentLanguage) {
      case 'en':
        return GoogleFonts.notoSans(fontWeight: kIsWeb ? FontWeight.w500 : FontWeight.w400);
      case 'zh':
        return GoogleFonts.notoSansSc(fontWeight: kIsWeb ? FontWeight.w500 : FontWeight.w400);
      case 'zhtw':
        return GoogleFonts.notoSansTc(fontWeight: kIsWeb ? FontWeight.w500 : FontWeight.w400);
      case 'th':
        return GoogleFonts.notoSansThai(fontWeight: kIsWeb ? FontWeight.w500 : FontWeight.w400);
      case 'ja':
        return GoogleFonts.notoSansJp(fontWeight: kIsWeb ? FontWeight.w500 : FontWeight.w400);
      case 'ko':
        return GoogleFonts.notoSansKr(fontWeight: kIsWeb ? FontWeight.w500 : FontWeight.w400);
      case 'my':
        return GoogleFonts.notoSansMyanmar(fontWeight: kIsWeb ? FontWeight.w500 : FontWeight.w400);
      case 'tr':
        return GoogleFonts.notoSans(fontWeight: kIsWeb ? FontWeight.w500 : FontWeight.w400);
      case 'de':
        return GoogleFonts.notoSans(fontWeight: kIsWeb ? FontWeight.w500 : FontWeight.w400);
      default:
        return GoogleFonts.notoSans(fontWeight: kIsWeb ? FontWeight.w500 : FontWeight.w400);
    }
  }

  static TextTheme getGoogleFontTextTheme(String currentLanguage, {bool? isDark = false}) {
    final textTheme = isDark == true
        ? ThemeData.dark().textTheme.copyWith(
              displayLarge: TextStyle(color: secondaryColor, fontWeight: kIsWeb ? FontWeight.w500 : FontWeight.w400),
              displayMedium: TextStyle(color: secondaryColor, fontWeight: kIsWeb ? FontWeight.w500 : FontWeight.w400),
              displaySmall: TextStyle(color: secondaryColor, fontWeight: kIsWeb ? FontWeight.w500 : FontWeight.w400),
              headlineLarge: TextStyle(color: secondaryColor, fontWeight: kIsWeb ? FontWeight.w500 : FontWeight.w400),
              headlineMedium: TextStyle(color: secondaryColor, fontWeight: kIsWeb ? FontWeight.w500 : FontWeight.w400),
              headlineSmall: TextStyle(color: secondaryColor, fontWeight: kIsWeb ? FontWeight.w500 : FontWeight.w400),
              titleLarge: TextStyle(color: secondaryColor, fontWeight: kIsWeb ? FontWeight.w500 : FontWeight.w400),
              titleMedium: TextStyle(color: secondaryColor, fontWeight: kIsWeb ? FontWeight.w500 : FontWeight.w400),
              titleSmall: TextStyle(color: secondaryColor, fontWeight: kIsWeb ? FontWeight.w500 : FontWeight.w400),
              bodyLarge: TextStyle(color: secondaryColor, fontWeight: kIsWeb ? FontWeight.w500 : FontWeight.w400),
              bodyMedium: TextStyle(color: secondaryColor, fontWeight: kIsWeb ? FontWeight.w500 : FontWeight.w400),
              bodySmall: TextStyle(color: secondaryColor, fontWeight: kIsWeb ? FontWeight.w500 : FontWeight.w400),
              labelLarge: TextStyle(color: secondaryColor, fontWeight: kIsWeb ? FontWeight.w500 : FontWeight.w400),
              labelMedium: TextStyle(color: secondaryColor, fontWeight: kIsWeb ? FontWeight.w500 : FontWeight.w400),
              labelSmall: TextStyle(color: secondaryColor, fontWeight: kIsWeb ? FontWeight.w500 : FontWeight.w400),
            )
        : ThemeData.light().textTheme.copyWith(
              displayLarge: TextStyle(color: secondaryColor, fontWeight: kIsWeb ? FontWeight.w500 : FontWeight.w400),
              displayMedium: TextStyle(color: secondaryColor, fontWeight: kIsWeb ? FontWeight.w500 : FontWeight.w400),
              displaySmall: TextStyle(color: secondaryColor, fontWeight: kIsWeb ? FontWeight.w500 : FontWeight.w400),
              headlineLarge: TextStyle(color: secondaryColor, fontWeight: kIsWeb ? FontWeight.w500 : FontWeight.w400),
              headlineMedium: TextStyle(color: secondaryColor, fontWeight: kIsWeb ? FontWeight.w500 : FontWeight.w400),
              headlineSmall: TextStyle(color: secondaryColor, fontWeight: kIsWeb ? FontWeight.w500 : FontWeight.w400),
              titleLarge: TextStyle(color: secondaryColor, fontWeight: kIsWeb ? FontWeight.w500 : FontWeight.w400),
              titleMedium: TextStyle(color: secondaryColor, fontWeight: kIsWeb ? FontWeight.w500 : FontWeight.w400),
              titleSmall: TextStyle(color: secondaryColor, fontWeight: kIsWeb ? FontWeight.w500 : FontWeight.w400),
              bodyLarge: TextStyle(color: secondaryColor, fontWeight: kIsWeb ? FontWeight.w500 : FontWeight.w400),
              bodyMedium: TextStyle(color: secondaryColor, fontWeight: kIsWeb ? FontWeight.w500 : FontWeight.w400),
              bodySmall: TextStyle(color: secondaryColor, fontWeight: kIsWeb ? FontWeight.w500 : FontWeight.w400),
              labelLarge: TextStyle(color: secondaryColor, fontWeight: kIsWeb ? FontWeight.w500 : FontWeight.w400),
              labelMedium: TextStyle(color: secondaryColor, fontWeight: kIsWeb ? FontWeight.w500 : FontWeight.w400),
              labelSmall: TextStyle(color: secondaryColor, fontWeight: kIsWeb ? FontWeight.w500 : FontWeight.w400),
            );

    switch (currentLanguage) {
      case 'en':
        return GoogleFonts.notoSansTextTheme(textTheme);
      case 'zh':
        return GoogleFonts.notoSansScTextTheme(textTheme);
      case 'zhtw':
        return GoogleFonts.notoSansTcTextTheme(textTheme);
      case 'th':
        return GoogleFonts.notoSansThaiTextTheme(textTheme);
      case 'ja':
        return GoogleFonts.notoSansJpTextTheme(textTheme);
      case 'ko':
        return GoogleFonts.notoSansKrTextTheme(textTheme);
      case 'my':
        return GoogleFonts.notoSansMyanmarTextTheme(textTheme);
      case 'tr':
        return GoogleFonts.notoSansTextTheme(textTheme);
      case 'de':
        return GoogleFonts.notoSansTextTheme(textTheme);
      default:
        return GoogleFonts.notoSansTextTheme(textTheme);
    }
  }

  static ThemeData getThemeData({
    bool? isDark = false,
    String currentLanguage = 'en',
    TextStyle? textStyle,
    bool allowRuntimeFetching = true,
  }) {
    GoogleFonts.config.allowRuntimeFetching = allowRuntimeFetching;

    textStyle ??= getGoogleFontTextStyle(currentLanguage);
    final textTheme = getGoogleFontTextTheme(currentLanguage, isDark: isDark);

    return ThemeData(
      primaryColor: primaryColor,
      brightness: isDark == true ? Brightness.dark : Brightness.light,
      highlightColor: primaryColor.shade50,
      splashColor: primaryColor.shade50,
      hoverColor: primaryColor.shade50,
      focusColor: primaryColor.shade50,
      colorScheme: isDark == true
          ? ThemeData.dark().colorScheme.copyWith(
                primary: primaryColor,
                secondary: secondaryColor,
                tertiary: greenColor,
                error: errorColor,
                surface: Colors.white,
              )
          : ThemeData.light().colorScheme.copyWith(
                primary: primaryColor,
                secondary: secondaryColor,
                tertiary: greenColor,
                error: errorColor,
                surface: Colors.white,
              ),
      fontFamily: textStyle.fontFamily,
      fontFamilyFallback: textStyle.fontFamilyFallback,
      textTheme: textTheme,
      primaryTextTheme: textTheme,
      primarySwatch: primaryColor,
      // primaryColorDark: primaryColor,
      // primaryColorLight: primaryColor,
      scaffoldBackgroundColor: isDark == true ? Colors.grey[800] : Colors.grey[50],
      toggleButtonsTheme: ToggleButtonsThemeData(
        color: primaryColor,
        selectedColor: primaryColor,
        fillColor: primaryColor,
      ),
      canvasColor: isDark == true ? Colors.black : Colors.white,
      tabBarTheme: TabBarTheme(
        indicator: const BoxDecoration(
          border: Border(bottom: BorderSide(color: primaryColor, width: 2.0)),
        ),
        labelStyle: textTheme.labelLarge?.copyWith(
          fontWeight: FontWeight.w700,
        ),
        labelColor: primaryColor,
        unselectedLabelStyle: textTheme.labelLarge,
        unselectedLabelColor:
            isDark == true ? ThemeData.dark().unselectedWidgetColor : ThemeData.light().unselectedWidgetColor,
      ),
      appBarTheme: AppBarTheme(
        systemOverlayStyle: isDark == true ? SystemUiOverlayStyle.dark : SystemUiOverlayStyle.light,
        backgroundColor: isDark == true
            ? ThemeData.dark().appBarTheme.backgroundColor
            : ThemeData.light().appBarTheme.backgroundColor,
        toolbarTextStyle: isDark == true
            ? ThemeData.dark().appBarTheme.toolbarTextStyle?.merge(textTheme.labelLarge)
            : ThemeData.light().appBarTheme.toolbarTextStyle?.merge(textTheme.labelLarge),
      ),
    );
  }
}

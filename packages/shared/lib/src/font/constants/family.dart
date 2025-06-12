library shared_font_family;

/// 支持的字体家族枚举
///
/// [SupportedFontFamily] 定义了应用程序支持的所有字体家族。
/// 目前包括：
/// - notoSans - Noto Sans 字体家族
///
/// 每个枚举值都有一个对应的字符串值，用于在文件路径或其他地方表示该字体家族。

enum SupportedFontFamily {
  notoSans('noto_sans');

  final String value;
  const SupportedFontFamily(this.value);
}

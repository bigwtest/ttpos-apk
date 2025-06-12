library shared_font_style;

/// 支持的字体样式枚举
///
/// [SupportedFontStyle] 定义了应用程序支持的所有字体样式。
/// 目前包括：
/// - regular - 常规字体样式
/// - italic - 斜体字体样式
/// - bold - 粗体字体样式
/// - boldItalic - 粗斜体字体样式

enum SupportedFontStyle {
  regular('Regular'),
  italic('Italic'),
  bold('Bold'),
  boldItalic('BoldItalic');

  final String value;
  const SupportedFontStyle(this.value);
}

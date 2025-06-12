library shared_font_font;

/// 支持的字体枚举
///
/// [SupportedFont] 定义了应用程序支持的所有字体。
/// 目前包括：
/// - notoSans - Noto Sans 字体
/// - notoSansJP - Noto Sans JP 字体
/// - notoSansKR - Noto Sans KR 字体
/// - notoSansMy - Noto Sans Myanmar 字体
/// - notoSansTh - Noto Sans Thai 字体
/// - notoSansTr - Noto Sans Turkish 字体
/// - notoSansZh - Noto Sans SC 字体
/// - notoSansZhTW - Noto Sans TC 字体

enum SupportedFont {
  notoSans('NotoSans'),
  notoSansJP('NotoSansJP'),
  notoSansKR('NotoSansKR'),
  notoSansMy('NotoSansMyanmar'),
  notoSansTh('NotoSansThai'),
  notoSansTr('NotoSans'),
  notoSansZh('NotoSansSC'),
  notoSansZhTW('NotoSansTC');

  final String value;
  const SupportedFont(this.value);
}

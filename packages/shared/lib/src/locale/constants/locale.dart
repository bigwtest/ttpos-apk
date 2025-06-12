library shared_locale_locale;

/// 支持的语言环境枚举
///
/// [SupportedLocale] 定义了应用程序支持的所有语言环境。
/// 包括：
/// - zh - 简体中文
/// - en - 英语
/// - ja - 日语
/// - kr - 韩语
/// - th - 泰语
/// - my - 缅甸语
/// - tr - 土耳其语
/// - zhTW - 繁体中文（台湾）

enum SupportedLocale {
  zh('zh'),
  en('en'),
  jp('jp'),
  kr('kr'),
  th('th'),
  my('my'),
  tr('tr'),
  zhTW('zhTW');

  final String code;
  const SupportedLocale(this.code);

  static SupportedLocale safeValueOf(
    String code, {
    SupportedLocale fallback = SupportedLocale.en,
  }) {
    try {
      return SupportedLocale.values.byName(code);
    } catch (e) {
      return fallback;
    }
  }
}

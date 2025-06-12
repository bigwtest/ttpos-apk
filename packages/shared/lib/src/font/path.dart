library shared_font_path;

// Project imports:
import '../locale/constants/locale.dart';
import './constants/family.dart';
import './constants/font.dart';
import './constants/style.dart';

String getFontPath({
  SupportedLocale locale = SupportedLocale.en,
  SupportedFontFamily family = SupportedFontFamily.notoSans,
  SupportedFont? font,
  SupportedFontStyle style = SupportedFontStyle.regular,
}) {
  switch (family) {
    case SupportedFontFamily.notoSans:
      {
        switch (locale) {
          case SupportedLocale.en:
            font ??= SupportedFont.notoSans;
            break;
          case SupportedLocale.jp:
            font ??= SupportedFont.notoSansJP;
            break;
          case SupportedLocale.kr:
            font ??= SupportedFont.notoSansKR;
            break;
          case SupportedLocale.my:
            font ??= SupportedFont.notoSansMy;
            break;
          case SupportedLocale.th:
            font ??= SupportedFont.notoSansTh;
            break;
          case SupportedLocale.tr:
            font ??= SupportedFont.notoSansTr;
            break;
          case SupportedLocale.zh:
            font ??= SupportedFont.notoSansZh;
            break;
          case SupportedLocale.zhTW:
            font ??= SupportedFont.notoSansZhTW;
            break;
        }

        // FIXME: 目前只支持 noto sans 的斜体和粗斜体， 其他字体不支持
        if (font.value != SupportedFont.notoSans.value) {
          style = style == SupportedFontStyle.boldItalic
              ? SupportedFontStyle.bold
              : style == SupportedFontStyle.italic
                  ? SupportedFontStyle.regular
                  : style;
        }
      }
      break;
  }

  return 'assets/fonts/${family.value}/${locale.code}/${font.value}-${style.value}.ttf';
}

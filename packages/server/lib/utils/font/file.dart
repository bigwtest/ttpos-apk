// Dart imports:
import 'dart:typed_data';

// Project imports:
import 'package:server/utils/loader/file.dart' show FileLoader;
import 'package:ttpos_shared/shared.dart' as shared
    show SupportedFont, SupportedFontFamily, SupportedFontStyle, SupportedLocale, getFontPath;

Future<ByteData> getFontFile({
  shared.SupportedLocale locale = shared.SupportedLocale.en,
  shared.SupportedFontFamily family = shared.SupportedFontFamily.notoSans,
  shared.SupportedFont? font,
  shared.SupportedFontStyle style = shared.SupportedFontStyle.regular,
}) async {
  final fontPath = shared.getFontPath(
    locale: locale,
    family: family,
    font: font,
    style: style,
  );

  return await FileLoader().loadFileAsByteData(fontPath);
}

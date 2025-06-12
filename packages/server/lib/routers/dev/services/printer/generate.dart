// Dart imports:
import 'dart:typed_data';

// Package imports:
import 'package:logging/logging.dart' as logging;
import 'package:pdfx/pdfx.dart' as pdfx;
// Project imports:
import 'package:server/routers/common/services/base.dart';
import 'package:server/utils/loader/file.dart';
import 'package:ttpos_shared/shared.dart' as shared
    show PrinterTemplateName, SupportedLocale, SupportedFont, SupportedFontFamily, PrinterGenerator;

class DevPrinterGenerateService extends BaseService {
  @override
  logging.Logger get log => logging.Logger('Dev Printer Generate Service');

  Future<Uint8List?> generate({
    shared.PrinterTemplateName name = shared.PrinterTemplateName.test,
    shared.SupportedLocale locale = shared.SupportedLocale.en,
    shared.SupportedFontFamily family = shared.SupportedFontFamily.notoSans,
    shared.SupportedFont? font,
  }) async {
    try {
      Uint8List pdfBytes = await shared.PrinterGenerator.getTemplate(name).generate(
        theme: await shared.PrinterGenerator.getPdfThemeData(
          loader: FileLoader(),
          locale: locale,
          family: family,
          font: font,
        ),
      );

      if (pdfBytes.isEmpty) {
        throw Exception('Failed to generate PDF');
      }

      return pdfBytes;
    } catch (error, stackTrace) {
      log.severe('DevPrinterGenerateService, generate error:', error, stackTrace);
      return null;
    }
  }

  Future<Uint8List?> convert2Image(
    Uint8List data, {
    int pageNumber = 1,
  }) async {
    try {
      final document = await pdfx.PdfDocument.openData(Future.value(data));
      final page = await document.getPage(pageNumber);
      final pageImage = await page.render(
        width: page.width,
        height: page.height,
        format: pdfx.PdfPageImageFormat.webp,
        backgroundColor: '#FFFFFF',
        forPrint: true,
        quality: 100,
      );

      if (pageImage == null) {
        throw Exception('Failed to generate image');
      }

      final croppedImage = await shared.PrinterGenerator.cropImage(pageImage.bytes);
      if (croppedImage == null) {
        throw Exception('Failed to crop image');
      }

      try {
        await page.close();
        await document.close();
      } catch (error, stackTrace) {
        log.severe('DevPrinterGenerateService, convert2Image error:', error, stackTrace);
      }

      return croppedImage;
    } catch (error, stackTrace) {
      log.severe('DevPrinterGenerateService, convert2Image error:', error, stackTrace);
      return null;
    }
  }
}

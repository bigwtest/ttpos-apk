library shared_printer_generator;

// Dart imports:
import 'dart:typed_data';

// Package imports:
import 'package:image/image.dart' as img;
import 'package:pdf/widgets.dart' as pw;

// Project imports:
import '../font/constants/family.dart';
import '../font/constants/font.dart';
import '../font/constants/style.dart';
import '../font/path.dart';
import '../loader/file.dart';
import '../locale/constants/locale.dart';
import './constants/name.dart';
import './templates/base.dart';

import './templates/index.dart'
    show
        ReceiptPrinterTemplate1,
        ReceiptPrinterTemplate2,
        ReceiptPrinterTemplate3,
        PrebillPrinterTemplate1,
        PrebillPrinterTemplate2,
        PrebillPrinterTemplate3,
        OrderPrinterTemplate1,
        OrderPrinterTemplate2,
        InvoicePrinterTemplate1,
        InvoicePrinterTemplate2,
        TestPrinterTemplate,
        HandoverPrinterTemplate1,
        HandoverPrinterTemplate2,
        OperaPrinterTemplate,
        OneOrderPrinterTemplate1,
        OneOrderPrinterTemplate2;

class PrinterGenerator {
  static BasePrinterTemplate getTemplate(PrinterTemplateName name) {
    switch (name) {
      case PrinterTemplateName.test:
        return TestPrinterTemplate();
      case PrinterTemplateName.receipt1:
        return ReceiptPrinterTemplate1();
      case PrinterTemplateName.receipt2:
        return ReceiptPrinterTemplate2();
      case PrinterTemplateName.receipt3:
        return ReceiptPrinterTemplate3();
      case PrinterTemplateName.prebill1:
        return PrebillPrinterTemplate1();
      case PrinterTemplateName.prebill2:
        return PrebillPrinterTemplate2();
      case PrinterTemplateName.prebill3:
        return PrebillPrinterTemplate3();
      case PrinterTemplateName.order1:
        return OrderPrinterTemplate1();
      case PrinterTemplateName.order2:
        return OrderPrinterTemplate2();
      case PrinterTemplateName.invoice1:
        return InvoicePrinterTemplate1();
      case PrinterTemplateName.invoice2:
        return InvoicePrinterTemplate2();
      case PrinterTemplateName.handover1:
        return HandoverPrinterTemplate1();
      case PrinterTemplateName.handover2:
        return HandoverPrinterTemplate2();
      case PrinterTemplateName.opera:
        return OperaPrinterTemplate();
      case PrinterTemplateName.oneorder1:
        return OneOrderPrinterTemplate1();
      case PrinterTemplateName.oneorder2:
        return OneOrderPrinterTemplate2();
    }
  }

  static Future<Uint8List?> generate({
    required PrinterTemplateName name,
    pw.ThemeData? theme,
  }) async {
    final template = getTemplate(name);
    return template.generate(theme: theme);
  }

  static Future<Uint8List?> cropImage(
    Uint8List data,
  ) async {
    final cmd = img.Command()
      ..decodeWebP(data)
      ..grayscale();
    await cmd.executeThread();

    // FIXME: 生成图片的这一步是性能瓶颈
    final image = await cmd.getImageThread();

    if (image == null) {
      return null;
    }

    img.Pixel? targetPixel;

    for (int y = image.height - 1; y >= 0; y--) {
      final pixel = image.getPixel(20, y);
      if (pixel.a != 255 ||
          pixel.r != 255 ||
          pixel.g != 255 ||
          pixel.b != 255) {
        targetPixel = pixel;
        break;
      }
      if (targetPixel != null) {
        break;
      }
    }

    if (targetPixel == null) {
      print('targetPixel is null');
      return data;
    }

    final croppedImage = img.copyCrop(
      image,
      x: 0,
      y: 0,
      width: image.width,
      height: targetPixel.y - 2,
    );

    // TODO: 生成JPG仅是为了显示，传输给云打印机是要转换成BMP的
    return img.encodeJpg(croppedImage, quality: 90);
  }

  static Future<pw.ThemeData> getPdfThemeData({
    required FileLoader loader,
    SupportedLocale locale = SupportedLocale.en,
    SupportedFontFamily family = SupportedFontFamily.notoSans,
    SupportedFont? font,
  }) async {
    return pw.ThemeData.withFont(
      base: pw.Font.ttf(
        await loader.loadFileAsByteData(
          getFontPath(
            locale: locale,
            family: family,
            font: font,
            style: SupportedFontStyle.regular,
          ),
        ),
      ),
      bold: pw.Font.ttf(
        await loader.loadFileAsByteData(
          getFontPath(
            locale: locale,
            family: family,
            font: font,
            style: SupportedFontStyle.bold,
          ),
        ),
      ),
      italic: pw.Font.ttf(
        await loader.loadFileAsByteData(
          getFontPath(
            locale: locale,
            family: family,
            font: font,
            style: SupportedFontStyle.italic,
          ),
        ),
      ),
      boldItalic: pw.Font.ttf(
        await loader.loadFileAsByteData(
          getFontPath(
            locale: locale,
            family: family,
            font: font,
            style: SupportedFontStyle.boldItalic,
          ),
        ),
      ),
    );
  }
}

library shared_printer_templates_base;

// Dart imports:
import 'dart:typed_data';

// Package imports:
import 'package:pdf/widgets.dart' as pw;

// Project imports:
import '../constants/name.dart';

abstract class BasePrinterTemplate {
  PrinterTemplateName get name;

  final pw.ThemeData defaultTheme = pw.ThemeData.withFont();

  Future<Uint8List> generate({pw.ThemeData? theme});

  Future<Uint8List> generatePdf({pw.ThemeData? theme});

  pw.Widget cropLine(
    pw.Context context, {
    pw.EdgeInsetsGeometry padding = const pw.EdgeInsets.only(top: 16),
  }) =>
      pw.Padding(
        padding: padding,
        child: pw.Divider(
          height: 1,
          borderStyle: pw.BorderStyle.solid,
        ),
      );
}

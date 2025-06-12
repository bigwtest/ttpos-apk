library shared_printer_templates_test;

// Dart imports:
import 'dart:typed_data';

// Package imports:
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;

// Project imports:
import '../constants/name.dart';
import './base.dart';

class TestPrinterTemplate extends BasePrinterTemplate {
  @override
  PrinterTemplateName get name => PrinterTemplateName.test;

  @override
  Future<Uint8List> generate({
    pw.ThemeData? theme,
  }) async =>
      await generatePdf(theme: theme);

  @override
  Future<Uint8List> generatePdf({
    pw.ThemeData? theme,
  }) async {
    theme ??= defaultTheme;

    final pdf = pw.Document(theme: theme);

    final page = pw.Page(
      pageFormat: const PdfPageFormat(300, 800, marginAll: 30),
      build: (pw.Context context) {
        return pw.Center(
          child: pw.Text(
            'မင်္ဂလာပါကမ်းကြော်',
            style: pw.TextStyle(
              fontSize: 14.0,
              fontWeight: pw.FontWeight.bold,
              fontStyle: pw.FontStyle.italic,
            ),
          ),
        );
      },
    );

    pdf.addPage(page);

    return await pdf.save();
  }
}

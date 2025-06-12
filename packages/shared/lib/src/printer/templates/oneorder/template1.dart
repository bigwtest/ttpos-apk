library shared_printer_templates_oneorder_template1;

// Dart imports:
import 'dart:typed_data';

// Package imports:
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;

// Project imports:
import '../../components/index.dart' show spacer, text, cell;
import '../../constants/name.dart';
import '../base.dart';

class OneOrderPrinterTemplate1 extends BasePrinterTemplate {
  @override
  PrinterTemplateName get name => PrinterTemplateName.oneorder1;

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

    pdf.addPage(
      pw.MultiPage(
        pageTheme: pw.PageTheme(
          pageFormat: const PdfPageFormat(
            300,
            300,
            marginAll: 16,
          ),
        ),
        build: (pw.Context context) {
          return <pw.Widget>[
            _baseInfo(context),
            cropLine(context),
          ];
        },
      ),
    );

    return await pdf.save();
  }
}

pw.Widget _baseInfo(pw.Context context) => pw.Column(
      mainAxisAlignment: pw.MainAxisAlignment.start,
      crossAxisAlignment: pw.CrossAxisAlignment.start,
      children: [
        text(
          context,
          'Table: A01 (4 People)',
          textStyle: pw.TextStyle(
            fontSize: 20.0,
            fontWeight: pw.FontWeight.bold,
          ),
        ),
        text(
          context,
          '2023/12/15 14:00:21',
          textStyle: pw.TextStyle(
            fontSize: 14.0,
          ),
        ),
        spacer(context, height: 8),
        cell(
          context,
          labelText: 'Product Name Product Name (Less ice, add pearls)',
          labelStyle: pw.TextStyle(
            fontSize: 14.0,
          ),
          valueText: 'x1',
          valueStyle: pw.TextStyle(
            fontSize: 14.0,
          ),
          valueConstraints: pw.BoxConstraints(
            minWidth: 80,
          ),
        ),
        spacer(context),
        text(
          context,
          'This is a note, this is a note, this is a note',
        ),
      ],
    );

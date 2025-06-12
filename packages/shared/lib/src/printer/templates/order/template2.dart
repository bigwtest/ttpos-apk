library shared_printer_templates_order_template2;

// Dart imports:
import 'dart:typed_data';

// Package imports:
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;

// Project imports:
import '../../components/index.dart' show spacer, text, cell, mockOrderTable;
import '../../constants/name.dart';
import '../base.dart';

class OrderPrinterTemplate2 extends BasePrinterTemplate {
  @override
  PrinterTemplateName get name => PrinterTemplateName.order2;

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
            5000,
            marginAll: 16,
          ),
        ),
        build: (pw.Context context) {
          return <pw.Widget>[
            _baseInfo(context),
            mockOrderTable(context),
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
      crossAxisAlignment: pw.CrossAxisAlignment.center,
      children: [
        pw.Align(
          alignment: pw.Alignment.center,
          child: text(
            context,
            'Table Number',
            textStyle: pw.TextStyle(
              fontSize: 20.0,
              fontWeight: pw.FontWeight.bold,
            ),
            margin: pw.EdgeInsets.symmetric(vertical: 16),
          ),
        ),
        cell(
          context,
          labelText: 'Order ID',
          valueText: '202401253695842530',
        ),
        cell(
          context,
          labelText: 'Time',
          valueText: '2023/12/15 14:00:21',
        ),
        spacer(context, height: 16),
      ],
    );

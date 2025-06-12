library shared_printer_templates_invoice_template1;

// Dart imports:
import 'dart:typed_data';

// Package imports:
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;

// Project imports:
import '../../constants/name.dart';
import '../base.dart';

import '../../components/index.dart' show divider, text, cell, TextWrapper, footer;

class InvoicePrinterTemplate1 extends BasePrinterTemplate {
  @override
  PrinterTemplateName get name => PrinterTemplateName.invoice1;

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
            _total(context),
            _vat(context),
            _details(context),
            footer(
              context,
              'Thank you for your visit! Powered by abc shop',
            ),
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
        text(
          context,
          'Store Name',
          textStyle: pw.TextStyle(
            fontSize: 14.0,
          ),
        ),
        text(
          context,
          'Thank you very much for coming today and we look forward to seeing you again soon.',
        ),
        text(
          context,
          'Invoice',
          textStyle: pw.TextStyle(
            fontSize: 20.0,
            fontWeight: pw.FontWeight.bold,
          ),
          wrapper: TextWrapper.container,
          margin: pw.EdgeInsets.symmetric(vertical: 8),
        ),
        text(
          context,
          '2024/01/01 12:00:00',
        ),
        divider(context),
      ],
    );

pw.Widget _total(pw.Context context) => pw.Column(
      children: [
        cell(
          context,
          labelText: 'Total Amount',
          labelStyle: pw.TextStyle(
            fontSize: 14.0,
            fontWeight: pw.FontWeight.bold,
          ),
          valueText: '\$ 100.00',
          valueStyle: pw.TextStyle(
            fontSize: 14.0,
            fontWeight: pw.FontWeight.bold,
          ),
        ),
        cell(
          context,
          labelText: 'Service charge',
          valueText: '\$ 100.00',
        ),
        cell(
          context,
          labelText: 'Including VAT',
          valueText: '\$ 100.00',
        ),
        divider(context),
      ],
    );

pw.Widget _vat(pw.Context context) => pw.Column(
      children: [
        cell(
          context,
          labelText: 'The above amount will be charged as catering fee only.',
          valueText: ' ',
        ),
        cell(
          context,
          labelText: ' ',
          valueText: 'Total (including VAT)',
        ),
        cell(
          context,
          labelText: 'VAT (10%)',
          valueText: '\$ 100.00 (\$ 10.00)',
        ),
        cell(
          context,
          labelText: 'VAT (8%)',
          valueText: '\$ 100.00 (\$ 10.00)',
        ),
        cell(
          context,
          labelText: 'Not including refund amount \$ 3.00',
          valueText: ' ',
        ),
        cell(
          context,
          labelText: 'Cash',
          labelStyle: pw.TextStyle(
            fontSize: 14.0,
            fontWeight: pw.FontWeight.bold,
          ),
          valueText: '\$ 100.00',
          valueStyle: pw.TextStyle(
            fontSize: 14.0,
            fontWeight: pw.FontWeight.bold,
          ),
        ),
        divider(context),
      ],
    );

pw.Widget _details(pw.Context context) => pw.Column(
      crossAxisAlignment: pw.CrossAxisAlignment.start,
      children: [
        text(
          context,
          'Cashier: Joe',
        ),
        text(
          context,
          'Order Number: 1234567890',
        ),
        text(
          context,
          'Print times: 1',
        ),
        text(
          context,
          'Company Name: abc shop abc shop abc shop abc shop abc shop',
        ),
        text(
          context,
          'Company Address: 1234 Main St, Anytown, USA',
        ),
        text(
          context,
          'Company Tax Number: 25235999128812',
        ),
        text(
          context,
          'Company Tel: 02-25-235999',
        ),
        text(
          context,
          '*Storage precautions',
        ),
        text(
          context,
          'Please store the invoice in a safe place for future reference.',
        ),
        divider(context),
      ],
    );

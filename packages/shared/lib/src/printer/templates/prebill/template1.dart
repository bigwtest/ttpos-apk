library shared_printer_templates_prebill_template1;

// Dart imports:
import 'dart:typed_data';

// Package imports:
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;

// Project imports:
import '../../constants/name.dart';
import '../base.dart';

import '../../components/index.dart' show divider, spacer, text, cell, footer, mockCommodityTable, TextWrapper;

class PrebillPrinterTemplate1 extends BasePrinterTemplate {
  @override
  PrinterTemplateName get name => PrinterTemplateName.prebill1;

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
            2000,
            marginAll: 16,
          ),
        ),
        build: (pw.Context context) {
          return <pw.Widget>[
            _baseInfo(context),
            mockCommodityTable(context),
            _total(context),
            _vat(context),
            // _payment(context),
            // _member(context),
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
        pw.Align(
          alignment: pw.Alignment.centerLeft,
          child: text(
            context,
            'Pre-bill',
            textStyle: pw.TextStyle(
              fontSize: 14.0,
            ),
          ),
        ),
        text(
          context,
          'Store Name',
          textStyle: pw.TextStyle(
            fontSize: 20.0,
            fontWeight: pw.FontWeight.bold,
          ),
          wrapper: TextWrapper.container,
          margin: pw.EdgeInsets.symmetric(vertical: 8),
        ),
        pw.Align(
          alignment: pw.Alignment.centerLeft,
          child: text(
            context,
            'Table: A01 (4 People)',
            textStyle: pw.TextStyle(
              fontWeight: pw.FontWeight.bold,
            ),
          ),
        ),
        spacer(context, height: 8),
        cell(
          context,
          labelText: 'Order ID',
          valueText: '202401253695842530',
        ),
        cell(
          context,
          labelText: 'Cashier',
          valueText: 'John Doe',
        ),
        // cell(
        //   context,
        //   labelText: 'Time',
        //   valueText: '2023/12/15 14:00:21',
        // ),
        spacer(context, height: 16),
      ],
    );

pw.Widget _total(pw.Context context) => pw.Column(
      crossAxisAlignment: pw.CrossAxisAlignment.end,
      children: [
        text(
          context,
          'Items: ${'14'.padLeft(12)}',
        ),
        text(
          context,
          'The amount of items: ${'\$ 4100.00'.padLeft(12)}',
        ),
        text(
          context,
          'Service charge: ${'\$ 50.00'.padLeft(12)}',
        ),
        text(
          context,
          'Discount: ${'\$ 50.00'.padLeft(12)}',
        ),
        text(
          context,
          'Member discount: ${'\$ 50.00'.padLeft(12)}',
        ),
        // text(
        //   context,
        //   'Refund amount: ${'\$ 3.00'.padLeft(12)}',
        // ),
        // text(
        //   context,
        //   'Pay Service charge: ${'\$ 50.00'.padLeft(12)}',
        // ),
        cell(
          context,
          labelText: 'Total received',
          labelStyle: pw.TextStyle(
            fontSize: 14.0,
            fontWeight: pw.FontWeight.bold,
          ),
          valueText: '\$ 1000.00',
          valueStyle: pw.TextStyle(
            fontSize: 14.0,
            fontWeight: pw.FontWeight.bold,
          ),
        ),
        divider(context),
      ],
    );

pw.Widget _vat(pw.Context context) => pw.Column(
      children: [
        pw.Align(
          alignment: pw.Alignment.centerRight,
          child: text(
            context,
            'Total (incl. VAT)',
          ),
        ),
        cell(
          context,
          labelText: 'VAT (10%)',
          valueText: '\$ 1000.00 (\$ 10.00)',
        ),
        cell(
          context,
          labelText: 'VAT (8%)',
          valueText: '\$ 998.00 (\$ 9.80)',
        ),
        divider(context),
      ],
    );

// pw.Widget _payment(pw.Context context) => pw.Column(
//       children: [
//         cell(
//           context,
//           labelText: 'Payment',
//           valueText: 'WeChat Pay',
//         ),
//         cell(
//           context,
//           labelText: 'Amount actually received',
//           valueText: '\$ 1000.00',
//         ),
//         divider(context),
//       ],
//     );

// pw.Widget _member(pw.Context context) => pw.Column(
//       children: [
//         cell(
//           context,
//           labelText: 'Member remaining balance',
//           valueText: '\$ 1000.00',
//         ),
//         cell(
//           context,
//           labelText: 'Points remaining',
//           valueText: '400',
//         ),
//         divider(context),
//       ],
//     );

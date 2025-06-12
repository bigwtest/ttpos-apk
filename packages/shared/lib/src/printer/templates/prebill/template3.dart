library shared_printer_templates_prebill_template3;

// Dart imports:
import 'dart:typed_data';

// Package imports:
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;

// Project imports:
import '../../constants/name.dart';
import '../base.dart';

import '../../components/index.dart' show divider, text, cell, footer, mockCommodityTable, TextWrapper;

class PrebillPrinterTemplate3 extends BasePrinterTemplate {
  @override
  PrinterTemplateName get name => PrinterTemplateName.prebill3;

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
            mockCommodityTable(context, false),
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
      mainAxisAlignment: pw.MainAxisAlignment.center,
      crossAxisAlignment: pw.CrossAxisAlignment.center,
      children: [
        text(
          context,
          'Store Name',
          fontSize: 14.0,
          isCenter: true,
        ),
        text(
          context,
          'Pre-bill',
          fontSize: 20.0,
          isCenter: true,
          isBold: true,
          wrapper: TextWrapper.container,
          padding: pw.EdgeInsets.symmetric(vertical: 16),
        ),
        text(
          context,
          'Company Name: abc shop abc shop abc shop abc shop abc shop',
          fontSize: 12.0,
          isCenter: true,
        ),
        text(
          context,
          'Company Address: 1234 Main St, Anytown, USA',
          fontSize: 12.0,
          isCenter: true,
        ),
        text(
          context,
          'Company Tel: 02-25-235999',
          fontSize: 12.0,
          isCenter: true,
        ),
        text(
          context,
          'Company Tax Number: 25235999128812',
          fontSize: 12.0,
          isCenter: true,
        ),
        divider(context, height: 32),
        pw.Align(
          alignment: pw.Alignment.centerLeft,
          child: text(
            context,
            'Table: A01 (4 People)',
            isBold: true,
          ),
        ),
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
        divider(context),
      ],
    );

pw.Widget _total(pw.Context context) => pw.Column(
      crossAxisAlignment: pw.CrossAxisAlignment.end,
      children: [
        cell(
          context,
          labelText: 'Items: ${'14'.padLeft(4)}',
          valueText: 'The amount of items: ${'\$ 4100.00'.padLeft(8)}',
        ),
        text(
          context,
          'Service charge: ${'\$ 50.00'.padLeft(12)}',
        ),
        text(
          context,
          'Discount: ${'\$ 50.00 (4.28%)'.padLeft(12)}',
        ),
        text(
          context,
          'Member discount: ${'\$ 50.00 (4.28%)'.padLeft(12)}',
        ),
        // text(
        //   context,
        //   'Refund amount: ${'\$ 3.00'.padLeft(12)}',
        // ),
        // text(
        //   context,
        //   'Pay Service charge: ${'\$ 50.00'.padLeft(12)}',
        // ),
        divider(context),
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
//         cell(
//           context,
//           labelText: 'Change',
//           valueText: '\$ 0.10',
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

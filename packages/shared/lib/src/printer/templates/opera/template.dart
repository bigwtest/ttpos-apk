library shared_printer_templates_opera_template;

// Dart imports:
import 'dart:typed_data';

// Package imports:
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;

// Project imports:
import '../../constants/name.dart';
import '../base.dart';

import '../../components/index.dart' show divider, text, cell, TextWrapper, tableRow;

class OperaPrinterTemplate extends BasePrinterTemplate {
  @override
  PrinterTemplateName get name => PrinterTemplateName.opera;

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
            1500,
            marginAll: 16,
          ),
        ),
        build: (pw.Context context) {
          return <pw.Widget>[
            _baseInfo(context),
            _details(context),
            _vat(context),
            _total(context),
            _tableMode(context),
            _orderingMethod(context),
            _paymentMethod(context),
            _rushHour(context),
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
            'Operating Report',
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
        cell(
          context,
          labelText: 'Time',
          valueText: '2023/12/15 14:00:21 To 2023/12/18 14:00:21',
          valueConstraints: pw.BoxConstraints(
            maxWidth: 160,
          ),
        ),
        divider(context),
      ],
    );

pw.Widget _details(pw.Context context) => pw.Column(
      children: [
        cell(
          context,
          labelText: 'Total Sales',
          valueText: '\$ 150,000.00',
        ),
        cell(
          context,
          labelText: 'Service charge',
          valueText: '\$ 500.00',
        ),
        cell(
          context,
          labelText: 'Pay Service charge',
          valueText: '\$ 500.00',
        ),
        cell(
          context,
          labelText: 'Tax',
          valueText: '\$ 50.00',
        ),
        cell(
          context,
          labelText: 'Items',
          valueText: '100',
        ),
        cell(
          context,
          labelText: 'Discount',
          valueText: '\$ 500.00',
        ),
        cell(
          context,
          labelText: 'Member discount',
          valueText: '\$ 500.00',
        ),
        cell(
          context,
          labelText: 'Refund',
          valueText: '\$ 50.00',
        ),
        divider(context),
      ],
    );

pw.Widget _vat(pw.Context context) => pw.Column(
      children: [
        cell(
          context,
          labelText: 'Amount actually received',
          labelStyle: pw.TextStyle(
            fontSize: 13.0,
            fontWeight: pw.FontWeight.bold,
          ),
          valueText: '\$ 150,000.00',
          valueStyle: pw.TextStyle(
            fontSize: 13.0,
            fontWeight: pw.FontWeight.bold,
          ),
        ),
        cell(
          context,
          labelText: 'VAT (10%)',
          labelStyle: pw.TextStyle(
            fontWeight: pw.FontWeight.bold,
          ),
          valueText: ' ',
        ),
        cell(
          context,
          labelText: 'total',
          valueText: '\$ 500.00',
        ),
        cell(
          context,
          labelText: ' ',
          valueText: '(Including VAT \$ 50.00)',
        ),
        cell(
          context,
          labelText: 'VAT (8%)',
          labelStyle: pw.TextStyle(
            fontWeight: pw.FontWeight.bold,
          ),
          valueText: ' ',
        ),
        cell(
          context,
          labelText: 'total',
          valueText: '\$ 500.00',
        ),
        cell(
          context,
          labelText: ' ',
          valueText: '(Including VAT \$ 50.00)',
        ),
        divider(context),
      ],
    );

pw.Widget _total(pw.Context context) => pw.Column(
      children: [
        text(
          context,
          'Total',
          textStyle: pw.TextStyle(
            fontWeight: pw.FontWeight.bold,
          ),
          wrapper: TextWrapper.container,
          margin: pw.EdgeInsets.symmetric(vertical: 4),
        ),
        cell(
          context,
          labelText: 'All Orders',
          valueText: '80',
        ),
        cell(
          context,
          labelText: 'Number of tables',
          valueText: '40',
        ),
        cell(
          context,
          labelText: 'Number of people',
          valueText: '10',
        ),
        cell(
          context,
          labelText: 'Minimum/Maximum Order Amount',
          valueText: '\$ 20.00 / \$ 200.00',
        ),
        cell(
          context,
          labelText: 'Avarage Order Amount',
          valueText: '\$ 80.00',
        ),
      ],
    );

pw.Widget _tableMode(pw.Context context) => pw.Column(
      children: [
        text(
          context,
          'Table Mode',
          textStyle: pw.TextStyle(
            fontWeight: pw.FontWeight.bold,
          ),
          wrapper: TextWrapper.container,
          margin: pw.EdgeInsets.symmetric(vertical: 4),
        ),
        cell(
          context,
          labelText: 'Number of orders (Number of tables)',
          valueText: '40',
        ),
        cell(
          context,
          labelText: 'Number of people',
          valueText: '10',
        ),
        cell(
          context,
          labelText: 'Minimum/Maximum Order Amount',
          valueText: '\$ 20.00 / \$ 200.00',
        ),
        cell(
          context,
          labelText: 'Avarage Order Amount',
          valueText: '\$ 80.00',
        ),
        cell(
          context,
          labelText: 'Per Capita',
          valueText: '\$ 80.00',
        ),
      ],
    );

pw.Widget _orderingMethod(pw.Context context) => pw.Column(
      children: [
        text(
          context,
          'Ordering Method',
          textStyle: pw.TextStyle(
            fontWeight: pw.FontWeight.bold,
          ),
          wrapper: TextWrapper.container,
          margin: pw.EdgeInsets.symmetric(vertical: 4),
        ),
        cell(
          context,
          labelText: 'Number of orders',
          valueText: '80',
        ),
        cell(
          context,
          labelText: 'Minimum/Maximum Order Amount',
          valueText: '\$ 20.00 / \$ 200.00',
        ),
        cell(
          context,
          labelText: 'Avarage Order Amount',
          valueText: '\$ 80.00',
        ),
        divider(context),
      ],
    );

pw.Widget _paymentMethod(pw.Context context) {
  return pw.Column(
    children: [
      tableRow(
        context,
        cell1: 'Payment Method',
        cell2: 'Number of orders',
        cell3: 'Amount',
        isHeader: true,
      ),
      tableRow(
        context,
        cell1: 'Cash',
        cell2: '10',
        cell3: '\$ 100.00',
      ),
      tableRow(
        context,
        cell1: 'Credit Card',
        cell2: '10',
        cell3: '\$ 100.00',
      ),
      tableRow(
        context,
        cell1: 'Debit Card',
        cell2: '10',
        cell3: '\$ 100.00',
      ),
      tableRow(
        context,
        cell1: 'Mobile Payment',
        cell2: '10',
        cell3: '\$ 100.00',
      ),
      tableRow(
        context,
        cell1: 'Other',
        cell2: '10',
        cell3: '\$ 100.00',
      ),
      divider(context),
    ],
  );
}

pw.Widget _rushHour(pw.Context context) => pw.Column(
      children: [
        tableRow(
          context,
          cell1: 'Rush Hour',
          cell2: 'Number of orders',
          cell3: 'Amount',
          isHeader: true,
        ),
        tableRow(
          context,
          cell1: '5/12 14:00-16:00',
          cell2: '10',
          cell3: '\$ 100.00',
        ),
        tableRow(
          context,
          cell1: '5/12 14:00-16:00',
          cell2: '10',
          cell3: '\$ 100.00',
        ),
        tableRow(
          context,
          cell1: '5/12 14:00-16:00',
          cell2: '10',
          cell3: '\$ 100.00',
        ),
        tableRow(
          context,
          cell1: '5/12 14:00-16:00',
          cell2: '10',
          cell3: '\$ 100.00',
        ),
        tableRow(
          context,
          cell1: 'Other',
          cell2: '10',
          cell3: '\$ 100.00',
        ),
      ],
    );

library shared_printer_templates_handover_template2;

// Dart imports:
import 'dart:typed_data';

// Package imports:
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;

// Project imports:
import '../../constants/name.dart';
import '../base.dart';

import '../../components/index.dart' show divider, text, cell, TextWrapper, tableRow;

class HandoverPrinterTemplate2 extends BasePrinterTemplate {
  @override
  PrinterTemplateName get name => PrinterTemplateName.handover2;

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
            _paymentMethod(context),
            _details(context),
            _rushHour(context),
            _classification(context),
            _shiftInfo(context),
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
          'Handover',
          textStyle: pw.TextStyle(
            fontSize: 20.0,
            fontWeight: pw.FontWeight.bold,
          ),
          wrapper: TextWrapper.container,
          margin: pw.EdgeInsets.symmetric(vertical: 8),
        ),
        text(
          context,
          '2023/12/15 14:00:21 To 2023/12/18 14:00:21',
          margin: pw.EdgeInsets.only(bottom: 16),
        ),
        cell(
          context,
          labelText: 'Shift Number',
          valueText: '202401253695842530',
        ),
        cell(
          context,
          labelText: 'Handover Person',
          valueText: 'John Doe',
        ),
        cell(
          context,
          labelText: 'Total Sales',
          valueText: '\$ 150,000.00',
        ),
        cell(
          context,
          labelText: 'Amount actually received',
          valueText: '\$ 500.00',
        ),
        divider(context),
      ],
    );

pw.Widget _details(pw.Context context) => pw.Column(
      children: [
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
        divider(context),
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
        divider(context),
        cell(
          context,
          labelText: 'Refund',
          valueText: '\$ 50.00',
        ),
        divider(context),
        cell(
          context,
          labelText: 'Membership Recharge',
          valueText: '\$ 50.00',
        ),
        divider(context),
        cell(
          context,
          labelText: 'All orders',
          valueText: '80',
        ),
        cell(
          context,
          labelText: 'Number of people',
          valueText: '10',
        ),
        cell(
          context,
          labelText: 'Avarage Order Amount',
          valueText: '\$ 50.00',
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
        divider(context),
      ],
    );

pw.Widget _classification(pw.Context context) => pw.Column(
      children: [
        tableRow(
          context,
          cell1: 'Classification',
          cell2: 'Quantity',
          cell3: 'Subtotal',
          isHeader: true,
        ),
        tableRow(
          context,
          cell1: 'Meal',
          cell2: '10',
          cell3: '\$ 100.00',
        ),
        tableRow(
          context,
          cell1: 'Drink',
          cell2: '10',
          cell3: '\$ 100.00',
        ),
        tableRow(
          context,
          cell1: 'Dessert',
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

pw.Widget _shiftInfo(pw.Context context) => pw.Column(
      children: [
        cell(
          context,
          labelText: 'Amount collected for this shift',
          valueText: '\$ 100,100.00',
        ),
        cell(
          context,
          labelText: 'Petty cash left over from last shift',
          valueText: '\$ 100,100.00',
        ),
        cell(
          context,
          labelText: 'Midway cash deposit',
          valueText: '\$ 100,100.00',
        ),
        cell(
          context,
          labelText: 'Midway cash withdrawal',
          valueText: '\$ 100,100.00',
        ),
        cell(
          context,
          labelText: 'This shift takes out cash',
          valueText: '\$ 100,100.00',
        ),
        cell(
          context,
          labelText: 'Petty cash left over on duty',
          valueText: '\$ 100,100.00',
        ),
      ],
    );

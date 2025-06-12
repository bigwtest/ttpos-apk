// Package imports:
import 'package:pdf/widgets.dart' as pw;

// Project imports:
import 'divider.dart';
import 'spacer.dart';
import 'text.dart';

pw.Widget commodityTable(
  pw.Context context, {
  required pw.Row header,
  required List<pw.Row> data,
  bool showHeader = true,
  bool showDivider = true,
}) {
  return pw.Column(
    crossAxisAlignment: pw.CrossAxisAlignment.stretch,
    children: [
      showHeader ? header : spacer(context, height: 0),
      showHeader ? divider(context, height: 8) : spacer(context, height: 0),
      ...data,
      showDivider ? divider(context) : spacer(context, height: 0),
    ],
  );
}

List<Map<String, String>> mockData() => List.generate(
      6,
      (int index) => {
        'name': 'Commodity name ${index + 1} Commodity gift Commodity type',
        'quantity': '200 * 2',
        'subtotal': '\$ 100.00',
      },
    );

pw.Widget mockCommodityTable(
  pw.Context context, [
  bool showHeader = true,
]) =>
    commodityTable(
      context,
      showHeader: showHeader,
      header: tableRow(
        context,
        cell1: 'Commodity',
        cell2: 'Unit Price | Quantity',
        cell3: 'Subtotal',
        isHeader: true,
      ),
      data: mockData()
          .map(
            (e) => tableRow(
              context,
              cell1: e['name']!,
              cell2: e['quantity']!,
              cell3: e['subtotal']!,
            ),
          )
          .toList(),
    );

pw.Row tableRow(
  pw.Context context, {
  required String cell1,
  required String cell2,
  required String cell3,
  bool isHeader = false,
}) =>
    pw.Row(
      crossAxisAlignment: pw.CrossAxisAlignment.start,
      children: [
        text(
          context,
          cell1,
          textStyle: pw.TextStyle(
            fontWeight: isHeader ? pw.FontWeight.bold : pw.FontWeight.normal,
          ),
          wrapper: TextWrapper.expanded,
        ),
        text(
          context,
          cell2,
          textStyle: pw.TextStyle(
            fontWeight: isHeader ? pw.FontWeight.bold : pw.FontWeight.normal,
          ),
          wrapper: TextWrapper.container,
          padding: pw.EdgeInsets.symmetric(horizontal: 4, vertical: 2),
          width: 80,
        ),
        text(
          context,
          cell3,
          textStyle: pw.TextStyle(
            fontWeight: isHeader ? pw.FontWeight.bold : pw.FontWeight.normal,
          ),
          wrapper: TextWrapper.container,
          width: 64,
          textAlign: pw.TextAlign.right,
        ),
      ],
    );

pw.Row orderRow(
  pw.Context context, {
  required String cell1,
  required String cell2,
  bool isHeader = false,
}) =>
    pw.Row(
      crossAxisAlignment: pw.CrossAxisAlignment.start,
      children: [
        text(
          context,
          cell1,
          textStyle: pw.TextStyle(
            fontWeight: isHeader ? pw.FontWeight.bold : pw.FontWeight.normal,
          ),
          wrapper: TextWrapper.expanded,
        ),
        text(
          context,
          cell2,
          textStyle: pw.TextStyle(
            fontWeight: isHeader ? pw.FontWeight.bold : pw.FontWeight.normal,
          ),
          wrapper: TextWrapper.container,
          width: 80,
          textAlign: pw.TextAlign.right,
        ),
      ],
    );

pw.Widget orderTable(
  pw.Context context, {
  required pw.Row header,
  required List<pw.Row> data,
  bool showHeader = true,
  bool showDivider = true,
}) =>
    pw.Column(
      children: [
        showHeader ? header : spacer(context, height: 0),
        showHeader ? divider(context, height: 8) : spacer(context, height: 0),
        ...data,
        showDivider ? divider(context) : spacer(context, height: 0),
      ],
    );

pw.Widget mockOrderTable(
  pw.Context context, {
  bool showHeader = true,
  bool showDivider = false,
}) =>
    orderTable(
      context,
      showHeader: showHeader,
      showDivider: showDivider,
      header: orderRow(
        context,
        cell1: 'Commodity',
        cell2: 'Quantity',
        isHeader: true,
      ),
      data: mockData()
          .map(
            (e) => orderRow(
              context,
              cell1: e['name']!,
              cell2: e['quantity']!,
            ),
          )
          .toList(),
    );

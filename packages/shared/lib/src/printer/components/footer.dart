// Package imports:
import 'package:pdf/widgets.dart' as pw;

// Project imports:
import 'text.dart' as text_widget;

pw.Widget footer(
  pw.Context context,
  String text, {
  pw.EdgeInsetsGeometry? padding,
  pw.TextStyle? textStyle,
}) =>
    pw.Container(
      padding: padding ?? pw.EdgeInsets.only(top: 16, bottom: 24),
      child: pw.Center(
        child: text_widget.text(
          context,
          text,
          textStyle: textStyle,
        ),
      ),
    );

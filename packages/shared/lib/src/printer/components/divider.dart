// Package imports:
import 'package:pdf/widgets.dart' as pw;

pw.Widget divider(
  pw.Context context, {
  double? height,
  pw.BorderStyle? borderStyle,
}) =>
    pw.Divider(
      height: height ?? 24,
      borderStyle: borderStyle ?? pw.BorderStyle.dotted,
    );

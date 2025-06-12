// Package imports:
import 'package:pdf/widgets.dart' as pw;

pw.Widget spacer(
  pw.Context context, {
  double? height,
}) =>
    pw.SizedBox(
      height: height ?? 4,
      width: double.infinity,
    );

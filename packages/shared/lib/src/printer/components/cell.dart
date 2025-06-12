// Package imports:
import 'package:pdf/widgets.dart' as pw;

// Project imports:
import 'text.dart';

pw.Widget cell(
  pw.Context context, {
  pw.Widget? labelWidget,
  pw.Widget? valueWidget,
  String? labelText,
  String? valueText,
  pw.TextStyle? labelStyle,
  pw.TextAlign? labelAlign,
  pw.BoxConstraints? labelConstraints,
  pw.TextStyle? valueStyle,
  pw.TextAlign? valueAlign,
  pw.BoxConstraints? valueConstraints,
}) {
  assert(
    labelWidget != null || labelText != null,
    'label or labelText must be provided',
  );
  assert(
    valueWidget != null || valueText != null,
    'value or valueText must be provided',
  );

  final label = labelWidget ??
      text(
        context,
        labelText!,
        textStyle: labelStyle,
        wrapper: TextWrapper.expanded,
        textAlign: labelAlign ?? pw.TextAlign.left,
        constraints: labelConstraints,
      );
  final value = valueWidget ??
      text(
        context,
        valueText!,
        textStyle: valueStyle,
        wrapper: TextWrapper.container,
        textAlign: valueAlign ?? pw.TextAlign.right,
        constraints: valueConstraints,
      );

  return pw.Row(
    mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
    crossAxisAlignment: pw.CrossAxisAlignment.start,
    children: [
      label,
      value,
    ],
  );
}

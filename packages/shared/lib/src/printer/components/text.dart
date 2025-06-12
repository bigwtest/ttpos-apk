// Package imports:
import 'package:pdf/widgets.dart' as pw;

enum TextWrapper {
  none('None'),
  container('Container'),
  expanded('Expanded');

  final String name;
  const TextWrapper(this.name);
}

pw.Widget text(
  pw.Context context,
  String text, {
  TextWrapper wrapper = TextWrapper.container,
  pw.TextStyle? textStyle,
  double? fontSize = 12,
  pw.FontWeight? fontWeight,
  bool isBold = false,
  pw.TextAlign? textAlign,
  bool isCenter = false,
  double? width,
  double? height,
  int flex = 1,
  pw.EdgeInsetsGeometry? margin,
  pw.EdgeInsetsGeometry? padding,
  double? lineHeight,
  pw.BoxConstraints? constraints,
}) {
  fontWeight = fontWeight ??
      (isBold == true ? pw.FontWeight.bold : pw.FontWeight.normal);
  textAlign =
      textAlign ?? (isCenter == true ? pw.TextAlign.center : pw.TextAlign.left);
  margin = margin ?? pw.EdgeInsets.all(0);
  padding = padding ?? pw.EdgeInsets.symmetric(horizontal: 0, vertical: 2);

  textStyle = textStyle ??
      pw.TextStyle(
        fontSize: fontSize,
        fontWeight: fontWeight,
        height: lineHeight,
      );

  pw.Widget child = pw.Text(
    text,
    style: textStyle,
    textAlign: textAlign,
  );
  switch (wrapper) {
    case TextWrapper.none:
      return child;
    case TextWrapper.container:
      return pw.Container(
        width: width,
        height: height,
        child: child,
        margin: margin,
        padding: padding,
        constraints: constraints,
      );
    case TextWrapper.expanded:
      return pw.Expanded(
        flex: flex,
        child: pw.Container(
          width: width,
          height: height,
          child: child,
          margin: margin,
          padding: padding,
          constraints: constraints,
        ),
      );
  }
}

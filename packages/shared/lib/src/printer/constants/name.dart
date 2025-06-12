library shared_printer_name;

/// 打印机基础模板名称枚举
///
/// [PrinterTemplateName] 定义了应用程序支持的所有打印机基础模板名称。
/// 目前包括：
/// - test - 测试模板

enum PrinterTemplateName {
  test('test'),
  receipt1('receipt1'),
  receipt2('receipt2'),
  receipt3('receipt3'),
  prebill1('prebill1'),
  prebill2('prebill2'),
  prebill3('prebill3'),
  handover1('handover1'),
  handover2('handover2'),
  invoice1('invoice1'),
  invoice2('invoice2'),
  oneorder1('oneorder1'),
  oneorder2('oneorder2'),
  opera('opera'),
  order1('order1'),
  order2('order2');

  final String name;
  const PrinterTemplateName(this.name);

  static PrinterTemplateName safeValueOf(
    String name, {
    PrinterTemplateName fallback = PrinterTemplateName.test,
  }) {
    try {
      return PrinterTemplateName.values.byName(name);
    } catch (e) {
      return fallback;
    }
  }
}

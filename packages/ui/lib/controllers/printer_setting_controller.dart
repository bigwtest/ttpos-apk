import 'package:get/get.dart';
import 'package:ttpos_model/options/printer.dart';

class PrinterSettingController extends GetxController {
  final Rx<Printer> _printer = Printer.empty().obs;
  Printer get printer => _printer.value;
  bool get isMultilingual => _printer.value.languageMethod == '2';
  //交班单、营业数据、预结账单、结账单、发票、充值单小票
  String get cashierLanguage => _printer.value.defaultLanguage;

  String get sendKdsLanguage => _printer.value.kitchenLanguage;

  void setPrinter(Printer printer) {
    _printer.value = printer;
  }
}

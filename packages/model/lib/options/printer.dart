import 'package:freezed_annotation/freezed_annotation.dart';

part 'printer.freezed.dart';
part 'printer.g.dart';

@freezed
class Printer with _$Printer {
  const factory Printer({
    @JsonKey(name: "buffet_sign_open") required String buffetSignOpen,
    @JsonKey(name: "calendar_list") required List<SettingCalendarItem> calendarList,
    @JsonKey(name: "cashier_open") required String cashierOpen,
    @JsonKey(name: "cashier_printer") required List<SettingCashierPrinterItem> cashierPrinter,
    @JsonKey(name: "cashier_printer_id") required String cashierPrinterId,
    @JsonKey(name: "consumption_tax") required String consumptionTax,
    @JsonKey(name: "default_calendar") required String defaultCalendar,
    @JsonKey(name: "default_language") required String defaultLanguage,
    @JsonKey(name: "kitchen_language") required String kitchenLanguage,
    @JsonKey(name: "kitchen_print_method") required String kitchenPrintMethod,
    @JsonKey(name: "language") required List<String> language,
    @JsonKey(name: "language_method") required String languageMethod,
    @JsonKey(name: "monetary_unit_open") required String monetaryUnitOpen,
    @JsonKey(name: "print_list") required List<SettingPrintItem> printList,
    @JsonKey(name: "print_method") required String printMethod,
  }) = _Printer;

  factory Printer.fromJson(Map<String, dynamic> json) => _$PrinterFromJson(json);

  static Printer empty() => Printer(
        buffetSignOpen: '',
        calendarList: [],
        cashierOpen: '',
        cashierPrinter: [],
        cashierPrinterId: '',
        consumptionTax: '',
        defaultCalendar: '',
        defaultLanguage: '',
        kitchenLanguage: '',
        kitchenPrintMethod: '',
        language: [],
        languageMethod: '',
        monetaryUnitOpen: '',
        printList: [],
        printMethod: '',
      );
}

@freezed
class SettingCalendarItem with _$SettingCalendarItem {
  const factory SettingCalendarItem({
    @JsonKey(name: "key") required String key,
    @JsonKey(name: "name") required String name,
  }) = _SettingCalendarItem;

  factory SettingCalendarItem.fromJson(Map<String, dynamic> json) => _$SettingCalendarItemFromJson(json);
}

@freezed
class SettingCashierPrinterItem with _$SettingCashierPrinterItem {
  const factory SettingCashierPrinterItem({
    @JsonKey(name: "key") required String key,
    @JsonKey(name: "printer_id") required String printerId,
  }) = _SettingCashierPrinterItem;

  factory SettingCashierPrinterItem.fromJson(Map<String, dynamic> json) => _$SettingCashierPrinterItemFromJson(json);
}

@freezed
class SettingPrintItem with _$SettingPrintItem {
  const factory SettingPrintItem({
    @JsonKey(name: "key") required String key,
    @JsonKey(name: "name") required String name,
  }) = _SettingPrintItem;

  factory SettingPrintItem.fromJson(Map<String, dynamic> json) => _$SettingPrintItemFromJson(json);
}

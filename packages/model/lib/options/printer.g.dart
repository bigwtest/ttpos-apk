// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'printer.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PrinterImpl _$$PrinterImplFromJson(Map<String, dynamic> json) =>
    _$PrinterImpl(
      buffetSignOpen: json['buffet_sign_open'] as String,
      calendarList: (json['calendar_list'] as List<dynamic>)
          .map((e) => SettingCalendarItem.fromJson(e as Map<String, dynamic>))
          .toList(),
      cashierOpen: json['cashier_open'] as String,
      cashierPrinter: (json['cashier_printer'] as List<dynamic>)
          .map((e) =>
              SettingCashierPrinterItem.fromJson(e as Map<String, dynamic>))
          .toList(),
      cashierPrinterId: json['cashier_printer_id'] as String,
      consumptionTax: json['consumption_tax'] as String,
      defaultCalendar: json['default_calendar'] as String,
      defaultLanguage: json['default_language'] as String,
      kitchenLanguage: json['kitchen_language'] as String,
      kitchenPrintMethod: json['kitchen_print_method'] as String,
      language:
          (json['language'] as List<dynamic>).map((e) => e as String).toList(),
      languageMethod: json['language_method'] as String,
      monetaryUnitOpen: json['monetary_unit_open'] as String,
      printList: (json['print_list'] as List<dynamic>)
          .map((e) => SettingPrintItem.fromJson(e as Map<String, dynamic>))
          .toList(),
      printMethod: json['print_method'] as String,
    );

Map<String, dynamic> _$$PrinterImplToJson(_$PrinterImpl instance) =>
    <String, dynamic>{
      'buffet_sign_open': instance.buffetSignOpen,
      'calendar_list': instance.calendarList,
      'cashier_open': instance.cashierOpen,
      'cashier_printer': instance.cashierPrinter,
      'cashier_printer_id': instance.cashierPrinterId,
      'consumption_tax': instance.consumptionTax,
      'default_calendar': instance.defaultCalendar,
      'default_language': instance.defaultLanguage,
      'kitchen_language': instance.kitchenLanguage,
      'kitchen_print_method': instance.kitchenPrintMethod,
      'language': instance.language,
      'language_method': instance.languageMethod,
      'monetary_unit_open': instance.monetaryUnitOpen,
      'print_list': instance.printList,
      'print_method': instance.printMethod,
    };

_$SettingCalendarItemImpl _$$SettingCalendarItemImplFromJson(
        Map<String, dynamic> json) =>
    _$SettingCalendarItemImpl(
      key: json['key'] as String,
      name: json['name'] as String,
    );

Map<String, dynamic> _$$SettingCalendarItemImplToJson(
        _$SettingCalendarItemImpl instance) =>
    <String, dynamic>{
      'key': instance.key,
      'name': instance.name,
    };

_$SettingCashierPrinterItemImpl _$$SettingCashierPrinterItemImplFromJson(
        Map<String, dynamic> json) =>
    _$SettingCashierPrinterItemImpl(
      key: json['key'] as String,
      printerId: json['printer_id'] as String,
    );

Map<String, dynamic> _$$SettingCashierPrinterItemImplToJson(
        _$SettingCashierPrinterItemImpl instance) =>
    <String, dynamic>{
      'key': instance.key,
      'printer_id': instance.printerId,
    };

_$SettingPrintItemImpl _$$SettingPrintItemImplFromJson(
        Map<String, dynamic> json) =>
    _$SettingPrintItemImpl(
      key: json['key'] as String,
      name: json['name'] as String,
    );

Map<String, dynamic> _$$SettingPrintItemImplToJson(
        _$SettingPrintItemImpl instance) =>
    <String, dynamic>{
      'key': instance.key,
      'name': instance.name,
    };

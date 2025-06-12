// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'printer.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Printer _$PrinterFromJson(Map<String, dynamic> json) {
  return _Printer.fromJson(json);
}

/// @nodoc
mixin _$Printer {
  @JsonKey(name: "buffet_sign_open")
  String get buffetSignOpen => throw _privateConstructorUsedError;
  @JsonKey(name: "calendar_list")
  List<SettingCalendarItem> get calendarList =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "cashier_open")
  String get cashierOpen => throw _privateConstructorUsedError;
  @JsonKey(name: "cashier_printer")
  List<SettingCashierPrinterItem> get cashierPrinter =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "cashier_printer_id")
  String get cashierPrinterId => throw _privateConstructorUsedError;
  @JsonKey(name: "consumption_tax")
  String get consumptionTax => throw _privateConstructorUsedError;
  @JsonKey(name: "default_calendar")
  String get defaultCalendar => throw _privateConstructorUsedError;
  @JsonKey(name: "default_language")
  String get defaultLanguage => throw _privateConstructorUsedError;
  @JsonKey(name: "kitchen_language")
  String get kitchenLanguage => throw _privateConstructorUsedError;
  @JsonKey(name: "kitchen_print_method")
  String get kitchenPrintMethod => throw _privateConstructorUsedError;
  @JsonKey(name: "language")
  List<String> get language => throw _privateConstructorUsedError;
  @JsonKey(name: "language_method")
  String get languageMethod => throw _privateConstructorUsedError;
  @JsonKey(name: "monetary_unit_open")
  String get monetaryUnitOpen => throw _privateConstructorUsedError;
  @JsonKey(name: "print_list")
  List<SettingPrintItem> get printList => throw _privateConstructorUsedError;
  @JsonKey(name: "print_method")
  String get printMethod => throw _privateConstructorUsedError;

  /// Serializes this Printer to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Printer
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PrinterCopyWith<Printer> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PrinterCopyWith<$Res> {
  factory $PrinterCopyWith(Printer value, $Res Function(Printer) then) =
      _$PrinterCopyWithImpl<$Res, Printer>;
  @useResult
  $Res call(
      {@JsonKey(name: "buffet_sign_open") String buffetSignOpen,
      @JsonKey(name: "calendar_list") List<SettingCalendarItem> calendarList,
      @JsonKey(name: "cashier_open") String cashierOpen,
      @JsonKey(name: "cashier_printer")
      List<SettingCashierPrinterItem> cashierPrinter,
      @JsonKey(name: "cashier_printer_id") String cashierPrinterId,
      @JsonKey(name: "consumption_tax") String consumptionTax,
      @JsonKey(name: "default_calendar") String defaultCalendar,
      @JsonKey(name: "default_language") String defaultLanguage,
      @JsonKey(name: "kitchen_language") String kitchenLanguage,
      @JsonKey(name: "kitchen_print_method") String kitchenPrintMethod,
      @JsonKey(name: "language") List<String> language,
      @JsonKey(name: "language_method") String languageMethod,
      @JsonKey(name: "monetary_unit_open") String monetaryUnitOpen,
      @JsonKey(name: "print_list") List<SettingPrintItem> printList,
      @JsonKey(name: "print_method") String printMethod});
}

/// @nodoc
class _$PrinterCopyWithImpl<$Res, $Val extends Printer>
    implements $PrinterCopyWith<$Res> {
  _$PrinterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Printer
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? buffetSignOpen = null,
    Object? calendarList = null,
    Object? cashierOpen = null,
    Object? cashierPrinter = null,
    Object? cashierPrinterId = null,
    Object? consumptionTax = null,
    Object? defaultCalendar = null,
    Object? defaultLanguage = null,
    Object? kitchenLanguage = null,
    Object? kitchenPrintMethod = null,
    Object? language = null,
    Object? languageMethod = null,
    Object? monetaryUnitOpen = null,
    Object? printList = null,
    Object? printMethod = null,
  }) {
    return _then(_value.copyWith(
      buffetSignOpen: null == buffetSignOpen
          ? _value.buffetSignOpen
          : buffetSignOpen // ignore: cast_nullable_to_non_nullable
              as String,
      calendarList: null == calendarList
          ? _value.calendarList
          : calendarList // ignore: cast_nullable_to_non_nullable
              as List<SettingCalendarItem>,
      cashierOpen: null == cashierOpen
          ? _value.cashierOpen
          : cashierOpen // ignore: cast_nullable_to_non_nullable
              as String,
      cashierPrinter: null == cashierPrinter
          ? _value.cashierPrinter
          : cashierPrinter // ignore: cast_nullable_to_non_nullable
              as List<SettingCashierPrinterItem>,
      cashierPrinterId: null == cashierPrinterId
          ? _value.cashierPrinterId
          : cashierPrinterId // ignore: cast_nullable_to_non_nullable
              as String,
      consumptionTax: null == consumptionTax
          ? _value.consumptionTax
          : consumptionTax // ignore: cast_nullable_to_non_nullable
              as String,
      defaultCalendar: null == defaultCalendar
          ? _value.defaultCalendar
          : defaultCalendar // ignore: cast_nullable_to_non_nullable
              as String,
      defaultLanguage: null == defaultLanguage
          ? _value.defaultLanguage
          : defaultLanguage // ignore: cast_nullable_to_non_nullable
              as String,
      kitchenLanguage: null == kitchenLanguage
          ? _value.kitchenLanguage
          : kitchenLanguage // ignore: cast_nullable_to_non_nullable
              as String,
      kitchenPrintMethod: null == kitchenPrintMethod
          ? _value.kitchenPrintMethod
          : kitchenPrintMethod // ignore: cast_nullable_to_non_nullable
              as String,
      language: null == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as List<String>,
      languageMethod: null == languageMethod
          ? _value.languageMethod
          : languageMethod // ignore: cast_nullable_to_non_nullable
              as String,
      monetaryUnitOpen: null == monetaryUnitOpen
          ? _value.monetaryUnitOpen
          : monetaryUnitOpen // ignore: cast_nullable_to_non_nullable
              as String,
      printList: null == printList
          ? _value.printList
          : printList // ignore: cast_nullable_to_non_nullable
              as List<SettingPrintItem>,
      printMethod: null == printMethod
          ? _value.printMethod
          : printMethod // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PrinterImplCopyWith<$Res> implements $PrinterCopyWith<$Res> {
  factory _$$PrinterImplCopyWith(
          _$PrinterImpl value, $Res Function(_$PrinterImpl) then) =
      __$$PrinterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "buffet_sign_open") String buffetSignOpen,
      @JsonKey(name: "calendar_list") List<SettingCalendarItem> calendarList,
      @JsonKey(name: "cashier_open") String cashierOpen,
      @JsonKey(name: "cashier_printer")
      List<SettingCashierPrinterItem> cashierPrinter,
      @JsonKey(name: "cashier_printer_id") String cashierPrinterId,
      @JsonKey(name: "consumption_tax") String consumptionTax,
      @JsonKey(name: "default_calendar") String defaultCalendar,
      @JsonKey(name: "default_language") String defaultLanguage,
      @JsonKey(name: "kitchen_language") String kitchenLanguage,
      @JsonKey(name: "kitchen_print_method") String kitchenPrintMethod,
      @JsonKey(name: "language") List<String> language,
      @JsonKey(name: "language_method") String languageMethod,
      @JsonKey(name: "monetary_unit_open") String monetaryUnitOpen,
      @JsonKey(name: "print_list") List<SettingPrintItem> printList,
      @JsonKey(name: "print_method") String printMethod});
}

/// @nodoc
class __$$PrinterImplCopyWithImpl<$Res>
    extends _$PrinterCopyWithImpl<$Res, _$PrinterImpl>
    implements _$$PrinterImplCopyWith<$Res> {
  __$$PrinterImplCopyWithImpl(
      _$PrinterImpl _value, $Res Function(_$PrinterImpl) _then)
      : super(_value, _then);

  /// Create a copy of Printer
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? buffetSignOpen = null,
    Object? calendarList = null,
    Object? cashierOpen = null,
    Object? cashierPrinter = null,
    Object? cashierPrinterId = null,
    Object? consumptionTax = null,
    Object? defaultCalendar = null,
    Object? defaultLanguage = null,
    Object? kitchenLanguage = null,
    Object? kitchenPrintMethod = null,
    Object? language = null,
    Object? languageMethod = null,
    Object? monetaryUnitOpen = null,
    Object? printList = null,
    Object? printMethod = null,
  }) {
    return _then(_$PrinterImpl(
      buffetSignOpen: null == buffetSignOpen
          ? _value.buffetSignOpen
          : buffetSignOpen // ignore: cast_nullable_to_non_nullable
              as String,
      calendarList: null == calendarList
          ? _value._calendarList
          : calendarList // ignore: cast_nullable_to_non_nullable
              as List<SettingCalendarItem>,
      cashierOpen: null == cashierOpen
          ? _value.cashierOpen
          : cashierOpen // ignore: cast_nullable_to_non_nullable
              as String,
      cashierPrinter: null == cashierPrinter
          ? _value._cashierPrinter
          : cashierPrinter // ignore: cast_nullable_to_non_nullable
              as List<SettingCashierPrinterItem>,
      cashierPrinterId: null == cashierPrinterId
          ? _value.cashierPrinterId
          : cashierPrinterId // ignore: cast_nullable_to_non_nullable
              as String,
      consumptionTax: null == consumptionTax
          ? _value.consumptionTax
          : consumptionTax // ignore: cast_nullable_to_non_nullable
              as String,
      defaultCalendar: null == defaultCalendar
          ? _value.defaultCalendar
          : defaultCalendar // ignore: cast_nullable_to_non_nullable
              as String,
      defaultLanguage: null == defaultLanguage
          ? _value.defaultLanguage
          : defaultLanguage // ignore: cast_nullable_to_non_nullable
              as String,
      kitchenLanguage: null == kitchenLanguage
          ? _value.kitchenLanguage
          : kitchenLanguage // ignore: cast_nullable_to_non_nullable
              as String,
      kitchenPrintMethod: null == kitchenPrintMethod
          ? _value.kitchenPrintMethod
          : kitchenPrintMethod // ignore: cast_nullable_to_non_nullable
              as String,
      language: null == language
          ? _value._language
          : language // ignore: cast_nullable_to_non_nullable
              as List<String>,
      languageMethod: null == languageMethod
          ? _value.languageMethod
          : languageMethod // ignore: cast_nullable_to_non_nullable
              as String,
      monetaryUnitOpen: null == monetaryUnitOpen
          ? _value.monetaryUnitOpen
          : monetaryUnitOpen // ignore: cast_nullable_to_non_nullable
              as String,
      printList: null == printList
          ? _value._printList
          : printList // ignore: cast_nullable_to_non_nullable
              as List<SettingPrintItem>,
      printMethod: null == printMethod
          ? _value.printMethod
          : printMethod // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PrinterImpl implements _Printer {
  const _$PrinterImpl(
      {@JsonKey(name: "buffet_sign_open") required this.buffetSignOpen,
      @JsonKey(name: "calendar_list")
      required final List<SettingCalendarItem> calendarList,
      @JsonKey(name: "cashier_open") required this.cashierOpen,
      @JsonKey(name: "cashier_printer")
      required final List<SettingCashierPrinterItem> cashierPrinter,
      @JsonKey(name: "cashier_printer_id") required this.cashierPrinterId,
      @JsonKey(name: "consumption_tax") required this.consumptionTax,
      @JsonKey(name: "default_calendar") required this.defaultCalendar,
      @JsonKey(name: "default_language") required this.defaultLanguage,
      @JsonKey(name: "kitchen_language") required this.kitchenLanguage,
      @JsonKey(name: "kitchen_print_method") required this.kitchenPrintMethod,
      @JsonKey(name: "language") required final List<String> language,
      @JsonKey(name: "language_method") required this.languageMethod,
      @JsonKey(name: "monetary_unit_open") required this.monetaryUnitOpen,
      @JsonKey(name: "print_list")
      required final List<SettingPrintItem> printList,
      @JsonKey(name: "print_method") required this.printMethod})
      : _calendarList = calendarList,
        _cashierPrinter = cashierPrinter,
        _language = language,
        _printList = printList;

  factory _$PrinterImpl.fromJson(Map<String, dynamic> json) =>
      _$$PrinterImplFromJson(json);

  @override
  @JsonKey(name: "buffet_sign_open")
  final String buffetSignOpen;
  final List<SettingCalendarItem> _calendarList;
  @override
  @JsonKey(name: "calendar_list")
  List<SettingCalendarItem> get calendarList {
    if (_calendarList is EqualUnmodifiableListView) return _calendarList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_calendarList);
  }

  @override
  @JsonKey(name: "cashier_open")
  final String cashierOpen;
  final List<SettingCashierPrinterItem> _cashierPrinter;
  @override
  @JsonKey(name: "cashier_printer")
  List<SettingCashierPrinterItem> get cashierPrinter {
    if (_cashierPrinter is EqualUnmodifiableListView) return _cashierPrinter;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_cashierPrinter);
  }

  @override
  @JsonKey(name: "cashier_printer_id")
  final String cashierPrinterId;
  @override
  @JsonKey(name: "consumption_tax")
  final String consumptionTax;
  @override
  @JsonKey(name: "default_calendar")
  final String defaultCalendar;
  @override
  @JsonKey(name: "default_language")
  final String defaultLanguage;
  @override
  @JsonKey(name: "kitchen_language")
  final String kitchenLanguage;
  @override
  @JsonKey(name: "kitchen_print_method")
  final String kitchenPrintMethod;
  final List<String> _language;
  @override
  @JsonKey(name: "language")
  List<String> get language {
    if (_language is EqualUnmodifiableListView) return _language;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_language);
  }

  @override
  @JsonKey(name: "language_method")
  final String languageMethod;
  @override
  @JsonKey(name: "monetary_unit_open")
  final String monetaryUnitOpen;
  final List<SettingPrintItem> _printList;
  @override
  @JsonKey(name: "print_list")
  List<SettingPrintItem> get printList {
    if (_printList is EqualUnmodifiableListView) return _printList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_printList);
  }

  @override
  @JsonKey(name: "print_method")
  final String printMethod;

  @override
  String toString() {
    return 'Printer(buffetSignOpen: $buffetSignOpen, calendarList: $calendarList, cashierOpen: $cashierOpen, cashierPrinter: $cashierPrinter, cashierPrinterId: $cashierPrinterId, consumptionTax: $consumptionTax, defaultCalendar: $defaultCalendar, defaultLanguage: $defaultLanguage, kitchenLanguage: $kitchenLanguage, kitchenPrintMethod: $kitchenPrintMethod, language: $language, languageMethod: $languageMethod, monetaryUnitOpen: $monetaryUnitOpen, printList: $printList, printMethod: $printMethod)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PrinterImpl &&
            (identical(other.buffetSignOpen, buffetSignOpen) ||
                other.buffetSignOpen == buffetSignOpen) &&
            const DeepCollectionEquality()
                .equals(other._calendarList, _calendarList) &&
            (identical(other.cashierOpen, cashierOpen) ||
                other.cashierOpen == cashierOpen) &&
            const DeepCollectionEquality()
                .equals(other._cashierPrinter, _cashierPrinter) &&
            (identical(other.cashierPrinterId, cashierPrinterId) ||
                other.cashierPrinterId == cashierPrinterId) &&
            (identical(other.consumptionTax, consumptionTax) ||
                other.consumptionTax == consumptionTax) &&
            (identical(other.defaultCalendar, defaultCalendar) ||
                other.defaultCalendar == defaultCalendar) &&
            (identical(other.defaultLanguage, defaultLanguage) ||
                other.defaultLanguage == defaultLanguage) &&
            (identical(other.kitchenLanguage, kitchenLanguage) ||
                other.kitchenLanguage == kitchenLanguage) &&
            (identical(other.kitchenPrintMethod, kitchenPrintMethod) ||
                other.kitchenPrintMethod == kitchenPrintMethod) &&
            const DeepCollectionEquality().equals(other._language, _language) &&
            (identical(other.languageMethod, languageMethod) ||
                other.languageMethod == languageMethod) &&
            (identical(other.monetaryUnitOpen, monetaryUnitOpen) ||
                other.monetaryUnitOpen == monetaryUnitOpen) &&
            const DeepCollectionEquality()
                .equals(other._printList, _printList) &&
            (identical(other.printMethod, printMethod) ||
                other.printMethod == printMethod));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      buffetSignOpen,
      const DeepCollectionEquality().hash(_calendarList),
      cashierOpen,
      const DeepCollectionEquality().hash(_cashierPrinter),
      cashierPrinterId,
      consumptionTax,
      defaultCalendar,
      defaultLanguage,
      kitchenLanguage,
      kitchenPrintMethod,
      const DeepCollectionEquality().hash(_language),
      languageMethod,
      monetaryUnitOpen,
      const DeepCollectionEquality().hash(_printList),
      printMethod);

  /// Create a copy of Printer
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PrinterImplCopyWith<_$PrinterImpl> get copyWith =>
      __$$PrinterImplCopyWithImpl<_$PrinterImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PrinterImplToJson(
      this,
    );
  }
}

abstract class _Printer implements Printer {
  const factory _Printer(
      {@JsonKey(name: "buffet_sign_open") required final String buffetSignOpen,
      @JsonKey(name: "calendar_list")
      required final List<SettingCalendarItem> calendarList,
      @JsonKey(name: "cashier_open") required final String cashierOpen,
      @JsonKey(name: "cashier_printer")
      required final List<SettingCashierPrinterItem> cashierPrinter,
      @JsonKey(name: "cashier_printer_id")
      required final String cashierPrinterId,
      @JsonKey(name: "consumption_tax") required final String consumptionTax,
      @JsonKey(name: "default_calendar") required final String defaultCalendar,
      @JsonKey(name: "default_language") required final String defaultLanguage,
      @JsonKey(name: "kitchen_language") required final String kitchenLanguage,
      @JsonKey(name: "kitchen_print_method")
      required final String kitchenPrintMethod,
      @JsonKey(name: "language") required final List<String> language,
      @JsonKey(name: "language_method") required final String languageMethod,
      @JsonKey(name: "monetary_unit_open")
      required final String monetaryUnitOpen,
      @JsonKey(name: "print_list")
      required final List<SettingPrintItem> printList,
      @JsonKey(name: "print_method")
      required final String printMethod}) = _$PrinterImpl;

  factory _Printer.fromJson(Map<String, dynamic> json) = _$PrinterImpl.fromJson;

  @override
  @JsonKey(name: "buffet_sign_open")
  String get buffetSignOpen;
  @override
  @JsonKey(name: "calendar_list")
  List<SettingCalendarItem> get calendarList;
  @override
  @JsonKey(name: "cashier_open")
  String get cashierOpen;
  @override
  @JsonKey(name: "cashier_printer")
  List<SettingCashierPrinterItem> get cashierPrinter;
  @override
  @JsonKey(name: "cashier_printer_id")
  String get cashierPrinterId;
  @override
  @JsonKey(name: "consumption_tax")
  String get consumptionTax;
  @override
  @JsonKey(name: "default_calendar")
  String get defaultCalendar;
  @override
  @JsonKey(name: "default_language")
  String get defaultLanguage;
  @override
  @JsonKey(name: "kitchen_language")
  String get kitchenLanguage;
  @override
  @JsonKey(name: "kitchen_print_method")
  String get kitchenPrintMethod;
  @override
  @JsonKey(name: "language")
  List<String> get language;
  @override
  @JsonKey(name: "language_method")
  String get languageMethod;
  @override
  @JsonKey(name: "monetary_unit_open")
  String get monetaryUnitOpen;
  @override
  @JsonKey(name: "print_list")
  List<SettingPrintItem> get printList;
  @override
  @JsonKey(name: "print_method")
  String get printMethod;

  /// Create a copy of Printer
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PrinterImplCopyWith<_$PrinterImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SettingCalendarItem _$SettingCalendarItemFromJson(Map<String, dynamic> json) {
  return _SettingCalendarItem.fromJson(json);
}

/// @nodoc
mixin _$SettingCalendarItem {
  @JsonKey(name: "key")
  String get key => throw _privateConstructorUsedError;
  @JsonKey(name: "name")
  String get name => throw _privateConstructorUsedError;

  /// Serializes this SettingCalendarItem to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SettingCalendarItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SettingCalendarItemCopyWith<SettingCalendarItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SettingCalendarItemCopyWith<$Res> {
  factory $SettingCalendarItemCopyWith(
          SettingCalendarItem value, $Res Function(SettingCalendarItem) then) =
      _$SettingCalendarItemCopyWithImpl<$Res, SettingCalendarItem>;
  @useResult
  $Res call(
      {@JsonKey(name: "key") String key, @JsonKey(name: "name") String name});
}

/// @nodoc
class _$SettingCalendarItemCopyWithImpl<$Res, $Val extends SettingCalendarItem>
    implements $SettingCalendarItemCopyWith<$Res> {
  _$SettingCalendarItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SettingCalendarItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = null,
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      key: null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SettingCalendarItemImplCopyWith<$Res>
    implements $SettingCalendarItemCopyWith<$Res> {
  factory _$$SettingCalendarItemImplCopyWith(_$SettingCalendarItemImpl value,
          $Res Function(_$SettingCalendarItemImpl) then) =
      __$$SettingCalendarItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "key") String key, @JsonKey(name: "name") String name});
}

/// @nodoc
class __$$SettingCalendarItemImplCopyWithImpl<$Res>
    extends _$SettingCalendarItemCopyWithImpl<$Res, _$SettingCalendarItemImpl>
    implements _$$SettingCalendarItemImplCopyWith<$Res> {
  __$$SettingCalendarItemImplCopyWithImpl(_$SettingCalendarItemImpl _value,
      $Res Function(_$SettingCalendarItemImpl) _then)
      : super(_value, _then);

  /// Create a copy of SettingCalendarItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = null,
    Object? name = null,
  }) {
    return _then(_$SettingCalendarItemImpl(
      key: null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SettingCalendarItemImpl implements _SettingCalendarItem {
  const _$SettingCalendarItemImpl(
      {@JsonKey(name: "key") required this.key,
      @JsonKey(name: "name") required this.name});

  factory _$SettingCalendarItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$SettingCalendarItemImplFromJson(json);

  @override
  @JsonKey(name: "key")
  final String key;
  @override
  @JsonKey(name: "name")
  final String name;

  @override
  String toString() {
    return 'SettingCalendarItem(key: $key, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SettingCalendarItemImpl &&
            (identical(other.key, key) || other.key == key) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, key, name);

  /// Create a copy of SettingCalendarItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SettingCalendarItemImplCopyWith<_$SettingCalendarItemImpl> get copyWith =>
      __$$SettingCalendarItemImplCopyWithImpl<_$SettingCalendarItemImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SettingCalendarItemImplToJson(
      this,
    );
  }
}

abstract class _SettingCalendarItem implements SettingCalendarItem {
  const factory _SettingCalendarItem(
          {@JsonKey(name: "key") required final String key,
          @JsonKey(name: "name") required final String name}) =
      _$SettingCalendarItemImpl;

  factory _SettingCalendarItem.fromJson(Map<String, dynamic> json) =
      _$SettingCalendarItemImpl.fromJson;

  @override
  @JsonKey(name: "key")
  String get key;
  @override
  @JsonKey(name: "name")
  String get name;

  /// Create a copy of SettingCalendarItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SettingCalendarItemImplCopyWith<_$SettingCalendarItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SettingCashierPrinterItem _$SettingCashierPrinterItemFromJson(
    Map<String, dynamic> json) {
  return _SettingCashierPrinterItem.fromJson(json);
}

/// @nodoc
mixin _$SettingCashierPrinterItem {
  @JsonKey(name: "key")
  String get key => throw _privateConstructorUsedError;
  @JsonKey(name: "printer_id")
  String get printerId => throw _privateConstructorUsedError;

  /// Serializes this SettingCashierPrinterItem to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SettingCashierPrinterItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SettingCashierPrinterItemCopyWith<SettingCashierPrinterItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SettingCashierPrinterItemCopyWith<$Res> {
  factory $SettingCashierPrinterItemCopyWith(SettingCashierPrinterItem value,
          $Res Function(SettingCashierPrinterItem) then) =
      _$SettingCashierPrinterItemCopyWithImpl<$Res, SettingCashierPrinterItem>;
  @useResult
  $Res call(
      {@JsonKey(name: "key") String key,
      @JsonKey(name: "printer_id") String printerId});
}

/// @nodoc
class _$SettingCashierPrinterItemCopyWithImpl<$Res,
        $Val extends SettingCashierPrinterItem>
    implements $SettingCashierPrinterItemCopyWith<$Res> {
  _$SettingCashierPrinterItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SettingCashierPrinterItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = null,
    Object? printerId = null,
  }) {
    return _then(_value.copyWith(
      key: null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
      printerId: null == printerId
          ? _value.printerId
          : printerId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SettingCashierPrinterItemImplCopyWith<$Res>
    implements $SettingCashierPrinterItemCopyWith<$Res> {
  factory _$$SettingCashierPrinterItemImplCopyWith(
          _$SettingCashierPrinterItemImpl value,
          $Res Function(_$SettingCashierPrinterItemImpl) then) =
      __$$SettingCashierPrinterItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "key") String key,
      @JsonKey(name: "printer_id") String printerId});
}

/// @nodoc
class __$$SettingCashierPrinterItemImplCopyWithImpl<$Res>
    extends _$SettingCashierPrinterItemCopyWithImpl<$Res,
        _$SettingCashierPrinterItemImpl>
    implements _$$SettingCashierPrinterItemImplCopyWith<$Res> {
  __$$SettingCashierPrinterItemImplCopyWithImpl(
      _$SettingCashierPrinterItemImpl _value,
      $Res Function(_$SettingCashierPrinterItemImpl) _then)
      : super(_value, _then);

  /// Create a copy of SettingCashierPrinterItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = null,
    Object? printerId = null,
  }) {
    return _then(_$SettingCashierPrinterItemImpl(
      key: null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
      printerId: null == printerId
          ? _value.printerId
          : printerId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SettingCashierPrinterItemImpl implements _SettingCashierPrinterItem {
  const _$SettingCashierPrinterItemImpl(
      {@JsonKey(name: "key") required this.key,
      @JsonKey(name: "printer_id") required this.printerId});

  factory _$SettingCashierPrinterItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$SettingCashierPrinterItemImplFromJson(json);

  @override
  @JsonKey(name: "key")
  final String key;
  @override
  @JsonKey(name: "printer_id")
  final String printerId;

  @override
  String toString() {
    return 'SettingCashierPrinterItem(key: $key, printerId: $printerId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SettingCashierPrinterItemImpl &&
            (identical(other.key, key) || other.key == key) &&
            (identical(other.printerId, printerId) ||
                other.printerId == printerId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, key, printerId);

  /// Create a copy of SettingCashierPrinterItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SettingCashierPrinterItemImplCopyWith<_$SettingCashierPrinterItemImpl>
      get copyWith => __$$SettingCashierPrinterItemImplCopyWithImpl<
          _$SettingCashierPrinterItemImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SettingCashierPrinterItemImplToJson(
      this,
    );
  }
}

abstract class _SettingCashierPrinterItem implements SettingCashierPrinterItem {
  const factory _SettingCashierPrinterItem(
          {@JsonKey(name: "key") required final String key,
          @JsonKey(name: "printer_id") required final String printerId}) =
      _$SettingCashierPrinterItemImpl;

  factory _SettingCashierPrinterItem.fromJson(Map<String, dynamic> json) =
      _$SettingCashierPrinterItemImpl.fromJson;

  @override
  @JsonKey(name: "key")
  String get key;
  @override
  @JsonKey(name: "printer_id")
  String get printerId;

  /// Create a copy of SettingCashierPrinterItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SettingCashierPrinterItemImplCopyWith<_$SettingCashierPrinterItemImpl>
      get copyWith => throw _privateConstructorUsedError;
}

SettingPrintItem _$SettingPrintItemFromJson(Map<String, dynamic> json) {
  return _SettingPrintItem.fromJson(json);
}

/// @nodoc
mixin _$SettingPrintItem {
  @JsonKey(name: "key")
  String get key => throw _privateConstructorUsedError;
  @JsonKey(name: "name")
  String get name => throw _privateConstructorUsedError;

  /// Serializes this SettingPrintItem to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SettingPrintItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SettingPrintItemCopyWith<SettingPrintItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SettingPrintItemCopyWith<$Res> {
  factory $SettingPrintItemCopyWith(
          SettingPrintItem value, $Res Function(SettingPrintItem) then) =
      _$SettingPrintItemCopyWithImpl<$Res, SettingPrintItem>;
  @useResult
  $Res call(
      {@JsonKey(name: "key") String key, @JsonKey(name: "name") String name});
}

/// @nodoc
class _$SettingPrintItemCopyWithImpl<$Res, $Val extends SettingPrintItem>
    implements $SettingPrintItemCopyWith<$Res> {
  _$SettingPrintItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SettingPrintItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = null,
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      key: null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SettingPrintItemImplCopyWith<$Res>
    implements $SettingPrintItemCopyWith<$Res> {
  factory _$$SettingPrintItemImplCopyWith(_$SettingPrintItemImpl value,
          $Res Function(_$SettingPrintItemImpl) then) =
      __$$SettingPrintItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "key") String key, @JsonKey(name: "name") String name});
}

/// @nodoc
class __$$SettingPrintItemImplCopyWithImpl<$Res>
    extends _$SettingPrintItemCopyWithImpl<$Res, _$SettingPrintItemImpl>
    implements _$$SettingPrintItemImplCopyWith<$Res> {
  __$$SettingPrintItemImplCopyWithImpl(_$SettingPrintItemImpl _value,
      $Res Function(_$SettingPrintItemImpl) _then)
      : super(_value, _then);

  /// Create a copy of SettingPrintItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = null,
    Object? name = null,
  }) {
    return _then(_$SettingPrintItemImpl(
      key: null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SettingPrintItemImpl implements _SettingPrintItem {
  const _$SettingPrintItemImpl(
      {@JsonKey(name: "key") required this.key,
      @JsonKey(name: "name") required this.name});

  factory _$SettingPrintItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$SettingPrintItemImplFromJson(json);

  @override
  @JsonKey(name: "key")
  final String key;
  @override
  @JsonKey(name: "name")
  final String name;

  @override
  String toString() {
    return 'SettingPrintItem(key: $key, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SettingPrintItemImpl &&
            (identical(other.key, key) || other.key == key) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, key, name);

  /// Create a copy of SettingPrintItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SettingPrintItemImplCopyWith<_$SettingPrintItemImpl> get copyWith =>
      __$$SettingPrintItemImplCopyWithImpl<_$SettingPrintItemImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SettingPrintItemImplToJson(
      this,
    );
  }
}

abstract class _SettingPrintItem implements SettingPrintItem {
  const factory _SettingPrintItem(
          {@JsonKey(name: "key") required final String key,
          @JsonKey(name: "name") required final String name}) =
      _$SettingPrintItemImpl;

  factory _SettingPrintItem.fromJson(Map<String, dynamic> json) =
      _$SettingPrintItemImpl.fromJson;

  @override
  @JsonKey(name: "key")
  String get key;
  @override
  @JsonKey(name: "name")
  String get name;

  /// Create a copy of SettingPrintItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SettingPrintItemImplCopyWith<_$SettingPrintItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'printer_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RespPrinterData _$RespPrinterDataFromJson(Map<String, dynamic> json) {
  return _RespPrinterData.fromJson(json);
}

/// @nodoc
mixin _$RespPrinterData {
  @JsonKey(name: "copies")
  int get copies => throw _privateConstructorUsedError;
  @JsonKey(name: "data")
  String get data => throw _privateConstructorUsedError;
  @JsonKey(name: "print_method")
  int get printMethod => throw _privateConstructorUsedError;
  @JsonKey(name: "is_cashier_printer")
  bool get isCashierPrinter => throw _privateConstructorUsedError;
  @JsonKey(name: "is_usb_printer")
  bool? get isUsbPrinter => throw _privateConstructorUsedError;
  @JsonKey(name: "printer_config")
  String get printerConfig =>
      throw _privateConstructorUsedError; // 打印机配置，根据这个字段来分组
  @JsonKey(name: "printer_type")
  String get printerType => throw _privateConstructorUsedError;
  @JsonKey(name: "uuid")
  int get uuid => throw _privateConstructorUsedError;
  @JsonKey(name: "printing_time")
  int get printingTime => throw _privateConstructorUsedError;

  /// Serializes this RespPrinterData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RespPrinterData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RespPrinterDataCopyWith<RespPrinterData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RespPrinterDataCopyWith<$Res> {
  factory $RespPrinterDataCopyWith(
          RespPrinterData value, $Res Function(RespPrinterData) then) =
      _$RespPrinterDataCopyWithImpl<$Res, RespPrinterData>;
  @useResult
  $Res call(
      {@JsonKey(name: "copies") int copies,
      @JsonKey(name: "data") String data,
      @JsonKey(name: "print_method") int printMethod,
      @JsonKey(name: "is_cashier_printer") bool isCashierPrinter,
      @JsonKey(name: "is_usb_printer") bool? isUsbPrinter,
      @JsonKey(name: "printer_config") String printerConfig,
      @JsonKey(name: "printer_type") String printerType,
      @JsonKey(name: "uuid") int uuid,
      @JsonKey(name: "printing_time") int printingTime});
}

/// @nodoc
class _$RespPrinterDataCopyWithImpl<$Res, $Val extends RespPrinterData>
    implements $RespPrinterDataCopyWith<$Res> {
  _$RespPrinterDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RespPrinterData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? copies = null,
    Object? data = null,
    Object? printMethod = null,
    Object? isCashierPrinter = null,
    Object? isUsbPrinter = freezed,
    Object? printerConfig = null,
    Object? printerType = null,
    Object? uuid = null,
    Object? printingTime = null,
  }) {
    return _then(_value.copyWith(
      copies: null == copies
          ? _value.copies
          : copies // ignore: cast_nullable_to_non_nullable
              as int,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as String,
      printMethod: null == printMethod
          ? _value.printMethod
          : printMethod // ignore: cast_nullable_to_non_nullable
              as int,
      isCashierPrinter: null == isCashierPrinter
          ? _value.isCashierPrinter
          : isCashierPrinter // ignore: cast_nullable_to_non_nullable
              as bool,
      isUsbPrinter: freezed == isUsbPrinter
          ? _value.isUsbPrinter
          : isUsbPrinter // ignore: cast_nullable_to_non_nullable
              as bool?,
      printerConfig: null == printerConfig
          ? _value.printerConfig
          : printerConfig // ignore: cast_nullable_to_non_nullable
              as String,
      printerType: null == printerType
          ? _value.printerType
          : printerType // ignore: cast_nullable_to_non_nullable
              as String,
      uuid: null == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as int,
      printingTime: null == printingTime
          ? _value.printingTime
          : printingTime // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RespPrinterDataImplCopyWith<$Res>
    implements $RespPrinterDataCopyWith<$Res> {
  factory _$$RespPrinterDataImplCopyWith(_$RespPrinterDataImpl value,
          $Res Function(_$RespPrinterDataImpl) then) =
      __$$RespPrinterDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "copies") int copies,
      @JsonKey(name: "data") String data,
      @JsonKey(name: "print_method") int printMethod,
      @JsonKey(name: "is_cashier_printer") bool isCashierPrinter,
      @JsonKey(name: "is_usb_printer") bool? isUsbPrinter,
      @JsonKey(name: "printer_config") String printerConfig,
      @JsonKey(name: "printer_type") String printerType,
      @JsonKey(name: "uuid") int uuid,
      @JsonKey(name: "printing_time") int printingTime});
}

/// @nodoc
class __$$RespPrinterDataImplCopyWithImpl<$Res>
    extends _$RespPrinterDataCopyWithImpl<$Res, _$RespPrinterDataImpl>
    implements _$$RespPrinterDataImplCopyWith<$Res> {
  __$$RespPrinterDataImplCopyWithImpl(
      _$RespPrinterDataImpl _value, $Res Function(_$RespPrinterDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of RespPrinterData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? copies = null,
    Object? data = null,
    Object? printMethod = null,
    Object? isCashierPrinter = null,
    Object? isUsbPrinter = freezed,
    Object? printerConfig = null,
    Object? printerType = null,
    Object? uuid = null,
    Object? printingTime = null,
  }) {
    return _then(_$RespPrinterDataImpl(
      copies: null == copies
          ? _value.copies
          : copies // ignore: cast_nullable_to_non_nullable
              as int,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as String,
      printMethod: null == printMethod
          ? _value.printMethod
          : printMethod // ignore: cast_nullable_to_non_nullable
              as int,
      isCashierPrinter: null == isCashierPrinter
          ? _value.isCashierPrinter
          : isCashierPrinter // ignore: cast_nullable_to_non_nullable
              as bool,
      isUsbPrinter: freezed == isUsbPrinter
          ? _value.isUsbPrinter
          : isUsbPrinter // ignore: cast_nullable_to_non_nullable
              as bool?,
      printerConfig: null == printerConfig
          ? _value.printerConfig
          : printerConfig // ignore: cast_nullable_to_non_nullable
              as String,
      printerType: null == printerType
          ? _value.printerType
          : printerType // ignore: cast_nullable_to_non_nullable
              as String,
      uuid: null == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as int,
      printingTime: null == printingTime
          ? _value.printingTime
          : printingTime // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RespPrinterDataImpl implements _RespPrinterData {
  const _$RespPrinterDataImpl(
      {@JsonKey(name: "copies") required this.copies,
      @JsonKey(name: "data") required this.data,
      @JsonKey(name: "print_method") required this.printMethod,
      @JsonKey(name: "is_cashier_printer") required this.isCashierPrinter,
      @JsonKey(name: "is_usb_printer") this.isUsbPrinter,
      @JsonKey(name: "printer_config") required this.printerConfig,
      @JsonKey(name: "printer_type") required this.printerType,
      @JsonKey(name: "uuid") required this.uuid,
      @JsonKey(name: "printing_time") this.printingTime = 200});

  factory _$RespPrinterDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$RespPrinterDataImplFromJson(json);

  @override
  @JsonKey(name: "copies")
  final int copies;
  @override
  @JsonKey(name: "data")
  final String data;
  @override
  @JsonKey(name: "print_method")
  final int printMethod;
  @override
  @JsonKey(name: "is_cashier_printer")
  final bool isCashierPrinter;
  @override
  @JsonKey(name: "is_usb_printer")
  final bool? isUsbPrinter;
  @override
  @JsonKey(name: "printer_config")
  final String printerConfig;
// 打印机配置，根据这个字段来分组
  @override
  @JsonKey(name: "printer_type")
  final String printerType;
  @override
  @JsonKey(name: "uuid")
  final int uuid;
  @override
  @JsonKey(name: "printing_time")
  final int printingTime;

  @override
  String toString() {
    return 'RespPrinterData(copies: $copies, data: $data, printMethod: $printMethod, isCashierPrinter: $isCashierPrinter, isUsbPrinter: $isUsbPrinter, printerConfig: $printerConfig, printerType: $printerType, uuid: $uuid, printingTime: $printingTime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RespPrinterDataImpl &&
            (identical(other.copies, copies) || other.copies == copies) &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.printMethod, printMethod) ||
                other.printMethod == printMethod) &&
            (identical(other.isCashierPrinter, isCashierPrinter) ||
                other.isCashierPrinter == isCashierPrinter) &&
            (identical(other.isUsbPrinter, isUsbPrinter) ||
                other.isUsbPrinter == isUsbPrinter) &&
            (identical(other.printerConfig, printerConfig) ||
                other.printerConfig == printerConfig) &&
            (identical(other.printerType, printerType) ||
                other.printerType == printerType) &&
            (identical(other.uuid, uuid) || other.uuid == uuid) &&
            (identical(other.printingTime, printingTime) ||
                other.printingTime == printingTime));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      copies,
      data,
      printMethod,
      isCashierPrinter,
      isUsbPrinter,
      printerConfig,
      printerType,
      uuid,
      printingTime);

  /// Create a copy of RespPrinterData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RespPrinterDataImplCopyWith<_$RespPrinterDataImpl> get copyWith =>
      __$$RespPrinterDataImplCopyWithImpl<_$RespPrinterDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RespPrinterDataImplToJson(
      this,
    );
  }
}

abstract class _RespPrinterData implements RespPrinterData {
  const factory _RespPrinterData(
      {@JsonKey(name: "copies") required final int copies,
      @JsonKey(name: "data") required final String data,
      @JsonKey(name: "print_method") required final int printMethod,
      @JsonKey(name: "is_cashier_printer") required final bool isCashierPrinter,
      @JsonKey(name: "is_usb_printer") final bool? isUsbPrinter,
      @JsonKey(name: "printer_config") required final String printerConfig,
      @JsonKey(name: "printer_type") required final String printerType,
      @JsonKey(name: "uuid") required final int uuid,
      @JsonKey(name: "printing_time")
      final int printingTime}) = _$RespPrinterDataImpl;

  factory _RespPrinterData.fromJson(Map<String, dynamic> json) =
      _$RespPrinterDataImpl.fromJson;

  @override
  @JsonKey(name: "copies")
  int get copies;
  @override
  @JsonKey(name: "data")
  String get data;
  @override
  @JsonKey(name: "print_method")
  int get printMethod;
  @override
  @JsonKey(name: "is_cashier_printer")
  bool get isCashierPrinter;
  @override
  @JsonKey(name: "is_usb_printer")
  bool? get isUsbPrinter;
  @override
  @JsonKey(name: "printer_config")
  String get printerConfig; // 打印机配置，根据这个字段来分组
  @override
  @JsonKey(name: "printer_type")
  String get printerType;
  @override
  @JsonKey(name: "uuid")
  int get uuid;
  @override
  @JsonKey(name: "printing_time")
  int get printingTime;

  /// Create a copy of RespPrinterData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RespPrinterDataImplCopyWith<_$RespPrinterDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_invoice_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

OrderInvoiceInfo _$OrderInvoiceInfoFromJson(Map<String, dynamic> json) {
  return _OrderInvoiceInfo.fromJson(json);
}

/// @nodoc
mixin _$OrderInvoiceInfo {
  @JsonKey(name: "company_addr")
  String get companyAddr => throw _privateConstructorUsedError;
  @JsonKey(name: "company_addr")
  set companyAddr(String value) => throw _privateConstructorUsedError;
  @JsonKey(name: "company_name")
  String get companyName => throw _privateConstructorUsedError;
  @JsonKey(name: "company_name")
  set companyName(String value) => throw _privateConstructorUsedError;
  @JsonKey(name: "company_phone")
  String get companyPhone => throw _privateConstructorUsedError;
  @JsonKey(name: "company_phone")
  set companyPhone(String value) => throw _privateConstructorUsedError;
  @JsonKey(name: "company_tax_number")
  String get companyTaxNumber => throw _privateConstructorUsedError;
  @JsonKey(name: "company_tax_number")
  set companyTaxNumber(String value) => throw _privateConstructorUsedError;

  /// Serializes this OrderInvoiceInfo to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OrderInvoiceInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OrderInvoiceInfoCopyWith<OrderInvoiceInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderInvoiceInfoCopyWith<$Res> {
  factory $OrderInvoiceInfoCopyWith(
          OrderInvoiceInfo value, $Res Function(OrderInvoiceInfo) then) =
      _$OrderInvoiceInfoCopyWithImpl<$Res, OrderInvoiceInfo>;
  @useResult
  $Res call(
      {@JsonKey(name: "company_addr") String companyAddr,
      @JsonKey(name: "company_name") String companyName,
      @JsonKey(name: "company_phone") String companyPhone,
      @JsonKey(name: "company_tax_number") String companyTaxNumber});
}

/// @nodoc
class _$OrderInvoiceInfoCopyWithImpl<$Res, $Val extends OrderInvoiceInfo>
    implements $OrderInvoiceInfoCopyWith<$Res> {
  _$OrderInvoiceInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OrderInvoiceInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? companyAddr = null,
    Object? companyName = null,
    Object? companyPhone = null,
    Object? companyTaxNumber = null,
  }) {
    return _then(_value.copyWith(
      companyAddr: null == companyAddr
          ? _value.companyAddr
          : companyAddr // ignore: cast_nullable_to_non_nullable
              as String,
      companyName: null == companyName
          ? _value.companyName
          : companyName // ignore: cast_nullable_to_non_nullable
              as String,
      companyPhone: null == companyPhone
          ? _value.companyPhone
          : companyPhone // ignore: cast_nullable_to_non_nullable
              as String,
      companyTaxNumber: null == companyTaxNumber
          ? _value.companyTaxNumber
          : companyTaxNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OrderInvoiceInfoImplCopyWith<$Res>
    implements $OrderInvoiceInfoCopyWith<$Res> {
  factory _$$OrderInvoiceInfoImplCopyWith(_$OrderInvoiceInfoImpl value,
          $Res Function(_$OrderInvoiceInfoImpl) then) =
      __$$OrderInvoiceInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "company_addr") String companyAddr,
      @JsonKey(name: "company_name") String companyName,
      @JsonKey(name: "company_phone") String companyPhone,
      @JsonKey(name: "company_tax_number") String companyTaxNumber});
}

/// @nodoc
class __$$OrderInvoiceInfoImplCopyWithImpl<$Res>
    extends _$OrderInvoiceInfoCopyWithImpl<$Res, _$OrderInvoiceInfoImpl>
    implements _$$OrderInvoiceInfoImplCopyWith<$Res> {
  __$$OrderInvoiceInfoImplCopyWithImpl(_$OrderInvoiceInfoImpl _value,
      $Res Function(_$OrderInvoiceInfoImpl) _then)
      : super(_value, _then);

  /// Create a copy of OrderInvoiceInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? companyAddr = null,
    Object? companyName = null,
    Object? companyPhone = null,
    Object? companyTaxNumber = null,
  }) {
    return _then(_$OrderInvoiceInfoImpl(
      companyAddr: null == companyAddr
          ? _value.companyAddr
          : companyAddr // ignore: cast_nullable_to_non_nullable
              as String,
      companyName: null == companyName
          ? _value.companyName
          : companyName // ignore: cast_nullable_to_non_nullable
              as String,
      companyPhone: null == companyPhone
          ? _value.companyPhone
          : companyPhone // ignore: cast_nullable_to_non_nullable
              as String,
      companyTaxNumber: null == companyTaxNumber
          ? _value.companyTaxNumber
          : companyTaxNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OrderInvoiceInfoImpl implements _OrderInvoiceInfo {
  _$OrderInvoiceInfoImpl(
      {@JsonKey(name: "company_addr") required this.companyAddr,
      @JsonKey(name: "company_name") required this.companyName,
      @JsonKey(name: "company_phone") required this.companyPhone,
      @JsonKey(name: "company_tax_number") required this.companyTaxNumber});

  factory _$OrderInvoiceInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrderInvoiceInfoImplFromJson(json);

  @override
  @JsonKey(name: "company_addr")
  String companyAddr;
  @override
  @JsonKey(name: "company_name")
  String companyName;
  @override
  @JsonKey(name: "company_phone")
  String companyPhone;
  @override
  @JsonKey(name: "company_tax_number")
  String companyTaxNumber;

  @override
  String toString() {
    return 'OrderInvoiceInfo(companyAddr: $companyAddr, companyName: $companyName, companyPhone: $companyPhone, companyTaxNumber: $companyTaxNumber)';
  }

  /// Create a copy of OrderInvoiceInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderInvoiceInfoImplCopyWith<_$OrderInvoiceInfoImpl> get copyWith =>
      __$$OrderInvoiceInfoImplCopyWithImpl<_$OrderInvoiceInfoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OrderInvoiceInfoImplToJson(
      this,
    );
  }
}

abstract class _OrderInvoiceInfo implements OrderInvoiceInfo {
  factory _OrderInvoiceInfo(
      {@JsonKey(name: "company_addr") required String companyAddr,
      @JsonKey(name: "company_name") required String companyName,
      @JsonKey(name: "company_phone") required String companyPhone,
      @JsonKey(name: "company_tax_number")
      required String companyTaxNumber}) = _$OrderInvoiceInfoImpl;

  factory _OrderInvoiceInfo.fromJson(Map<String, dynamic> json) =
      _$OrderInvoiceInfoImpl.fromJson;

  @override
  @JsonKey(name: "company_addr")
  String get companyAddr;
  @JsonKey(name: "company_addr")
  set companyAddr(String value);
  @override
  @JsonKey(name: "company_name")
  String get companyName;
  @JsonKey(name: "company_name")
  set companyName(String value);
  @override
  @JsonKey(name: "company_phone")
  String get companyPhone;
  @JsonKey(name: "company_phone")
  set companyPhone(String value);
  @override
  @JsonKey(name: "company_tax_number")
  String get companyTaxNumber;
  @JsonKey(name: "company_tax_number")
  set companyTaxNumber(String value);

  /// Create a copy of OrderInvoiceInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OrderInvoiceInfoImplCopyWith<_$OrderInvoiceInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

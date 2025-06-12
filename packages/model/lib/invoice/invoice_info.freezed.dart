// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'invoice_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

InvoiceInfo _$InvoiceInfoFromJson(Map<String, dynamic> json) {
  return _InvoiceInfo.fromJson(json);
}

/// @nodoc
mixin _$InvoiceInfo {
  String get companyAddress => throw _privateConstructorUsedError;
  set companyAddress(String value) => throw _privateConstructorUsedError;
  String get companyName => throw _privateConstructorUsedError;
  set companyName(String value) => throw _privateConstructorUsedError;
  String get companyTaxNumber => throw _privateConstructorUsedError;
  set companyTaxNumber(String value) => throw _privateConstructorUsedError;
  String? get companyPhone => throw _privateConstructorUsedError;
  set companyPhone(String? value) => throw _privateConstructorUsedError;
  String? get printLang => throw _privateConstructorUsedError;
  set printLang(String? value) => throw _privateConstructorUsedError;

  /// Serializes this InvoiceInfo to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of InvoiceInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $InvoiceInfoCopyWith<InvoiceInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InvoiceInfoCopyWith<$Res> {
  factory $InvoiceInfoCopyWith(
          InvoiceInfo value, $Res Function(InvoiceInfo) then) =
      _$InvoiceInfoCopyWithImpl<$Res, InvoiceInfo>;
  @useResult
  $Res call(
      {String companyAddress,
      String companyName,
      String companyTaxNumber,
      String? companyPhone,
      String? printLang});
}

/// @nodoc
class _$InvoiceInfoCopyWithImpl<$Res, $Val extends InvoiceInfo>
    implements $InvoiceInfoCopyWith<$Res> {
  _$InvoiceInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of InvoiceInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? companyAddress = null,
    Object? companyName = null,
    Object? companyTaxNumber = null,
    Object? companyPhone = freezed,
    Object? printLang = freezed,
  }) {
    return _then(_value.copyWith(
      companyAddress: null == companyAddress
          ? _value.companyAddress
          : companyAddress // ignore: cast_nullable_to_non_nullable
              as String,
      companyName: null == companyName
          ? _value.companyName
          : companyName // ignore: cast_nullable_to_non_nullable
              as String,
      companyTaxNumber: null == companyTaxNumber
          ? _value.companyTaxNumber
          : companyTaxNumber // ignore: cast_nullable_to_non_nullable
              as String,
      companyPhone: freezed == companyPhone
          ? _value.companyPhone
          : companyPhone // ignore: cast_nullable_to_non_nullable
              as String?,
      printLang: freezed == printLang
          ? _value.printLang
          : printLang // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InvoiceInfoImplCopyWith<$Res>
    implements $InvoiceInfoCopyWith<$Res> {
  factory _$$InvoiceInfoImplCopyWith(
          _$InvoiceInfoImpl value, $Res Function(_$InvoiceInfoImpl) then) =
      __$$InvoiceInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String companyAddress,
      String companyName,
      String companyTaxNumber,
      String? companyPhone,
      String? printLang});
}

/// @nodoc
class __$$InvoiceInfoImplCopyWithImpl<$Res>
    extends _$InvoiceInfoCopyWithImpl<$Res, _$InvoiceInfoImpl>
    implements _$$InvoiceInfoImplCopyWith<$Res> {
  __$$InvoiceInfoImplCopyWithImpl(
      _$InvoiceInfoImpl _value, $Res Function(_$InvoiceInfoImpl) _then)
      : super(_value, _then);

  /// Create a copy of InvoiceInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? companyAddress = null,
    Object? companyName = null,
    Object? companyTaxNumber = null,
    Object? companyPhone = freezed,
    Object? printLang = freezed,
  }) {
    return _then(_$InvoiceInfoImpl(
      companyAddress: null == companyAddress
          ? _value.companyAddress
          : companyAddress // ignore: cast_nullable_to_non_nullable
              as String,
      companyName: null == companyName
          ? _value.companyName
          : companyName // ignore: cast_nullable_to_non_nullable
              as String,
      companyTaxNumber: null == companyTaxNumber
          ? _value.companyTaxNumber
          : companyTaxNumber // ignore: cast_nullable_to_non_nullable
              as String,
      companyPhone: freezed == companyPhone
          ? _value.companyPhone
          : companyPhone // ignore: cast_nullable_to_non_nullable
              as String?,
      printLang: freezed == printLang
          ? _value.printLang
          : printLang // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$InvoiceInfoImpl implements _InvoiceInfo {
  _$InvoiceInfoImpl(
      {required this.companyAddress,
      required this.companyName,
      required this.companyTaxNumber,
      this.companyPhone,
      this.printLang});

  factory _$InvoiceInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$InvoiceInfoImplFromJson(json);

  @override
  String companyAddress;
  @override
  String companyName;
  @override
  String companyTaxNumber;
  @override
  String? companyPhone;
  @override
  String? printLang;

  @override
  String toString() {
    return 'InvoiceInfo(companyAddress: $companyAddress, companyName: $companyName, companyTaxNumber: $companyTaxNumber, companyPhone: $companyPhone, printLang: $printLang)';
  }

  /// Create a copy of InvoiceInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InvoiceInfoImplCopyWith<_$InvoiceInfoImpl> get copyWith =>
      __$$InvoiceInfoImplCopyWithImpl<_$InvoiceInfoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$InvoiceInfoImplToJson(
      this,
    );
  }
}

abstract class _InvoiceInfo implements InvoiceInfo {
  factory _InvoiceInfo(
      {required String companyAddress,
      required String companyName,
      required String companyTaxNumber,
      String? companyPhone,
      String? printLang}) = _$InvoiceInfoImpl;

  factory _InvoiceInfo.fromJson(Map<String, dynamic> json) =
      _$InvoiceInfoImpl.fromJson;

  @override
  String get companyAddress;
  set companyAddress(String value);
  @override
  String get companyName;
  set companyName(String value);
  @override
  String get companyTaxNumber;
  set companyTaxNumber(String value);
  @override
  String? get companyPhone;
  set companyPhone(String? value);
  @override
  String? get printLang;
  set printLang(String? value);

  /// Create a copy of InvoiceInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InvoiceInfoImplCopyWith<_$InvoiceInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'invoice.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

InvoicePrintRequest _$InvoicePrintRequestFromJson(Map<String, dynamic> json) {
  return _InvoicePrintRequest.fromJson(json);
}

/// @nodoc
mixin _$InvoicePrintRequest {
  @JsonKey(name: "company_addr")
  String? get companyAddr => throw _privateConstructorUsedError;
  @JsonKey(name: "company_addr")
  set companyAddr(String? value) => throw _privateConstructorUsedError;
  @JsonKey(name: "company_name")
  String? get companyName => throw _privateConstructorUsedError;
  @JsonKey(name: "company_name")
  set companyName(String? value) => throw _privateConstructorUsedError;
  @JsonKey(name: "company_phone")
  String? get companyPhone => throw _privateConstructorUsedError;
  @JsonKey(name: "company_phone")
  set companyPhone(String? value) => throw _privateConstructorUsedError;
  @JsonKey(name: "company_tax_number")
  String? get companyTaxNumber => throw _privateConstructorUsedError;
  @JsonKey(name: "company_tax_number")
  set companyTaxNumber(String? value) => throw _privateConstructorUsedError;
  @JsonKey(name: "print_lang")
  String? get printLang => throw _privateConstructorUsedError;
  @JsonKey(name: "print_lang")
  set printLang(String? value) => throw _privateConstructorUsedError;
  @JsonKey(name: "sale_bill_uuid")
  int get saleBillUuid => throw _privateConstructorUsedError;
  @JsonKey(name: "sale_bill_uuid")
  set saleBillUuid(int value) => throw _privateConstructorUsedError;
  @JsonKey(name: "sale_order_uuid")
  int get saleOrderUuid => throw _privateConstructorUsedError;
  @JsonKey(name: "sale_order_uuid")
  set saleOrderUuid(int value) => throw _privateConstructorUsedError;

  /// Serializes this InvoicePrintRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of InvoicePrintRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $InvoicePrintRequestCopyWith<InvoicePrintRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InvoicePrintRequestCopyWith<$Res> {
  factory $InvoicePrintRequestCopyWith(
          InvoicePrintRequest value, $Res Function(InvoicePrintRequest) then) =
      _$InvoicePrintRequestCopyWithImpl<$Res, InvoicePrintRequest>;
  @useResult
  $Res call(
      {@JsonKey(name: "company_addr") String? companyAddr,
      @JsonKey(name: "company_name") String? companyName,
      @JsonKey(name: "company_phone") String? companyPhone,
      @JsonKey(name: "company_tax_number") String? companyTaxNumber,
      @JsonKey(name: "print_lang") String? printLang,
      @JsonKey(name: "sale_bill_uuid") int saleBillUuid,
      @JsonKey(name: "sale_order_uuid") int saleOrderUuid});
}

/// @nodoc
class _$InvoicePrintRequestCopyWithImpl<$Res, $Val extends InvoicePrintRequest>
    implements $InvoicePrintRequestCopyWith<$Res> {
  _$InvoicePrintRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of InvoicePrintRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? companyAddr = freezed,
    Object? companyName = freezed,
    Object? companyPhone = freezed,
    Object? companyTaxNumber = freezed,
    Object? printLang = freezed,
    Object? saleBillUuid = null,
    Object? saleOrderUuid = null,
  }) {
    return _then(_value.copyWith(
      companyAddr: freezed == companyAddr
          ? _value.companyAddr
          : companyAddr // ignore: cast_nullable_to_non_nullable
              as String?,
      companyName: freezed == companyName
          ? _value.companyName
          : companyName // ignore: cast_nullable_to_non_nullable
              as String?,
      companyPhone: freezed == companyPhone
          ? _value.companyPhone
          : companyPhone // ignore: cast_nullable_to_non_nullable
              as String?,
      companyTaxNumber: freezed == companyTaxNumber
          ? _value.companyTaxNumber
          : companyTaxNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      printLang: freezed == printLang
          ? _value.printLang
          : printLang // ignore: cast_nullable_to_non_nullable
              as String?,
      saleBillUuid: null == saleBillUuid
          ? _value.saleBillUuid
          : saleBillUuid // ignore: cast_nullable_to_non_nullable
              as int,
      saleOrderUuid: null == saleOrderUuid
          ? _value.saleOrderUuid
          : saleOrderUuid // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InvoicePrintRequestImplCopyWith<$Res>
    implements $InvoicePrintRequestCopyWith<$Res> {
  factory _$$InvoicePrintRequestImplCopyWith(_$InvoicePrintRequestImpl value,
          $Res Function(_$InvoicePrintRequestImpl) then) =
      __$$InvoicePrintRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "company_addr") String? companyAddr,
      @JsonKey(name: "company_name") String? companyName,
      @JsonKey(name: "company_phone") String? companyPhone,
      @JsonKey(name: "company_tax_number") String? companyTaxNumber,
      @JsonKey(name: "print_lang") String? printLang,
      @JsonKey(name: "sale_bill_uuid") int saleBillUuid,
      @JsonKey(name: "sale_order_uuid") int saleOrderUuid});
}

/// @nodoc
class __$$InvoicePrintRequestImplCopyWithImpl<$Res>
    extends _$InvoicePrintRequestCopyWithImpl<$Res, _$InvoicePrintRequestImpl>
    implements _$$InvoicePrintRequestImplCopyWith<$Res> {
  __$$InvoicePrintRequestImplCopyWithImpl(_$InvoicePrintRequestImpl _value,
      $Res Function(_$InvoicePrintRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of InvoicePrintRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? companyAddr = freezed,
    Object? companyName = freezed,
    Object? companyPhone = freezed,
    Object? companyTaxNumber = freezed,
    Object? printLang = freezed,
    Object? saleBillUuid = null,
    Object? saleOrderUuid = null,
  }) {
    return _then(_$InvoicePrintRequestImpl(
      companyAddr: freezed == companyAddr
          ? _value.companyAddr
          : companyAddr // ignore: cast_nullable_to_non_nullable
              as String?,
      companyName: freezed == companyName
          ? _value.companyName
          : companyName // ignore: cast_nullable_to_non_nullable
              as String?,
      companyPhone: freezed == companyPhone
          ? _value.companyPhone
          : companyPhone // ignore: cast_nullable_to_non_nullable
              as String?,
      companyTaxNumber: freezed == companyTaxNumber
          ? _value.companyTaxNumber
          : companyTaxNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      printLang: freezed == printLang
          ? _value.printLang
          : printLang // ignore: cast_nullable_to_non_nullable
              as String?,
      saleBillUuid: null == saleBillUuid
          ? _value.saleBillUuid
          : saleBillUuid // ignore: cast_nullable_to_non_nullable
              as int,
      saleOrderUuid: null == saleOrderUuid
          ? _value.saleOrderUuid
          : saleOrderUuid // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$InvoicePrintRequestImpl implements _InvoicePrintRequest {
  _$InvoicePrintRequestImpl(
      {@JsonKey(name: "company_addr") this.companyAddr,
      @JsonKey(name: "company_name") this.companyName,
      @JsonKey(name: "company_phone") this.companyPhone,
      @JsonKey(name: "company_tax_number") this.companyTaxNumber,
      @JsonKey(name: "print_lang") this.printLang,
      @JsonKey(name: "sale_bill_uuid") required this.saleBillUuid,
      @JsonKey(name: "sale_order_uuid") required this.saleOrderUuid});

  factory _$InvoicePrintRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$InvoicePrintRequestImplFromJson(json);

  @override
  @JsonKey(name: "company_addr")
  String? companyAddr;
  @override
  @JsonKey(name: "company_name")
  String? companyName;
  @override
  @JsonKey(name: "company_phone")
  String? companyPhone;
  @override
  @JsonKey(name: "company_tax_number")
  String? companyTaxNumber;
  @override
  @JsonKey(name: "print_lang")
  String? printLang;
  @override
  @JsonKey(name: "sale_bill_uuid")
  int saleBillUuid;
  @override
  @JsonKey(name: "sale_order_uuid")
  int saleOrderUuid;

  @override
  String toString() {
    return 'InvoicePrintRequest(companyAddr: $companyAddr, companyName: $companyName, companyPhone: $companyPhone, companyTaxNumber: $companyTaxNumber, printLang: $printLang, saleBillUuid: $saleBillUuid, saleOrderUuid: $saleOrderUuid)';
  }

  /// Create a copy of InvoicePrintRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InvoicePrintRequestImplCopyWith<_$InvoicePrintRequestImpl> get copyWith =>
      __$$InvoicePrintRequestImplCopyWithImpl<_$InvoicePrintRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$InvoicePrintRequestImplToJson(
      this,
    );
  }
}

abstract class _InvoicePrintRequest implements InvoicePrintRequest {
  factory _InvoicePrintRequest(
          {@JsonKey(name: "company_addr") String? companyAddr,
          @JsonKey(name: "company_name") String? companyName,
          @JsonKey(name: "company_phone") String? companyPhone,
          @JsonKey(name: "company_tax_number") String? companyTaxNumber,
          @JsonKey(name: "print_lang") String? printLang,
          @JsonKey(name: "sale_bill_uuid") required int saleBillUuid,
          @JsonKey(name: "sale_order_uuid") required int saleOrderUuid}) =
      _$InvoicePrintRequestImpl;

  factory _InvoicePrintRequest.fromJson(Map<String, dynamic> json) =
      _$InvoicePrintRequestImpl.fromJson;

  @override
  @JsonKey(name: "company_addr")
  String? get companyAddr;
  @JsonKey(name: "company_addr")
  set companyAddr(String? value);
  @override
  @JsonKey(name: "company_name")
  String? get companyName;
  @JsonKey(name: "company_name")
  set companyName(String? value);
  @override
  @JsonKey(name: "company_phone")
  String? get companyPhone;
  @JsonKey(name: "company_phone")
  set companyPhone(String? value);
  @override
  @JsonKey(name: "company_tax_number")
  String? get companyTaxNumber;
  @JsonKey(name: "company_tax_number")
  set companyTaxNumber(String? value);
  @override
  @JsonKey(name: "print_lang")
  String? get printLang;
  @JsonKey(name: "print_lang")
  set printLang(String? value);
  @override
  @JsonKey(name: "sale_bill_uuid")
  int get saleBillUuid;
  @JsonKey(name: "sale_bill_uuid")
  set saleBillUuid(int value);
  @override
  @JsonKey(name: "sale_order_uuid")
  int get saleOrderUuid;
  @JsonKey(name: "sale_order_uuid")
  set saleOrderUuid(int value);

  /// Create a copy of InvoicePrintRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InvoicePrintRequestImplCopyWith<_$InvoicePrintRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

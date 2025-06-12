// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'request_order_invoice.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RequestOrderInvoice _$RequestOrderInvoiceFromJson(Map<String, dynamic> json) {
  return _RequestOrderInvoicePrint.fromJson(json);
}

/// @nodoc
mixin _$RequestOrderInvoice {
  @JsonKey(name: "company_addr")
  String? get companyAddr => throw _privateConstructorUsedError;
  @JsonKey(name: "company_name")
  String? get companyName => throw _privateConstructorUsedError;
  @JsonKey(name: "company_phone")
  String? get companyPhone => throw _privateConstructorUsedError;
  @JsonKey(name: "company_tax_number")
  String? get companyTaxNumber => throw _privateConstructorUsedError;
  @JsonKey(name: "print_lang")
  String? get printLang => throw _privateConstructorUsedError;
  @JsonKey(name: "sale_bill_uuid")
  int get saleBillUuid => throw _privateConstructorUsedError;
  @JsonKey(name: "sale_order_uuid")
  int get saleOrderUuid => throw _privateConstructorUsedError;

  /// Serializes this RequestOrderInvoice to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RequestOrderInvoice
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RequestOrderInvoiceCopyWith<RequestOrderInvoice> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RequestOrderInvoiceCopyWith<$Res> {
  factory $RequestOrderInvoiceCopyWith(
          RequestOrderInvoice value, $Res Function(RequestOrderInvoice) then) =
      _$RequestOrderInvoiceCopyWithImpl<$Res, RequestOrderInvoice>;
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
class _$RequestOrderInvoiceCopyWithImpl<$Res, $Val extends RequestOrderInvoice>
    implements $RequestOrderInvoiceCopyWith<$Res> {
  _$RequestOrderInvoiceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RequestOrderInvoice
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
abstract class _$$RequestOrderInvoicePrintImplCopyWith<$Res>
    implements $RequestOrderInvoiceCopyWith<$Res> {
  factory _$$RequestOrderInvoicePrintImplCopyWith(
          _$RequestOrderInvoicePrintImpl value,
          $Res Function(_$RequestOrderInvoicePrintImpl) then) =
      __$$RequestOrderInvoicePrintImplCopyWithImpl<$Res>;
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
class __$$RequestOrderInvoicePrintImplCopyWithImpl<$Res>
    extends _$RequestOrderInvoiceCopyWithImpl<$Res,
        _$RequestOrderInvoicePrintImpl>
    implements _$$RequestOrderInvoicePrintImplCopyWith<$Res> {
  __$$RequestOrderInvoicePrintImplCopyWithImpl(
      _$RequestOrderInvoicePrintImpl _value,
      $Res Function(_$RequestOrderInvoicePrintImpl) _then)
      : super(_value, _then);

  /// Create a copy of RequestOrderInvoice
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
    return _then(_$RequestOrderInvoicePrintImpl(
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
class _$RequestOrderInvoicePrintImpl implements _RequestOrderInvoicePrint {
  _$RequestOrderInvoicePrintImpl(
      {@JsonKey(name: "company_addr") this.companyAddr,
      @JsonKey(name: "company_name") this.companyName,
      @JsonKey(name: "company_phone") this.companyPhone,
      @JsonKey(name: "company_tax_number") this.companyTaxNumber,
      @JsonKey(name: "print_lang") this.printLang,
      @JsonKey(name: "sale_bill_uuid") required this.saleBillUuid,
      @JsonKey(name: "sale_order_uuid") required this.saleOrderUuid});

  factory _$RequestOrderInvoicePrintImpl.fromJson(Map<String, dynamic> json) =>
      _$$RequestOrderInvoicePrintImplFromJson(json);

  @override
  @JsonKey(name: "company_addr")
  final String? companyAddr;
  @override
  @JsonKey(name: "company_name")
  final String? companyName;
  @override
  @JsonKey(name: "company_phone")
  final String? companyPhone;
  @override
  @JsonKey(name: "company_tax_number")
  final String? companyTaxNumber;
  @override
  @JsonKey(name: "print_lang")
  final String? printLang;
  @override
  @JsonKey(name: "sale_bill_uuid")
  final int saleBillUuid;
  @override
  @JsonKey(name: "sale_order_uuid")
  final int saleOrderUuid;

  @override
  String toString() {
    return 'RequestOrderInvoice(companyAddr: $companyAddr, companyName: $companyName, companyPhone: $companyPhone, companyTaxNumber: $companyTaxNumber, printLang: $printLang, saleBillUuid: $saleBillUuid, saleOrderUuid: $saleOrderUuid)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RequestOrderInvoicePrintImpl &&
            (identical(other.companyAddr, companyAddr) ||
                other.companyAddr == companyAddr) &&
            (identical(other.companyName, companyName) ||
                other.companyName == companyName) &&
            (identical(other.companyPhone, companyPhone) ||
                other.companyPhone == companyPhone) &&
            (identical(other.companyTaxNumber, companyTaxNumber) ||
                other.companyTaxNumber == companyTaxNumber) &&
            (identical(other.printLang, printLang) ||
                other.printLang == printLang) &&
            (identical(other.saleBillUuid, saleBillUuid) ||
                other.saleBillUuid == saleBillUuid) &&
            (identical(other.saleOrderUuid, saleOrderUuid) ||
                other.saleOrderUuid == saleOrderUuid));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, companyAddr, companyName,
      companyPhone, companyTaxNumber, printLang, saleBillUuid, saleOrderUuid);

  /// Create a copy of RequestOrderInvoice
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RequestOrderInvoicePrintImplCopyWith<_$RequestOrderInvoicePrintImpl>
      get copyWith => __$$RequestOrderInvoicePrintImplCopyWithImpl<
          _$RequestOrderInvoicePrintImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RequestOrderInvoicePrintImplToJson(
      this,
    );
  }
}

abstract class _RequestOrderInvoicePrint implements RequestOrderInvoice {
  factory _RequestOrderInvoicePrint(
          {@JsonKey(name: "company_addr") final String? companyAddr,
          @JsonKey(name: "company_name") final String? companyName,
          @JsonKey(name: "company_phone") final String? companyPhone,
          @JsonKey(name: "company_tax_number") final String? companyTaxNumber,
          @JsonKey(name: "print_lang") final String? printLang,
          @JsonKey(name: "sale_bill_uuid") required final int saleBillUuid,
          @JsonKey(name: "sale_order_uuid") required final int saleOrderUuid}) =
      _$RequestOrderInvoicePrintImpl;

  factory _RequestOrderInvoicePrint.fromJson(Map<String, dynamic> json) =
      _$RequestOrderInvoicePrintImpl.fromJson;

  @override
  @JsonKey(name: "company_addr")
  String? get companyAddr;
  @override
  @JsonKey(name: "company_name")
  String? get companyName;
  @override
  @JsonKey(name: "company_phone")
  String? get companyPhone;
  @override
  @JsonKey(name: "company_tax_number")
  String? get companyTaxNumber;
  @override
  @JsonKey(name: "print_lang")
  String? get printLang;
  @override
  @JsonKey(name: "sale_bill_uuid")
  int get saleBillUuid;
  @override
  @JsonKey(name: "sale_order_uuid")
  int get saleOrderUuid;

  /// Create a copy of RequestOrderInvoice
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RequestOrderInvoicePrintImplCopyWith<_$RequestOrderInvoicePrintImpl>
      get copyWith => throw _privateConstructorUsedError;
}

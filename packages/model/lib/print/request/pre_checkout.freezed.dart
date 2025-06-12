// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pre_checkout.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RespPrinterRequest _$RespPrinterRequestFromJson(Map<String, dynamic> json) {
  return _RespPrinterRequest.fromJson(json);
}

/// @nodoc
mixin _$RespPrinterRequest {
  @JsonKey(name: "pay_method_uuid")
  int? get payMethodUuid => throw _privateConstructorUsedError;
  @JsonKey(name: "pay_method_uuid")
  set payMethodUuid(int? value) => throw _privateConstructorUsedError;
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

  /// Serializes this RespPrinterRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RespPrinterRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RespPrinterRequestCopyWith<RespPrinterRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RespPrinterRequestCopyWith<$Res> {
  factory $RespPrinterRequestCopyWith(
          RespPrinterRequest value, $Res Function(RespPrinterRequest) then) =
      _$RespPrinterRequestCopyWithImpl<$Res, RespPrinterRequest>;
  @useResult
  $Res call(
      {@JsonKey(name: "pay_method_uuid") int? payMethodUuid,
      @JsonKey(name: "print_lang") String? printLang,
      @JsonKey(name: "sale_bill_uuid") int saleBillUuid,
      @JsonKey(name: "sale_order_uuid") int saleOrderUuid});
}

/// @nodoc
class _$RespPrinterRequestCopyWithImpl<$Res, $Val extends RespPrinterRequest>
    implements $RespPrinterRequestCopyWith<$Res> {
  _$RespPrinterRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RespPrinterRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? payMethodUuid = freezed,
    Object? printLang = freezed,
    Object? saleBillUuid = null,
    Object? saleOrderUuid = null,
  }) {
    return _then(_value.copyWith(
      payMethodUuid: freezed == payMethodUuid
          ? _value.payMethodUuid
          : payMethodUuid // ignore: cast_nullable_to_non_nullable
              as int?,
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
abstract class _$$RespPrinterRequestImplCopyWith<$Res>
    implements $RespPrinterRequestCopyWith<$Res> {
  factory _$$RespPrinterRequestImplCopyWith(_$RespPrinterRequestImpl value,
          $Res Function(_$RespPrinterRequestImpl) then) =
      __$$RespPrinterRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "pay_method_uuid") int? payMethodUuid,
      @JsonKey(name: "print_lang") String? printLang,
      @JsonKey(name: "sale_bill_uuid") int saleBillUuid,
      @JsonKey(name: "sale_order_uuid") int saleOrderUuid});
}

/// @nodoc
class __$$RespPrinterRequestImplCopyWithImpl<$Res>
    extends _$RespPrinterRequestCopyWithImpl<$Res, _$RespPrinterRequestImpl>
    implements _$$RespPrinterRequestImplCopyWith<$Res> {
  __$$RespPrinterRequestImplCopyWithImpl(_$RespPrinterRequestImpl _value,
      $Res Function(_$RespPrinterRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of RespPrinterRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? payMethodUuid = freezed,
    Object? printLang = freezed,
    Object? saleBillUuid = null,
    Object? saleOrderUuid = null,
  }) {
    return _then(_$RespPrinterRequestImpl(
      payMethodUuid: freezed == payMethodUuid
          ? _value.payMethodUuid
          : payMethodUuid // ignore: cast_nullable_to_non_nullable
              as int?,
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
class _$RespPrinterRequestImpl implements _RespPrinterRequest {
  _$RespPrinterRequestImpl(
      {@JsonKey(name: "pay_method_uuid") this.payMethodUuid,
      @JsonKey(name: "print_lang") this.printLang,
      @JsonKey(name: "sale_bill_uuid") required this.saleBillUuid,
      @JsonKey(name: "sale_order_uuid") required this.saleOrderUuid});

  factory _$RespPrinterRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$RespPrinterRequestImplFromJson(json);

  @override
  @JsonKey(name: "pay_method_uuid")
  int? payMethodUuid;
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
    return 'RespPrinterRequest(payMethodUuid: $payMethodUuid, printLang: $printLang, saleBillUuid: $saleBillUuid, saleOrderUuid: $saleOrderUuid)';
  }

  /// Create a copy of RespPrinterRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RespPrinterRequestImplCopyWith<_$RespPrinterRequestImpl> get copyWith =>
      __$$RespPrinterRequestImplCopyWithImpl<_$RespPrinterRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RespPrinterRequestImplToJson(
      this,
    );
  }
}

abstract class _RespPrinterRequest implements RespPrinterRequest {
  factory _RespPrinterRequest(
          {@JsonKey(name: "pay_method_uuid") int? payMethodUuid,
          @JsonKey(name: "print_lang") String? printLang,
          @JsonKey(name: "sale_bill_uuid") required int saleBillUuid,
          @JsonKey(name: "sale_order_uuid") required int saleOrderUuid}) =
      _$RespPrinterRequestImpl;

  factory _RespPrinterRequest.fromJson(Map<String, dynamic> json) =
      _$RespPrinterRequestImpl.fromJson;

  @override
  @JsonKey(name: "pay_method_uuid")
  int? get payMethodUuid;
  @JsonKey(name: "pay_method_uuid")
  set payMethodUuid(int? value);
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

  /// Create a copy of RespPrinterRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RespPrinterRequestImplCopyWith<_$RespPrinterRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

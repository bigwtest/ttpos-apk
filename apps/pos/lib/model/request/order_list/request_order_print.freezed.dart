// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'request_order_print.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RequestOrderPrint _$RequestOrderPrintFromJson(Map<String, dynamic> json) {
  return _RequestOrderPrint.fromJson(json);
}

/// @nodoc
mixin _$RequestOrderPrint {
  @JsonKey(name: "pay_method_uuid")
  int? get payMethodUuid => throw _privateConstructorUsedError;
  @JsonKey(name: "print_lang")
  String? get printLang => throw _privateConstructorUsedError;
  @JsonKey(name: "sale_bill_uuid")
  int get saleBillUuid => throw _privateConstructorUsedError;
  @JsonKey(name: "sale_order_uuid")
  int get saleOrderUuid => throw _privateConstructorUsedError;

  /// Serializes this RequestOrderPrint to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RequestOrderPrint
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RequestOrderPrintCopyWith<RequestOrderPrint> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RequestOrderPrintCopyWith<$Res> {
  factory $RequestOrderPrintCopyWith(
          RequestOrderPrint value, $Res Function(RequestOrderPrint) then) =
      _$RequestOrderPrintCopyWithImpl<$Res, RequestOrderPrint>;
  @useResult
  $Res call(
      {@JsonKey(name: "pay_method_uuid") int? payMethodUuid,
      @JsonKey(name: "print_lang") String? printLang,
      @JsonKey(name: "sale_bill_uuid") int saleBillUuid,
      @JsonKey(name: "sale_order_uuid") int saleOrderUuid});
}

/// @nodoc
class _$RequestOrderPrintCopyWithImpl<$Res, $Val extends RequestOrderPrint>
    implements $RequestOrderPrintCopyWith<$Res> {
  _$RequestOrderPrintCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RequestOrderPrint
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
abstract class _$$RequestOrderPrintImplCopyWith<$Res>
    implements $RequestOrderPrintCopyWith<$Res> {
  factory _$$RequestOrderPrintImplCopyWith(_$RequestOrderPrintImpl value,
          $Res Function(_$RequestOrderPrintImpl) then) =
      __$$RequestOrderPrintImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "pay_method_uuid") int? payMethodUuid,
      @JsonKey(name: "print_lang") String? printLang,
      @JsonKey(name: "sale_bill_uuid") int saleBillUuid,
      @JsonKey(name: "sale_order_uuid") int saleOrderUuid});
}

/// @nodoc
class __$$RequestOrderPrintImplCopyWithImpl<$Res>
    extends _$RequestOrderPrintCopyWithImpl<$Res, _$RequestOrderPrintImpl>
    implements _$$RequestOrderPrintImplCopyWith<$Res> {
  __$$RequestOrderPrintImplCopyWithImpl(_$RequestOrderPrintImpl _value,
      $Res Function(_$RequestOrderPrintImpl) _then)
      : super(_value, _then);

  /// Create a copy of RequestOrderPrint
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? payMethodUuid = freezed,
    Object? printLang = freezed,
    Object? saleBillUuid = null,
    Object? saleOrderUuid = null,
  }) {
    return _then(_$RequestOrderPrintImpl(
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
class _$RequestOrderPrintImpl implements _RequestOrderPrint {
  _$RequestOrderPrintImpl(
      {@JsonKey(name: "pay_method_uuid") this.payMethodUuid,
      @JsonKey(name: "print_lang") this.printLang,
      @JsonKey(name: "sale_bill_uuid") required this.saleBillUuid,
      @JsonKey(name: "sale_order_uuid") required this.saleOrderUuid});

  factory _$RequestOrderPrintImpl.fromJson(Map<String, dynamic> json) =>
      _$$RequestOrderPrintImplFromJson(json);

  @override
  @JsonKey(name: "pay_method_uuid")
  final int? payMethodUuid;
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
    return 'RequestOrderPrint(payMethodUuid: $payMethodUuid, printLang: $printLang, saleBillUuid: $saleBillUuid, saleOrderUuid: $saleOrderUuid)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RequestOrderPrintImpl &&
            (identical(other.payMethodUuid, payMethodUuid) ||
                other.payMethodUuid == payMethodUuid) &&
            (identical(other.printLang, printLang) ||
                other.printLang == printLang) &&
            (identical(other.saleBillUuid, saleBillUuid) ||
                other.saleBillUuid == saleBillUuid) &&
            (identical(other.saleOrderUuid, saleOrderUuid) ||
                other.saleOrderUuid == saleOrderUuid));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, payMethodUuid, printLang, saleBillUuid, saleOrderUuid);

  /// Create a copy of RequestOrderPrint
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RequestOrderPrintImplCopyWith<_$RequestOrderPrintImpl> get copyWith =>
      __$$RequestOrderPrintImplCopyWithImpl<_$RequestOrderPrintImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RequestOrderPrintImplToJson(
      this,
    );
  }
}

abstract class _RequestOrderPrint implements RequestOrderPrint {
  factory _RequestOrderPrint(
          {@JsonKey(name: "pay_method_uuid") final int? payMethodUuid,
          @JsonKey(name: "print_lang") final String? printLang,
          @JsonKey(name: "sale_bill_uuid") required final int saleBillUuid,
          @JsonKey(name: "sale_order_uuid") required final int saleOrderUuid}) =
      _$RequestOrderPrintImpl;

  factory _RequestOrderPrint.fromJson(Map<String, dynamic> json) =
      _$RequestOrderPrintImpl.fromJson;

  @override
  @JsonKey(name: "pay_method_uuid")
  int? get payMethodUuid;
  @override
  @JsonKey(name: "print_lang")
  String? get printLang;
  @override
  @JsonKey(name: "sale_bill_uuid")
  int get saleBillUuid;
  @override
  @JsonKey(name: "sale_order_uuid")
  int get saleOrderUuid;

  /// Create a copy of RequestOrderPrint
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RequestOrderPrintImplCopyWith<_$RequestOrderPrintImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

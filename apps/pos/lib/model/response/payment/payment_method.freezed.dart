// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payment_method.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PaymentMethod _$PaymentMethodFromJson(Map<String, dynamic> json) {
  return _PaymentMethod.fromJson(json);
}

/// @nodoc
mixin _$PaymentMethod {
  @JsonKey(name: "code")
  int get code => throw _privateConstructorUsedError;
  @JsonKey(name: "fee_percent")
  double get feePercent => throw _privateConstructorUsedError;
  @JsonKey(name: "logo")
  String get logo => throw _privateConstructorUsedError;
  @JsonKey(name: "payment_name")
  String get paymentName => throw _privateConstructorUsedError;
  @JsonKey(name: "qrcode")
  String get qrcode => throw _privateConstructorUsedError;
  @JsonKey(name: "source")
  int get source => throw _privateConstructorUsedError;
  @JsonKey(name: "source_text")
  String get sourceText => throw _privateConstructorUsedError;
  @JsonKey(name: "uuid")
  int get uuid => throw _privateConstructorUsedError;

  /// Serializes this PaymentMethod to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PaymentMethod
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PaymentMethodCopyWith<PaymentMethod> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentMethodCopyWith<$Res> {
  factory $PaymentMethodCopyWith(
          PaymentMethod value, $Res Function(PaymentMethod) then) =
      _$PaymentMethodCopyWithImpl<$Res, PaymentMethod>;
  @useResult
  $Res call(
      {@JsonKey(name: "code") int code,
      @JsonKey(name: "fee_percent") double feePercent,
      @JsonKey(name: "logo") String logo,
      @JsonKey(name: "payment_name") String paymentName,
      @JsonKey(name: "qrcode") String qrcode,
      @JsonKey(name: "source") int source,
      @JsonKey(name: "source_text") String sourceText,
      @JsonKey(name: "uuid") int uuid});
}

/// @nodoc
class _$PaymentMethodCopyWithImpl<$Res, $Val extends PaymentMethod>
    implements $PaymentMethodCopyWith<$Res> {
  _$PaymentMethodCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PaymentMethod
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? feePercent = null,
    Object? logo = null,
    Object? paymentName = null,
    Object? qrcode = null,
    Object? source = null,
    Object? sourceText = null,
    Object? uuid = null,
  }) {
    return _then(_value.copyWith(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      feePercent: null == feePercent
          ? _value.feePercent
          : feePercent // ignore: cast_nullable_to_non_nullable
              as double,
      logo: null == logo
          ? _value.logo
          : logo // ignore: cast_nullable_to_non_nullable
              as String,
      paymentName: null == paymentName
          ? _value.paymentName
          : paymentName // ignore: cast_nullable_to_non_nullable
              as String,
      qrcode: null == qrcode
          ? _value.qrcode
          : qrcode // ignore: cast_nullable_to_non_nullable
              as String,
      source: null == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as int,
      sourceText: null == sourceText
          ? _value.sourceText
          : sourceText // ignore: cast_nullable_to_non_nullable
              as String,
      uuid: null == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PaymentMethodImplCopyWith<$Res>
    implements $PaymentMethodCopyWith<$Res> {
  factory _$$PaymentMethodImplCopyWith(
          _$PaymentMethodImpl value, $Res Function(_$PaymentMethodImpl) then) =
      __$$PaymentMethodImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "code") int code,
      @JsonKey(name: "fee_percent") double feePercent,
      @JsonKey(name: "logo") String logo,
      @JsonKey(name: "payment_name") String paymentName,
      @JsonKey(name: "qrcode") String qrcode,
      @JsonKey(name: "source") int source,
      @JsonKey(name: "source_text") String sourceText,
      @JsonKey(name: "uuid") int uuid});
}

/// @nodoc
class __$$PaymentMethodImplCopyWithImpl<$Res>
    extends _$PaymentMethodCopyWithImpl<$Res, _$PaymentMethodImpl>
    implements _$$PaymentMethodImplCopyWith<$Res> {
  __$$PaymentMethodImplCopyWithImpl(
      _$PaymentMethodImpl _value, $Res Function(_$PaymentMethodImpl) _then)
      : super(_value, _then);

  /// Create a copy of PaymentMethod
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? feePercent = null,
    Object? logo = null,
    Object? paymentName = null,
    Object? qrcode = null,
    Object? source = null,
    Object? sourceText = null,
    Object? uuid = null,
  }) {
    return _then(_$PaymentMethodImpl(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      feePercent: null == feePercent
          ? _value.feePercent
          : feePercent // ignore: cast_nullable_to_non_nullable
              as double,
      logo: null == logo
          ? _value.logo
          : logo // ignore: cast_nullable_to_non_nullable
              as String,
      paymentName: null == paymentName
          ? _value.paymentName
          : paymentName // ignore: cast_nullable_to_non_nullable
              as String,
      qrcode: null == qrcode
          ? _value.qrcode
          : qrcode // ignore: cast_nullable_to_non_nullable
              as String,
      source: null == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as int,
      sourceText: null == sourceText
          ? _value.sourceText
          : sourceText // ignore: cast_nullable_to_non_nullable
              as String,
      uuid: null == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PaymentMethodImpl implements _PaymentMethod {
  const _$PaymentMethodImpl(
      {@JsonKey(name: "code") required this.code,
      @JsonKey(name: "fee_percent") required this.feePercent,
      @JsonKey(name: "logo") required this.logo,
      @JsonKey(name: "payment_name") required this.paymentName,
      @JsonKey(name: "qrcode") required this.qrcode,
      @JsonKey(name: "source") required this.source,
      @JsonKey(name: "source_text") required this.sourceText,
      @JsonKey(name: "uuid") required this.uuid});

  factory _$PaymentMethodImpl.fromJson(Map<String, dynamic> json) =>
      _$$PaymentMethodImplFromJson(json);

  @override
  @JsonKey(name: "code")
  final int code;
  @override
  @JsonKey(name: "fee_percent")
  final double feePercent;
  @override
  @JsonKey(name: "logo")
  final String logo;
  @override
  @JsonKey(name: "payment_name")
  final String paymentName;
  @override
  @JsonKey(name: "qrcode")
  final String qrcode;
  @override
  @JsonKey(name: "source")
  final int source;
  @override
  @JsonKey(name: "source_text")
  final String sourceText;
  @override
  @JsonKey(name: "uuid")
  final int uuid;

  @override
  String toString() {
    return 'PaymentMethod(code: $code, feePercent: $feePercent, logo: $logo, paymentName: $paymentName, qrcode: $qrcode, source: $source, sourceText: $sourceText, uuid: $uuid)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaymentMethodImpl &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.feePercent, feePercent) ||
                other.feePercent == feePercent) &&
            (identical(other.logo, logo) || other.logo == logo) &&
            (identical(other.paymentName, paymentName) ||
                other.paymentName == paymentName) &&
            (identical(other.qrcode, qrcode) || other.qrcode == qrcode) &&
            (identical(other.source, source) || other.source == source) &&
            (identical(other.sourceText, sourceText) ||
                other.sourceText == sourceText) &&
            (identical(other.uuid, uuid) || other.uuid == uuid));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, code, feePercent, logo,
      paymentName, qrcode, source, sourceText, uuid);

  /// Create a copy of PaymentMethod
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PaymentMethodImplCopyWith<_$PaymentMethodImpl> get copyWith =>
      __$$PaymentMethodImplCopyWithImpl<_$PaymentMethodImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PaymentMethodImplToJson(
      this,
    );
  }
}

abstract class _PaymentMethod implements PaymentMethod {
  const factory _PaymentMethod(
      {@JsonKey(name: "code") required final int code,
      @JsonKey(name: "fee_percent") required final double feePercent,
      @JsonKey(name: "logo") required final String logo,
      @JsonKey(name: "payment_name") required final String paymentName,
      @JsonKey(name: "qrcode") required final String qrcode,
      @JsonKey(name: "source") required final int source,
      @JsonKey(name: "source_text") required final String sourceText,
      @JsonKey(name: "uuid") required final int uuid}) = _$PaymentMethodImpl;

  factory _PaymentMethod.fromJson(Map<String, dynamic> json) =
      _$PaymentMethodImpl.fromJson;

  @override
  @JsonKey(name: "code")
  int get code;
  @override
  @JsonKey(name: "fee_percent")
  double get feePercent;
  @override
  @JsonKey(name: "logo")
  String get logo;
  @override
  @JsonKey(name: "payment_name")
  String get paymentName;
  @override
  @JsonKey(name: "qrcode")
  String get qrcode;
  @override
  @JsonKey(name: "source")
  int get source;
  @override
  @JsonKey(name: "source_text")
  String get sourceText;
  @override
  @JsonKey(name: "uuid")
  int get uuid;

  /// Create a copy of PaymentMethod
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PaymentMethodImplCopyWith<_$PaymentMethodImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

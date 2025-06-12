// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'qrcode.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PaymentQrcode _$PaymentQrcodeFromJson(Map<String, dynamic> json) {
  return _PaymentQrcode.fromJson(json);
}

/// @nodoc
mixin _$PaymentQrcode {
  @JsonKey(name: "payment_amount")
  double get paymentAmount => throw _privateConstructorUsedError;
  @JsonKey(name: "payment_order_uuid")
  int get paymentOrderUuid => throw _privateConstructorUsedError;
  @JsonKey(name: "qr_code")
  String get qrCode => throw _privateConstructorUsedError;
  @JsonKey(name: "qr_code_expire_sec")
  int get qrCodeExpireSec => throw _privateConstructorUsedError;
  @JsonKey(name: "status")
  int get status => throw _privateConstructorUsedError;

  /// Serializes this PaymentQrcode to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PaymentQrcode
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PaymentQrcodeCopyWith<PaymentQrcode> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentQrcodeCopyWith<$Res> {
  factory $PaymentQrcodeCopyWith(
          PaymentQrcode value, $Res Function(PaymentQrcode) then) =
      _$PaymentQrcodeCopyWithImpl<$Res, PaymentQrcode>;
  @useResult
  $Res call(
      {@JsonKey(name: "payment_amount") double paymentAmount,
      @JsonKey(name: "payment_order_uuid") int paymentOrderUuid,
      @JsonKey(name: "qr_code") String qrCode,
      @JsonKey(name: "qr_code_expire_sec") int qrCodeExpireSec,
      @JsonKey(name: "status") int status});
}

/// @nodoc
class _$PaymentQrcodeCopyWithImpl<$Res, $Val extends PaymentQrcode>
    implements $PaymentQrcodeCopyWith<$Res> {
  _$PaymentQrcodeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PaymentQrcode
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? paymentAmount = null,
    Object? paymentOrderUuid = null,
    Object? qrCode = null,
    Object? qrCodeExpireSec = null,
    Object? status = null,
  }) {
    return _then(_value.copyWith(
      paymentAmount: null == paymentAmount
          ? _value.paymentAmount
          : paymentAmount // ignore: cast_nullable_to_non_nullable
              as double,
      paymentOrderUuid: null == paymentOrderUuid
          ? _value.paymentOrderUuid
          : paymentOrderUuid // ignore: cast_nullable_to_non_nullable
              as int,
      qrCode: null == qrCode
          ? _value.qrCode
          : qrCode // ignore: cast_nullable_to_non_nullable
              as String,
      qrCodeExpireSec: null == qrCodeExpireSec
          ? _value.qrCodeExpireSec
          : qrCodeExpireSec // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PaymentQrcodeImplCopyWith<$Res>
    implements $PaymentQrcodeCopyWith<$Res> {
  factory _$$PaymentQrcodeImplCopyWith(
          _$PaymentQrcodeImpl value, $Res Function(_$PaymentQrcodeImpl) then) =
      __$$PaymentQrcodeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "payment_amount") double paymentAmount,
      @JsonKey(name: "payment_order_uuid") int paymentOrderUuid,
      @JsonKey(name: "qr_code") String qrCode,
      @JsonKey(name: "qr_code_expire_sec") int qrCodeExpireSec,
      @JsonKey(name: "status") int status});
}

/// @nodoc
class __$$PaymentQrcodeImplCopyWithImpl<$Res>
    extends _$PaymentQrcodeCopyWithImpl<$Res, _$PaymentQrcodeImpl>
    implements _$$PaymentQrcodeImplCopyWith<$Res> {
  __$$PaymentQrcodeImplCopyWithImpl(
      _$PaymentQrcodeImpl _value, $Res Function(_$PaymentQrcodeImpl) _then)
      : super(_value, _then);

  /// Create a copy of PaymentQrcode
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? paymentAmount = null,
    Object? paymentOrderUuid = null,
    Object? qrCode = null,
    Object? qrCodeExpireSec = null,
    Object? status = null,
  }) {
    return _then(_$PaymentQrcodeImpl(
      paymentAmount: null == paymentAmount
          ? _value.paymentAmount
          : paymentAmount // ignore: cast_nullable_to_non_nullable
              as double,
      paymentOrderUuid: null == paymentOrderUuid
          ? _value.paymentOrderUuid
          : paymentOrderUuid // ignore: cast_nullable_to_non_nullable
              as int,
      qrCode: null == qrCode
          ? _value.qrCode
          : qrCode // ignore: cast_nullable_to_non_nullable
              as String,
      qrCodeExpireSec: null == qrCodeExpireSec
          ? _value.qrCodeExpireSec
          : qrCodeExpireSec // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PaymentQrcodeImpl implements _PaymentQrcode {
  const _$PaymentQrcodeImpl(
      {@JsonKey(name: "payment_amount") required this.paymentAmount,
      @JsonKey(name: "payment_order_uuid") required this.paymentOrderUuid,
      @JsonKey(name: "qr_code") required this.qrCode,
      @JsonKey(name: "qr_code_expire_sec") required this.qrCodeExpireSec,
      @JsonKey(name: "status") required this.status});

  factory _$PaymentQrcodeImpl.fromJson(Map<String, dynamic> json) =>
      _$$PaymentQrcodeImplFromJson(json);

  @override
  @JsonKey(name: "payment_amount")
  final double paymentAmount;
  @override
  @JsonKey(name: "payment_order_uuid")
  final int paymentOrderUuid;
  @override
  @JsonKey(name: "qr_code")
  final String qrCode;
  @override
  @JsonKey(name: "qr_code_expire_sec")
  final int qrCodeExpireSec;
  @override
  @JsonKey(name: "status")
  final int status;

  @override
  String toString() {
    return 'PaymentQrcode(paymentAmount: $paymentAmount, paymentOrderUuid: $paymentOrderUuid, qrCode: $qrCode, qrCodeExpireSec: $qrCodeExpireSec, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaymentQrcodeImpl &&
            (identical(other.paymentAmount, paymentAmount) ||
                other.paymentAmount == paymentAmount) &&
            (identical(other.paymentOrderUuid, paymentOrderUuid) ||
                other.paymentOrderUuid == paymentOrderUuid) &&
            (identical(other.qrCode, qrCode) || other.qrCode == qrCode) &&
            (identical(other.qrCodeExpireSec, qrCodeExpireSec) ||
                other.qrCodeExpireSec == qrCodeExpireSec) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, paymentAmount, paymentOrderUuid,
      qrCode, qrCodeExpireSec, status);

  /// Create a copy of PaymentQrcode
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PaymentQrcodeImplCopyWith<_$PaymentQrcodeImpl> get copyWith =>
      __$$PaymentQrcodeImplCopyWithImpl<_$PaymentQrcodeImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PaymentQrcodeImplToJson(
      this,
    );
  }
}

abstract class _PaymentQrcode implements PaymentQrcode {
  const factory _PaymentQrcode(
      {@JsonKey(name: "payment_amount") required final double paymentAmount,
      @JsonKey(name: "payment_order_uuid") required final int paymentOrderUuid,
      @JsonKey(name: "qr_code") required final String qrCode,
      @JsonKey(name: "qr_code_expire_sec") required final int qrCodeExpireSec,
      @JsonKey(name: "status")
      required final int status}) = _$PaymentQrcodeImpl;

  factory _PaymentQrcode.fromJson(Map<String, dynamic> json) =
      _$PaymentQrcodeImpl.fromJson;

  @override
  @JsonKey(name: "payment_amount")
  double get paymentAmount;
  @override
  @JsonKey(name: "payment_order_uuid")
  int get paymentOrderUuid;
  @override
  @JsonKey(name: "qr_code")
  String get qrCode;
  @override
  @JsonKey(name: "qr_code_expire_sec")
  int get qrCodeExpireSec;
  @override
  @JsonKey(name: "status")
  int get status;

  /// Create a copy of PaymentQrcode
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PaymentQrcodeImplCopyWith<_$PaymentQrcodeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

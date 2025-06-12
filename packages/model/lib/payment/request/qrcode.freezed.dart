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

RequestPaymentQrcode _$RequestPaymentQrcodeFromJson(Map<String, dynamic> json) {
  return _RequestPaymentQrcode.fromJson(json);
}

/// @nodoc
mixin _$RequestPaymentQrcode {
  @JsonKey(name: "payment_amount")
  double get paymentAmount => throw _privateConstructorUsedError;
  @JsonKey(name: "payment_amount")
  set paymentAmount(double value) => throw _privateConstructorUsedError;
  @JsonKey(name: "payment_method_uuid")
  int get paymentMethodUuid => throw _privateConstructorUsedError;
  @JsonKey(name: "payment_method_uuid")
  set paymentMethodUuid(int value) => throw _privateConstructorUsedError;
  @JsonKey(name: "sale_bill_uuid")
  int get saleBillUuid => throw _privateConstructorUsedError;
  @JsonKey(name: "sale_bill_uuid")
  set saleBillUuid(int value) => throw _privateConstructorUsedError;
  @JsonKey(name: "sale_order_uuid")
  int get saleOrderUuid => throw _privateConstructorUsedError;
  @JsonKey(name: "sale_order_uuid")
  set saleOrderUuid(int value) => throw _privateConstructorUsedError;

  /// Serializes this RequestPaymentQrcode to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RequestPaymentQrcode
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RequestPaymentQrcodeCopyWith<RequestPaymentQrcode> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RequestPaymentQrcodeCopyWith<$Res> {
  factory $RequestPaymentQrcodeCopyWith(RequestPaymentQrcode value,
          $Res Function(RequestPaymentQrcode) then) =
      _$RequestPaymentQrcodeCopyWithImpl<$Res, RequestPaymentQrcode>;
  @useResult
  $Res call(
      {@JsonKey(name: "payment_amount") double paymentAmount,
      @JsonKey(name: "payment_method_uuid") int paymentMethodUuid,
      @JsonKey(name: "sale_bill_uuid") int saleBillUuid,
      @JsonKey(name: "sale_order_uuid") int saleOrderUuid});
}

/// @nodoc
class _$RequestPaymentQrcodeCopyWithImpl<$Res,
        $Val extends RequestPaymentQrcode>
    implements $RequestPaymentQrcodeCopyWith<$Res> {
  _$RequestPaymentQrcodeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RequestPaymentQrcode
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? paymentAmount = null,
    Object? paymentMethodUuid = null,
    Object? saleBillUuid = null,
    Object? saleOrderUuid = null,
  }) {
    return _then(_value.copyWith(
      paymentAmount: null == paymentAmount
          ? _value.paymentAmount
          : paymentAmount // ignore: cast_nullable_to_non_nullable
              as double,
      paymentMethodUuid: null == paymentMethodUuid
          ? _value.paymentMethodUuid
          : paymentMethodUuid // ignore: cast_nullable_to_non_nullable
              as int,
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
abstract class _$$RequestPaymentQrcodeImplCopyWith<$Res>
    implements $RequestPaymentQrcodeCopyWith<$Res> {
  factory _$$RequestPaymentQrcodeImplCopyWith(_$RequestPaymentQrcodeImpl value,
          $Res Function(_$RequestPaymentQrcodeImpl) then) =
      __$$RequestPaymentQrcodeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "payment_amount") double paymentAmount,
      @JsonKey(name: "payment_method_uuid") int paymentMethodUuid,
      @JsonKey(name: "sale_bill_uuid") int saleBillUuid,
      @JsonKey(name: "sale_order_uuid") int saleOrderUuid});
}

/// @nodoc
class __$$RequestPaymentQrcodeImplCopyWithImpl<$Res>
    extends _$RequestPaymentQrcodeCopyWithImpl<$Res, _$RequestPaymentQrcodeImpl>
    implements _$$RequestPaymentQrcodeImplCopyWith<$Res> {
  __$$RequestPaymentQrcodeImplCopyWithImpl(_$RequestPaymentQrcodeImpl _value,
      $Res Function(_$RequestPaymentQrcodeImpl) _then)
      : super(_value, _then);

  /// Create a copy of RequestPaymentQrcode
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? paymentAmount = null,
    Object? paymentMethodUuid = null,
    Object? saleBillUuid = null,
    Object? saleOrderUuid = null,
  }) {
    return _then(_$RequestPaymentQrcodeImpl(
      paymentAmount: null == paymentAmount
          ? _value.paymentAmount
          : paymentAmount // ignore: cast_nullable_to_non_nullable
              as double,
      paymentMethodUuid: null == paymentMethodUuid
          ? _value.paymentMethodUuid
          : paymentMethodUuid // ignore: cast_nullable_to_non_nullable
              as int,
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
class _$RequestPaymentQrcodeImpl implements _RequestPaymentQrcode {
  _$RequestPaymentQrcodeImpl(
      {@JsonKey(name: "payment_amount") required this.paymentAmount,
      @JsonKey(name: "payment_method_uuid") required this.paymentMethodUuid,
      @JsonKey(name: "sale_bill_uuid") required this.saleBillUuid,
      @JsonKey(name: "sale_order_uuid") required this.saleOrderUuid});

  factory _$RequestPaymentQrcodeImpl.fromJson(Map<String, dynamic> json) =>
      _$$RequestPaymentQrcodeImplFromJson(json);

  @override
  @JsonKey(name: "payment_amount")
  double paymentAmount;
  @override
  @JsonKey(name: "payment_method_uuid")
  int paymentMethodUuid;
  @override
  @JsonKey(name: "sale_bill_uuid")
  int saleBillUuid;
  @override
  @JsonKey(name: "sale_order_uuid")
  int saleOrderUuid;

  @override
  String toString() {
    return 'RequestPaymentQrcode(paymentAmount: $paymentAmount, paymentMethodUuid: $paymentMethodUuid, saleBillUuid: $saleBillUuid, saleOrderUuid: $saleOrderUuid)';
  }

  /// Create a copy of RequestPaymentQrcode
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RequestPaymentQrcodeImplCopyWith<_$RequestPaymentQrcodeImpl>
      get copyWith =>
          __$$RequestPaymentQrcodeImplCopyWithImpl<_$RequestPaymentQrcodeImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RequestPaymentQrcodeImplToJson(
      this,
    );
  }
}

abstract class _RequestPaymentQrcode implements RequestPaymentQrcode {
  factory _RequestPaymentQrcode(
          {@JsonKey(name: "payment_amount") required double paymentAmount,
          @JsonKey(name: "payment_method_uuid") required int paymentMethodUuid,
          @JsonKey(name: "sale_bill_uuid") required int saleBillUuid,
          @JsonKey(name: "sale_order_uuid") required int saleOrderUuid}) =
      _$RequestPaymentQrcodeImpl;

  factory _RequestPaymentQrcode.fromJson(Map<String, dynamic> json) =
      _$RequestPaymentQrcodeImpl.fromJson;

  @override
  @JsonKey(name: "payment_amount")
  double get paymentAmount;
  @JsonKey(name: "payment_amount")
  set paymentAmount(double value);
  @override
  @JsonKey(name: "payment_method_uuid")
  int get paymentMethodUuid;
  @JsonKey(name: "payment_method_uuid")
  set paymentMethodUuid(int value);
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

  /// Create a copy of RequestPaymentQrcode
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RequestPaymentQrcodeImplCopyWith<_$RequestPaymentQrcodeImpl>
      get copyWith => throw _privateConstructorUsedError;
}

RequestPaymentQrcodeForRecharge _$RequestPaymentQrcodeForRechargeFromJson(
    Map<String, dynamic> json) {
  return _RequestPaymentQrcodeForRecharge.fromJson(json);
}

/// @nodoc
mixin _$RequestPaymentQrcodeForRecharge {
  @JsonKey(name: "payment_amount")
  double get paymentAmount => throw _privateConstructorUsedError;
  @JsonKey(name: "payment_amount")
  set paymentAmount(double value) => throw _privateConstructorUsedError;
  @JsonKey(name: "payment_method_uuid")
  int get paymentMethodUuid => throw _privateConstructorUsedError;
  @JsonKey(name: "payment_method_uuid")
  set paymentMethodUuid(int value) => throw _privateConstructorUsedError;
  @JsonKey(name: "recharge_order_uuid")
  int get rechargeOrderUuid => throw _privateConstructorUsedError;
  @JsonKey(name: "recharge_order_uuid")
  set rechargeOrderUuid(int value) => throw _privateConstructorUsedError;

  /// Serializes this RequestPaymentQrcodeForRecharge to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RequestPaymentQrcodeForRecharge
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RequestPaymentQrcodeForRechargeCopyWith<RequestPaymentQrcodeForRecharge>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RequestPaymentQrcodeForRechargeCopyWith<$Res> {
  factory $RequestPaymentQrcodeForRechargeCopyWith(
          RequestPaymentQrcodeForRecharge value,
          $Res Function(RequestPaymentQrcodeForRecharge) then) =
      _$RequestPaymentQrcodeForRechargeCopyWithImpl<$Res,
          RequestPaymentQrcodeForRecharge>;
  @useResult
  $Res call(
      {@JsonKey(name: "payment_amount") double paymentAmount,
      @JsonKey(name: "payment_method_uuid") int paymentMethodUuid,
      @JsonKey(name: "recharge_order_uuid") int rechargeOrderUuid});
}

/// @nodoc
class _$RequestPaymentQrcodeForRechargeCopyWithImpl<$Res,
        $Val extends RequestPaymentQrcodeForRecharge>
    implements $RequestPaymentQrcodeForRechargeCopyWith<$Res> {
  _$RequestPaymentQrcodeForRechargeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RequestPaymentQrcodeForRecharge
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? paymentAmount = null,
    Object? paymentMethodUuid = null,
    Object? rechargeOrderUuid = null,
  }) {
    return _then(_value.copyWith(
      paymentAmount: null == paymentAmount
          ? _value.paymentAmount
          : paymentAmount // ignore: cast_nullable_to_non_nullable
              as double,
      paymentMethodUuid: null == paymentMethodUuid
          ? _value.paymentMethodUuid
          : paymentMethodUuid // ignore: cast_nullable_to_non_nullable
              as int,
      rechargeOrderUuid: null == rechargeOrderUuid
          ? _value.rechargeOrderUuid
          : rechargeOrderUuid // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RequestPaymentQrcodeForRechargeImplCopyWith<$Res>
    implements $RequestPaymentQrcodeForRechargeCopyWith<$Res> {
  factory _$$RequestPaymentQrcodeForRechargeImplCopyWith(
          _$RequestPaymentQrcodeForRechargeImpl value,
          $Res Function(_$RequestPaymentQrcodeForRechargeImpl) then) =
      __$$RequestPaymentQrcodeForRechargeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "payment_amount") double paymentAmount,
      @JsonKey(name: "payment_method_uuid") int paymentMethodUuid,
      @JsonKey(name: "recharge_order_uuid") int rechargeOrderUuid});
}

/// @nodoc
class __$$RequestPaymentQrcodeForRechargeImplCopyWithImpl<$Res>
    extends _$RequestPaymentQrcodeForRechargeCopyWithImpl<$Res,
        _$RequestPaymentQrcodeForRechargeImpl>
    implements _$$RequestPaymentQrcodeForRechargeImplCopyWith<$Res> {
  __$$RequestPaymentQrcodeForRechargeImplCopyWithImpl(
      _$RequestPaymentQrcodeForRechargeImpl _value,
      $Res Function(_$RequestPaymentQrcodeForRechargeImpl) _then)
      : super(_value, _then);

  /// Create a copy of RequestPaymentQrcodeForRecharge
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? paymentAmount = null,
    Object? paymentMethodUuid = null,
    Object? rechargeOrderUuid = null,
  }) {
    return _then(_$RequestPaymentQrcodeForRechargeImpl(
      paymentAmount: null == paymentAmount
          ? _value.paymentAmount
          : paymentAmount // ignore: cast_nullable_to_non_nullable
              as double,
      paymentMethodUuid: null == paymentMethodUuid
          ? _value.paymentMethodUuid
          : paymentMethodUuid // ignore: cast_nullable_to_non_nullable
              as int,
      rechargeOrderUuid: null == rechargeOrderUuid
          ? _value.rechargeOrderUuid
          : rechargeOrderUuid // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RequestPaymentQrcodeForRechargeImpl
    implements _RequestPaymentQrcodeForRecharge {
  _$RequestPaymentQrcodeForRechargeImpl(
      {@JsonKey(name: "payment_amount") required this.paymentAmount,
      @JsonKey(name: "payment_method_uuid") required this.paymentMethodUuid,
      @JsonKey(name: "recharge_order_uuid") required this.rechargeOrderUuid});

  factory _$RequestPaymentQrcodeForRechargeImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$RequestPaymentQrcodeForRechargeImplFromJson(json);

  @override
  @JsonKey(name: "payment_amount")
  double paymentAmount;
  @override
  @JsonKey(name: "payment_method_uuid")
  int paymentMethodUuid;
  @override
  @JsonKey(name: "recharge_order_uuid")
  int rechargeOrderUuid;

  @override
  String toString() {
    return 'RequestPaymentQrcodeForRecharge(paymentAmount: $paymentAmount, paymentMethodUuid: $paymentMethodUuid, rechargeOrderUuid: $rechargeOrderUuid)';
  }

  /// Create a copy of RequestPaymentQrcodeForRecharge
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RequestPaymentQrcodeForRechargeImplCopyWith<
          _$RequestPaymentQrcodeForRechargeImpl>
      get copyWith => __$$RequestPaymentQrcodeForRechargeImplCopyWithImpl<
          _$RequestPaymentQrcodeForRechargeImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RequestPaymentQrcodeForRechargeImplToJson(
      this,
    );
  }
}

abstract class _RequestPaymentQrcodeForRecharge
    implements RequestPaymentQrcodeForRecharge {
  factory _RequestPaymentQrcodeForRecharge(
      {@JsonKey(name: "payment_amount") required double paymentAmount,
      @JsonKey(name: "payment_method_uuid") required int paymentMethodUuid,
      @JsonKey(name: "recharge_order_uuid")
      required int rechargeOrderUuid}) = _$RequestPaymentQrcodeForRechargeImpl;

  factory _RequestPaymentQrcodeForRecharge.fromJson(Map<String, dynamic> json) =
      _$RequestPaymentQrcodeForRechargeImpl.fromJson;

  @override
  @JsonKey(name: "payment_amount")
  double get paymentAmount;
  @JsonKey(name: "payment_amount")
  set paymentAmount(double value);
  @override
  @JsonKey(name: "payment_method_uuid")
  int get paymentMethodUuid;
  @JsonKey(name: "payment_method_uuid")
  set paymentMethodUuid(int value);
  @override
  @JsonKey(name: "recharge_order_uuid")
  int get rechargeOrderUuid;
  @JsonKey(name: "recharge_order_uuid")
  set rechargeOrderUuid(int value);

  /// Create a copy of RequestPaymentQrcodeForRecharge
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RequestPaymentQrcodeForRechargeImplCopyWith<
          _$RequestPaymentQrcodeForRechargeImpl>
      get copyWith => throw _privateConstructorUsedError;
}

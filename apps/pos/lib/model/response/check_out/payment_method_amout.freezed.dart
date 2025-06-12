// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payment_method_amout.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PaymentMethodAmount _$PaymentMethodAmountFromJson(Map<String, dynamic> json) {
  return _PaymentMethodAmount.fromJson(json);
}

/// @nodoc
mixin _$PaymentMethodAmount {
  @JsonKey(name: "commission_fee")
  double get commissionFee => throw _privateConstructorUsedError;
  @JsonKey(name: "payment_method_uuid")
  int get paymentMethodUuid => throw _privateConstructorUsedError;
  @JsonKey(name: "sale_order_amount")
  double get saleOrderAmount => throw _privateConstructorUsedError;
  @JsonKey(name: "sale_order_origin_amount")
  double get saleOrderOriginAmount => throw _privateConstructorUsedError;
  @JsonKey(name: "unpaid_amount")
  double get unpaidAmount => throw _privateConstructorUsedError;
  @JsonKey(name: "zero_amount")
  double get zeroAmount => throw _privateConstructorUsedError;
  @JsonKey(name: "zero_rule")
  int get zeroRule => throw _privateConstructorUsedError;

  /// Serializes this PaymentMethodAmount to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PaymentMethodAmount
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PaymentMethodAmountCopyWith<PaymentMethodAmount> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentMethodAmountCopyWith<$Res> {
  factory $PaymentMethodAmountCopyWith(
          PaymentMethodAmount value, $Res Function(PaymentMethodAmount) then) =
      _$PaymentMethodAmountCopyWithImpl<$Res, PaymentMethodAmount>;
  @useResult
  $Res call(
      {@JsonKey(name: "commission_fee") double commissionFee,
      @JsonKey(name: "payment_method_uuid") int paymentMethodUuid,
      @JsonKey(name: "sale_order_amount") double saleOrderAmount,
      @JsonKey(name: "sale_order_origin_amount") double saleOrderOriginAmount,
      @JsonKey(name: "unpaid_amount") double unpaidAmount,
      @JsonKey(name: "zero_amount") double zeroAmount,
      @JsonKey(name: "zero_rule") int zeroRule});
}

/// @nodoc
class _$PaymentMethodAmountCopyWithImpl<$Res, $Val extends PaymentMethodAmount>
    implements $PaymentMethodAmountCopyWith<$Res> {
  _$PaymentMethodAmountCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PaymentMethodAmount
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? commissionFee = null,
    Object? paymentMethodUuid = null,
    Object? saleOrderAmount = null,
    Object? saleOrderOriginAmount = null,
    Object? unpaidAmount = null,
    Object? zeroAmount = null,
    Object? zeroRule = null,
  }) {
    return _then(_value.copyWith(
      commissionFee: null == commissionFee
          ? _value.commissionFee
          : commissionFee // ignore: cast_nullable_to_non_nullable
              as double,
      paymentMethodUuid: null == paymentMethodUuid
          ? _value.paymentMethodUuid
          : paymentMethodUuid // ignore: cast_nullable_to_non_nullable
              as int,
      saleOrderAmount: null == saleOrderAmount
          ? _value.saleOrderAmount
          : saleOrderAmount // ignore: cast_nullable_to_non_nullable
              as double,
      saleOrderOriginAmount: null == saleOrderOriginAmount
          ? _value.saleOrderOriginAmount
          : saleOrderOriginAmount // ignore: cast_nullable_to_non_nullable
              as double,
      unpaidAmount: null == unpaidAmount
          ? _value.unpaidAmount
          : unpaidAmount // ignore: cast_nullable_to_non_nullable
              as double,
      zeroAmount: null == zeroAmount
          ? _value.zeroAmount
          : zeroAmount // ignore: cast_nullable_to_non_nullable
              as double,
      zeroRule: null == zeroRule
          ? _value.zeroRule
          : zeroRule // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PaymentMethodAmountImplCopyWith<$Res>
    implements $PaymentMethodAmountCopyWith<$Res> {
  factory _$$PaymentMethodAmountImplCopyWith(_$PaymentMethodAmountImpl value,
          $Res Function(_$PaymentMethodAmountImpl) then) =
      __$$PaymentMethodAmountImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "commission_fee") double commissionFee,
      @JsonKey(name: "payment_method_uuid") int paymentMethodUuid,
      @JsonKey(name: "sale_order_amount") double saleOrderAmount,
      @JsonKey(name: "sale_order_origin_amount") double saleOrderOriginAmount,
      @JsonKey(name: "unpaid_amount") double unpaidAmount,
      @JsonKey(name: "zero_amount") double zeroAmount,
      @JsonKey(name: "zero_rule") int zeroRule});
}

/// @nodoc
class __$$PaymentMethodAmountImplCopyWithImpl<$Res>
    extends _$PaymentMethodAmountCopyWithImpl<$Res, _$PaymentMethodAmountImpl>
    implements _$$PaymentMethodAmountImplCopyWith<$Res> {
  __$$PaymentMethodAmountImplCopyWithImpl(_$PaymentMethodAmountImpl _value,
      $Res Function(_$PaymentMethodAmountImpl) _then)
      : super(_value, _then);

  /// Create a copy of PaymentMethodAmount
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? commissionFee = null,
    Object? paymentMethodUuid = null,
    Object? saleOrderAmount = null,
    Object? saleOrderOriginAmount = null,
    Object? unpaidAmount = null,
    Object? zeroAmount = null,
    Object? zeroRule = null,
  }) {
    return _then(_$PaymentMethodAmountImpl(
      commissionFee: null == commissionFee
          ? _value.commissionFee
          : commissionFee // ignore: cast_nullable_to_non_nullable
              as double,
      paymentMethodUuid: null == paymentMethodUuid
          ? _value.paymentMethodUuid
          : paymentMethodUuid // ignore: cast_nullable_to_non_nullable
              as int,
      saleOrderAmount: null == saleOrderAmount
          ? _value.saleOrderAmount
          : saleOrderAmount // ignore: cast_nullable_to_non_nullable
              as double,
      saleOrderOriginAmount: null == saleOrderOriginAmount
          ? _value.saleOrderOriginAmount
          : saleOrderOriginAmount // ignore: cast_nullable_to_non_nullable
              as double,
      unpaidAmount: null == unpaidAmount
          ? _value.unpaidAmount
          : unpaidAmount // ignore: cast_nullable_to_non_nullable
              as double,
      zeroAmount: null == zeroAmount
          ? _value.zeroAmount
          : zeroAmount // ignore: cast_nullable_to_non_nullable
              as double,
      zeroRule: null == zeroRule
          ? _value.zeroRule
          : zeroRule // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PaymentMethodAmountImpl implements _PaymentMethodAmount {
  const _$PaymentMethodAmountImpl(
      {@JsonKey(name: "commission_fee") required this.commissionFee,
      @JsonKey(name: "payment_method_uuid") required this.paymentMethodUuid,
      @JsonKey(name: "sale_order_amount") required this.saleOrderAmount,
      @JsonKey(name: "sale_order_origin_amount")
      required this.saleOrderOriginAmount,
      @JsonKey(name: "unpaid_amount") required this.unpaidAmount,
      @JsonKey(name: "zero_amount") required this.zeroAmount,
      @JsonKey(name: "zero_rule") required this.zeroRule});

  factory _$PaymentMethodAmountImpl.fromJson(Map<String, dynamic> json) =>
      _$$PaymentMethodAmountImplFromJson(json);

  @override
  @JsonKey(name: "commission_fee")
  final double commissionFee;
  @override
  @JsonKey(name: "payment_method_uuid")
  final int paymentMethodUuid;
  @override
  @JsonKey(name: "sale_order_amount")
  final double saleOrderAmount;
  @override
  @JsonKey(name: "sale_order_origin_amount")
  final double saleOrderOriginAmount;
  @override
  @JsonKey(name: "unpaid_amount")
  final double unpaidAmount;
  @override
  @JsonKey(name: "zero_amount")
  final double zeroAmount;
  @override
  @JsonKey(name: "zero_rule")
  final int zeroRule;

  @override
  String toString() {
    return 'PaymentMethodAmount(commissionFee: $commissionFee, paymentMethodUuid: $paymentMethodUuid, saleOrderAmount: $saleOrderAmount, saleOrderOriginAmount: $saleOrderOriginAmount, unpaidAmount: $unpaidAmount, zeroAmount: $zeroAmount, zeroRule: $zeroRule)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaymentMethodAmountImpl &&
            (identical(other.commissionFee, commissionFee) ||
                other.commissionFee == commissionFee) &&
            (identical(other.paymentMethodUuid, paymentMethodUuid) ||
                other.paymentMethodUuid == paymentMethodUuid) &&
            (identical(other.saleOrderAmount, saleOrderAmount) ||
                other.saleOrderAmount == saleOrderAmount) &&
            (identical(other.saleOrderOriginAmount, saleOrderOriginAmount) ||
                other.saleOrderOriginAmount == saleOrderOriginAmount) &&
            (identical(other.unpaidAmount, unpaidAmount) ||
                other.unpaidAmount == unpaidAmount) &&
            (identical(other.zeroAmount, zeroAmount) ||
                other.zeroAmount == zeroAmount) &&
            (identical(other.zeroRule, zeroRule) ||
                other.zeroRule == zeroRule));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      commissionFee,
      paymentMethodUuid,
      saleOrderAmount,
      saleOrderOriginAmount,
      unpaidAmount,
      zeroAmount,
      zeroRule);

  /// Create a copy of PaymentMethodAmount
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PaymentMethodAmountImplCopyWith<_$PaymentMethodAmountImpl> get copyWith =>
      __$$PaymentMethodAmountImplCopyWithImpl<_$PaymentMethodAmountImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PaymentMethodAmountImplToJson(
      this,
    );
  }
}

abstract class _PaymentMethodAmount implements PaymentMethodAmount {
  const factory _PaymentMethodAmount(
      {@JsonKey(name: "commission_fee") required final double commissionFee,
      @JsonKey(name: "payment_method_uuid")
      required final int paymentMethodUuid,
      @JsonKey(name: "sale_order_amount") required final double saleOrderAmount,
      @JsonKey(name: "sale_order_origin_amount")
      required final double saleOrderOriginAmount,
      @JsonKey(name: "unpaid_amount") required final double unpaidAmount,
      @JsonKey(name: "zero_amount") required final double zeroAmount,
      @JsonKey(name: "zero_rule")
      required final int zeroRule}) = _$PaymentMethodAmountImpl;

  factory _PaymentMethodAmount.fromJson(Map<String, dynamic> json) =
      _$PaymentMethodAmountImpl.fromJson;

  @override
  @JsonKey(name: "commission_fee")
  double get commissionFee;
  @override
  @JsonKey(name: "payment_method_uuid")
  int get paymentMethodUuid;
  @override
  @JsonKey(name: "sale_order_amount")
  double get saleOrderAmount;
  @override
  @JsonKey(name: "sale_order_origin_amount")
  double get saleOrderOriginAmount;
  @override
  @JsonKey(name: "unpaid_amount")
  double get unpaidAmount;
  @override
  @JsonKey(name: "zero_amount")
  double get zeroAmount;
  @override
  @JsonKey(name: "zero_rule")
  int get zeroRule;

  /// Create a copy of PaymentMethodAmount
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PaymentMethodAmountImplCopyWith<_$PaymentMethodAmountImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

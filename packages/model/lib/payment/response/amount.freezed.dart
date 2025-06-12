// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'amount.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PaymentAmount _$PaymentAmountFromJson(Map<String, dynamic> json) {
  return _PaymentAmount.fromJson(json);
}

/// @nodoc
mixin _$PaymentAmount {
  @JsonKey(name: "commission_fee")
  SafetyNumber get commissionFee => throw _privateConstructorUsedError;
  @JsonKey(name: "payment_method_uuid")
  int get paymentMethodUuid => throw _privateConstructorUsedError;
  @JsonKey(name: "sale_order_amount")
  SafetyNumber get saleOrderAmount => throw _privateConstructorUsedError;
  @JsonKey(name: "sale_order_origin_amount")
  SafetyNumber get saleOrderOriginAmount => throw _privateConstructorUsedError;
  @JsonKey(name: "unpaid_amount")
  SafetyNumber get unpaidAmount => throw _privateConstructorUsedError;
  @JsonKey(name: "zero_amount")
  SafetyNumber get zeroAmount => throw _privateConstructorUsedError;
  @JsonKey(name: "zero_rule")
  int get zeroRule => throw _privateConstructorUsedError;

  /// NOTE: 2.1 新增字段
  @JsonKey(name: "is_auto_zero")
  bool? get isAutoZero => throw _privateConstructorUsedError;

  /// Serializes this PaymentAmount to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PaymentAmount
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PaymentAmountCopyWith<PaymentAmount> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentAmountCopyWith<$Res> {
  factory $PaymentAmountCopyWith(
          PaymentAmount value, $Res Function(PaymentAmount) then) =
      _$PaymentAmountCopyWithImpl<$Res, PaymentAmount>;
  @useResult
  $Res call(
      {@JsonKey(name: "commission_fee") SafetyNumber commissionFee,
      @JsonKey(name: "payment_method_uuid") int paymentMethodUuid,
      @JsonKey(name: "sale_order_amount") SafetyNumber saleOrderAmount,
      @JsonKey(name: "sale_order_origin_amount")
      SafetyNumber saleOrderOriginAmount,
      @JsonKey(name: "unpaid_amount") SafetyNumber unpaidAmount,
      @JsonKey(name: "zero_amount") SafetyNumber zeroAmount,
      @JsonKey(name: "zero_rule") int zeroRule,
      @JsonKey(name: "is_auto_zero") bool? isAutoZero});

  $SafetyNumberCopyWith<$Res> get commissionFee;
  $SafetyNumberCopyWith<$Res> get saleOrderAmount;
  $SafetyNumberCopyWith<$Res> get saleOrderOriginAmount;
  $SafetyNumberCopyWith<$Res> get unpaidAmount;
  $SafetyNumberCopyWith<$Res> get zeroAmount;
}

/// @nodoc
class _$PaymentAmountCopyWithImpl<$Res, $Val extends PaymentAmount>
    implements $PaymentAmountCopyWith<$Res> {
  _$PaymentAmountCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PaymentAmount
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
    Object? isAutoZero = freezed,
  }) {
    return _then(_value.copyWith(
      commissionFee: null == commissionFee
          ? _value.commissionFee
          : commissionFee // ignore: cast_nullable_to_non_nullable
              as SafetyNumber,
      paymentMethodUuid: null == paymentMethodUuid
          ? _value.paymentMethodUuid
          : paymentMethodUuid // ignore: cast_nullable_to_non_nullable
              as int,
      saleOrderAmount: null == saleOrderAmount
          ? _value.saleOrderAmount
          : saleOrderAmount // ignore: cast_nullable_to_non_nullable
              as SafetyNumber,
      saleOrderOriginAmount: null == saleOrderOriginAmount
          ? _value.saleOrderOriginAmount
          : saleOrderOriginAmount // ignore: cast_nullable_to_non_nullable
              as SafetyNumber,
      unpaidAmount: null == unpaidAmount
          ? _value.unpaidAmount
          : unpaidAmount // ignore: cast_nullable_to_non_nullable
              as SafetyNumber,
      zeroAmount: null == zeroAmount
          ? _value.zeroAmount
          : zeroAmount // ignore: cast_nullable_to_non_nullable
              as SafetyNumber,
      zeroRule: null == zeroRule
          ? _value.zeroRule
          : zeroRule // ignore: cast_nullable_to_non_nullable
              as int,
      isAutoZero: freezed == isAutoZero
          ? _value.isAutoZero
          : isAutoZero // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }

  /// Create a copy of PaymentAmount
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SafetyNumberCopyWith<$Res> get commissionFee {
    return $SafetyNumberCopyWith<$Res>(_value.commissionFee, (value) {
      return _then(_value.copyWith(commissionFee: value) as $Val);
    });
  }

  /// Create a copy of PaymentAmount
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SafetyNumberCopyWith<$Res> get saleOrderAmount {
    return $SafetyNumberCopyWith<$Res>(_value.saleOrderAmount, (value) {
      return _then(_value.copyWith(saleOrderAmount: value) as $Val);
    });
  }

  /// Create a copy of PaymentAmount
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SafetyNumberCopyWith<$Res> get saleOrderOriginAmount {
    return $SafetyNumberCopyWith<$Res>(_value.saleOrderOriginAmount, (value) {
      return _then(_value.copyWith(saleOrderOriginAmount: value) as $Val);
    });
  }

  /// Create a copy of PaymentAmount
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SafetyNumberCopyWith<$Res> get unpaidAmount {
    return $SafetyNumberCopyWith<$Res>(_value.unpaidAmount, (value) {
      return _then(_value.copyWith(unpaidAmount: value) as $Val);
    });
  }

  /// Create a copy of PaymentAmount
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SafetyNumberCopyWith<$Res> get zeroAmount {
    return $SafetyNumberCopyWith<$Res>(_value.zeroAmount, (value) {
      return _then(_value.copyWith(zeroAmount: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PaymentAmountImplCopyWith<$Res>
    implements $PaymentAmountCopyWith<$Res> {
  factory _$$PaymentAmountImplCopyWith(
          _$PaymentAmountImpl value, $Res Function(_$PaymentAmountImpl) then) =
      __$$PaymentAmountImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "commission_fee") SafetyNumber commissionFee,
      @JsonKey(name: "payment_method_uuid") int paymentMethodUuid,
      @JsonKey(name: "sale_order_amount") SafetyNumber saleOrderAmount,
      @JsonKey(name: "sale_order_origin_amount")
      SafetyNumber saleOrderOriginAmount,
      @JsonKey(name: "unpaid_amount") SafetyNumber unpaidAmount,
      @JsonKey(name: "zero_amount") SafetyNumber zeroAmount,
      @JsonKey(name: "zero_rule") int zeroRule,
      @JsonKey(name: "is_auto_zero") bool? isAutoZero});

  @override
  $SafetyNumberCopyWith<$Res> get commissionFee;
  @override
  $SafetyNumberCopyWith<$Res> get saleOrderAmount;
  @override
  $SafetyNumberCopyWith<$Res> get saleOrderOriginAmount;
  @override
  $SafetyNumberCopyWith<$Res> get unpaidAmount;
  @override
  $SafetyNumberCopyWith<$Res> get zeroAmount;
}

/// @nodoc
class __$$PaymentAmountImplCopyWithImpl<$Res>
    extends _$PaymentAmountCopyWithImpl<$Res, _$PaymentAmountImpl>
    implements _$$PaymentAmountImplCopyWith<$Res> {
  __$$PaymentAmountImplCopyWithImpl(
      _$PaymentAmountImpl _value, $Res Function(_$PaymentAmountImpl) _then)
      : super(_value, _then);

  /// Create a copy of PaymentAmount
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
    Object? isAutoZero = freezed,
  }) {
    return _then(_$PaymentAmountImpl(
      commissionFee: null == commissionFee
          ? _value.commissionFee
          : commissionFee // ignore: cast_nullable_to_non_nullable
              as SafetyNumber,
      paymentMethodUuid: null == paymentMethodUuid
          ? _value.paymentMethodUuid
          : paymentMethodUuid // ignore: cast_nullable_to_non_nullable
              as int,
      saleOrderAmount: null == saleOrderAmount
          ? _value.saleOrderAmount
          : saleOrderAmount // ignore: cast_nullable_to_non_nullable
              as SafetyNumber,
      saleOrderOriginAmount: null == saleOrderOriginAmount
          ? _value.saleOrderOriginAmount
          : saleOrderOriginAmount // ignore: cast_nullable_to_non_nullable
              as SafetyNumber,
      unpaidAmount: null == unpaidAmount
          ? _value.unpaidAmount
          : unpaidAmount // ignore: cast_nullable_to_non_nullable
              as SafetyNumber,
      zeroAmount: null == zeroAmount
          ? _value.zeroAmount
          : zeroAmount // ignore: cast_nullable_to_non_nullable
              as SafetyNumber,
      zeroRule: null == zeroRule
          ? _value.zeroRule
          : zeroRule // ignore: cast_nullable_to_non_nullable
              as int,
      isAutoZero: freezed == isAutoZero
          ? _value.isAutoZero
          : isAutoZero // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PaymentAmountImpl implements _PaymentAmount {
  const _$PaymentAmountImpl(
      {@JsonKey(name: "commission_fee") required this.commissionFee,
      @JsonKey(name: "payment_method_uuid") required this.paymentMethodUuid,
      @JsonKey(name: "sale_order_amount") required this.saleOrderAmount,
      @JsonKey(name: "sale_order_origin_amount")
      required this.saleOrderOriginAmount,
      @JsonKey(name: "unpaid_amount") required this.unpaidAmount,
      @JsonKey(name: "zero_amount") required this.zeroAmount,
      @JsonKey(name: "zero_rule") required this.zeroRule,
      @JsonKey(name: "is_auto_zero") this.isAutoZero});

  factory _$PaymentAmountImpl.fromJson(Map<String, dynamic> json) =>
      _$$PaymentAmountImplFromJson(json);

  @override
  @JsonKey(name: "commission_fee")
  final SafetyNumber commissionFee;
  @override
  @JsonKey(name: "payment_method_uuid")
  final int paymentMethodUuid;
  @override
  @JsonKey(name: "sale_order_amount")
  final SafetyNumber saleOrderAmount;
  @override
  @JsonKey(name: "sale_order_origin_amount")
  final SafetyNumber saleOrderOriginAmount;
  @override
  @JsonKey(name: "unpaid_amount")
  final SafetyNumber unpaidAmount;
  @override
  @JsonKey(name: "zero_amount")
  final SafetyNumber zeroAmount;
  @override
  @JsonKey(name: "zero_rule")
  final int zeroRule;

  /// NOTE: 2.1 新增字段
  @override
  @JsonKey(name: "is_auto_zero")
  final bool? isAutoZero;

  @override
  String toString() {
    return 'PaymentAmount(commissionFee: $commissionFee, paymentMethodUuid: $paymentMethodUuid, saleOrderAmount: $saleOrderAmount, saleOrderOriginAmount: $saleOrderOriginAmount, unpaidAmount: $unpaidAmount, zeroAmount: $zeroAmount, zeroRule: $zeroRule, isAutoZero: $isAutoZero)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaymentAmountImpl &&
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
                other.zeroRule == zeroRule) &&
            (identical(other.isAutoZero, isAutoZero) ||
                other.isAutoZero == isAutoZero));
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
      zeroRule,
      isAutoZero);

  /// Create a copy of PaymentAmount
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PaymentAmountImplCopyWith<_$PaymentAmountImpl> get copyWith =>
      __$$PaymentAmountImplCopyWithImpl<_$PaymentAmountImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PaymentAmountImplToJson(
      this,
    );
  }
}

abstract class _PaymentAmount implements PaymentAmount {
  const factory _PaymentAmount(
      {@JsonKey(name: "commission_fee")
      required final SafetyNumber commissionFee,
      @JsonKey(name: "payment_method_uuid")
      required final int paymentMethodUuid,
      @JsonKey(name: "sale_order_amount")
      required final SafetyNumber saleOrderAmount,
      @JsonKey(name: "sale_order_origin_amount")
      required final SafetyNumber saleOrderOriginAmount,
      @JsonKey(name: "unpaid_amount") required final SafetyNumber unpaidAmount,
      @JsonKey(name: "zero_amount") required final SafetyNumber zeroAmount,
      @JsonKey(name: "zero_rule") required final int zeroRule,
      @JsonKey(name: "is_auto_zero")
      final bool? isAutoZero}) = _$PaymentAmountImpl;

  factory _PaymentAmount.fromJson(Map<String, dynamic> json) =
      _$PaymentAmountImpl.fromJson;

  @override
  @JsonKey(name: "commission_fee")
  SafetyNumber get commissionFee;
  @override
  @JsonKey(name: "payment_method_uuid")
  int get paymentMethodUuid;
  @override
  @JsonKey(name: "sale_order_amount")
  SafetyNumber get saleOrderAmount;
  @override
  @JsonKey(name: "sale_order_origin_amount")
  SafetyNumber get saleOrderOriginAmount;
  @override
  @JsonKey(name: "unpaid_amount")
  SafetyNumber get unpaidAmount;
  @override
  @JsonKey(name: "zero_amount")
  SafetyNumber get zeroAmount;
  @override
  @JsonKey(name: "zero_rule")
  int get zeroRule;

  /// NOTE: 2.1 新增字段
  @override
  @JsonKey(name: "is_auto_zero")
  bool? get isAutoZero;

  /// Create a copy of PaymentAmount
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PaymentAmountImplCopyWith<_$PaymentAmountImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'confirm_recharge_order.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ResponseConfirmRechargeOrder _$ResponseConfirmRechargeOrderFromJson(
    Map<String, dynamic> json) {
  return _ResponseConfirmRechargeOrder.fromJson(json);
}

/// @nodoc
mixin _$ResponseConfirmRechargeOrder {
  @JsonKey(name: "actual_amount")
  double get actualAmount => throw _privateConstructorUsedError;
  @JsonKey(name: "amount")
  double get amount => throw _privateConstructorUsedError;
  @JsonKey(name: "charge_due")
  double get chargeDue => throw _privateConstructorUsedError;
  @JsonKey(name: "payment_methods")
  List<String> get paymentMethods => throw _privateConstructorUsedError;

  /// Serializes this ResponseConfirmRechargeOrder to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ResponseConfirmRechargeOrder
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ResponseConfirmRechargeOrderCopyWith<ResponseConfirmRechargeOrder>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResponseConfirmRechargeOrderCopyWith<$Res> {
  factory $ResponseConfirmRechargeOrderCopyWith(
          ResponseConfirmRechargeOrder value,
          $Res Function(ResponseConfirmRechargeOrder) then) =
      _$ResponseConfirmRechargeOrderCopyWithImpl<$Res,
          ResponseConfirmRechargeOrder>;
  @useResult
  $Res call(
      {@JsonKey(name: "actual_amount") double actualAmount,
      @JsonKey(name: "amount") double amount,
      @JsonKey(name: "charge_due") double chargeDue,
      @JsonKey(name: "payment_methods") List<String> paymentMethods});
}

/// @nodoc
class _$ResponseConfirmRechargeOrderCopyWithImpl<$Res,
        $Val extends ResponseConfirmRechargeOrder>
    implements $ResponseConfirmRechargeOrderCopyWith<$Res> {
  _$ResponseConfirmRechargeOrderCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ResponseConfirmRechargeOrder
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? actualAmount = null,
    Object? amount = null,
    Object? chargeDue = null,
    Object? paymentMethods = null,
  }) {
    return _then(_value.copyWith(
      actualAmount: null == actualAmount
          ? _value.actualAmount
          : actualAmount // ignore: cast_nullable_to_non_nullable
              as double,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      chargeDue: null == chargeDue
          ? _value.chargeDue
          : chargeDue // ignore: cast_nullable_to_non_nullable
              as double,
      paymentMethods: null == paymentMethods
          ? _value.paymentMethods
          : paymentMethods // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ResponseConfirmRechargeOrderImplCopyWith<$Res>
    implements $ResponseConfirmRechargeOrderCopyWith<$Res> {
  factory _$$ResponseConfirmRechargeOrderImplCopyWith(
          _$ResponseConfirmRechargeOrderImpl value,
          $Res Function(_$ResponseConfirmRechargeOrderImpl) then) =
      __$$ResponseConfirmRechargeOrderImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "actual_amount") double actualAmount,
      @JsonKey(name: "amount") double amount,
      @JsonKey(name: "charge_due") double chargeDue,
      @JsonKey(name: "payment_methods") List<String> paymentMethods});
}

/// @nodoc
class __$$ResponseConfirmRechargeOrderImplCopyWithImpl<$Res>
    extends _$ResponseConfirmRechargeOrderCopyWithImpl<$Res,
        _$ResponseConfirmRechargeOrderImpl>
    implements _$$ResponseConfirmRechargeOrderImplCopyWith<$Res> {
  __$$ResponseConfirmRechargeOrderImplCopyWithImpl(
      _$ResponseConfirmRechargeOrderImpl _value,
      $Res Function(_$ResponseConfirmRechargeOrderImpl) _then)
      : super(_value, _then);

  /// Create a copy of ResponseConfirmRechargeOrder
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? actualAmount = null,
    Object? amount = null,
    Object? chargeDue = null,
    Object? paymentMethods = null,
  }) {
    return _then(_$ResponseConfirmRechargeOrderImpl(
      actualAmount: null == actualAmount
          ? _value.actualAmount
          : actualAmount // ignore: cast_nullable_to_non_nullable
              as double,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      chargeDue: null == chargeDue
          ? _value.chargeDue
          : chargeDue // ignore: cast_nullable_to_non_nullable
              as double,
      paymentMethods: null == paymentMethods
          ? _value._paymentMethods
          : paymentMethods // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ResponseConfirmRechargeOrderImpl
    implements _ResponseConfirmRechargeOrder {
  const _$ResponseConfirmRechargeOrderImpl(
      {@JsonKey(name: "actual_amount") required this.actualAmount,
      @JsonKey(name: "amount") required this.amount,
      @JsonKey(name: "charge_due") required this.chargeDue,
      @JsonKey(name: "payment_methods")
      required final List<String> paymentMethods})
      : _paymentMethods = paymentMethods;

  factory _$ResponseConfirmRechargeOrderImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ResponseConfirmRechargeOrderImplFromJson(json);

  @override
  @JsonKey(name: "actual_amount")
  final double actualAmount;
  @override
  @JsonKey(name: "amount")
  final double amount;
  @override
  @JsonKey(name: "charge_due")
  final double chargeDue;
  final List<String> _paymentMethods;
  @override
  @JsonKey(name: "payment_methods")
  List<String> get paymentMethods {
    if (_paymentMethods is EqualUnmodifiableListView) return _paymentMethods;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_paymentMethods);
  }

  @override
  String toString() {
    return 'ResponseConfirmRechargeOrder(actualAmount: $actualAmount, amount: $amount, chargeDue: $chargeDue, paymentMethods: $paymentMethods)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResponseConfirmRechargeOrderImpl &&
            (identical(other.actualAmount, actualAmount) ||
                other.actualAmount == actualAmount) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.chargeDue, chargeDue) ||
                other.chargeDue == chargeDue) &&
            const DeepCollectionEquality()
                .equals(other._paymentMethods, _paymentMethods));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, actualAmount, amount, chargeDue,
      const DeepCollectionEquality().hash(_paymentMethods));

  /// Create a copy of ResponseConfirmRechargeOrder
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ResponseConfirmRechargeOrderImplCopyWith<
          _$ResponseConfirmRechargeOrderImpl>
      get copyWith => __$$ResponseConfirmRechargeOrderImplCopyWithImpl<
          _$ResponseConfirmRechargeOrderImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResponseConfirmRechargeOrderImplToJson(
      this,
    );
  }
}

abstract class _ResponseConfirmRechargeOrder
    implements ResponseConfirmRechargeOrder {
  const factory _ResponseConfirmRechargeOrder(
          {@JsonKey(name: "actual_amount") required final double actualAmount,
          @JsonKey(name: "amount") required final double amount,
          @JsonKey(name: "charge_due") required final double chargeDue,
          @JsonKey(name: "payment_methods")
          required final List<String> paymentMethods}) =
      _$ResponseConfirmRechargeOrderImpl;

  factory _ResponseConfirmRechargeOrder.fromJson(Map<String, dynamic> json) =
      _$ResponseConfirmRechargeOrderImpl.fromJson;

  @override
  @JsonKey(name: "actual_amount")
  double get actualAmount;
  @override
  @JsonKey(name: "amount")
  double get amount;
  @override
  @JsonKey(name: "charge_due")
  double get chargeDue;
  @override
  @JsonKey(name: "payment_methods")
  List<String> get paymentMethods;

  /// Create a copy of ResponseConfirmRechargeOrder
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ResponseConfirmRechargeOrderImplCopyWith<
          _$ResponseConfirmRechargeOrderImpl>
      get copyWith => throw _privateConstructorUsedError;
}

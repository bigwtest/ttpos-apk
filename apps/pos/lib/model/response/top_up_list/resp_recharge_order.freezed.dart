// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'resp_recharge_order.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RespRechargeOrder _$RespRechargeOrderFromJson(Map<String, dynamic> json) {
  return _RespRechargeOrder.fromJson(json);
}

/// @nodoc
mixin _$RespRechargeOrder {
  @JsonKey(name: "charge_due")
  double get chargeDue => throw _privateConstructorUsedError;
  @JsonKey(name: "charge_due")
  set chargeDue(double value) => throw _privateConstructorUsedError;
  @JsonKey(name: "gift_amount")
  double get giftAmount => throw _privateConstructorUsedError;
  @JsonKey(name: "gift_amount")
  set giftAmount(double value) => throw _privateConstructorUsedError;
  @JsonKey(name: "gift_point")
  double get giftPoint => throw _privateConstructorUsedError;
  @JsonKey(name: "gift_point")
  set giftPoint(double value) => throw _privateConstructorUsedError;
  @JsonKey(name: "member_uuid")
  int get memberUuid => throw _privateConstructorUsedError;
  @JsonKey(name: "member_uuid")
  set memberUuid(int value) => throw _privateConstructorUsedError;
  @JsonKey(name: "payment_orders")
  List<RespPaymentOrder> get paymentOrders =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "payment_orders")
  set paymentOrders(List<RespPaymentOrder> value) =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "recharge_amount")
  double get rechargeAmount => throw _privateConstructorUsedError;
  @JsonKey(name: "recharge_amount")
  set rechargeAmount(double value) => throw _privateConstructorUsedError;
  @JsonKey(name: "uuid")
  int get uuid => throw _privateConstructorUsedError;
  @JsonKey(name: "uuid")
  set uuid(int value) => throw _privateConstructorUsedError;

  /// Serializes this RespRechargeOrder to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RespRechargeOrder
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RespRechargeOrderCopyWith<RespRechargeOrder> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RespRechargeOrderCopyWith<$Res> {
  factory $RespRechargeOrderCopyWith(
          RespRechargeOrder value, $Res Function(RespRechargeOrder) then) =
      _$RespRechargeOrderCopyWithImpl<$Res, RespRechargeOrder>;
  @useResult
  $Res call(
      {@JsonKey(name: "charge_due") double chargeDue,
      @JsonKey(name: "gift_amount") double giftAmount,
      @JsonKey(name: "gift_point") double giftPoint,
      @JsonKey(name: "member_uuid") int memberUuid,
      @JsonKey(name: "payment_orders") List<RespPaymentOrder> paymentOrders,
      @JsonKey(name: "recharge_amount") double rechargeAmount,
      @JsonKey(name: "uuid") int uuid});
}

/// @nodoc
class _$RespRechargeOrderCopyWithImpl<$Res, $Val extends RespRechargeOrder>
    implements $RespRechargeOrderCopyWith<$Res> {
  _$RespRechargeOrderCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RespRechargeOrder
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chargeDue = null,
    Object? giftAmount = null,
    Object? giftPoint = null,
    Object? memberUuid = null,
    Object? paymentOrders = null,
    Object? rechargeAmount = null,
    Object? uuid = null,
  }) {
    return _then(_value.copyWith(
      chargeDue: null == chargeDue
          ? _value.chargeDue
          : chargeDue // ignore: cast_nullable_to_non_nullable
              as double,
      giftAmount: null == giftAmount
          ? _value.giftAmount
          : giftAmount // ignore: cast_nullable_to_non_nullable
              as double,
      giftPoint: null == giftPoint
          ? _value.giftPoint
          : giftPoint // ignore: cast_nullable_to_non_nullable
              as double,
      memberUuid: null == memberUuid
          ? _value.memberUuid
          : memberUuid // ignore: cast_nullable_to_non_nullable
              as int,
      paymentOrders: null == paymentOrders
          ? _value.paymentOrders
          : paymentOrders // ignore: cast_nullable_to_non_nullable
              as List<RespPaymentOrder>,
      rechargeAmount: null == rechargeAmount
          ? _value.rechargeAmount
          : rechargeAmount // ignore: cast_nullable_to_non_nullable
              as double,
      uuid: null == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RespRechargeOrderImplCopyWith<$Res>
    implements $RespRechargeOrderCopyWith<$Res> {
  factory _$$RespRechargeOrderImplCopyWith(_$RespRechargeOrderImpl value,
          $Res Function(_$RespRechargeOrderImpl) then) =
      __$$RespRechargeOrderImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "charge_due") double chargeDue,
      @JsonKey(name: "gift_amount") double giftAmount,
      @JsonKey(name: "gift_point") double giftPoint,
      @JsonKey(name: "member_uuid") int memberUuid,
      @JsonKey(name: "payment_orders") List<RespPaymentOrder> paymentOrders,
      @JsonKey(name: "recharge_amount") double rechargeAmount,
      @JsonKey(name: "uuid") int uuid});
}

/// @nodoc
class __$$RespRechargeOrderImplCopyWithImpl<$Res>
    extends _$RespRechargeOrderCopyWithImpl<$Res, _$RespRechargeOrderImpl>
    implements _$$RespRechargeOrderImplCopyWith<$Res> {
  __$$RespRechargeOrderImplCopyWithImpl(_$RespRechargeOrderImpl _value,
      $Res Function(_$RespRechargeOrderImpl) _then)
      : super(_value, _then);

  /// Create a copy of RespRechargeOrder
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chargeDue = null,
    Object? giftAmount = null,
    Object? giftPoint = null,
    Object? memberUuid = null,
    Object? paymentOrders = null,
    Object? rechargeAmount = null,
    Object? uuid = null,
  }) {
    return _then(_$RespRechargeOrderImpl(
      chargeDue: null == chargeDue
          ? _value.chargeDue
          : chargeDue // ignore: cast_nullable_to_non_nullable
              as double,
      giftAmount: null == giftAmount
          ? _value.giftAmount
          : giftAmount // ignore: cast_nullable_to_non_nullable
              as double,
      giftPoint: null == giftPoint
          ? _value.giftPoint
          : giftPoint // ignore: cast_nullable_to_non_nullable
              as double,
      memberUuid: null == memberUuid
          ? _value.memberUuid
          : memberUuid // ignore: cast_nullable_to_non_nullable
              as int,
      paymentOrders: null == paymentOrders
          ? _value.paymentOrders
          : paymentOrders // ignore: cast_nullable_to_non_nullable
              as List<RespPaymentOrder>,
      rechargeAmount: null == rechargeAmount
          ? _value.rechargeAmount
          : rechargeAmount // ignore: cast_nullable_to_non_nullable
              as double,
      uuid: null == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RespRechargeOrderImpl implements _RespRechargeOrder {
  _$RespRechargeOrderImpl(
      {@JsonKey(name: "charge_due") required this.chargeDue,
      @JsonKey(name: "gift_amount") required this.giftAmount,
      @JsonKey(name: "gift_point") required this.giftPoint,
      @JsonKey(name: "member_uuid") required this.memberUuid,
      @JsonKey(name: "payment_orders") required this.paymentOrders,
      @JsonKey(name: "recharge_amount") required this.rechargeAmount,
      @JsonKey(name: "uuid") required this.uuid});

  factory _$RespRechargeOrderImpl.fromJson(Map<String, dynamic> json) =>
      _$$RespRechargeOrderImplFromJson(json);

  @override
  @JsonKey(name: "charge_due")
  double chargeDue;
  @override
  @JsonKey(name: "gift_amount")
  double giftAmount;
  @override
  @JsonKey(name: "gift_point")
  double giftPoint;
  @override
  @JsonKey(name: "member_uuid")
  int memberUuid;
  @override
  @JsonKey(name: "payment_orders")
  List<RespPaymentOrder> paymentOrders;
  @override
  @JsonKey(name: "recharge_amount")
  double rechargeAmount;
  @override
  @JsonKey(name: "uuid")
  int uuid;

  @override
  String toString() {
    return 'RespRechargeOrder(chargeDue: $chargeDue, giftAmount: $giftAmount, giftPoint: $giftPoint, memberUuid: $memberUuid, paymentOrders: $paymentOrders, rechargeAmount: $rechargeAmount, uuid: $uuid)';
  }

  /// Create a copy of RespRechargeOrder
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RespRechargeOrderImplCopyWith<_$RespRechargeOrderImpl> get copyWith =>
      __$$RespRechargeOrderImplCopyWithImpl<_$RespRechargeOrderImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RespRechargeOrderImplToJson(
      this,
    );
  }
}

abstract class _RespRechargeOrder implements RespRechargeOrder {
  factory _RespRechargeOrder(
      {@JsonKey(name: "charge_due") required double chargeDue,
      @JsonKey(name: "gift_amount") required double giftAmount,
      @JsonKey(name: "gift_point") required double giftPoint,
      @JsonKey(name: "member_uuid") required int memberUuid,
      @JsonKey(name: "payment_orders")
      required List<RespPaymentOrder> paymentOrders,
      @JsonKey(name: "recharge_amount") required double rechargeAmount,
      @JsonKey(name: "uuid") required int uuid}) = _$RespRechargeOrderImpl;

  factory _RespRechargeOrder.fromJson(Map<String, dynamic> json) =
      _$RespRechargeOrderImpl.fromJson;

  @override
  @JsonKey(name: "charge_due")
  double get chargeDue;
  @JsonKey(name: "charge_due")
  set chargeDue(double value);
  @override
  @JsonKey(name: "gift_amount")
  double get giftAmount;
  @JsonKey(name: "gift_amount")
  set giftAmount(double value);
  @override
  @JsonKey(name: "gift_point")
  double get giftPoint;
  @JsonKey(name: "gift_point")
  set giftPoint(double value);
  @override
  @JsonKey(name: "member_uuid")
  int get memberUuid;
  @JsonKey(name: "member_uuid")
  set memberUuid(int value);
  @override
  @JsonKey(name: "payment_orders")
  List<RespPaymentOrder> get paymentOrders;
  @JsonKey(name: "payment_orders")
  set paymentOrders(List<RespPaymentOrder> value);
  @override
  @JsonKey(name: "recharge_amount")
  double get rechargeAmount;
  @JsonKey(name: "recharge_amount")
  set rechargeAmount(double value);
  @override
  @JsonKey(name: "uuid")
  int get uuid;
  @JsonKey(name: "uuid")
  set uuid(int value);

  /// Create a copy of RespRechargeOrder
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RespRechargeOrderImplCopyWith<_$RespRechargeOrderImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

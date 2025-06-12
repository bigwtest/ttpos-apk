// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'recharge_order.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ResponseRechargeOrder _$ResponseRechargeOrderFromJson(
    Map<String, dynamic> json) {
  return _ResponseRechargeOrder.fromJson(json);
}

/// @nodoc
mixin _$ResponseRechargeOrder {
  @JsonKey(name: "charge_due")
  double get chargeDue => throw _privateConstructorUsedError;
  @JsonKey(name: "gift_amount")
  double get giftAmount => throw _privateConstructorUsedError;
  @JsonKey(name: "gift_point")
  double get giftPoint => throw _privateConstructorUsedError;
  @JsonKey(name: "member_uuid")
  int get memberUuid => throw _privateConstructorUsedError;
  @JsonKey(name: "payment_orders")
  List<ResponsePaymentOrder> get paymentOrders =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "recharge_amount")
  double get rechargeAmount => throw _privateConstructorUsedError;
  @JsonKey(name: "uuid")
  int get uuid => throw _privateConstructorUsedError;

  /// Serializes this ResponseRechargeOrder to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ResponseRechargeOrder
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ResponseRechargeOrderCopyWith<ResponseRechargeOrder> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResponseRechargeOrderCopyWith<$Res> {
  factory $ResponseRechargeOrderCopyWith(ResponseRechargeOrder value,
          $Res Function(ResponseRechargeOrder) then) =
      _$ResponseRechargeOrderCopyWithImpl<$Res, ResponseRechargeOrder>;
  @useResult
  $Res call(
      {@JsonKey(name: "charge_due") double chargeDue,
      @JsonKey(name: "gift_amount") double giftAmount,
      @JsonKey(name: "gift_point") double giftPoint,
      @JsonKey(name: "member_uuid") int memberUuid,
      @JsonKey(name: "payment_orders") List<ResponsePaymentOrder> paymentOrders,
      @JsonKey(name: "recharge_amount") double rechargeAmount,
      @JsonKey(name: "uuid") int uuid});
}

/// @nodoc
class _$ResponseRechargeOrderCopyWithImpl<$Res,
        $Val extends ResponseRechargeOrder>
    implements $ResponseRechargeOrderCopyWith<$Res> {
  _$ResponseRechargeOrderCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ResponseRechargeOrder
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
              as List<ResponsePaymentOrder>,
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
abstract class _$$ResponseRechargeOrderImplCopyWith<$Res>
    implements $ResponseRechargeOrderCopyWith<$Res> {
  factory _$$ResponseRechargeOrderImplCopyWith(
          _$ResponseRechargeOrderImpl value,
          $Res Function(_$ResponseRechargeOrderImpl) then) =
      __$$ResponseRechargeOrderImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "charge_due") double chargeDue,
      @JsonKey(name: "gift_amount") double giftAmount,
      @JsonKey(name: "gift_point") double giftPoint,
      @JsonKey(name: "member_uuid") int memberUuid,
      @JsonKey(name: "payment_orders") List<ResponsePaymentOrder> paymentOrders,
      @JsonKey(name: "recharge_amount") double rechargeAmount,
      @JsonKey(name: "uuid") int uuid});
}

/// @nodoc
class __$$ResponseRechargeOrderImplCopyWithImpl<$Res>
    extends _$ResponseRechargeOrderCopyWithImpl<$Res,
        _$ResponseRechargeOrderImpl>
    implements _$$ResponseRechargeOrderImplCopyWith<$Res> {
  __$$ResponseRechargeOrderImplCopyWithImpl(_$ResponseRechargeOrderImpl _value,
      $Res Function(_$ResponseRechargeOrderImpl) _then)
      : super(_value, _then);

  /// Create a copy of ResponseRechargeOrder
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
    return _then(_$ResponseRechargeOrderImpl(
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
          ? _value._paymentOrders
          : paymentOrders // ignore: cast_nullable_to_non_nullable
              as List<ResponsePaymentOrder>,
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
class _$ResponseRechargeOrderImpl implements _ResponseRechargeOrder {
  const _$ResponseRechargeOrderImpl(
      {@JsonKey(name: "charge_due") required this.chargeDue,
      @JsonKey(name: "gift_amount") required this.giftAmount,
      @JsonKey(name: "gift_point") required this.giftPoint,
      @JsonKey(name: "member_uuid") required this.memberUuid,
      @JsonKey(name: "payment_orders")
      required final List<ResponsePaymentOrder> paymentOrders,
      @JsonKey(name: "recharge_amount") required this.rechargeAmount,
      @JsonKey(name: "uuid") required this.uuid})
      : _paymentOrders = paymentOrders;

  factory _$ResponseRechargeOrderImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResponseRechargeOrderImplFromJson(json);

  @override
  @JsonKey(name: "charge_due")
  final double chargeDue;
  @override
  @JsonKey(name: "gift_amount")
  final double giftAmount;
  @override
  @JsonKey(name: "gift_point")
  final double giftPoint;
  @override
  @JsonKey(name: "member_uuid")
  final int memberUuid;
  final List<ResponsePaymentOrder> _paymentOrders;
  @override
  @JsonKey(name: "payment_orders")
  List<ResponsePaymentOrder> get paymentOrders {
    if (_paymentOrders is EqualUnmodifiableListView) return _paymentOrders;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_paymentOrders);
  }

  @override
  @JsonKey(name: "recharge_amount")
  final double rechargeAmount;
  @override
  @JsonKey(name: "uuid")
  final int uuid;

  @override
  String toString() {
    return 'ResponseRechargeOrder(chargeDue: $chargeDue, giftAmount: $giftAmount, giftPoint: $giftPoint, memberUuid: $memberUuid, paymentOrders: $paymentOrders, rechargeAmount: $rechargeAmount, uuid: $uuid)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResponseRechargeOrderImpl &&
            (identical(other.chargeDue, chargeDue) ||
                other.chargeDue == chargeDue) &&
            (identical(other.giftAmount, giftAmount) ||
                other.giftAmount == giftAmount) &&
            (identical(other.giftPoint, giftPoint) ||
                other.giftPoint == giftPoint) &&
            (identical(other.memberUuid, memberUuid) ||
                other.memberUuid == memberUuid) &&
            const DeepCollectionEquality()
                .equals(other._paymentOrders, _paymentOrders) &&
            (identical(other.rechargeAmount, rechargeAmount) ||
                other.rechargeAmount == rechargeAmount) &&
            (identical(other.uuid, uuid) || other.uuid == uuid));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      chargeDue,
      giftAmount,
      giftPoint,
      memberUuid,
      const DeepCollectionEquality().hash(_paymentOrders),
      rechargeAmount,
      uuid);

  /// Create a copy of ResponseRechargeOrder
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ResponseRechargeOrderImplCopyWith<_$ResponseRechargeOrderImpl>
      get copyWith => __$$ResponseRechargeOrderImplCopyWithImpl<
          _$ResponseRechargeOrderImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResponseRechargeOrderImplToJson(
      this,
    );
  }
}

abstract class _ResponseRechargeOrder implements ResponseRechargeOrder {
  const factory _ResponseRechargeOrder(
      {@JsonKey(name: "charge_due") required final double chargeDue,
      @JsonKey(name: "gift_amount") required final double giftAmount,
      @JsonKey(name: "gift_point") required final double giftPoint,
      @JsonKey(name: "member_uuid") required final int memberUuid,
      @JsonKey(name: "payment_orders")
      required final List<ResponsePaymentOrder> paymentOrders,
      @JsonKey(name: "recharge_amount") required final double rechargeAmount,
      @JsonKey(name: "uuid")
      required final int uuid}) = _$ResponseRechargeOrderImpl;

  factory _ResponseRechargeOrder.fromJson(Map<String, dynamic> json) =
      _$ResponseRechargeOrderImpl.fromJson;

  @override
  @JsonKey(name: "charge_due")
  double get chargeDue;
  @override
  @JsonKey(name: "gift_amount")
  double get giftAmount;
  @override
  @JsonKey(name: "gift_point")
  double get giftPoint;
  @override
  @JsonKey(name: "member_uuid")
  int get memberUuid;
  @override
  @JsonKey(name: "payment_orders")
  List<ResponsePaymentOrder> get paymentOrders;
  @override
  @JsonKey(name: "recharge_amount")
  double get rechargeAmount;
  @override
  @JsonKey(name: "uuid")
  int get uuid;

  /// Create a copy of ResponseRechargeOrder
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ResponseRechargeOrderImplCopyWith<_$ResponseRechargeOrderImpl>
      get copyWith => throw _privateConstructorUsedError;
}

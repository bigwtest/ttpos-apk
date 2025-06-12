// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'recharge.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RechargeOrder _$RechargeOrderFromJson(Map<String, dynamic> json) {
  return _RechargeOrder.fromJson(json);
}

/// @nodoc
mixin _$RechargeOrder {
  @JsonKey(name: "charge_due")
  SafetyNumber get chargeDue => throw _privateConstructorUsedError;
  @JsonKey(name: "gift_amount")
  SafetyNumber get giftAmount => throw _privateConstructorUsedError;
  @JsonKey(name: "gift_point")
  SafetyNumber get giftPoint => throw _privateConstructorUsedError;
  @JsonKey(name: "member_uuid")
  int get memberUuid => throw _privateConstructorUsedError;
  @JsonKey(name: "payment_orders")
  BaseList<PaymentOrder> get paymentOrders =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "recharge_amount")
  SafetyNumber get rechargeAmount => throw _privateConstructorUsedError;
  @JsonKey(name: "uuid")
  int get uuid => throw _privateConstructorUsedError;

  /// Serializes this RechargeOrder to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RechargeOrder
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RechargeOrderCopyWith<RechargeOrder> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RechargeOrderCopyWith<$Res> {
  factory $RechargeOrderCopyWith(
          RechargeOrder value, $Res Function(RechargeOrder) then) =
      _$RechargeOrderCopyWithImpl<$Res, RechargeOrder>;
  @useResult
  $Res call(
      {@JsonKey(name: "charge_due") SafetyNumber chargeDue,
      @JsonKey(name: "gift_amount") SafetyNumber giftAmount,
      @JsonKey(name: "gift_point") SafetyNumber giftPoint,
      @JsonKey(name: "member_uuid") int memberUuid,
      @JsonKey(name: "payment_orders") BaseList<PaymentOrder> paymentOrders,
      @JsonKey(name: "recharge_amount") SafetyNumber rechargeAmount,
      @JsonKey(name: "uuid") int uuid});

  $SafetyNumberCopyWith<$Res> get chargeDue;
  $SafetyNumberCopyWith<$Res> get giftAmount;
  $SafetyNumberCopyWith<$Res> get giftPoint;
  $BaseListCopyWith<PaymentOrder, $Res> get paymentOrders;
  $SafetyNumberCopyWith<$Res> get rechargeAmount;
}

/// @nodoc
class _$RechargeOrderCopyWithImpl<$Res, $Val extends RechargeOrder>
    implements $RechargeOrderCopyWith<$Res> {
  _$RechargeOrderCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RechargeOrder
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
              as SafetyNumber,
      giftAmount: null == giftAmount
          ? _value.giftAmount
          : giftAmount // ignore: cast_nullable_to_non_nullable
              as SafetyNumber,
      giftPoint: null == giftPoint
          ? _value.giftPoint
          : giftPoint // ignore: cast_nullable_to_non_nullable
              as SafetyNumber,
      memberUuid: null == memberUuid
          ? _value.memberUuid
          : memberUuid // ignore: cast_nullable_to_non_nullable
              as int,
      paymentOrders: null == paymentOrders
          ? _value.paymentOrders
          : paymentOrders // ignore: cast_nullable_to_non_nullable
              as BaseList<PaymentOrder>,
      rechargeAmount: null == rechargeAmount
          ? _value.rechargeAmount
          : rechargeAmount // ignore: cast_nullable_to_non_nullable
              as SafetyNumber,
      uuid: null == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }

  /// Create a copy of RechargeOrder
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SafetyNumberCopyWith<$Res> get chargeDue {
    return $SafetyNumberCopyWith<$Res>(_value.chargeDue, (value) {
      return _then(_value.copyWith(chargeDue: value) as $Val);
    });
  }

  /// Create a copy of RechargeOrder
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SafetyNumberCopyWith<$Res> get giftAmount {
    return $SafetyNumberCopyWith<$Res>(_value.giftAmount, (value) {
      return _then(_value.copyWith(giftAmount: value) as $Val);
    });
  }

  /// Create a copy of RechargeOrder
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SafetyNumberCopyWith<$Res> get giftPoint {
    return $SafetyNumberCopyWith<$Res>(_value.giftPoint, (value) {
      return _then(_value.copyWith(giftPoint: value) as $Val);
    });
  }

  /// Create a copy of RechargeOrder
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BaseListCopyWith<PaymentOrder, $Res> get paymentOrders {
    return $BaseListCopyWith<PaymentOrder, $Res>(_value.paymentOrders, (value) {
      return _then(_value.copyWith(paymentOrders: value) as $Val);
    });
  }

  /// Create a copy of RechargeOrder
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SafetyNumberCopyWith<$Res> get rechargeAmount {
    return $SafetyNumberCopyWith<$Res>(_value.rechargeAmount, (value) {
      return _then(_value.copyWith(rechargeAmount: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$RechargeOrderImplCopyWith<$Res>
    implements $RechargeOrderCopyWith<$Res> {
  factory _$$RechargeOrderImplCopyWith(
          _$RechargeOrderImpl value, $Res Function(_$RechargeOrderImpl) then) =
      __$$RechargeOrderImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "charge_due") SafetyNumber chargeDue,
      @JsonKey(name: "gift_amount") SafetyNumber giftAmount,
      @JsonKey(name: "gift_point") SafetyNumber giftPoint,
      @JsonKey(name: "member_uuid") int memberUuid,
      @JsonKey(name: "payment_orders") BaseList<PaymentOrder> paymentOrders,
      @JsonKey(name: "recharge_amount") SafetyNumber rechargeAmount,
      @JsonKey(name: "uuid") int uuid});

  @override
  $SafetyNumberCopyWith<$Res> get chargeDue;
  @override
  $SafetyNumberCopyWith<$Res> get giftAmount;
  @override
  $SafetyNumberCopyWith<$Res> get giftPoint;
  @override
  $BaseListCopyWith<PaymentOrder, $Res> get paymentOrders;
  @override
  $SafetyNumberCopyWith<$Res> get rechargeAmount;
}

/// @nodoc
class __$$RechargeOrderImplCopyWithImpl<$Res>
    extends _$RechargeOrderCopyWithImpl<$Res, _$RechargeOrderImpl>
    implements _$$RechargeOrderImplCopyWith<$Res> {
  __$$RechargeOrderImplCopyWithImpl(
      _$RechargeOrderImpl _value, $Res Function(_$RechargeOrderImpl) _then)
      : super(_value, _then);

  /// Create a copy of RechargeOrder
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
    return _then(_$RechargeOrderImpl(
      chargeDue: null == chargeDue
          ? _value.chargeDue
          : chargeDue // ignore: cast_nullable_to_non_nullable
              as SafetyNumber,
      giftAmount: null == giftAmount
          ? _value.giftAmount
          : giftAmount // ignore: cast_nullable_to_non_nullable
              as SafetyNumber,
      giftPoint: null == giftPoint
          ? _value.giftPoint
          : giftPoint // ignore: cast_nullable_to_non_nullable
              as SafetyNumber,
      memberUuid: null == memberUuid
          ? _value.memberUuid
          : memberUuid // ignore: cast_nullable_to_non_nullable
              as int,
      paymentOrders: null == paymentOrders
          ? _value.paymentOrders
          : paymentOrders // ignore: cast_nullable_to_non_nullable
              as BaseList<PaymentOrder>,
      rechargeAmount: null == rechargeAmount
          ? _value.rechargeAmount
          : rechargeAmount // ignore: cast_nullable_to_non_nullable
              as SafetyNumber,
      uuid: null == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RechargeOrderImpl implements _RechargeOrder {
  const _$RechargeOrderImpl(
      {@JsonKey(name: "charge_due") required this.chargeDue,
      @JsonKey(name: "gift_amount") required this.giftAmount,
      @JsonKey(name: "gift_point") required this.giftPoint,
      @JsonKey(name: "member_uuid") required this.memberUuid,
      @JsonKey(name: "payment_orders") required this.paymentOrders,
      @JsonKey(name: "recharge_amount") required this.rechargeAmount,
      @JsonKey(name: "uuid") required this.uuid});

  factory _$RechargeOrderImpl.fromJson(Map<String, dynamic> json) =>
      _$$RechargeOrderImplFromJson(json);

  @override
  @JsonKey(name: "charge_due")
  final SafetyNumber chargeDue;
  @override
  @JsonKey(name: "gift_amount")
  final SafetyNumber giftAmount;
  @override
  @JsonKey(name: "gift_point")
  final SafetyNumber giftPoint;
  @override
  @JsonKey(name: "member_uuid")
  final int memberUuid;
  @override
  @JsonKey(name: "payment_orders")
  final BaseList<PaymentOrder> paymentOrders;
  @override
  @JsonKey(name: "recharge_amount")
  final SafetyNumber rechargeAmount;
  @override
  @JsonKey(name: "uuid")
  final int uuid;

  @override
  String toString() {
    return 'RechargeOrder(chargeDue: $chargeDue, giftAmount: $giftAmount, giftPoint: $giftPoint, memberUuid: $memberUuid, paymentOrders: $paymentOrders, rechargeAmount: $rechargeAmount, uuid: $uuid)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RechargeOrderImpl &&
            (identical(other.chargeDue, chargeDue) ||
                other.chargeDue == chargeDue) &&
            (identical(other.giftAmount, giftAmount) ||
                other.giftAmount == giftAmount) &&
            (identical(other.giftPoint, giftPoint) ||
                other.giftPoint == giftPoint) &&
            (identical(other.memberUuid, memberUuid) ||
                other.memberUuid == memberUuid) &&
            (identical(other.paymentOrders, paymentOrders) ||
                other.paymentOrders == paymentOrders) &&
            (identical(other.rechargeAmount, rechargeAmount) ||
                other.rechargeAmount == rechargeAmount) &&
            (identical(other.uuid, uuid) || other.uuid == uuid));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, chargeDue, giftAmount, giftPoint,
      memberUuid, paymentOrders, rechargeAmount, uuid);

  /// Create a copy of RechargeOrder
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RechargeOrderImplCopyWith<_$RechargeOrderImpl> get copyWith =>
      __$$RechargeOrderImplCopyWithImpl<_$RechargeOrderImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RechargeOrderImplToJson(
      this,
    );
  }
}

abstract class _RechargeOrder implements RechargeOrder {
  const factory _RechargeOrder(
      {@JsonKey(name: "charge_due") required final SafetyNumber chargeDue,
      @JsonKey(name: "gift_amount") required final SafetyNumber giftAmount,
      @JsonKey(name: "gift_point") required final SafetyNumber giftPoint,
      @JsonKey(name: "member_uuid") required final int memberUuid,
      @JsonKey(name: "payment_orders")
      required final BaseList<PaymentOrder> paymentOrders,
      @JsonKey(name: "recharge_amount")
      required final SafetyNumber rechargeAmount,
      @JsonKey(name: "uuid") required final int uuid}) = _$RechargeOrderImpl;

  factory _RechargeOrder.fromJson(Map<String, dynamic> json) =
      _$RechargeOrderImpl.fromJson;

  @override
  @JsonKey(name: "charge_due")
  SafetyNumber get chargeDue;
  @override
  @JsonKey(name: "gift_amount")
  SafetyNumber get giftAmount;
  @override
  @JsonKey(name: "gift_point")
  SafetyNumber get giftPoint;
  @override
  @JsonKey(name: "member_uuid")
  int get memberUuid;
  @override
  @JsonKey(name: "payment_orders")
  BaseList<PaymentOrder> get paymentOrders;
  @override
  @JsonKey(name: "recharge_amount")
  SafetyNumber get rechargeAmount;
  @override
  @JsonKey(name: "uuid")
  int get uuid;

  /// Create a copy of RechargeOrder
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RechargeOrderImplCopyWith<_$RechargeOrderImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ConfirmRechargeOrder _$ConfirmRechargeOrderFromJson(Map<String, dynamic> json) {
  return _ConfirmRechargeOrder.fromJson(json);
}

/// @nodoc
mixin _$ConfirmRechargeOrder {
  @JsonKey(name: "actual_amount")
  SafetyNumber get actualAmount => throw _privateConstructorUsedError;
  @JsonKey(name: "amount")
  SafetyNumber get amount => throw _privateConstructorUsedError;
  @JsonKey(name: "charge_due")
  SafetyNumber get chargeDue => throw _privateConstructorUsedError;
  @JsonKey(name: "payment_methods")
  List<String> get paymentMethods => throw _privateConstructorUsedError;

  /// Serializes this ConfirmRechargeOrder to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ConfirmRechargeOrder
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ConfirmRechargeOrderCopyWith<ConfirmRechargeOrder> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConfirmRechargeOrderCopyWith<$Res> {
  factory $ConfirmRechargeOrderCopyWith(ConfirmRechargeOrder value,
          $Res Function(ConfirmRechargeOrder) then) =
      _$ConfirmRechargeOrderCopyWithImpl<$Res, ConfirmRechargeOrder>;
  @useResult
  $Res call(
      {@JsonKey(name: "actual_amount") SafetyNumber actualAmount,
      @JsonKey(name: "amount") SafetyNumber amount,
      @JsonKey(name: "charge_due") SafetyNumber chargeDue,
      @JsonKey(name: "payment_methods") List<String> paymentMethods});

  $SafetyNumberCopyWith<$Res> get actualAmount;
  $SafetyNumberCopyWith<$Res> get amount;
  $SafetyNumberCopyWith<$Res> get chargeDue;
}

/// @nodoc
class _$ConfirmRechargeOrderCopyWithImpl<$Res,
        $Val extends ConfirmRechargeOrder>
    implements $ConfirmRechargeOrderCopyWith<$Res> {
  _$ConfirmRechargeOrderCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ConfirmRechargeOrder
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
              as SafetyNumber,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as SafetyNumber,
      chargeDue: null == chargeDue
          ? _value.chargeDue
          : chargeDue // ignore: cast_nullable_to_non_nullable
              as SafetyNumber,
      paymentMethods: null == paymentMethods
          ? _value.paymentMethods
          : paymentMethods // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }

  /// Create a copy of ConfirmRechargeOrder
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SafetyNumberCopyWith<$Res> get actualAmount {
    return $SafetyNumberCopyWith<$Res>(_value.actualAmount, (value) {
      return _then(_value.copyWith(actualAmount: value) as $Val);
    });
  }

  /// Create a copy of ConfirmRechargeOrder
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SafetyNumberCopyWith<$Res> get amount {
    return $SafetyNumberCopyWith<$Res>(_value.amount, (value) {
      return _then(_value.copyWith(amount: value) as $Val);
    });
  }

  /// Create a copy of ConfirmRechargeOrder
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SafetyNumberCopyWith<$Res> get chargeDue {
    return $SafetyNumberCopyWith<$Res>(_value.chargeDue, (value) {
      return _then(_value.copyWith(chargeDue: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ConfirmRechargeOrderImplCopyWith<$Res>
    implements $ConfirmRechargeOrderCopyWith<$Res> {
  factory _$$ConfirmRechargeOrderImplCopyWith(_$ConfirmRechargeOrderImpl value,
          $Res Function(_$ConfirmRechargeOrderImpl) then) =
      __$$ConfirmRechargeOrderImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "actual_amount") SafetyNumber actualAmount,
      @JsonKey(name: "amount") SafetyNumber amount,
      @JsonKey(name: "charge_due") SafetyNumber chargeDue,
      @JsonKey(name: "payment_methods") List<String> paymentMethods});

  @override
  $SafetyNumberCopyWith<$Res> get actualAmount;
  @override
  $SafetyNumberCopyWith<$Res> get amount;
  @override
  $SafetyNumberCopyWith<$Res> get chargeDue;
}

/// @nodoc
class __$$ConfirmRechargeOrderImplCopyWithImpl<$Res>
    extends _$ConfirmRechargeOrderCopyWithImpl<$Res, _$ConfirmRechargeOrderImpl>
    implements _$$ConfirmRechargeOrderImplCopyWith<$Res> {
  __$$ConfirmRechargeOrderImplCopyWithImpl(_$ConfirmRechargeOrderImpl _value,
      $Res Function(_$ConfirmRechargeOrderImpl) _then)
      : super(_value, _then);

  /// Create a copy of ConfirmRechargeOrder
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? actualAmount = null,
    Object? amount = null,
    Object? chargeDue = null,
    Object? paymentMethods = null,
  }) {
    return _then(_$ConfirmRechargeOrderImpl(
      actualAmount: null == actualAmount
          ? _value.actualAmount
          : actualAmount // ignore: cast_nullable_to_non_nullable
              as SafetyNumber,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as SafetyNumber,
      chargeDue: null == chargeDue
          ? _value.chargeDue
          : chargeDue // ignore: cast_nullable_to_non_nullable
              as SafetyNumber,
      paymentMethods: null == paymentMethods
          ? _value._paymentMethods
          : paymentMethods // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ConfirmRechargeOrderImpl implements _ConfirmRechargeOrder {
  const _$ConfirmRechargeOrderImpl(
      {@JsonKey(name: "actual_amount") required this.actualAmount,
      @JsonKey(name: "amount") required this.amount,
      @JsonKey(name: "charge_due") required this.chargeDue,
      @JsonKey(name: "payment_methods")
      required final List<String> paymentMethods})
      : _paymentMethods = paymentMethods;

  factory _$ConfirmRechargeOrderImpl.fromJson(Map<String, dynamic> json) =>
      _$$ConfirmRechargeOrderImplFromJson(json);

  @override
  @JsonKey(name: "actual_amount")
  final SafetyNumber actualAmount;
  @override
  @JsonKey(name: "amount")
  final SafetyNumber amount;
  @override
  @JsonKey(name: "charge_due")
  final SafetyNumber chargeDue;
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
    return 'ConfirmRechargeOrder(actualAmount: $actualAmount, amount: $amount, chargeDue: $chargeDue, paymentMethods: $paymentMethods)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConfirmRechargeOrderImpl &&
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

  /// Create a copy of ConfirmRechargeOrder
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ConfirmRechargeOrderImplCopyWith<_$ConfirmRechargeOrderImpl>
      get copyWith =>
          __$$ConfirmRechargeOrderImplCopyWithImpl<_$ConfirmRechargeOrderImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ConfirmRechargeOrderImplToJson(
      this,
    );
  }
}

abstract class _ConfirmRechargeOrder implements ConfirmRechargeOrder {
  const factory _ConfirmRechargeOrder(
      {@JsonKey(name: "actual_amount") required final SafetyNumber actualAmount,
      @JsonKey(name: "amount") required final SafetyNumber amount,
      @JsonKey(name: "charge_due") required final SafetyNumber chargeDue,
      @JsonKey(name: "payment_methods")
      required final List<String> paymentMethods}) = _$ConfirmRechargeOrderImpl;

  factory _ConfirmRechargeOrder.fromJson(Map<String, dynamic> json) =
      _$ConfirmRechargeOrderImpl.fromJson;

  @override
  @JsonKey(name: "actual_amount")
  SafetyNumber get actualAmount;
  @override
  @JsonKey(name: "amount")
  SafetyNumber get amount;
  @override
  @JsonKey(name: "charge_due")
  SafetyNumber get chargeDue;
  @override
  @JsonKey(name: "payment_methods")
  List<String> get paymentMethods;

  /// Create a copy of ConfirmRechargeOrder
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ConfirmRechargeOrderImplCopyWith<_$ConfirmRechargeOrderImpl>
      get copyWith => throw _privateConstructorUsedError;
}

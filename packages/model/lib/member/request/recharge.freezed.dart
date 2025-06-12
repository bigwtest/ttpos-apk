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

RequestCreateRechargeOrder _$RequestCreateRechargeOrderFromJson(
    Map<String, dynamic> json) {
  return _RequestCreateRechargeOrder.fromJson(json);
}

/// @nodoc
mixin _$RequestCreateRechargeOrder {
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
  @JsonKey(name: "recharge_amount")
  double get rechargeAmount => throw _privateConstructorUsedError;
  @JsonKey(name: "recharge_amount")
  set rechargeAmount(double value) => throw _privateConstructorUsedError;
  @JsonKey(name: "recharge_order_uuid")
  int get rechargeOrderUuid => throw _privateConstructorUsedError;
  @JsonKey(name: "recharge_order_uuid")
  set rechargeOrderUuid(int value) => throw _privateConstructorUsedError;

  /// Serializes this RequestCreateRechargeOrder to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RequestCreateRechargeOrder
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RequestCreateRechargeOrderCopyWith<RequestCreateRechargeOrder>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RequestCreateRechargeOrderCopyWith<$Res> {
  factory $RequestCreateRechargeOrderCopyWith(RequestCreateRechargeOrder value,
          $Res Function(RequestCreateRechargeOrder) then) =
      _$RequestCreateRechargeOrderCopyWithImpl<$Res,
          RequestCreateRechargeOrder>;
  @useResult
  $Res call(
      {@JsonKey(name: "gift_amount") double giftAmount,
      @JsonKey(name: "gift_point") double giftPoint,
      @JsonKey(name: "member_uuid") int memberUuid,
      @JsonKey(name: "recharge_amount") double rechargeAmount,
      @JsonKey(name: "recharge_order_uuid") int rechargeOrderUuid});
}

/// @nodoc
class _$RequestCreateRechargeOrderCopyWithImpl<$Res,
        $Val extends RequestCreateRechargeOrder>
    implements $RequestCreateRechargeOrderCopyWith<$Res> {
  _$RequestCreateRechargeOrderCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RequestCreateRechargeOrder
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? giftAmount = null,
    Object? giftPoint = null,
    Object? memberUuid = null,
    Object? rechargeAmount = null,
    Object? rechargeOrderUuid = null,
  }) {
    return _then(_value.copyWith(
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
      rechargeAmount: null == rechargeAmount
          ? _value.rechargeAmount
          : rechargeAmount // ignore: cast_nullable_to_non_nullable
              as double,
      rechargeOrderUuid: null == rechargeOrderUuid
          ? _value.rechargeOrderUuid
          : rechargeOrderUuid // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RequestCreateRechargeOrderImplCopyWith<$Res>
    implements $RequestCreateRechargeOrderCopyWith<$Res> {
  factory _$$RequestCreateRechargeOrderImplCopyWith(
          _$RequestCreateRechargeOrderImpl value,
          $Res Function(_$RequestCreateRechargeOrderImpl) then) =
      __$$RequestCreateRechargeOrderImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "gift_amount") double giftAmount,
      @JsonKey(name: "gift_point") double giftPoint,
      @JsonKey(name: "member_uuid") int memberUuid,
      @JsonKey(name: "recharge_amount") double rechargeAmount,
      @JsonKey(name: "recharge_order_uuid") int rechargeOrderUuid});
}

/// @nodoc
class __$$RequestCreateRechargeOrderImplCopyWithImpl<$Res>
    extends _$RequestCreateRechargeOrderCopyWithImpl<$Res,
        _$RequestCreateRechargeOrderImpl>
    implements _$$RequestCreateRechargeOrderImplCopyWith<$Res> {
  __$$RequestCreateRechargeOrderImplCopyWithImpl(
      _$RequestCreateRechargeOrderImpl _value,
      $Res Function(_$RequestCreateRechargeOrderImpl) _then)
      : super(_value, _then);

  /// Create a copy of RequestCreateRechargeOrder
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? giftAmount = null,
    Object? giftPoint = null,
    Object? memberUuid = null,
    Object? rechargeAmount = null,
    Object? rechargeOrderUuid = null,
  }) {
    return _then(_$RequestCreateRechargeOrderImpl(
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
      rechargeAmount: null == rechargeAmount
          ? _value.rechargeAmount
          : rechargeAmount // ignore: cast_nullable_to_non_nullable
              as double,
      rechargeOrderUuid: null == rechargeOrderUuid
          ? _value.rechargeOrderUuid
          : rechargeOrderUuid // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RequestCreateRechargeOrderImpl implements _RequestCreateRechargeOrder {
  _$RequestCreateRechargeOrderImpl(
      {@JsonKey(name: "gift_amount") required this.giftAmount,
      @JsonKey(name: "gift_point") required this.giftPoint,
      @JsonKey(name: "member_uuid") required this.memberUuid,
      @JsonKey(name: "recharge_amount") required this.rechargeAmount,
      @JsonKey(name: "recharge_order_uuid") required this.rechargeOrderUuid});

  factory _$RequestCreateRechargeOrderImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$RequestCreateRechargeOrderImplFromJson(json);

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
  @JsonKey(name: "recharge_amount")
  double rechargeAmount;
  @override
  @JsonKey(name: "recharge_order_uuid")
  int rechargeOrderUuid;

  @override
  String toString() {
    return 'RequestCreateRechargeOrder(giftAmount: $giftAmount, giftPoint: $giftPoint, memberUuid: $memberUuid, rechargeAmount: $rechargeAmount, rechargeOrderUuid: $rechargeOrderUuid)';
  }

  /// Create a copy of RequestCreateRechargeOrder
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RequestCreateRechargeOrderImplCopyWith<_$RequestCreateRechargeOrderImpl>
      get copyWith => __$$RequestCreateRechargeOrderImplCopyWithImpl<
          _$RequestCreateRechargeOrderImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RequestCreateRechargeOrderImplToJson(
      this,
    );
  }
}

abstract class _RequestCreateRechargeOrder
    implements RequestCreateRechargeOrder {
  factory _RequestCreateRechargeOrder(
      {@JsonKey(name: "gift_amount") required double giftAmount,
      @JsonKey(name: "gift_point") required double giftPoint,
      @JsonKey(name: "member_uuid") required int memberUuid,
      @JsonKey(name: "recharge_amount") required double rechargeAmount,
      @JsonKey(name: "recharge_order_uuid")
      required int rechargeOrderUuid}) = _$RequestCreateRechargeOrderImpl;

  factory _RequestCreateRechargeOrder.fromJson(Map<String, dynamic> json) =
      _$RequestCreateRechargeOrderImpl.fromJson;

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
  @JsonKey(name: "recharge_amount")
  double get rechargeAmount;
  @JsonKey(name: "recharge_amount")
  set rechargeAmount(double value);
  @override
  @JsonKey(name: "recharge_order_uuid")
  int get rechargeOrderUuid;
  @JsonKey(name: "recharge_order_uuid")
  set rechargeOrderUuid(int value);

  /// Create a copy of RequestCreateRechargeOrder
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RequestCreateRechargeOrderImplCopyWith<_$RequestCreateRechargeOrderImpl>
      get copyWith => throw _privateConstructorUsedError;
}

RequestConfirmRechargeOrder _$RequestConfirmRechargeOrderFromJson(
    Map<String, dynamic> json) {
  return _RequestConfirmRechargeOrder.fromJson(json);
}

/// @nodoc
mixin _$RequestConfirmRechargeOrder {
  @JsonKey(name: "member_uuid")
  int get memberUuid => throw _privateConstructorUsedError;
  @JsonKey(name: "member_uuid")
  set memberUuid(int value) => throw _privateConstructorUsedError;
  @JsonKey(name: "recharge_order_uuid")
  int get rechargeOrderUuid => throw _privateConstructorUsedError;
  @JsonKey(name: "recharge_order_uuid")
  set rechargeOrderUuid(int value) => throw _privateConstructorUsedError;

  /// Serializes this RequestConfirmRechargeOrder to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RequestConfirmRechargeOrder
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RequestConfirmRechargeOrderCopyWith<RequestConfirmRechargeOrder>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RequestConfirmRechargeOrderCopyWith<$Res> {
  factory $RequestConfirmRechargeOrderCopyWith(
          RequestConfirmRechargeOrder value,
          $Res Function(RequestConfirmRechargeOrder) then) =
      _$RequestConfirmRechargeOrderCopyWithImpl<$Res,
          RequestConfirmRechargeOrder>;
  @useResult
  $Res call(
      {@JsonKey(name: "member_uuid") int memberUuid,
      @JsonKey(name: "recharge_order_uuid") int rechargeOrderUuid});
}

/// @nodoc
class _$RequestConfirmRechargeOrderCopyWithImpl<$Res,
        $Val extends RequestConfirmRechargeOrder>
    implements $RequestConfirmRechargeOrderCopyWith<$Res> {
  _$RequestConfirmRechargeOrderCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RequestConfirmRechargeOrder
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? memberUuid = null,
    Object? rechargeOrderUuid = null,
  }) {
    return _then(_value.copyWith(
      memberUuid: null == memberUuid
          ? _value.memberUuid
          : memberUuid // ignore: cast_nullable_to_non_nullable
              as int,
      rechargeOrderUuid: null == rechargeOrderUuid
          ? _value.rechargeOrderUuid
          : rechargeOrderUuid // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RequestConfirmRechargeOrderImplCopyWith<$Res>
    implements $RequestConfirmRechargeOrderCopyWith<$Res> {
  factory _$$RequestConfirmRechargeOrderImplCopyWith(
          _$RequestConfirmRechargeOrderImpl value,
          $Res Function(_$RequestConfirmRechargeOrderImpl) then) =
      __$$RequestConfirmRechargeOrderImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "member_uuid") int memberUuid,
      @JsonKey(name: "recharge_order_uuid") int rechargeOrderUuid});
}

/// @nodoc
class __$$RequestConfirmRechargeOrderImplCopyWithImpl<$Res>
    extends _$RequestConfirmRechargeOrderCopyWithImpl<$Res,
        _$RequestConfirmRechargeOrderImpl>
    implements _$$RequestConfirmRechargeOrderImplCopyWith<$Res> {
  __$$RequestConfirmRechargeOrderImplCopyWithImpl(
      _$RequestConfirmRechargeOrderImpl _value,
      $Res Function(_$RequestConfirmRechargeOrderImpl) _then)
      : super(_value, _then);

  /// Create a copy of RequestConfirmRechargeOrder
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? memberUuid = null,
    Object? rechargeOrderUuid = null,
  }) {
    return _then(_$RequestConfirmRechargeOrderImpl(
      memberUuid: null == memberUuid
          ? _value.memberUuid
          : memberUuid // ignore: cast_nullable_to_non_nullable
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
class _$RequestConfirmRechargeOrderImpl
    implements _RequestConfirmRechargeOrder {
  _$RequestConfirmRechargeOrderImpl(
      {@JsonKey(name: "member_uuid") required this.memberUuid,
      @JsonKey(name: "recharge_order_uuid") required this.rechargeOrderUuid});

  factory _$RequestConfirmRechargeOrderImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$RequestConfirmRechargeOrderImplFromJson(json);

  @override
  @JsonKey(name: "member_uuid")
  int memberUuid;
  @override
  @JsonKey(name: "recharge_order_uuid")
  int rechargeOrderUuid;

  @override
  String toString() {
    return 'RequestConfirmRechargeOrder(memberUuid: $memberUuid, rechargeOrderUuid: $rechargeOrderUuid)';
  }

  /// Create a copy of RequestConfirmRechargeOrder
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RequestConfirmRechargeOrderImplCopyWith<_$RequestConfirmRechargeOrderImpl>
      get copyWith => __$$RequestConfirmRechargeOrderImplCopyWithImpl<
          _$RequestConfirmRechargeOrderImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RequestConfirmRechargeOrderImplToJson(
      this,
    );
  }
}

abstract class _RequestConfirmRechargeOrder
    implements RequestConfirmRechargeOrder {
  factory _RequestConfirmRechargeOrder(
      {@JsonKey(name: "member_uuid") required int memberUuid,
      @JsonKey(name: "recharge_order_uuid")
      required int rechargeOrderUuid}) = _$RequestConfirmRechargeOrderImpl;

  factory _RequestConfirmRechargeOrder.fromJson(Map<String, dynamic> json) =
      _$RequestConfirmRechargeOrderImpl.fromJson;

  @override
  @JsonKey(name: "member_uuid")
  int get memberUuid;
  @JsonKey(name: "member_uuid")
  set memberUuid(int value);
  @override
  @JsonKey(name: "recharge_order_uuid")
  int get rechargeOrderUuid;
  @JsonKey(name: "recharge_order_uuid")
  set rechargeOrderUuid(int value);

  /// Create a copy of RequestConfirmRechargeOrder
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RequestConfirmRechargeOrderImplCopyWith<_$RequestConfirmRechargeOrderImpl>
      get copyWith => throw _privateConstructorUsedError;
}

RequestCreatePaymentOrder _$RequestCreatePaymentOrderFromJson(
    Map<String, dynamic> json) {
  return _RequestCreatePaymentOrder.fromJson(json);
}

/// @nodoc
mixin _$RequestCreatePaymentOrder {
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
  @JsonKey(name: "payment_order_uuid")
  int? get paymentOrderUuid => throw _privateConstructorUsedError;
  @JsonKey(name: "payment_order_uuid")
  set paymentOrderUuid(int? value) => throw _privateConstructorUsedError;

  /// Serializes this RequestCreatePaymentOrder to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RequestCreatePaymentOrder
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RequestCreatePaymentOrderCopyWith<RequestCreatePaymentOrder> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RequestCreatePaymentOrderCopyWith<$Res> {
  factory $RequestCreatePaymentOrderCopyWith(RequestCreatePaymentOrder value,
          $Res Function(RequestCreatePaymentOrder) then) =
      _$RequestCreatePaymentOrderCopyWithImpl<$Res, RequestCreatePaymentOrder>;
  @useResult
  $Res call(
      {@JsonKey(name: "payment_amount") double paymentAmount,
      @JsonKey(name: "payment_method_uuid") int paymentMethodUuid,
      @JsonKey(name: "recharge_order_uuid") int rechargeOrderUuid,
      @JsonKey(name: "payment_order_uuid") int? paymentOrderUuid});
}

/// @nodoc
class _$RequestCreatePaymentOrderCopyWithImpl<$Res,
        $Val extends RequestCreatePaymentOrder>
    implements $RequestCreatePaymentOrderCopyWith<$Res> {
  _$RequestCreatePaymentOrderCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RequestCreatePaymentOrder
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? paymentAmount = null,
    Object? paymentMethodUuid = null,
    Object? rechargeOrderUuid = null,
    Object? paymentOrderUuid = freezed,
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
      paymentOrderUuid: freezed == paymentOrderUuid
          ? _value.paymentOrderUuid
          : paymentOrderUuid // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RequestCreatePaymentOrderImplCopyWith<$Res>
    implements $RequestCreatePaymentOrderCopyWith<$Res> {
  factory _$$RequestCreatePaymentOrderImplCopyWith(
          _$RequestCreatePaymentOrderImpl value,
          $Res Function(_$RequestCreatePaymentOrderImpl) then) =
      __$$RequestCreatePaymentOrderImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "payment_amount") double paymentAmount,
      @JsonKey(name: "payment_method_uuid") int paymentMethodUuid,
      @JsonKey(name: "recharge_order_uuid") int rechargeOrderUuid,
      @JsonKey(name: "payment_order_uuid") int? paymentOrderUuid});
}

/// @nodoc
class __$$RequestCreatePaymentOrderImplCopyWithImpl<$Res>
    extends _$RequestCreatePaymentOrderCopyWithImpl<$Res,
        _$RequestCreatePaymentOrderImpl>
    implements _$$RequestCreatePaymentOrderImplCopyWith<$Res> {
  __$$RequestCreatePaymentOrderImplCopyWithImpl(
      _$RequestCreatePaymentOrderImpl _value,
      $Res Function(_$RequestCreatePaymentOrderImpl) _then)
      : super(_value, _then);

  /// Create a copy of RequestCreatePaymentOrder
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? paymentAmount = null,
    Object? paymentMethodUuid = null,
    Object? rechargeOrderUuid = null,
    Object? paymentOrderUuid = freezed,
  }) {
    return _then(_$RequestCreatePaymentOrderImpl(
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
      paymentOrderUuid: freezed == paymentOrderUuid
          ? _value.paymentOrderUuid
          : paymentOrderUuid // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RequestCreatePaymentOrderImpl implements _RequestCreatePaymentOrder {
  _$RequestCreatePaymentOrderImpl(
      {@JsonKey(name: "payment_amount") required this.paymentAmount,
      @JsonKey(name: "payment_method_uuid") required this.paymentMethodUuid,
      @JsonKey(name: "recharge_order_uuid") required this.rechargeOrderUuid,
      @JsonKey(name: "payment_order_uuid") this.paymentOrderUuid});

  factory _$RequestCreatePaymentOrderImpl.fromJson(Map<String, dynamic> json) =>
      _$$RequestCreatePaymentOrderImplFromJson(json);

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
  @JsonKey(name: "payment_order_uuid")
  int? paymentOrderUuid;

  @override
  String toString() {
    return 'RequestCreatePaymentOrder(paymentAmount: $paymentAmount, paymentMethodUuid: $paymentMethodUuid, rechargeOrderUuid: $rechargeOrderUuid, paymentOrderUuid: $paymentOrderUuid)';
  }

  /// Create a copy of RequestCreatePaymentOrder
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RequestCreatePaymentOrderImplCopyWith<_$RequestCreatePaymentOrderImpl>
      get copyWith => __$$RequestCreatePaymentOrderImplCopyWithImpl<
          _$RequestCreatePaymentOrderImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RequestCreatePaymentOrderImplToJson(
      this,
    );
  }
}

abstract class _RequestCreatePaymentOrder implements RequestCreatePaymentOrder {
  factory _RequestCreatePaymentOrder(
          {@JsonKey(name: "payment_amount") required double paymentAmount,
          @JsonKey(name: "payment_method_uuid") required int paymentMethodUuid,
          @JsonKey(name: "recharge_order_uuid") required int rechargeOrderUuid,
          @JsonKey(name: "payment_order_uuid") int? paymentOrderUuid}) =
      _$RequestCreatePaymentOrderImpl;

  factory _RequestCreatePaymentOrder.fromJson(Map<String, dynamic> json) =
      _$RequestCreatePaymentOrderImpl.fromJson;

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
  @override
  @JsonKey(name: "payment_order_uuid")
  int? get paymentOrderUuid;
  @JsonKey(name: "payment_order_uuid")
  set paymentOrderUuid(int? value);

  /// Create a copy of RequestCreatePaymentOrder
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RequestCreatePaymentOrderImplCopyWith<_$RequestCreatePaymentOrderImpl>
      get copyWith => throw _privateConstructorUsedError;
}

RequestCancelPaymentOrder _$RequestCancelPaymentOrderFromJson(
    Map<String, dynamic> json) {
  return _RequestCancelPaymentOrder.fromJson(json);
}

/// @nodoc
mixin _$RequestCancelPaymentOrder {
  @JsonKey(name: "payment_order_uuid")
  int get paymentOrderUuid => throw _privateConstructorUsedError;
  @JsonKey(name: "payment_order_uuid")
  set paymentOrderUuid(int value) => throw _privateConstructorUsedError;
  @JsonKey(name: "recharge_order_uuid")
  int get rechargeOrderUuid => throw _privateConstructorUsedError;
  @JsonKey(name: "recharge_order_uuid")
  set rechargeOrderUuid(int value) => throw _privateConstructorUsedError;

  /// Serializes this RequestCancelPaymentOrder to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RequestCancelPaymentOrder
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RequestCancelPaymentOrderCopyWith<RequestCancelPaymentOrder> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RequestCancelPaymentOrderCopyWith<$Res> {
  factory $RequestCancelPaymentOrderCopyWith(RequestCancelPaymentOrder value,
          $Res Function(RequestCancelPaymentOrder) then) =
      _$RequestCancelPaymentOrderCopyWithImpl<$Res, RequestCancelPaymentOrder>;
  @useResult
  $Res call(
      {@JsonKey(name: "payment_order_uuid") int paymentOrderUuid,
      @JsonKey(name: "recharge_order_uuid") int rechargeOrderUuid});
}

/// @nodoc
class _$RequestCancelPaymentOrderCopyWithImpl<$Res,
        $Val extends RequestCancelPaymentOrder>
    implements $RequestCancelPaymentOrderCopyWith<$Res> {
  _$RequestCancelPaymentOrderCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RequestCancelPaymentOrder
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? paymentOrderUuid = null,
    Object? rechargeOrderUuid = null,
  }) {
    return _then(_value.copyWith(
      paymentOrderUuid: null == paymentOrderUuid
          ? _value.paymentOrderUuid
          : paymentOrderUuid // ignore: cast_nullable_to_non_nullable
              as int,
      rechargeOrderUuid: null == rechargeOrderUuid
          ? _value.rechargeOrderUuid
          : rechargeOrderUuid // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RequestCancelPaymentOrderImplCopyWith<$Res>
    implements $RequestCancelPaymentOrderCopyWith<$Res> {
  factory _$$RequestCancelPaymentOrderImplCopyWith(
          _$RequestCancelPaymentOrderImpl value,
          $Res Function(_$RequestCancelPaymentOrderImpl) then) =
      __$$RequestCancelPaymentOrderImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "payment_order_uuid") int paymentOrderUuid,
      @JsonKey(name: "recharge_order_uuid") int rechargeOrderUuid});
}

/// @nodoc
class __$$RequestCancelPaymentOrderImplCopyWithImpl<$Res>
    extends _$RequestCancelPaymentOrderCopyWithImpl<$Res,
        _$RequestCancelPaymentOrderImpl>
    implements _$$RequestCancelPaymentOrderImplCopyWith<$Res> {
  __$$RequestCancelPaymentOrderImplCopyWithImpl(
      _$RequestCancelPaymentOrderImpl _value,
      $Res Function(_$RequestCancelPaymentOrderImpl) _then)
      : super(_value, _then);

  /// Create a copy of RequestCancelPaymentOrder
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? paymentOrderUuid = null,
    Object? rechargeOrderUuid = null,
  }) {
    return _then(_$RequestCancelPaymentOrderImpl(
      paymentOrderUuid: null == paymentOrderUuid
          ? _value.paymentOrderUuid
          : paymentOrderUuid // ignore: cast_nullable_to_non_nullable
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
class _$RequestCancelPaymentOrderImpl implements _RequestCancelPaymentOrder {
  _$RequestCancelPaymentOrderImpl(
      {@JsonKey(name: "payment_order_uuid") required this.paymentOrderUuid,
      @JsonKey(name: "recharge_order_uuid") required this.rechargeOrderUuid});

  factory _$RequestCancelPaymentOrderImpl.fromJson(Map<String, dynamic> json) =>
      _$$RequestCancelPaymentOrderImplFromJson(json);

  @override
  @JsonKey(name: "payment_order_uuid")
  int paymentOrderUuid;
  @override
  @JsonKey(name: "recharge_order_uuid")
  int rechargeOrderUuid;

  @override
  String toString() {
    return 'RequestCancelPaymentOrder(paymentOrderUuid: $paymentOrderUuid, rechargeOrderUuid: $rechargeOrderUuid)';
  }

  /// Create a copy of RequestCancelPaymentOrder
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RequestCancelPaymentOrderImplCopyWith<_$RequestCancelPaymentOrderImpl>
      get copyWith => __$$RequestCancelPaymentOrderImplCopyWithImpl<
          _$RequestCancelPaymentOrderImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RequestCancelPaymentOrderImplToJson(
      this,
    );
  }
}

abstract class _RequestCancelPaymentOrder implements RequestCancelPaymentOrder {
  factory _RequestCancelPaymentOrder(
      {@JsonKey(name: "payment_order_uuid") required int paymentOrderUuid,
      @JsonKey(name: "recharge_order_uuid")
      required int rechargeOrderUuid}) = _$RequestCancelPaymentOrderImpl;

  factory _RequestCancelPaymentOrder.fromJson(Map<String, dynamic> json) =
      _$RequestCancelPaymentOrderImpl.fromJson;

  @override
  @JsonKey(name: "payment_order_uuid")
  int get paymentOrderUuid;
  @JsonKey(name: "payment_order_uuid")
  set paymentOrderUuid(int value);
  @override
  @JsonKey(name: "recharge_order_uuid")
  int get rechargeOrderUuid;
  @JsonKey(name: "recharge_order_uuid")
  set rechargeOrderUuid(int value);

  /// Create a copy of RequestCancelPaymentOrder
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RequestCancelPaymentOrderImplCopyWith<_$RequestCancelPaymentOrderImpl>
      get copyWith => throw _privateConstructorUsedError;
}

RequestPrintRechargeReceipt _$RequestPrintRechargeReceiptFromJson(
    Map<String, dynamic> json) {
  return _RequestPrintRechargeReceipt.fromJson(json);
}

/// @nodoc
mixin _$RequestPrintRechargeReceipt {
  @JsonKey(name: "print_lang")
  String get printLang => throw _privateConstructorUsedError;
  @JsonKey(name: "print_lang")
  set printLang(String value) => throw _privateConstructorUsedError;
  @JsonKey(name: "recharge_order_uuid")
  int get rechargeOrderUuid => throw _privateConstructorUsedError;
  @JsonKey(name: "recharge_order_uuid")
  set rechargeOrderUuid(int value) => throw _privateConstructorUsedError;

  /// Serializes this RequestPrintRechargeReceipt to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RequestPrintRechargeReceipt
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RequestPrintRechargeReceiptCopyWith<RequestPrintRechargeReceipt>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RequestPrintRechargeReceiptCopyWith<$Res> {
  factory $RequestPrintRechargeReceiptCopyWith(
          RequestPrintRechargeReceipt value,
          $Res Function(RequestPrintRechargeReceipt) then) =
      _$RequestPrintRechargeReceiptCopyWithImpl<$Res,
          RequestPrintRechargeReceipt>;
  @useResult
  $Res call(
      {@JsonKey(name: "print_lang") String printLang,
      @JsonKey(name: "recharge_order_uuid") int rechargeOrderUuid});
}

/// @nodoc
class _$RequestPrintRechargeReceiptCopyWithImpl<$Res,
        $Val extends RequestPrintRechargeReceipt>
    implements $RequestPrintRechargeReceiptCopyWith<$Res> {
  _$RequestPrintRechargeReceiptCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RequestPrintRechargeReceipt
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? printLang = null,
    Object? rechargeOrderUuid = null,
  }) {
    return _then(_value.copyWith(
      printLang: null == printLang
          ? _value.printLang
          : printLang // ignore: cast_nullable_to_non_nullable
              as String,
      rechargeOrderUuid: null == rechargeOrderUuid
          ? _value.rechargeOrderUuid
          : rechargeOrderUuid // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RequestPrintRechargeReceiptImplCopyWith<$Res>
    implements $RequestPrintRechargeReceiptCopyWith<$Res> {
  factory _$$RequestPrintRechargeReceiptImplCopyWith(
          _$RequestPrintRechargeReceiptImpl value,
          $Res Function(_$RequestPrintRechargeReceiptImpl) then) =
      __$$RequestPrintRechargeReceiptImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "print_lang") String printLang,
      @JsonKey(name: "recharge_order_uuid") int rechargeOrderUuid});
}

/// @nodoc
class __$$RequestPrintRechargeReceiptImplCopyWithImpl<$Res>
    extends _$RequestPrintRechargeReceiptCopyWithImpl<$Res,
        _$RequestPrintRechargeReceiptImpl>
    implements _$$RequestPrintRechargeReceiptImplCopyWith<$Res> {
  __$$RequestPrintRechargeReceiptImplCopyWithImpl(
      _$RequestPrintRechargeReceiptImpl _value,
      $Res Function(_$RequestPrintRechargeReceiptImpl) _then)
      : super(_value, _then);

  /// Create a copy of RequestPrintRechargeReceipt
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? printLang = null,
    Object? rechargeOrderUuid = null,
  }) {
    return _then(_$RequestPrintRechargeReceiptImpl(
      printLang: null == printLang
          ? _value.printLang
          : printLang // ignore: cast_nullable_to_non_nullable
              as String,
      rechargeOrderUuid: null == rechargeOrderUuid
          ? _value.rechargeOrderUuid
          : rechargeOrderUuid // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RequestPrintRechargeReceiptImpl
    implements _RequestPrintRechargeReceipt {
  _$RequestPrintRechargeReceiptImpl(
      {@JsonKey(name: "print_lang") required this.printLang,
      @JsonKey(name: "recharge_order_uuid") required this.rechargeOrderUuid});

  factory _$RequestPrintRechargeReceiptImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$RequestPrintRechargeReceiptImplFromJson(json);

  @override
  @JsonKey(name: "print_lang")
  String printLang;
  @override
  @JsonKey(name: "recharge_order_uuid")
  int rechargeOrderUuid;

  @override
  String toString() {
    return 'RequestPrintRechargeReceipt(printLang: $printLang, rechargeOrderUuid: $rechargeOrderUuid)';
  }

  /// Create a copy of RequestPrintRechargeReceipt
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RequestPrintRechargeReceiptImplCopyWith<_$RequestPrintRechargeReceiptImpl>
      get copyWith => __$$RequestPrintRechargeReceiptImplCopyWithImpl<
          _$RequestPrintRechargeReceiptImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RequestPrintRechargeReceiptImplToJson(
      this,
    );
  }
}

abstract class _RequestPrintRechargeReceipt
    implements RequestPrintRechargeReceipt {
  factory _RequestPrintRechargeReceipt(
      {@JsonKey(name: "print_lang") required String printLang,
      @JsonKey(name: "recharge_order_uuid")
      required int rechargeOrderUuid}) = _$RequestPrintRechargeReceiptImpl;

  factory _RequestPrintRechargeReceipt.fromJson(Map<String, dynamic> json) =
      _$RequestPrintRechargeReceiptImpl.fromJson;

  @override
  @JsonKey(name: "print_lang")
  String get printLang;
  @JsonKey(name: "print_lang")
  set printLang(String value);
  @override
  @JsonKey(name: "recharge_order_uuid")
  int get rechargeOrderUuid;
  @JsonKey(name: "recharge_order_uuid")
  set rechargeOrderUuid(int value);

  /// Create a copy of RequestPrintRechargeReceipt
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RequestPrintRechargeReceiptImplCopyWith<_$RequestPrintRechargeReceiptImpl>
      get copyWith => throw _privateConstructorUsedError;
}

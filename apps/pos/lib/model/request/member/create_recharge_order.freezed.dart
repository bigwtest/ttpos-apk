// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_recharge_order.dart';

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
  @JsonKey(name: "gift_point")
  double get giftPoint => throw _privateConstructorUsedError;
  @JsonKey(name: "member_uuid")
  int get memberUuid => throw _privateConstructorUsedError;
  @JsonKey(name: "recharge_amount")
  double get rechargeAmount => throw _privateConstructorUsedError;
  @JsonKey(name: "recharge_order_uuid")
  int get rechargeOrderUuid => throw _privateConstructorUsedError;

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
  const _$RequestCreateRechargeOrderImpl(
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
  final double giftAmount;
  @override
  @JsonKey(name: "gift_point")
  final double giftPoint;
  @override
  @JsonKey(name: "member_uuid")
  final int memberUuid;
  @override
  @JsonKey(name: "recharge_amount")
  final double rechargeAmount;
  @override
  @JsonKey(name: "recharge_order_uuid")
  final int rechargeOrderUuid;

  @override
  String toString() {
    return 'RequestCreateRechargeOrder(giftAmount: $giftAmount, giftPoint: $giftPoint, memberUuid: $memberUuid, rechargeAmount: $rechargeAmount, rechargeOrderUuid: $rechargeOrderUuid)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RequestCreateRechargeOrderImpl &&
            (identical(other.giftAmount, giftAmount) ||
                other.giftAmount == giftAmount) &&
            (identical(other.giftPoint, giftPoint) ||
                other.giftPoint == giftPoint) &&
            (identical(other.memberUuid, memberUuid) ||
                other.memberUuid == memberUuid) &&
            (identical(other.rechargeAmount, rechargeAmount) ||
                other.rechargeAmount == rechargeAmount) &&
            (identical(other.rechargeOrderUuid, rechargeOrderUuid) ||
                other.rechargeOrderUuid == rechargeOrderUuid));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, giftAmount, giftPoint,
      memberUuid, rechargeAmount, rechargeOrderUuid);

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
  const factory _RequestCreateRechargeOrder(
      {@JsonKey(name: "gift_amount") required final double giftAmount,
      @JsonKey(name: "gift_point") required final double giftPoint,
      @JsonKey(name: "member_uuid") required final int memberUuid,
      @JsonKey(name: "recharge_amount") required final double rechargeAmount,
      @JsonKey(name: "recharge_order_uuid")
      required final int rechargeOrderUuid}) = _$RequestCreateRechargeOrderImpl;

  factory _RequestCreateRechargeOrder.fromJson(Map<String, dynamic> json) =
      _$RequestCreateRechargeOrderImpl.fromJson;

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
  @JsonKey(name: "recharge_amount")
  double get rechargeAmount;
  @override
  @JsonKey(name: "recharge_order_uuid")
  int get rechargeOrderUuid;

  /// Create a copy of RequestCreateRechargeOrder
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RequestCreateRechargeOrderImplCopyWith<_$RequestCreateRechargeOrderImpl>
      get copyWith => throw _privateConstructorUsedError;
}

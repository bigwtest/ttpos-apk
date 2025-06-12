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

RequestConfirmRechargeOrder _$RequestConfirmRechargeOrderFromJson(
    Map<String, dynamic> json) {
  return _RequestConfirmRechargeOrder.fromJson(json);
}

/// @nodoc
mixin _$RequestConfirmRechargeOrder {
  @JsonKey(name: "member_uuid")
  int get memberUuid => throw _privateConstructorUsedError;
  @JsonKey(name: "recharge_order_uuid")
  int get rechargeOrderUuid => throw _privateConstructorUsedError;

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
  const _$RequestConfirmRechargeOrderImpl(
      {@JsonKey(name: "member_uuid") required this.memberUuid,
      @JsonKey(name: "recharge_order_uuid") required this.rechargeOrderUuid});

  factory _$RequestConfirmRechargeOrderImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$RequestConfirmRechargeOrderImplFromJson(json);

  @override
  @JsonKey(name: "member_uuid")
  final int memberUuid;
  @override
  @JsonKey(name: "recharge_order_uuid")
  final int rechargeOrderUuid;

  @override
  String toString() {
    return 'RequestConfirmRechargeOrder(memberUuid: $memberUuid, rechargeOrderUuid: $rechargeOrderUuid)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RequestConfirmRechargeOrderImpl &&
            (identical(other.memberUuid, memberUuid) ||
                other.memberUuid == memberUuid) &&
            (identical(other.rechargeOrderUuid, rechargeOrderUuid) ||
                other.rechargeOrderUuid == rechargeOrderUuid));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, memberUuid, rechargeOrderUuid);

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
  const factory _RequestConfirmRechargeOrder(
          {@JsonKey(name: "member_uuid") required final int memberUuid,
          @JsonKey(name: "recharge_order_uuid")
          required final int rechargeOrderUuid}) =
      _$RequestConfirmRechargeOrderImpl;

  factory _RequestConfirmRechargeOrder.fromJson(Map<String, dynamic> json) =
      _$RequestConfirmRechargeOrderImpl.fromJson;

  @override
  @JsonKey(name: "member_uuid")
  int get memberUuid;
  @override
  @JsonKey(name: "recharge_order_uuid")
  int get rechargeOrderUuid;

  /// Create a copy of RequestConfirmRechargeOrder
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RequestConfirmRechargeOrderImplCopyWith<_$RequestConfirmRechargeOrderImpl>
      get copyWith => throw _privateConstructorUsedError;
}

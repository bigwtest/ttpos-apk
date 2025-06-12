// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'resp_recharge_order_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RespRechargeOrderItem _$RespRechargeOrderItemFromJson(
    Map<String, dynamic> json) {
  return _RespRechargeOrderItem.fromJson(json);
}

/// @nodoc
mixin _$RespRechargeOrderItem {
  @JsonKey(name: "amount")
  SafetyNumber get amount => throw _privateConstructorUsedError;
  @JsonKey(name: "amount")
  set amount(SafetyNumber value) => throw _privateConstructorUsedError;
  @JsonKey(name: "extra")
  Extra get extra => throw _privateConstructorUsedError;
  @JsonKey(name: "extra")
  set extra(Extra value) => throw _privateConstructorUsedError;
  @JsonKey(name: "order_no")
  String get orderNo => throw _privateConstructorUsedError;
  @JsonKey(name: "order_no")
  set orderNo(String value) => throw _privateConstructorUsedError;
  @JsonKey(name: "payment_methods")
  List<String> get paymentMethods => throw _privateConstructorUsedError;
  @JsonKey(name: "payment_methods")
  set paymentMethods(List<String> value) => throw _privateConstructorUsedError;
  @JsonKey(name: "payment_time")
  int get paymentTime => throw _privateConstructorUsedError;
  @JsonKey(name: "payment_time")
  set paymentTime(int value) => throw _privateConstructorUsedError;
  @JsonKey(name: "recharge_amount")
  SafetyNumber get rechargeAmount => throw _privateConstructorUsedError;
  @JsonKey(name: "recharge_amount")
  set rechargeAmount(SafetyNumber value) => throw _privateConstructorUsedError;
  @JsonKey(name: "status")
  int get status => throw _privateConstructorUsedError;
  @JsonKey(name: "status")
  set status(int value) => throw _privateConstructorUsedError;
  @JsonKey(name: "uuid")
  int get uuid => throw _privateConstructorUsedError;
  @JsonKey(name: "uuid")
  set uuid(int value) => throw _privateConstructorUsedError;
  @JsonKey(name: "gift_amount")
  SafetyNumber get giftAmount => throw _privateConstructorUsedError;
  @JsonKey(name: "gift_amount")
  set giftAmount(SafetyNumber value) => throw _privateConstructorUsedError;
  @JsonKey(name: "gift_point")
  SafetyNumber get giftPoint => throw _privateConstructorUsedError;
  @JsonKey(name: "gift_point")
  set giftPoint(SafetyNumber value) => throw _privateConstructorUsedError;

  /// Serializes this RespRechargeOrderItem to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RespRechargeOrderItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RespRechargeOrderItemCopyWith<RespRechargeOrderItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RespRechargeOrderItemCopyWith<$Res> {
  factory $RespRechargeOrderItemCopyWith(RespRechargeOrderItem value,
          $Res Function(RespRechargeOrderItem) then) =
      _$RespRechargeOrderItemCopyWithImpl<$Res, RespRechargeOrderItem>;
  @useResult
  $Res call(
      {@JsonKey(name: "amount") SafetyNumber amount,
      @JsonKey(name: "extra") Extra extra,
      @JsonKey(name: "order_no") String orderNo,
      @JsonKey(name: "payment_methods") List<String> paymentMethods,
      @JsonKey(name: "payment_time") int paymentTime,
      @JsonKey(name: "recharge_amount") SafetyNumber rechargeAmount,
      @JsonKey(name: "status") int status,
      @JsonKey(name: "uuid") int uuid,
      @JsonKey(name: "gift_amount") SafetyNumber giftAmount,
      @JsonKey(name: "gift_point") SafetyNumber giftPoint});

  $SafetyNumberCopyWith<$Res> get amount;
  $ExtraCopyWith<$Res> get extra;
  $SafetyNumberCopyWith<$Res> get rechargeAmount;
  $SafetyNumberCopyWith<$Res> get giftAmount;
  $SafetyNumberCopyWith<$Res> get giftPoint;
}

/// @nodoc
class _$RespRechargeOrderItemCopyWithImpl<$Res,
        $Val extends RespRechargeOrderItem>
    implements $RespRechargeOrderItemCopyWith<$Res> {
  _$RespRechargeOrderItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RespRechargeOrderItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? amount = null,
    Object? extra = null,
    Object? orderNo = null,
    Object? paymentMethods = null,
    Object? paymentTime = null,
    Object? rechargeAmount = null,
    Object? status = null,
    Object? uuid = null,
    Object? giftAmount = null,
    Object? giftPoint = null,
  }) {
    return _then(_value.copyWith(
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as SafetyNumber,
      extra: null == extra
          ? _value.extra
          : extra // ignore: cast_nullable_to_non_nullable
              as Extra,
      orderNo: null == orderNo
          ? _value.orderNo
          : orderNo // ignore: cast_nullable_to_non_nullable
              as String,
      paymentMethods: null == paymentMethods
          ? _value.paymentMethods
          : paymentMethods // ignore: cast_nullable_to_non_nullable
              as List<String>,
      paymentTime: null == paymentTime
          ? _value.paymentTime
          : paymentTime // ignore: cast_nullable_to_non_nullable
              as int,
      rechargeAmount: null == rechargeAmount
          ? _value.rechargeAmount
          : rechargeAmount // ignore: cast_nullable_to_non_nullable
              as SafetyNumber,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
      uuid: null == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as int,
      giftAmount: null == giftAmount
          ? _value.giftAmount
          : giftAmount // ignore: cast_nullable_to_non_nullable
              as SafetyNumber,
      giftPoint: null == giftPoint
          ? _value.giftPoint
          : giftPoint // ignore: cast_nullable_to_non_nullable
              as SafetyNumber,
    ) as $Val);
  }

  /// Create a copy of RespRechargeOrderItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SafetyNumberCopyWith<$Res> get amount {
    return $SafetyNumberCopyWith<$Res>(_value.amount, (value) {
      return _then(_value.copyWith(amount: value) as $Val);
    });
  }

  /// Create a copy of RespRechargeOrderItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ExtraCopyWith<$Res> get extra {
    return $ExtraCopyWith<$Res>(_value.extra, (value) {
      return _then(_value.copyWith(extra: value) as $Val);
    });
  }

  /// Create a copy of RespRechargeOrderItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SafetyNumberCopyWith<$Res> get rechargeAmount {
    return $SafetyNumberCopyWith<$Res>(_value.rechargeAmount, (value) {
      return _then(_value.copyWith(rechargeAmount: value) as $Val);
    });
  }

  /// Create a copy of RespRechargeOrderItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SafetyNumberCopyWith<$Res> get giftAmount {
    return $SafetyNumberCopyWith<$Res>(_value.giftAmount, (value) {
      return _then(_value.copyWith(giftAmount: value) as $Val);
    });
  }

  /// Create a copy of RespRechargeOrderItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SafetyNumberCopyWith<$Res> get giftPoint {
    return $SafetyNumberCopyWith<$Res>(_value.giftPoint, (value) {
      return _then(_value.copyWith(giftPoint: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$RespRechargeOrderItemImplCopyWith<$Res>
    implements $RespRechargeOrderItemCopyWith<$Res> {
  factory _$$RespRechargeOrderItemImplCopyWith(
          _$RespRechargeOrderItemImpl value,
          $Res Function(_$RespRechargeOrderItemImpl) then) =
      __$$RespRechargeOrderItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "amount") SafetyNumber amount,
      @JsonKey(name: "extra") Extra extra,
      @JsonKey(name: "order_no") String orderNo,
      @JsonKey(name: "payment_methods") List<String> paymentMethods,
      @JsonKey(name: "payment_time") int paymentTime,
      @JsonKey(name: "recharge_amount") SafetyNumber rechargeAmount,
      @JsonKey(name: "status") int status,
      @JsonKey(name: "uuid") int uuid,
      @JsonKey(name: "gift_amount") SafetyNumber giftAmount,
      @JsonKey(name: "gift_point") SafetyNumber giftPoint});

  @override
  $SafetyNumberCopyWith<$Res> get amount;
  @override
  $ExtraCopyWith<$Res> get extra;
  @override
  $SafetyNumberCopyWith<$Res> get rechargeAmount;
  @override
  $SafetyNumberCopyWith<$Res> get giftAmount;
  @override
  $SafetyNumberCopyWith<$Res> get giftPoint;
}

/// @nodoc
class __$$RespRechargeOrderItemImplCopyWithImpl<$Res>
    extends _$RespRechargeOrderItemCopyWithImpl<$Res,
        _$RespRechargeOrderItemImpl>
    implements _$$RespRechargeOrderItemImplCopyWith<$Res> {
  __$$RespRechargeOrderItemImplCopyWithImpl(_$RespRechargeOrderItemImpl _value,
      $Res Function(_$RespRechargeOrderItemImpl) _then)
      : super(_value, _then);

  /// Create a copy of RespRechargeOrderItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? amount = null,
    Object? extra = null,
    Object? orderNo = null,
    Object? paymentMethods = null,
    Object? paymentTime = null,
    Object? rechargeAmount = null,
    Object? status = null,
    Object? uuid = null,
    Object? giftAmount = null,
    Object? giftPoint = null,
  }) {
    return _then(_$RespRechargeOrderItemImpl(
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as SafetyNumber,
      extra: null == extra
          ? _value.extra
          : extra // ignore: cast_nullable_to_non_nullable
              as Extra,
      orderNo: null == orderNo
          ? _value.orderNo
          : orderNo // ignore: cast_nullable_to_non_nullable
              as String,
      paymentMethods: null == paymentMethods
          ? _value.paymentMethods
          : paymentMethods // ignore: cast_nullable_to_non_nullable
              as List<String>,
      paymentTime: null == paymentTime
          ? _value.paymentTime
          : paymentTime // ignore: cast_nullable_to_non_nullable
              as int,
      rechargeAmount: null == rechargeAmount
          ? _value.rechargeAmount
          : rechargeAmount // ignore: cast_nullable_to_non_nullable
              as SafetyNumber,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
      uuid: null == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as int,
      giftAmount: null == giftAmount
          ? _value.giftAmount
          : giftAmount // ignore: cast_nullable_to_non_nullable
              as SafetyNumber,
      giftPoint: null == giftPoint
          ? _value.giftPoint
          : giftPoint // ignore: cast_nullable_to_non_nullable
              as SafetyNumber,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RespRechargeOrderItemImpl implements _RespRechargeOrderItem {
  _$RespRechargeOrderItemImpl(
      {@JsonKey(name: "amount") required this.amount,
      @JsonKey(name: "extra") required this.extra,
      @JsonKey(name: "order_no") required this.orderNo,
      @JsonKey(name: "payment_methods") required this.paymentMethods,
      @JsonKey(name: "payment_time") required this.paymentTime,
      @JsonKey(name: "recharge_amount") required this.rechargeAmount,
      @JsonKey(name: "status") required this.status,
      @JsonKey(name: "uuid") required this.uuid,
      @JsonKey(name: "gift_amount") required this.giftAmount,
      @JsonKey(name: "gift_point") required this.giftPoint});

  factory _$RespRechargeOrderItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$RespRechargeOrderItemImplFromJson(json);

  @override
  @JsonKey(name: "amount")
  SafetyNumber amount;
  @override
  @JsonKey(name: "extra")
  Extra extra;
  @override
  @JsonKey(name: "order_no")
  String orderNo;
  @override
  @JsonKey(name: "payment_methods")
  List<String> paymentMethods;
  @override
  @JsonKey(name: "payment_time")
  int paymentTime;
  @override
  @JsonKey(name: "recharge_amount")
  SafetyNumber rechargeAmount;
  @override
  @JsonKey(name: "status")
  int status;
  @override
  @JsonKey(name: "uuid")
  int uuid;
  @override
  @JsonKey(name: "gift_amount")
  SafetyNumber giftAmount;
  @override
  @JsonKey(name: "gift_point")
  SafetyNumber giftPoint;

  @override
  String toString() {
    return 'RespRechargeOrderItem(amount: $amount, extra: $extra, orderNo: $orderNo, paymentMethods: $paymentMethods, paymentTime: $paymentTime, rechargeAmount: $rechargeAmount, status: $status, uuid: $uuid, giftAmount: $giftAmount, giftPoint: $giftPoint)';
  }

  /// Create a copy of RespRechargeOrderItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RespRechargeOrderItemImplCopyWith<_$RespRechargeOrderItemImpl>
      get copyWith => __$$RespRechargeOrderItemImplCopyWithImpl<
          _$RespRechargeOrderItemImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RespRechargeOrderItemImplToJson(
      this,
    );
  }
}

abstract class _RespRechargeOrderItem implements RespRechargeOrderItem {
  factory _RespRechargeOrderItem(
      {@JsonKey(name: "amount") required SafetyNumber amount,
      @JsonKey(name: "extra") required Extra extra,
      @JsonKey(name: "order_no") required String orderNo,
      @JsonKey(name: "payment_methods") required List<String> paymentMethods,
      @JsonKey(name: "payment_time") required int paymentTime,
      @JsonKey(name: "recharge_amount") required SafetyNumber rechargeAmount,
      @JsonKey(name: "status") required int status,
      @JsonKey(name: "uuid") required int uuid,
      @JsonKey(name: "gift_amount") required SafetyNumber giftAmount,
      @JsonKey(name: "gift_point")
      required SafetyNumber giftPoint}) = _$RespRechargeOrderItemImpl;

  factory _RespRechargeOrderItem.fromJson(Map<String, dynamic> json) =
      _$RespRechargeOrderItemImpl.fromJson;

  @override
  @JsonKey(name: "amount")
  SafetyNumber get amount;
  @JsonKey(name: "amount")
  set amount(SafetyNumber value);
  @override
  @JsonKey(name: "extra")
  Extra get extra;
  @JsonKey(name: "extra")
  set extra(Extra value);
  @override
  @JsonKey(name: "order_no")
  String get orderNo;
  @JsonKey(name: "order_no")
  set orderNo(String value);
  @override
  @JsonKey(name: "payment_methods")
  List<String> get paymentMethods;
  @JsonKey(name: "payment_methods")
  set paymentMethods(List<String> value);
  @override
  @JsonKey(name: "payment_time")
  int get paymentTime;
  @JsonKey(name: "payment_time")
  set paymentTime(int value);
  @override
  @JsonKey(name: "recharge_amount")
  SafetyNumber get rechargeAmount;
  @JsonKey(name: "recharge_amount")
  set rechargeAmount(SafetyNumber value);
  @override
  @JsonKey(name: "status")
  int get status;
  @JsonKey(name: "status")
  set status(int value);
  @override
  @JsonKey(name: "uuid")
  int get uuid;
  @JsonKey(name: "uuid")
  set uuid(int value);
  @override
  @JsonKey(name: "gift_amount")
  SafetyNumber get giftAmount;
  @JsonKey(name: "gift_amount")
  set giftAmount(SafetyNumber value);
  @override
  @JsonKey(name: "gift_point")
  SafetyNumber get giftPoint;
  @JsonKey(name: "gift_point")
  set giftPoint(SafetyNumber value);

  /// Create a copy of RespRechargeOrderItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RespRechargeOrderItemImplCopyWith<_$RespRechargeOrderItemImpl>
      get copyWith => throw _privateConstructorUsedError;
}

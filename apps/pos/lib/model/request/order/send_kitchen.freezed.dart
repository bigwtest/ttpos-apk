// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'send_kitchen.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RequestOrderSendKitchen _$RequestOrderSendKitchenFromJson(
    Map<String, dynamic> json) {
  return _RequestOrderSendKitchen.fromJson(json);
}

/// @nodoc
mixin _$RequestOrderSendKitchen {
// 消费方式：10-外卖配送 20-上门取 30-打包带走 40-店内就餐
  @JsonKey(name: 'delivery')
  int get delivery =>
      throw _privateConstructorUsedError; // 消费方式：10-外卖配送 20-上门取 30-打包带走 40-店内就餐
  @JsonKey(name: 'delivery')
  set delivery(int value) =>
      throw _privateConstructorUsedError; // 订单id - 点餐订单送厨时传 , 不然不需要理会
  @JsonKey(name: 'order_id')
  int? get orderId =>
      throw _privateConstructorUsedError; // 订单id - 点餐订单送厨时传 , 不然不需要理会
  @JsonKey(name: 'order_id')
  set orderId(int? value) =>
      throw _privateConstructorUsedError; // 桌台id - 桌台订单送厨时传 , 不然不需要理会
  @JsonKey(name: 'table_id')
  int? get tableId =>
      throw _privateConstructorUsedError; // 桌台id - 桌台订单送厨时传 , 不然不需要理会
  @JsonKey(name: 'table_id')
  set tableId(int? value) =>
      throw _privateConstructorUsedError; // 子订单id - 点餐订单送厨时传 , 不然不需要理会
  @JsonKey(name: 'sub_order_id')
  int? get subOrderId =>
      throw _privateConstructorUsedError; // 子订单id - 点餐订单送厨时传 , 不然不需要理会
  @JsonKey(name: 'sub_order_id')
  set subOrderId(int? value) =>
      throw _privateConstructorUsedError; // 忽略必点商品 0-否 1-是
  @JsonKey(name: 'ignore_must')
  int get ignoreMust => throw _privateConstructorUsedError; // 忽略必点商品 0-否 1-是
  @JsonKey(name: 'ignore_must')
  set ignoreMust(int value) => throw _privateConstructorUsedError;

  /// Serializes this RequestOrderSendKitchen to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RequestOrderSendKitchen
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RequestOrderSendKitchenCopyWith<RequestOrderSendKitchen> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RequestOrderSendKitchenCopyWith<$Res> {
  factory $RequestOrderSendKitchenCopyWith(RequestOrderSendKitchen value,
          $Res Function(RequestOrderSendKitchen) then) =
      _$RequestOrderSendKitchenCopyWithImpl<$Res, RequestOrderSendKitchen>;
  @useResult
  $Res call(
      {@JsonKey(name: 'delivery') int delivery,
      @JsonKey(name: 'order_id') int? orderId,
      @JsonKey(name: 'table_id') int? tableId,
      @JsonKey(name: 'sub_order_id') int? subOrderId,
      @JsonKey(name: 'ignore_must') int ignoreMust});
}

/// @nodoc
class _$RequestOrderSendKitchenCopyWithImpl<$Res,
        $Val extends RequestOrderSendKitchen>
    implements $RequestOrderSendKitchenCopyWith<$Res> {
  _$RequestOrderSendKitchenCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RequestOrderSendKitchen
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? delivery = null,
    Object? orderId = freezed,
    Object? tableId = freezed,
    Object? subOrderId = freezed,
    Object? ignoreMust = null,
  }) {
    return _then(_value.copyWith(
      delivery: null == delivery
          ? _value.delivery
          : delivery // ignore: cast_nullable_to_non_nullable
              as int,
      orderId: freezed == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as int?,
      tableId: freezed == tableId
          ? _value.tableId
          : tableId // ignore: cast_nullable_to_non_nullable
              as int?,
      subOrderId: freezed == subOrderId
          ? _value.subOrderId
          : subOrderId // ignore: cast_nullable_to_non_nullable
              as int?,
      ignoreMust: null == ignoreMust
          ? _value.ignoreMust
          : ignoreMust // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RequestOrderSendKitchenImplCopyWith<$Res>
    implements $RequestOrderSendKitchenCopyWith<$Res> {
  factory _$$RequestOrderSendKitchenImplCopyWith(
          _$RequestOrderSendKitchenImpl value,
          $Res Function(_$RequestOrderSendKitchenImpl) then) =
      __$$RequestOrderSendKitchenImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'delivery') int delivery,
      @JsonKey(name: 'order_id') int? orderId,
      @JsonKey(name: 'table_id') int? tableId,
      @JsonKey(name: 'sub_order_id') int? subOrderId,
      @JsonKey(name: 'ignore_must') int ignoreMust});
}

/// @nodoc
class __$$RequestOrderSendKitchenImplCopyWithImpl<$Res>
    extends _$RequestOrderSendKitchenCopyWithImpl<$Res,
        _$RequestOrderSendKitchenImpl>
    implements _$$RequestOrderSendKitchenImplCopyWith<$Res> {
  __$$RequestOrderSendKitchenImplCopyWithImpl(
      _$RequestOrderSendKitchenImpl _value,
      $Res Function(_$RequestOrderSendKitchenImpl) _then)
      : super(_value, _then);

  /// Create a copy of RequestOrderSendKitchen
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? delivery = null,
    Object? orderId = freezed,
    Object? tableId = freezed,
    Object? subOrderId = freezed,
    Object? ignoreMust = null,
  }) {
    return _then(_$RequestOrderSendKitchenImpl(
      delivery: null == delivery
          ? _value.delivery
          : delivery // ignore: cast_nullable_to_non_nullable
              as int,
      orderId: freezed == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as int?,
      tableId: freezed == tableId
          ? _value.tableId
          : tableId // ignore: cast_nullable_to_non_nullable
              as int?,
      subOrderId: freezed == subOrderId
          ? _value.subOrderId
          : subOrderId // ignore: cast_nullable_to_non_nullable
              as int?,
      ignoreMust: null == ignoreMust
          ? _value.ignoreMust
          : ignoreMust // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RequestOrderSendKitchenImpl implements _RequestOrderSendKitchen {
  _$RequestOrderSendKitchenImpl(
      {@JsonKey(name: 'delivery') required this.delivery,
      @JsonKey(name: 'order_id') this.orderId = 0,
      @JsonKey(name: 'table_id') this.tableId = 0,
      @JsonKey(name: 'sub_order_id') this.subOrderId,
      @JsonKey(name: 'ignore_must') this.ignoreMust = 0})
      : assert((tableId == 0) != (orderId == 0), '必须设置 tableId 或 orderId 其中之一');

  factory _$RequestOrderSendKitchenImpl.fromJson(Map<String, dynamic> json) =>
      _$$RequestOrderSendKitchenImplFromJson(json);

// 消费方式：10-外卖配送 20-上门取 30-打包带走 40-店内就餐
  @override
  @JsonKey(name: 'delivery')
  int delivery;
// 订单id - 点餐订单送厨时传 , 不然不需要理会
  @override
  @JsonKey(name: 'order_id')
  int? orderId;
// 桌台id - 桌台订单送厨时传 , 不然不需要理会
  @override
  @JsonKey(name: 'table_id')
  int? tableId;
// 子订单id - 点餐订单送厨时传 , 不然不需要理会
  @override
  @JsonKey(name: 'sub_order_id')
  int? subOrderId;
// 忽略必点商品 0-否 1-是
  @override
  @JsonKey(name: 'ignore_must')
  int ignoreMust;

  @override
  String toString() {
    return 'RequestOrderSendKitchen(delivery: $delivery, orderId: $orderId, tableId: $tableId, subOrderId: $subOrderId, ignoreMust: $ignoreMust)';
  }

  /// Create a copy of RequestOrderSendKitchen
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RequestOrderSendKitchenImplCopyWith<_$RequestOrderSendKitchenImpl>
      get copyWith => __$$RequestOrderSendKitchenImplCopyWithImpl<
          _$RequestOrderSendKitchenImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RequestOrderSendKitchenImplToJson(
      this,
    );
  }
}

abstract class _RequestOrderSendKitchen implements RequestOrderSendKitchen {
  factory _RequestOrderSendKitchen(
          {@JsonKey(name: 'delivery') required int delivery,
          @JsonKey(name: 'order_id') int? orderId,
          @JsonKey(name: 'table_id') int? tableId,
          @JsonKey(name: 'sub_order_id') int? subOrderId,
          @JsonKey(name: 'ignore_must') int ignoreMust}) =
      _$RequestOrderSendKitchenImpl;

  factory _RequestOrderSendKitchen.fromJson(Map<String, dynamic> json) =
      _$RequestOrderSendKitchenImpl.fromJson;

// 消费方式：10-外卖配送 20-上门取 30-打包带走 40-店内就餐
  @override
  @JsonKey(name: 'delivery')
  int get delivery; // 消费方式：10-外卖配送 20-上门取 30-打包带走 40-店内就餐
  @JsonKey(name: 'delivery')
  set delivery(int value); // 订单id - 点餐订单送厨时传 , 不然不需要理会
  @override
  @JsonKey(name: 'order_id')
  int? get orderId; // 订单id - 点餐订单送厨时传 , 不然不需要理会
  @JsonKey(name: 'order_id')
  set orderId(int? value); // 桌台id - 桌台订单送厨时传 , 不然不需要理会
  @override
  @JsonKey(name: 'table_id')
  int? get tableId; // 桌台id - 桌台订单送厨时传 , 不然不需要理会
  @JsonKey(name: 'table_id')
  set tableId(int? value); // 子订单id - 点餐订单送厨时传 , 不然不需要理会
  @override
  @JsonKey(name: 'sub_order_id')
  int? get subOrderId; // 子订单id - 点餐订单送厨时传 , 不然不需要理会
  @JsonKey(name: 'sub_order_id')
  set subOrderId(int? value); // 忽略必点商品 0-否 1-是
  @override
  @JsonKey(name: 'ignore_must')
  int get ignoreMust; // 忽略必点商品 0-否 1-是
  @JsonKey(name: 'ignore_must')
  set ignoreMust(int value);

  /// Create a copy of RequestOrderSendKitchen
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RequestOrderSendKitchenImplCopyWith<_$RequestOrderSendKitchenImpl>
      get copyWith => throw _privateConstructorUsedError;
}

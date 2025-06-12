// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_change_desk.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RequestChangeDeskProduct _$RequestChangeDeskProductFromJson(
    Map<String, dynamic> json) {
  return _RequestChangeDeskProduct.fromJson(json);
}

/// @nodoc
mixin _$RequestChangeDeskProduct {
// 目标桌台ID
  @JsonKey(name: "desk_uuid")
  int get deskUuid => throw _privateConstructorUsedError; // 目标桌台ID
  @JsonKey(name: "desk_uuid")
  set deskUuid(int value) => throw _privateConstructorUsedError; // 销售账单ID
  @JsonKey(name: "sale_bill_uuid")
  int get saleBillUuid => throw _privateConstructorUsedError; // 销售账单ID
  @JsonKey(name: "sale_bill_uuid")
  set saleBillUuid(int value) => throw _privateConstructorUsedError; // 销售订单商品ID
  @JsonKey(name: "sale_order_product_uuid")
  int get saleOrderProductUuid =>
      throw _privateConstructorUsedError; // 销售订单商品ID
  @JsonKey(name: "sale_order_product_uuid")
  set saleOrderProductUuid(int value) =>
      throw _privateConstructorUsedError; // 销售订单ID
  @JsonKey(name: "sale_order_uuid")
  int get saleOrderUuid => throw _privateConstructorUsedError; // 销售订单ID
  @JsonKey(name: "sale_order_uuid")
  set saleOrderUuid(int value) => throw _privateConstructorUsedError;

  /// Serializes this RequestChangeDeskProduct to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RequestChangeDeskProduct
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RequestChangeDeskProductCopyWith<RequestChangeDeskProduct> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RequestChangeDeskProductCopyWith<$Res> {
  factory $RequestChangeDeskProductCopyWith(RequestChangeDeskProduct value,
          $Res Function(RequestChangeDeskProduct) then) =
      _$RequestChangeDeskProductCopyWithImpl<$Res, RequestChangeDeskProduct>;
  @useResult
  $Res call(
      {@JsonKey(name: "desk_uuid") int deskUuid,
      @JsonKey(name: "sale_bill_uuid") int saleBillUuid,
      @JsonKey(name: "sale_order_product_uuid") int saleOrderProductUuid,
      @JsonKey(name: "sale_order_uuid") int saleOrderUuid});
}

/// @nodoc
class _$RequestChangeDeskProductCopyWithImpl<$Res,
        $Val extends RequestChangeDeskProduct>
    implements $RequestChangeDeskProductCopyWith<$Res> {
  _$RequestChangeDeskProductCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RequestChangeDeskProduct
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? deskUuid = null,
    Object? saleBillUuid = null,
    Object? saleOrderProductUuid = null,
    Object? saleOrderUuid = null,
  }) {
    return _then(_value.copyWith(
      deskUuid: null == deskUuid
          ? _value.deskUuid
          : deskUuid // ignore: cast_nullable_to_non_nullable
              as int,
      saleBillUuid: null == saleBillUuid
          ? _value.saleBillUuid
          : saleBillUuid // ignore: cast_nullable_to_non_nullable
              as int,
      saleOrderProductUuid: null == saleOrderProductUuid
          ? _value.saleOrderProductUuid
          : saleOrderProductUuid // ignore: cast_nullable_to_non_nullable
              as int,
      saleOrderUuid: null == saleOrderUuid
          ? _value.saleOrderUuid
          : saleOrderUuid // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RequestChangeDeskProductImplCopyWith<$Res>
    implements $RequestChangeDeskProductCopyWith<$Res> {
  factory _$$RequestChangeDeskProductImplCopyWith(
          _$RequestChangeDeskProductImpl value,
          $Res Function(_$RequestChangeDeskProductImpl) then) =
      __$$RequestChangeDeskProductImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "desk_uuid") int deskUuid,
      @JsonKey(name: "sale_bill_uuid") int saleBillUuid,
      @JsonKey(name: "sale_order_product_uuid") int saleOrderProductUuid,
      @JsonKey(name: "sale_order_uuid") int saleOrderUuid});
}

/// @nodoc
class __$$RequestChangeDeskProductImplCopyWithImpl<$Res>
    extends _$RequestChangeDeskProductCopyWithImpl<$Res,
        _$RequestChangeDeskProductImpl>
    implements _$$RequestChangeDeskProductImplCopyWith<$Res> {
  __$$RequestChangeDeskProductImplCopyWithImpl(
      _$RequestChangeDeskProductImpl _value,
      $Res Function(_$RequestChangeDeskProductImpl) _then)
      : super(_value, _then);

  /// Create a copy of RequestChangeDeskProduct
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? deskUuid = null,
    Object? saleBillUuid = null,
    Object? saleOrderProductUuid = null,
    Object? saleOrderUuid = null,
  }) {
    return _then(_$RequestChangeDeskProductImpl(
      deskUuid: null == deskUuid
          ? _value.deskUuid
          : deskUuid // ignore: cast_nullable_to_non_nullable
              as int,
      saleBillUuid: null == saleBillUuid
          ? _value.saleBillUuid
          : saleBillUuid // ignore: cast_nullable_to_non_nullable
              as int,
      saleOrderProductUuid: null == saleOrderProductUuid
          ? _value.saleOrderProductUuid
          : saleOrderProductUuid // ignore: cast_nullable_to_non_nullable
              as int,
      saleOrderUuid: null == saleOrderUuid
          ? _value.saleOrderUuid
          : saleOrderUuid // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RequestChangeDeskProductImpl implements _RequestChangeDeskProduct {
  _$RequestChangeDeskProductImpl(
      {@JsonKey(name: "desk_uuid") required this.deskUuid,
      @JsonKey(name: "sale_bill_uuid") required this.saleBillUuid,
      @JsonKey(name: "sale_order_product_uuid")
      required this.saleOrderProductUuid,
      @JsonKey(name: "sale_order_uuid") required this.saleOrderUuid});

  factory _$RequestChangeDeskProductImpl.fromJson(Map<String, dynamic> json) =>
      _$$RequestChangeDeskProductImplFromJson(json);

// 目标桌台ID
  @override
  @JsonKey(name: "desk_uuid")
  int deskUuid;
// 销售账单ID
  @override
  @JsonKey(name: "sale_bill_uuid")
  int saleBillUuid;
// 销售订单商品ID
  @override
  @JsonKey(name: "sale_order_product_uuid")
  int saleOrderProductUuid;
// 销售订单ID
  @override
  @JsonKey(name: "sale_order_uuid")
  int saleOrderUuid;

  @override
  String toString() {
    return 'RequestChangeDeskProduct(deskUuid: $deskUuid, saleBillUuid: $saleBillUuid, saleOrderProductUuid: $saleOrderProductUuid, saleOrderUuid: $saleOrderUuid)';
  }

  /// Create a copy of RequestChangeDeskProduct
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RequestChangeDeskProductImplCopyWith<_$RequestChangeDeskProductImpl>
      get copyWith => __$$RequestChangeDeskProductImplCopyWithImpl<
          _$RequestChangeDeskProductImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RequestChangeDeskProductImplToJson(
      this,
    );
  }
}

abstract class _RequestChangeDeskProduct implements RequestChangeDeskProduct {
  factory _RequestChangeDeskProduct(
          {@JsonKey(name: "desk_uuid") required int deskUuid,
          @JsonKey(name: "sale_bill_uuid") required int saleBillUuid,
          @JsonKey(name: "sale_order_product_uuid")
          required int saleOrderProductUuid,
          @JsonKey(name: "sale_order_uuid") required int saleOrderUuid}) =
      _$RequestChangeDeskProductImpl;

  factory _RequestChangeDeskProduct.fromJson(Map<String, dynamic> json) =
      _$RequestChangeDeskProductImpl.fromJson;

// 目标桌台ID
  @override
  @JsonKey(name: "desk_uuid")
  int get deskUuid; // 目标桌台ID
  @JsonKey(name: "desk_uuid")
  set deskUuid(int value); // 销售账单ID
  @override
  @JsonKey(name: "sale_bill_uuid")
  int get saleBillUuid; // 销售账单ID
  @JsonKey(name: "sale_bill_uuid")
  set saleBillUuid(int value); // 销售订单商品ID
  @override
  @JsonKey(name: "sale_order_product_uuid")
  int get saleOrderProductUuid; // 销售订单商品ID
  @JsonKey(name: "sale_order_product_uuid")
  set saleOrderProductUuid(int value); // 销售订单ID
  @override
  @JsonKey(name: "sale_order_uuid")
  int get saleOrderUuid; // 销售订单ID
  @JsonKey(name: "sale_order_uuid")
  set saleOrderUuid(int value);

  /// Create a copy of RequestChangeDeskProduct
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RequestChangeDeskProductImplCopyWith<_$RequestChangeDeskProductImpl>
      get copyWith => throw _privateConstructorUsedError;
}

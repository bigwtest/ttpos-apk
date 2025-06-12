// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'price_product.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RequestOrderPriceProduct _$RequestOrderPriceProductFromJson(
    Map<String, dynamic> json) {
  return _RequestOrderPriceProduct.fromJson(json);
}

/// @nodoc
mixin _$RequestOrderPriceProduct {
// 销售账单ID
  @JsonKey(name: 'sale_bill_uuid')
  int get saleBillUuid => throw _privateConstructorUsedError; // 销售账单ID
  @JsonKey(name: 'sale_bill_uuid')
  set saleBillUuid(int value) => throw _privateConstructorUsedError; // 销售订单ID
  @JsonKey(name: 'sale_order_uuid')
  int get saleOrderUuid => throw _privateConstructorUsedError; // 销售订单ID
  @JsonKey(name: 'sale_order_uuid')
  set saleOrderUuid(int value) =>
      throw _privateConstructorUsedError; // 销售订单产品ID
  @JsonKey(name: 'order_product_uuid')
  int get orderProductUuid => throw _privateConstructorUsedError; // 销售订单产品ID
  @JsonKey(name: 'order_product_uuid')
  set orderProductUuid(int value) => throw _privateConstructorUsedError; // 备注
  @JsonKey(name: 'price')
  double get price => throw _privateConstructorUsedError; // 备注
  @JsonKey(name: 'price')
  set price(double value) => throw _privateConstructorUsedError;

  /// Serializes this RequestOrderPriceProduct to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RequestOrderPriceProduct
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RequestOrderPriceProductCopyWith<RequestOrderPriceProduct> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RequestOrderPriceProductCopyWith<$Res> {
  factory $RequestOrderPriceProductCopyWith(RequestOrderPriceProduct value,
          $Res Function(RequestOrderPriceProduct) then) =
      _$RequestOrderPriceProductCopyWithImpl<$Res, RequestOrderPriceProduct>;
  @useResult
  $Res call(
      {@JsonKey(name: 'sale_bill_uuid') int saleBillUuid,
      @JsonKey(name: 'sale_order_uuid') int saleOrderUuid,
      @JsonKey(name: 'order_product_uuid') int orderProductUuid,
      @JsonKey(name: 'price') double price});
}

/// @nodoc
class _$RequestOrderPriceProductCopyWithImpl<$Res,
        $Val extends RequestOrderPriceProduct>
    implements $RequestOrderPriceProductCopyWith<$Res> {
  _$RequestOrderPriceProductCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RequestOrderPriceProduct
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? saleBillUuid = null,
    Object? saleOrderUuid = null,
    Object? orderProductUuid = null,
    Object? price = null,
  }) {
    return _then(_value.copyWith(
      saleBillUuid: null == saleBillUuid
          ? _value.saleBillUuid
          : saleBillUuid // ignore: cast_nullable_to_non_nullable
              as int,
      saleOrderUuid: null == saleOrderUuid
          ? _value.saleOrderUuid
          : saleOrderUuid // ignore: cast_nullable_to_non_nullable
              as int,
      orderProductUuid: null == orderProductUuid
          ? _value.orderProductUuid
          : orderProductUuid // ignore: cast_nullable_to_non_nullable
              as int,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RequestOrderPriceProductImplCopyWith<$Res>
    implements $RequestOrderPriceProductCopyWith<$Res> {
  factory _$$RequestOrderPriceProductImplCopyWith(
          _$RequestOrderPriceProductImpl value,
          $Res Function(_$RequestOrderPriceProductImpl) then) =
      __$$RequestOrderPriceProductImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'sale_bill_uuid') int saleBillUuid,
      @JsonKey(name: 'sale_order_uuid') int saleOrderUuid,
      @JsonKey(name: 'order_product_uuid') int orderProductUuid,
      @JsonKey(name: 'price') double price});
}

/// @nodoc
class __$$RequestOrderPriceProductImplCopyWithImpl<$Res>
    extends _$RequestOrderPriceProductCopyWithImpl<$Res,
        _$RequestOrderPriceProductImpl>
    implements _$$RequestOrderPriceProductImplCopyWith<$Res> {
  __$$RequestOrderPriceProductImplCopyWithImpl(
      _$RequestOrderPriceProductImpl _value,
      $Res Function(_$RequestOrderPriceProductImpl) _then)
      : super(_value, _then);

  /// Create a copy of RequestOrderPriceProduct
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? saleBillUuid = null,
    Object? saleOrderUuid = null,
    Object? orderProductUuid = null,
    Object? price = null,
  }) {
    return _then(_$RequestOrderPriceProductImpl(
      saleBillUuid: null == saleBillUuid
          ? _value.saleBillUuid
          : saleBillUuid // ignore: cast_nullable_to_non_nullable
              as int,
      saleOrderUuid: null == saleOrderUuid
          ? _value.saleOrderUuid
          : saleOrderUuid // ignore: cast_nullable_to_non_nullable
              as int,
      orderProductUuid: null == orderProductUuid
          ? _value.orderProductUuid
          : orderProductUuid // ignore: cast_nullable_to_non_nullable
              as int,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RequestOrderPriceProductImpl implements _RequestOrderPriceProduct {
  _$RequestOrderPriceProductImpl(
      {@JsonKey(name: 'sale_bill_uuid') required this.saleBillUuid,
      @JsonKey(name: 'sale_order_uuid') required this.saleOrderUuid,
      @JsonKey(name: 'order_product_uuid') required this.orderProductUuid,
      @JsonKey(name: 'price') required this.price});

  factory _$RequestOrderPriceProductImpl.fromJson(Map<String, dynamic> json) =>
      _$$RequestOrderPriceProductImplFromJson(json);

// 销售账单ID
  @override
  @JsonKey(name: 'sale_bill_uuid')
  int saleBillUuid;
// 销售订单ID
  @override
  @JsonKey(name: 'sale_order_uuid')
  int saleOrderUuid;
// 销售订单产品ID
  @override
  @JsonKey(name: 'order_product_uuid')
  int orderProductUuid;
// 备注
  @override
  @JsonKey(name: 'price')
  double price;

  @override
  String toString() {
    return 'RequestOrderPriceProduct(saleBillUuid: $saleBillUuid, saleOrderUuid: $saleOrderUuid, orderProductUuid: $orderProductUuid, price: $price)';
  }

  /// Create a copy of RequestOrderPriceProduct
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RequestOrderPriceProductImplCopyWith<_$RequestOrderPriceProductImpl>
      get copyWith => __$$RequestOrderPriceProductImplCopyWithImpl<
          _$RequestOrderPriceProductImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RequestOrderPriceProductImplToJson(
      this,
    );
  }
}

abstract class _RequestOrderPriceProduct implements RequestOrderPriceProduct {
  factory _RequestOrderPriceProduct(
          {@JsonKey(name: 'sale_bill_uuid') required int saleBillUuid,
          @JsonKey(name: 'sale_order_uuid') required int saleOrderUuid,
          @JsonKey(name: 'order_product_uuid') required int orderProductUuid,
          @JsonKey(name: 'price') required double price}) =
      _$RequestOrderPriceProductImpl;

  factory _RequestOrderPriceProduct.fromJson(Map<String, dynamic> json) =
      _$RequestOrderPriceProductImpl.fromJson;

// 销售账单ID
  @override
  @JsonKey(name: 'sale_bill_uuid')
  int get saleBillUuid; // 销售账单ID
  @JsonKey(name: 'sale_bill_uuid')
  set saleBillUuid(int value); // 销售订单ID
  @override
  @JsonKey(name: 'sale_order_uuid')
  int get saleOrderUuid; // 销售订单ID
  @JsonKey(name: 'sale_order_uuid')
  set saleOrderUuid(int value); // 销售订单产品ID
  @override
  @JsonKey(name: 'order_product_uuid')
  int get orderProductUuid; // 销售订单产品ID
  @JsonKey(name: 'order_product_uuid')
  set orderProductUuid(int value); // 备注
  @override
  @JsonKey(name: 'price')
  double get price; // 备注
  @JsonKey(name: 'price')
  set price(double value);

  /// Create a copy of RequestOrderPriceProduct
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RequestOrderPriceProductImplCopyWith<_$RequestOrderPriceProductImpl>
      get copyWith => throw _privateConstructorUsedError;
}

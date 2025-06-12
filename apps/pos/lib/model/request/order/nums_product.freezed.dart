// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'nums_product.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RequestOrderNumsProduct _$RequestOrderNumsProductFromJson(
    Map<String, dynamic> json) {
  return _RequestOrderNumsProduct.fromJson(json);
}

/// @nodoc
mixin _$RequestOrderNumsProduct {
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
  @JsonKey(name: 'sale_order_product_uuid')
  int get saleOrderProductUuid =>
      throw _privateConstructorUsedError; // 销售订单产品ID
  @JsonKey(name: 'sale_order_product_uuid')
  set saleOrderProductUuid(int value) =>
      throw _privateConstructorUsedError; // 数量
  @JsonKey(name: 'num')
  int get num => throw _privateConstructorUsedError; // 数量
  @JsonKey(name: 'num')
  set num(int value) => throw _privateConstructorUsedError;

  /// Serializes this RequestOrderNumsProduct to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RequestOrderNumsProduct
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RequestOrderNumsProductCopyWith<RequestOrderNumsProduct> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RequestOrderNumsProductCopyWith<$Res> {
  factory $RequestOrderNumsProductCopyWith(RequestOrderNumsProduct value,
          $Res Function(RequestOrderNumsProduct) then) =
      _$RequestOrderNumsProductCopyWithImpl<$Res, RequestOrderNumsProduct>;
  @useResult
  $Res call(
      {@JsonKey(name: 'sale_bill_uuid') int saleBillUuid,
      @JsonKey(name: 'sale_order_uuid') int saleOrderUuid,
      @JsonKey(name: 'sale_order_product_uuid') int saleOrderProductUuid,
      @JsonKey(name: 'num') int num});
}

/// @nodoc
class _$RequestOrderNumsProductCopyWithImpl<$Res,
        $Val extends RequestOrderNumsProduct>
    implements $RequestOrderNumsProductCopyWith<$Res> {
  _$RequestOrderNumsProductCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RequestOrderNumsProduct
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? saleBillUuid = null,
    Object? saleOrderUuid = null,
    Object? saleOrderProductUuid = null,
    Object? num = null,
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
      saleOrderProductUuid: null == saleOrderProductUuid
          ? _value.saleOrderProductUuid
          : saleOrderProductUuid // ignore: cast_nullable_to_non_nullable
              as int,
      num: null == num
          ? _value.num
          : num // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RequestOrderNumsProductImplCopyWith<$Res>
    implements $RequestOrderNumsProductCopyWith<$Res> {
  factory _$$RequestOrderNumsProductImplCopyWith(
          _$RequestOrderNumsProductImpl value,
          $Res Function(_$RequestOrderNumsProductImpl) then) =
      __$$RequestOrderNumsProductImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'sale_bill_uuid') int saleBillUuid,
      @JsonKey(name: 'sale_order_uuid') int saleOrderUuid,
      @JsonKey(name: 'sale_order_product_uuid') int saleOrderProductUuid,
      @JsonKey(name: 'num') int num});
}

/// @nodoc
class __$$RequestOrderNumsProductImplCopyWithImpl<$Res>
    extends _$RequestOrderNumsProductCopyWithImpl<$Res,
        _$RequestOrderNumsProductImpl>
    implements _$$RequestOrderNumsProductImplCopyWith<$Res> {
  __$$RequestOrderNumsProductImplCopyWithImpl(
      _$RequestOrderNumsProductImpl _value,
      $Res Function(_$RequestOrderNumsProductImpl) _then)
      : super(_value, _then);

  /// Create a copy of RequestOrderNumsProduct
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? saleBillUuid = null,
    Object? saleOrderUuid = null,
    Object? saleOrderProductUuid = null,
    Object? num = null,
  }) {
    return _then(_$RequestOrderNumsProductImpl(
      saleBillUuid: null == saleBillUuid
          ? _value.saleBillUuid
          : saleBillUuid // ignore: cast_nullable_to_non_nullable
              as int,
      saleOrderUuid: null == saleOrderUuid
          ? _value.saleOrderUuid
          : saleOrderUuid // ignore: cast_nullable_to_non_nullable
              as int,
      saleOrderProductUuid: null == saleOrderProductUuid
          ? _value.saleOrderProductUuid
          : saleOrderProductUuid // ignore: cast_nullable_to_non_nullable
              as int,
      num: null == num
          ? _value.num
          : num // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RequestOrderNumsProductImpl implements _RequestOrderNumsProduct {
  _$RequestOrderNumsProductImpl(
      {@JsonKey(name: 'sale_bill_uuid') required this.saleBillUuid,
      @JsonKey(name: 'sale_order_uuid') required this.saleOrderUuid,
      @JsonKey(name: 'sale_order_product_uuid')
      required this.saleOrderProductUuid,
      @JsonKey(name: 'num') required this.num});

  factory _$RequestOrderNumsProductImpl.fromJson(Map<String, dynamic> json) =>
      _$$RequestOrderNumsProductImplFromJson(json);

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
  @JsonKey(name: 'sale_order_product_uuid')
  int saleOrderProductUuid;
// 数量
  @override
  @JsonKey(name: 'num')
  int num;

  @override
  String toString() {
    return 'RequestOrderNumsProduct(saleBillUuid: $saleBillUuid, saleOrderUuid: $saleOrderUuid, saleOrderProductUuid: $saleOrderProductUuid, num: $num)';
  }

  /// Create a copy of RequestOrderNumsProduct
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RequestOrderNumsProductImplCopyWith<_$RequestOrderNumsProductImpl>
      get copyWith => __$$RequestOrderNumsProductImplCopyWithImpl<
          _$RequestOrderNumsProductImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RequestOrderNumsProductImplToJson(
      this,
    );
  }
}

abstract class _RequestOrderNumsProduct implements RequestOrderNumsProduct {
  factory _RequestOrderNumsProduct(
      {@JsonKey(name: 'sale_bill_uuid') required int saleBillUuid,
      @JsonKey(name: 'sale_order_uuid') required int saleOrderUuid,
      @JsonKey(name: 'sale_order_product_uuid')
      required int saleOrderProductUuid,
      @JsonKey(name: 'num') required int num}) = _$RequestOrderNumsProductImpl;

  factory _RequestOrderNumsProduct.fromJson(Map<String, dynamic> json) =
      _$RequestOrderNumsProductImpl.fromJson;

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
  @JsonKey(name: 'sale_order_product_uuid')
  int get saleOrderProductUuid; // 销售订单产品ID
  @JsonKey(name: 'sale_order_product_uuid')
  set saleOrderProductUuid(int value); // 数量
  @override
  @JsonKey(name: 'num')
  int get num; // 数量
  @JsonKey(name: 'num')
  set num(int value);

  /// Create a copy of RequestOrderNumsProduct
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RequestOrderNumsProductImplCopyWith<_$RequestOrderNumsProductImpl>
      get copyWith => throw _privateConstructorUsedError;
}

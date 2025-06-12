// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'move_product.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RequestOrderMoveProduct _$RequestOrderMoveProductFromJson(
    Map<String, dynamic> json) {
  return _RequestOrderMoveProduct.fromJson(json);
}

/// @nodoc
mixin _$RequestOrderMoveProduct {
// 销售账单ID
  @JsonKey(name: 'sale_bill_uuid')
  int get saleBillUuid => throw _privateConstructorUsedError; // 销售账单ID
  @JsonKey(name: 'sale_bill_uuid')
  set saleBillUuid(int value) =>
      throw _privateConstructorUsedError; // 来源销售订单UUID, 必填
  @JsonKey(name: 'from')
  int get from => throw _privateConstructorUsedError; // 来源销售订单UUID, 必填
  @JsonKey(name: 'from')
  set from(int value) => throw _privateConstructorUsedError; // 目标销售订单UUID, 必填
  @JsonKey(name: 'to')
  int get to => throw _privateConstructorUsedError; // 目标销售订单UUID, 必填
  @JsonKey(name: 'to')
  set to(int value) => throw _privateConstructorUsedError; // 销售订单产品ID
  @JsonKey(name: 'products')
  List<RequestOrderMoveProducts> get products =>
      throw _privateConstructorUsedError; // 销售订单产品ID
  @JsonKey(name: 'products')
  set products(List<RequestOrderMoveProducts> value) =>
      throw _privateConstructorUsedError;

  /// Serializes this RequestOrderMoveProduct to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RequestOrderMoveProduct
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RequestOrderMoveProductCopyWith<RequestOrderMoveProduct> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RequestOrderMoveProductCopyWith<$Res> {
  factory $RequestOrderMoveProductCopyWith(RequestOrderMoveProduct value,
          $Res Function(RequestOrderMoveProduct) then) =
      _$RequestOrderMoveProductCopyWithImpl<$Res, RequestOrderMoveProduct>;
  @useResult
  $Res call(
      {@JsonKey(name: 'sale_bill_uuid') int saleBillUuid,
      @JsonKey(name: 'from') int from,
      @JsonKey(name: 'to') int to,
      @JsonKey(name: 'products') List<RequestOrderMoveProducts> products});
}

/// @nodoc
class _$RequestOrderMoveProductCopyWithImpl<$Res,
        $Val extends RequestOrderMoveProduct>
    implements $RequestOrderMoveProductCopyWith<$Res> {
  _$RequestOrderMoveProductCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RequestOrderMoveProduct
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? saleBillUuid = null,
    Object? from = null,
    Object? to = null,
    Object? products = null,
  }) {
    return _then(_value.copyWith(
      saleBillUuid: null == saleBillUuid
          ? _value.saleBillUuid
          : saleBillUuid // ignore: cast_nullable_to_non_nullable
              as int,
      from: null == from
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as int,
      to: null == to
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as int,
      products: null == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<RequestOrderMoveProducts>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RequestOrderMoveProductImplCopyWith<$Res>
    implements $RequestOrderMoveProductCopyWith<$Res> {
  factory _$$RequestOrderMoveProductImplCopyWith(
          _$RequestOrderMoveProductImpl value,
          $Res Function(_$RequestOrderMoveProductImpl) then) =
      __$$RequestOrderMoveProductImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'sale_bill_uuid') int saleBillUuid,
      @JsonKey(name: 'from') int from,
      @JsonKey(name: 'to') int to,
      @JsonKey(name: 'products') List<RequestOrderMoveProducts> products});
}

/// @nodoc
class __$$RequestOrderMoveProductImplCopyWithImpl<$Res>
    extends _$RequestOrderMoveProductCopyWithImpl<$Res,
        _$RequestOrderMoveProductImpl>
    implements _$$RequestOrderMoveProductImplCopyWith<$Res> {
  __$$RequestOrderMoveProductImplCopyWithImpl(
      _$RequestOrderMoveProductImpl _value,
      $Res Function(_$RequestOrderMoveProductImpl) _then)
      : super(_value, _then);

  /// Create a copy of RequestOrderMoveProduct
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? saleBillUuid = null,
    Object? from = null,
    Object? to = null,
    Object? products = null,
  }) {
    return _then(_$RequestOrderMoveProductImpl(
      saleBillUuid: null == saleBillUuid
          ? _value.saleBillUuid
          : saleBillUuid // ignore: cast_nullable_to_non_nullable
              as int,
      from: null == from
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as int,
      to: null == to
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as int,
      products: null == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<RequestOrderMoveProducts>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RequestOrderMoveProductImpl implements _RequestOrderMoveProduct {
  _$RequestOrderMoveProductImpl(
      {@JsonKey(name: 'sale_bill_uuid') required this.saleBillUuid,
      @JsonKey(name: 'from') required this.from,
      @JsonKey(name: 'to') required this.to,
      @JsonKey(name: 'products') required this.products});

  factory _$RequestOrderMoveProductImpl.fromJson(Map<String, dynamic> json) =>
      _$$RequestOrderMoveProductImplFromJson(json);

// 销售账单ID
  @override
  @JsonKey(name: 'sale_bill_uuid')
  int saleBillUuid;
// 来源销售订单UUID, 必填
  @override
  @JsonKey(name: 'from')
  int from;
// 目标销售订单UUID, 必填
  @override
  @JsonKey(name: 'to')
  int to;
// 销售订单产品ID
  @override
  @JsonKey(name: 'products')
  List<RequestOrderMoveProducts> products;

  @override
  String toString() {
    return 'RequestOrderMoveProduct(saleBillUuid: $saleBillUuid, from: $from, to: $to, products: $products)';
  }

  /// Create a copy of RequestOrderMoveProduct
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RequestOrderMoveProductImplCopyWith<_$RequestOrderMoveProductImpl>
      get copyWith => __$$RequestOrderMoveProductImplCopyWithImpl<
          _$RequestOrderMoveProductImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RequestOrderMoveProductImplToJson(
      this,
    );
  }
}

abstract class _RequestOrderMoveProduct implements RequestOrderMoveProduct {
  factory _RequestOrderMoveProduct(
          {@JsonKey(name: 'sale_bill_uuid') required int saleBillUuid,
          @JsonKey(name: 'from') required int from,
          @JsonKey(name: 'to') required int to,
          @JsonKey(name: 'products')
          required List<RequestOrderMoveProducts> products}) =
      _$RequestOrderMoveProductImpl;

  factory _RequestOrderMoveProduct.fromJson(Map<String, dynamic> json) =
      _$RequestOrderMoveProductImpl.fromJson;

// 销售账单ID
  @override
  @JsonKey(name: 'sale_bill_uuid')
  int get saleBillUuid; // 销售账单ID
  @JsonKey(name: 'sale_bill_uuid')
  set saleBillUuid(int value); // 来源销售订单UUID, 必填
  @override
  @JsonKey(name: 'from')
  int get from; // 来源销售订单UUID, 必填
  @JsonKey(name: 'from')
  set from(int value); // 目标销售订单UUID, 必填
  @override
  @JsonKey(name: 'to')
  int get to; // 目标销售订单UUID, 必填
  @JsonKey(name: 'to')
  set to(int value); // 销售订单产品ID
  @override
  @JsonKey(name: 'products')
  List<RequestOrderMoveProducts> get products; // 销售订单产品ID
  @JsonKey(name: 'products')
  set products(List<RequestOrderMoveProducts> value);

  /// Create a copy of RequestOrderMoveProduct
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RequestOrderMoveProductImplCopyWith<_$RequestOrderMoveProductImpl>
      get copyWith => throw _privateConstructorUsedError;
}

RequestOrderMoveProducts _$RequestOrderMoveProductsFromJson(
    Map<String, dynamic> json) {
  return _RequestOrderMoveProducts.fromJson(json);
}

/// @nodoc
mixin _$RequestOrderMoveProducts {
// 移动数量, 必填
  @JsonKey(name: 'num')
  int get num => throw _privateConstructorUsedError; // 移动数量, 必填
  @JsonKey(name: 'num')
  set num(int value) => throw _privateConstructorUsedError; // 销售订单商品UUID, 必填
  @JsonKey(name: 'uuid')
  int get uuid => throw _privateConstructorUsedError; // 销售订单商品UUID, 必填
  @JsonKey(name: 'uuid')
  set uuid(int value) => throw _privateConstructorUsedError;

  /// Serializes this RequestOrderMoveProducts to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RequestOrderMoveProducts
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RequestOrderMoveProductsCopyWith<RequestOrderMoveProducts> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RequestOrderMoveProductsCopyWith<$Res> {
  factory $RequestOrderMoveProductsCopyWith(RequestOrderMoveProducts value,
          $Res Function(RequestOrderMoveProducts) then) =
      _$RequestOrderMoveProductsCopyWithImpl<$Res, RequestOrderMoveProducts>;
  @useResult
  $Res call({@JsonKey(name: 'num') int num, @JsonKey(name: 'uuid') int uuid});
}

/// @nodoc
class _$RequestOrderMoveProductsCopyWithImpl<$Res,
        $Val extends RequestOrderMoveProducts>
    implements $RequestOrderMoveProductsCopyWith<$Res> {
  _$RequestOrderMoveProductsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RequestOrderMoveProducts
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? num = null,
    Object? uuid = null,
  }) {
    return _then(_value.copyWith(
      num: null == num
          ? _value.num
          : num // ignore: cast_nullable_to_non_nullable
              as int,
      uuid: null == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RequestOrderMoveProductsImplCopyWith<$Res>
    implements $RequestOrderMoveProductsCopyWith<$Res> {
  factory _$$RequestOrderMoveProductsImplCopyWith(
          _$RequestOrderMoveProductsImpl value,
          $Res Function(_$RequestOrderMoveProductsImpl) then) =
      __$$RequestOrderMoveProductsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'num') int num, @JsonKey(name: 'uuid') int uuid});
}

/// @nodoc
class __$$RequestOrderMoveProductsImplCopyWithImpl<$Res>
    extends _$RequestOrderMoveProductsCopyWithImpl<$Res,
        _$RequestOrderMoveProductsImpl>
    implements _$$RequestOrderMoveProductsImplCopyWith<$Res> {
  __$$RequestOrderMoveProductsImplCopyWithImpl(
      _$RequestOrderMoveProductsImpl _value,
      $Res Function(_$RequestOrderMoveProductsImpl) _then)
      : super(_value, _then);

  /// Create a copy of RequestOrderMoveProducts
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? num = null,
    Object? uuid = null,
  }) {
    return _then(_$RequestOrderMoveProductsImpl(
      num: null == num
          ? _value.num
          : num // ignore: cast_nullable_to_non_nullable
              as int,
      uuid: null == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RequestOrderMoveProductsImpl implements _RequestOrderMoveProducts {
  _$RequestOrderMoveProductsImpl(
      {@JsonKey(name: 'num') required this.num,
      @JsonKey(name: 'uuid') required this.uuid});

  factory _$RequestOrderMoveProductsImpl.fromJson(Map<String, dynamic> json) =>
      _$$RequestOrderMoveProductsImplFromJson(json);

// 移动数量, 必填
  @override
  @JsonKey(name: 'num')
  int num;
// 销售订单商品UUID, 必填
  @override
  @JsonKey(name: 'uuid')
  int uuid;

  @override
  String toString() {
    return 'RequestOrderMoveProducts(num: $num, uuid: $uuid)';
  }

  /// Create a copy of RequestOrderMoveProducts
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RequestOrderMoveProductsImplCopyWith<_$RequestOrderMoveProductsImpl>
      get copyWith => __$$RequestOrderMoveProductsImplCopyWithImpl<
          _$RequestOrderMoveProductsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RequestOrderMoveProductsImplToJson(
      this,
    );
  }
}

abstract class _RequestOrderMoveProducts implements RequestOrderMoveProducts {
  factory _RequestOrderMoveProducts(
          {@JsonKey(name: 'num') required int num,
          @JsonKey(name: 'uuid') required int uuid}) =
      _$RequestOrderMoveProductsImpl;

  factory _RequestOrderMoveProducts.fromJson(Map<String, dynamic> json) =
      _$RequestOrderMoveProductsImpl.fromJson;

// 移动数量, 必填
  @override
  @JsonKey(name: 'num')
  int get num; // 移动数量, 必填
  @JsonKey(name: 'num')
  set num(int value); // 销售订单商品UUID, 必填
  @override
  @JsonKey(name: 'uuid')
  int get uuid; // 销售订单商品UUID, 必填
  @JsonKey(name: 'uuid')
  set uuid(int value);

  /// Create a copy of RequestOrderMoveProducts
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RequestOrderMoveProductsImplCopyWith<_$RequestOrderMoveProductsImpl>
      get copyWith => throw _privateConstructorUsedError;
}

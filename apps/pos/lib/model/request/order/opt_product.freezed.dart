// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'opt_product.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RequestOrderOptProduct _$RequestOrderOptProductFromJson(
    Map<String, dynamic> json) {
  return _RequestOrderOptProduct.fromJson(json);
}

/// @nodoc
mixin _$RequestOrderOptProduct {
// 销售账单ID
  @JsonKey(name: 'sale_bill_uuid')
  int get saleBillUuid => throw _privateConstructorUsedError; // 销售账单ID
  @JsonKey(name: 'sale_bill_uuid')
  set saleBillUuid(int value) => throw _privateConstructorUsedError; // 销售订单ID
  @JsonKey(name: 'sale_order_uuid')
  int get saleOrderUuid => throw _privateConstructorUsedError; // 销售订单ID
  @JsonKey(name: 'sale_order_uuid')
  set saleOrderUuid(int value) =>
      throw _privateConstructorUsedError; // 销售订单商品ID
  @JsonKey(name: 'sale_order_product_uuid')
  int get saleOrderProductUuid =>
      throw _privateConstructorUsedError; // 销售订单商品ID
  @JsonKey(name: 'sale_order_product_uuid')
  set saleOrderProductUuid(int value) => throw _privateConstructorUsedError;

  /// Serializes this RequestOrderOptProduct to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RequestOrderOptProduct
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RequestOrderOptProductCopyWith<RequestOrderOptProduct> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RequestOrderOptProductCopyWith<$Res> {
  factory $RequestOrderOptProductCopyWith(RequestOrderOptProduct value,
          $Res Function(RequestOrderOptProduct) then) =
      _$RequestOrderOptProductCopyWithImpl<$Res, RequestOrderOptProduct>;
  @useResult
  $Res call(
      {@JsonKey(name: 'sale_bill_uuid') int saleBillUuid,
      @JsonKey(name: 'sale_order_uuid') int saleOrderUuid,
      @JsonKey(name: 'sale_order_product_uuid') int saleOrderProductUuid});
}

/// @nodoc
class _$RequestOrderOptProductCopyWithImpl<$Res,
        $Val extends RequestOrderOptProduct>
    implements $RequestOrderOptProductCopyWith<$Res> {
  _$RequestOrderOptProductCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RequestOrderOptProduct
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? saleBillUuid = null,
    Object? saleOrderUuid = null,
    Object? saleOrderProductUuid = null,
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RequestOrderOptProductImplCopyWith<$Res>
    implements $RequestOrderOptProductCopyWith<$Res> {
  factory _$$RequestOrderOptProductImplCopyWith(
          _$RequestOrderOptProductImpl value,
          $Res Function(_$RequestOrderOptProductImpl) then) =
      __$$RequestOrderOptProductImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'sale_bill_uuid') int saleBillUuid,
      @JsonKey(name: 'sale_order_uuid') int saleOrderUuid,
      @JsonKey(name: 'sale_order_product_uuid') int saleOrderProductUuid});
}

/// @nodoc
class __$$RequestOrderOptProductImplCopyWithImpl<$Res>
    extends _$RequestOrderOptProductCopyWithImpl<$Res,
        _$RequestOrderOptProductImpl>
    implements _$$RequestOrderOptProductImplCopyWith<$Res> {
  __$$RequestOrderOptProductImplCopyWithImpl(
      _$RequestOrderOptProductImpl _value,
      $Res Function(_$RequestOrderOptProductImpl) _then)
      : super(_value, _then);

  /// Create a copy of RequestOrderOptProduct
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? saleBillUuid = null,
    Object? saleOrderUuid = null,
    Object? saleOrderProductUuid = null,
  }) {
    return _then(_$RequestOrderOptProductImpl(
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RequestOrderOptProductImpl implements _RequestOrderOptProduct {
  _$RequestOrderOptProductImpl(
      {@JsonKey(name: 'sale_bill_uuid') required this.saleBillUuid,
      @JsonKey(name: 'sale_order_uuid') required this.saleOrderUuid,
      @JsonKey(name: 'sale_order_product_uuid')
      required this.saleOrderProductUuid});

  factory _$RequestOrderOptProductImpl.fromJson(Map<String, dynamic> json) =>
      _$$RequestOrderOptProductImplFromJson(json);

// 销售账单ID
  @override
  @JsonKey(name: 'sale_bill_uuid')
  int saleBillUuid;
// 销售订单ID
  @override
  @JsonKey(name: 'sale_order_uuid')
  int saleOrderUuid;
// 销售订单商品ID
  @override
  @JsonKey(name: 'sale_order_product_uuid')
  int saleOrderProductUuid;

  @override
  String toString() {
    return 'RequestOrderOptProduct(saleBillUuid: $saleBillUuid, saleOrderUuid: $saleOrderUuid, saleOrderProductUuid: $saleOrderProductUuid)';
  }

  /// Create a copy of RequestOrderOptProduct
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RequestOrderOptProductImplCopyWith<_$RequestOrderOptProductImpl>
      get copyWith => __$$RequestOrderOptProductImplCopyWithImpl<
          _$RequestOrderOptProductImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RequestOrderOptProductImplToJson(
      this,
    );
  }
}

abstract class _RequestOrderOptProduct implements RequestOrderOptProduct {
  factory _RequestOrderOptProduct(
      {@JsonKey(name: 'sale_bill_uuid') required int saleBillUuid,
      @JsonKey(name: 'sale_order_uuid') required int saleOrderUuid,
      @JsonKey(name: 'sale_order_product_uuid')
      required int saleOrderProductUuid}) = _$RequestOrderOptProductImpl;

  factory _RequestOrderOptProduct.fromJson(Map<String, dynamic> json) =
      _$RequestOrderOptProductImpl.fromJson;

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
  set saleOrderUuid(int value); // 销售订单商品ID
  @override
  @JsonKey(name: 'sale_order_product_uuid')
  int get saleOrderProductUuid; // 销售订单商品ID
  @JsonKey(name: 'sale_order_product_uuid')
  set saleOrderProductUuid(int value);

  /// Create a copy of RequestOrderOptProduct
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RequestOrderOptProductImplCopyWith<_$RequestOrderOptProductImpl>
      get copyWith => throw _privateConstructorUsedError;
}

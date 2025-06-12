// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'delete_product.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RequestDeleteProduct _$RequestDeleteProductFromJson(Map<String, dynamic> json) {
  return _RequestDeleteProduct.fromJson(json);
}

/// @nodoc
mixin _$RequestDeleteProduct {
// 订单商品UUID
  @JsonKey(name: "order_product_uuid")
  int get orderProductUuid => throw _privateConstructorUsedError; // 销售账单UUID
  @JsonKey(name: "sale_bill_uuid")
  int get saleBillUuid => throw _privateConstructorUsedError; // 销售订单UUID
  @JsonKey(name: "sale_order_uuid")
  int get saleOrderUuid => throw _privateConstructorUsedError;

  /// Serializes this RequestDeleteProduct to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RequestDeleteProduct
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RequestDeleteProductCopyWith<RequestDeleteProduct> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RequestDeleteProductCopyWith<$Res> {
  factory $RequestDeleteProductCopyWith(RequestDeleteProduct value,
          $Res Function(RequestDeleteProduct) then) =
      _$RequestDeleteProductCopyWithImpl<$Res, RequestDeleteProduct>;
  @useResult
  $Res call(
      {@JsonKey(name: "order_product_uuid") int orderProductUuid,
      @JsonKey(name: "sale_bill_uuid") int saleBillUuid,
      @JsonKey(name: "sale_order_uuid") int saleOrderUuid});
}

/// @nodoc
class _$RequestDeleteProductCopyWithImpl<$Res,
        $Val extends RequestDeleteProduct>
    implements $RequestDeleteProductCopyWith<$Res> {
  _$RequestDeleteProductCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RequestDeleteProduct
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderProductUuid = null,
    Object? saleBillUuid = null,
    Object? saleOrderUuid = null,
  }) {
    return _then(_value.copyWith(
      orderProductUuid: null == orderProductUuid
          ? _value.orderProductUuid
          : orderProductUuid // ignore: cast_nullable_to_non_nullable
              as int,
      saleBillUuid: null == saleBillUuid
          ? _value.saleBillUuid
          : saleBillUuid // ignore: cast_nullable_to_non_nullable
              as int,
      saleOrderUuid: null == saleOrderUuid
          ? _value.saleOrderUuid
          : saleOrderUuid // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RequestDeleteProductImplCopyWith<$Res>
    implements $RequestDeleteProductCopyWith<$Res> {
  factory _$$RequestDeleteProductImplCopyWith(_$RequestDeleteProductImpl value,
          $Res Function(_$RequestDeleteProductImpl) then) =
      __$$RequestDeleteProductImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "order_product_uuid") int orderProductUuid,
      @JsonKey(name: "sale_bill_uuid") int saleBillUuid,
      @JsonKey(name: "sale_order_uuid") int saleOrderUuid});
}

/// @nodoc
class __$$RequestDeleteProductImplCopyWithImpl<$Res>
    extends _$RequestDeleteProductCopyWithImpl<$Res, _$RequestDeleteProductImpl>
    implements _$$RequestDeleteProductImplCopyWith<$Res> {
  __$$RequestDeleteProductImplCopyWithImpl(_$RequestDeleteProductImpl _value,
      $Res Function(_$RequestDeleteProductImpl) _then)
      : super(_value, _then);

  /// Create a copy of RequestDeleteProduct
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderProductUuid = null,
    Object? saleBillUuid = null,
    Object? saleOrderUuid = null,
  }) {
    return _then(_$RequestDeleteProductImpl(
      orderProductUuid: null == orderProductUuid
          ? _value.orderProductUuid
          : orderProductUuid // ignore: cast_nullable_to_non_nullable
              as int,
      saleBillUuid: null == saleBillUuid
          ? _value.saleBillUuid
          : saleBillUuid // ignore: cast_nullable_to_non_nullable
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
class _$RequestDeleteProductImpl implements _RequestDeleteProduct {
  const _$RequestDeleteProductImpl(
      {@JsonKey(name: "order_product_uuid") required this.orderProductUuid,
      @JsonKey(name: "sale_bill_uuid") required this.saleBillUuid,
      @JsonKey(name: "sale_order_uuid") required this.saleOrderUuid});

  factory _$RequestDeleteProductImpl.fromJson(Map<String, dynamic> json) =>
      _$$RequestDeleteProductImplFromJson(json);

// 订单商品UUID
  @override
  @JsonKey(name: "order_product_uuid")
  final int orderProductUuid;
// 销售账单UUID
  @override
  @JsonKey(name: "sale_bill_uuid")
  final int saleBillUuid;
// 销售订单UUID
  @override
  @JsonKey(name: "sale_order_uuid")
  final int saleOrderUuid;

  @override
  String toString() {
    return 'RequestDeleteProduct(orderProductUuid: $orderProductUuid, saleBillUuid: $saleBillUuid, saleOrderUuid: $saleOrderUuid)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RequestDeleteProductImpl &&
            (identical(other.orderProductUuid, orderProductUuid) ||
                other.orderProductUuid == orderProductUuid) &&
            (identical(other.saleBillUuid, saleBillUuid) ||
                other.saleBillUuid == saleBillUuid) &&
            (identical(other.saleOrderUuid, saleOrderUuid) ||
                other.saleOrderUuid == saleOrderUuid));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, orderProductUuid, saleBillUuid, saleOrderUuid);

  /// Create a copy of RequestDeleteProduct
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RequestDeleteProductImplCopyWith<_$RequestDeleteProductImpl>
      get copyWith =>
          __$$RequestDeleteProductImplCopyWithImpl<_$RequestDeleteProductImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RequestDeleteProductImplToJson(
      this,
    );
  }
}

abstract class _RequestDeleteProduct implements RequestDeleteProduct {
  const factory _RequestDeleteProduct(
      {@JsonKey(name: "order_product_uuid") required final int orderProductUuid,
      @JsonKey(name: "sale_bill_uuid") required final int saleBillUuid,
      @JsonKey(name: "sale_order_uuid")
      required final int saleOrderUuid}) = _$RequestDeleteProductImpl;

  factory _RequestDeleteProduct.fromJson(Map<String, dynamic> json) =
      _$RequestDeleteProductImpl.fromJson;

// 订单商品UUID
  @override
  @JsonKey(name: "order_product_uuid")
  int get orderProductUuid; // 销售账单UUID
  @override
  @JsonKey(name: "sale_bill_uuid")
  int get saleBillUuid; // 销售订单UUID
  @override
  @JsonKey(name: "sale_order_uuid")
  int get saleOrderUuid;

  /// Create a copy of RequestDeleteProduct
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RequestDeleteProductImplCopyWith<_$RequestDeleteProductImpl>
      get copyWith => throw _privateConstructorUsedError;
}

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'remark_product.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RequestRemarkProduct _$RequestRemarkProductFromJson(Map<String, dynamic> json) {
  return _RequestRemarkProduct.fromJson(json);
}

/// @nodoc
mixin _$RequestRemarkProduct {
// 订单商品UUID
  @JsonKey(name: "order_product_uuid")
  int get orderProductUuid => throw _privateConstructorUsedError; // 订单商品UUID
  @JsonKey(name: "order_product_uuid")
  set orderProductUuid(int value) =>
      throw _privateConstructorUsedError; // remark
  @JsonKey(name: "remark")
  String get remark => throw _privateConstructorUsedError; // remark
  @JsonKey(name: "remark")
  set remark(String value) => throw _privateConstructorUsedError; // 销售账单UUID
  @JsonKey(name: "sale_bill_uuid")
  int get saleBillUuid => throw _privateConstructorUsedError; // 销售账单UUID
  @JsonKey(name: "sale_bill_uuid")
  set saleBillUuid(int value) => throw _privateConstructorUsedError; // 销售订单UUID
  @JsonKey(name: "sale_order_uuid")
  int get saleOrderUuid => throw _privateConstructorUsedError; // 销售订单UUID
  @JsonKey(name: "sale_order_uuid")
  set saleOrderUuid(int value) => throw _privateConstructorUsedError;

  /// Serializes this RequestRemarkProduct to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RequestRemarkProduct
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RequestRemarkProductCopyWith<RequestRemarkProduct> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RequestRemarkProductCopyWith<$Res> {
  factory $RequestRemarkProductCopyWith(RequestRemarkProduct value,
          $Res Function(RequestRemarkProduct) then) =
      _$RequestRemarkProductCopyWithImpl<$Res, RequestRemarkProduct>;
  @useResult
  $Res call(
      {@JsonKey(name: "order_product_uuid") int orderProductUuid,
      @JsonKey(name: "remark") String remark,
      @JsonKey(name: "sale_bill_uuid") int saleBillUuid,
      @JsonKey(name: "sale_order_uuid") int saleOrderUuid});
}

/// @nodoc
class _$RequestRemarkProductCopyWithImpl<$Res,
        $Val extends RequestRemarkProduct>
    implements $RequestRemarkProductCopyWith<$Res> {
  _$RequestRemarkProductCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RequestRemarkProduct
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderProductUuid = null,
    Object? remark = null,
    Object? saleBillUuid = null,
    Object? saleOrderUuid = null,
  }) {
    return _then(_value.copyWith(
      orderProductUuid: null == orderProductUuid
          ? _value.orderProductUuid
          : orderProductUuid // ignore: cast_nullable_to_non_nullable
              as int,
      remark: null == remark
          ? _value.remark
          : remark // ignore: cast_nullable_to_non_nullable
              as String,
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
abstract class _$$RequestRemarkProductImplCopyWith<$Res>
    implements $RequestRemarkProductCopyWith<$Res> {
  factory _$$RequestRemarkProductImplCopyWith(_$RequestRemarkProductImpl value,
          $Res Function(_$RequestRemarkProductImpl) then) =
      __$$RequestRemarkProductImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "order_product_uuid") int orderProductUuid,
      @JsonKey(name: "remark") String remark,
      @JsonKey(name: "sale_bill_uuid") int saleBillUuid,
      @JsonKey(name: "sale_order_uuid") int saleOrderUuid});
}

/// @nodoc
class __$$RequestRemarkProductImplCopyWithImpl<$Res>
    extends _$RequestRemarkProductCopyWithImpl<$Res, _$RequestRemarkProductImpl>
    implements _$$RequestRemarkProductImplCopyWith<$Res> {
  __$$RequestRemarkProductImplCopyWithImpl(_$RequestRemarkProductImpl _value,
      $Res Function(_$RequestRemarkProductImpl) _then)
      : super(_value, _then);

  /// Create a copy of RequestRemarkProduct
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderProductUuid = null,
    Object? remark = null,
    Object? saleBillUuid = null,
    Object? saleOrderUuid = null,
  }) {
    return _then(_$RequestRemarkProductImpl(
      orderProductUuid: null == orderProductUuid
          ? _value.orderProductUuid
          : orderProductUuid // ignore: cast_nullable_to_non_nullable
              as int,
      remark: null == remark
          ? _value.remark
          : remark // ignore: cast_nullable_to_non_nullable
              as String,
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
class _$RequestRemarkProductImpl implements _RequestRemarkProduct {
  _$RequestRemarkProductImpl(
      {@JsonKey(name: "order_product_uuid") required this.orderProductUuid,
      @JsonKey(name: "remark") required this.remark,
      @JsonKey(name: "sale_bill_uuid") required this.saleBillUuid,
      @JsonKey(name: "sale_order_uuid") required this.saleOrderUuid});

  factory _$RequestRemarkProductImpl.fromJson(Map<String, dynamic> json) =>
      _$$RequestRemarkProductImplFromJson(json);

// 订单商品UUID
  @override
  @JsonKey(name: "order_product_uuid")
  int orderProductUuid;
// remark
  @override
  @JsonKey(name: "remark")
  String remark;
// 销售账单UUID
  @override
  @JsonKey(name: "sale_bill_uuid")
  int saleBillUuid;
// 销售订单UUID
  @override
  @JsonKey(name: "sale_order_uuid")
  int saleOrderUuid;

  @override
  String toString() {
    return 'RequestRemarkProduct(orderProductUuid: $orderProductUuid, remark: $remark, saleBillUuid: $saleBillUuid, saleOrderUuid: $saleOrderUuid)';
  }

  /// Create a copy of RequestRemarkProduct
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RequestRemarkProductImplCopyWith<_$RequestRemarkProductImpl>
      get copyWith =>
          __$$RequestRemarkProductImplCopyWithImpl<_$RequestRemarkProductImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RequestRemarkProductImplToJson(
      this,
    );
  }
}

abstract class _RequestRemarkProduct implements RequestRemarkProduct {
  factory _RequestRemarkProduct(
          {@JsonKey(name: "order_product_uuid") required int orderProductUuid,
          @JsonKey(name: "remark") required String remark,
          @JsonKey(name: "sale_bill_uuid") required int saleBillUuid,
          @JsonKey(name: "sale_order_uuid") required int saleOrderUuid}) =
      _$RequestRemarkProductImpl;

  factory _RequestRemarkProduct.fromJson(Map<String, dynamic> json) =
      _$RequestRemarkProductImpl.fromJson;

// 订单商品UUID
  @override
  @JsonKey(name: "order_product_uuid")
  int get orderProductUuid; // 订单商品UUID
  @JsonKey(name: "order_product_uuid")
  set orderProductUuid(int value); // remark
  @override
  @JsonKey(name: "remark")
  String get remark; // remark
  @JsonKey(name: "remark")
  set remark(String value); // 销售账单UUID
  @override
  @JsonKey(name: "sale_bill_uuid")
  int get saleBillUuid; // 销售账单UUID
  @JsonKey(name: "sale_bill_uuid")
  set saleBillUuid(int value); // 销售订单UUID
  @override
  @JsonKey(name: "sale_order_uuid")
  int get saleOrderUuid; // 销售订单UUID
  @JsonKey(name: "sale_order_uuid")
  set saleOrderUuid(int value);

  /// Create a copy of RequestRemarkProduct
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RequestRemarkProductImplCopyWith<_$RequestRemarkProductImpl>
      get copyWith => throw _privateConstructorUsedError;
}

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

RequestOrderRemarkProduct _$RequestOrderRemarkProductFromJson(
    Map<String, dynamic> json) {
  return _RequestOrderRemarkProduct.fromJson(json);
}

/// @nodoc
mixin _$RequestOrderRemarkProduct {
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
  @JsonKey(name: 'remark')
  String get remark => throw _privateConstructorUsedError; // 备注
  @JsonKey(name: 'remark')
  set remark(String value) => throw _privateConstructorUsedError;

  /// Serializes this RequestOrderRemarkProduct to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RequestOrderRemarkProduct
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RequestOrderRemarkProductCopyWith<RequestOrderRemarkProduct> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RequestOrderRemarkProductCopyWith<$Res> {
  factory $RequestOrderRemarkProductCopyWith(RequestOrderRemarkProduct value,
          $Res Function(RequestOrderRemarkProduct) then) =
      _$RequestOrderRemarkProductCopyWithImpl<$Res, RequestOrderRemarkProduct>;
  @useResult
  $Res call(
      {@JsonKey(name: 'sale_bill_uuid') int saleBillUuid,
      @JsonKey(name: 'sale_order_uuid') int saleOrderUuid,
      @JsonKey(name: 'order_product_uuid') int orderProductUuid,
      @JsonKey(name: 'remark') String remark});
}

/// @nodoc
class _$RequestOrderRemarkProductCopyWithImpl<$Res,
        $Val extends RequestOrderRemarkProduct>
    implements $RequestOrderRemarkProductCopyWith<$Res> {
  _$RequestOrderRemarkProductCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RequestOrderRemarkProduct
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? saleBillUuid = null,
    Object? saleOrderUuid = null,
    Object? orderProductUuid = null,
    Object? remark = null,
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
      remark: null == remark
          ? _value.remark
          : remark // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RequestOrderRemarkProductImplCopyWith<$Res>
    implements $RequestOrderRemarkProductCopyWith<$Res> {
  factory _$$RequestOrderRemarkProductImplCopyWith(
          _$RequestOrderRemarkProductImpl value,
          $Res Function(_$RequestOrderRemarkProductImpl) then) =
      __$$RequestOrderRemarkProductImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'sale_bill_uuid') int saleBillUuid,
      @JsonKey(name: 'sale_order_uuid') int saleOrderUuid,
      @JsonKey(name: 'order_product_uuid') int orderProductUuid,
      @JsonKey(name: 'remark') String remark});
}

/// @nodoc
class __$$RequestOrderRemarkProductImplCopyWithImpl<$Res>
    extends _$RequestOrderRemarkProductCopyWithImpl<$Res,
        _$RequestOrderRemarkProductImpl>
    implements _$$RequestOrderRemarkProductImplCopyWith<$Res> {
  __$$RequestOrderRemarkProductImplCopyWithImpl(
      _$RequestOrderRemarkProductImpl _value,
      $Res Function(_$RequestOrderRemarkProductImpl) _then)
      : super(_value, _then);

  /// Create a copy of RequestOrderRemarkProduct
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? saleBillUuid = null,
    Object? saleOrderUuid = null,
    Object? orderProductUuid = null,
    Object? remark = null,
  }) {
    return _then(_$RequestOrderRemarkProductImpl(
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
      remark: null == remark
          ? _value.remark
          : remark // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RequestOrderRemarkProductImpl implements _RequestOrderRemarkProduct {
  _$RequestOrderRemarkProductImpl(
      {@JsonKey(name: 'sale_bill_uuid') required this.saleBillUuid,
      @JsonKey(name: 'sale_order_uuid') required this.saleOrderUuid,
      @JsonKey(name: 'order_product_uuid') required this.orderProductUuid,
      @JsonKey(name: 'remark') required this.remark});

  factory _$RequestOrderRemarkProductImpl.fromJson(Map<String, dynamic> json) =>
      _$$RequestOrderRemarkProductImplFromJson(json);

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
  @JsonKey(name: 'remark')
  String remark;

  @override
  String toString() {
    return 'RequestOrderRemarkProduct(saleBillUuid: $saleBillUuid, saleOrderUuid: $saleOrderUuid, orderProductUuid: $orderProductUuid, remark: $remark)';
  }

  /// Create a copy of RequestOrderRemarkProduct
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RequestOrderRemarkProductImplCopyWith<_$RequestOrderRemarkProductImpl>
      get copyWith => __$$RequestOrderRemarkProductImplCopyWithImpl<
          _$RequestOrderRemarkProductImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RequestOrderRemarkProductImplToJson(
      this,
    );
  }
}

abstract class _RequestOrderRemarkProduct implements RequestOrderRemarkProduct {
  factory _RequestOrderRemarkProduct(
          {@JsonKey(name: 'sale_bill_uuid') required int saleBillUuid,
          @JsonKey(name: 'sale_order_uuid') required int saleOrderUuid,
          @JsonKey(name: 'order_product_uuid') required int orderProductUuid,
          @JsonKey(name: 'remark') required String remark}) =
      _$RequestOrderRemarkProductImpl;

  factory _RequestOrderRemarkProduct.fromJson(Map<String, dynamic> json) =
      _$RequestOrderRemarkProductImpl.fromJson;

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
  @JsonKey(name: 'remark')
  String get remark; // 备注
  @JsonKey(name: 'remark')
  set remark(String value);

  /// Create a copy of RequestOrderRemarkProduct
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RequestOrderRemarkProductImplCopyWith<_$RequestOrderRemarkProductImpl>
      get copyWith => throw _privateConstructorUsedError;
}

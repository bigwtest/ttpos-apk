// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_product.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RequestOrderAddProduct _$RequestOrderAddProductFromJson(
    Map<String, dynamic> json) {
  return _RequestOrderAddProduct.fromJson(json);
}

/// @nodoc
mixin _$RequestOrderAddProduct {
// 销售账单ID。可选，参数不填时表示要新建销售账单，添加商品后创建点餐销售账单。
  @JsonKey(name: 'sale_bill_uuid')
  int get saleBillUuid =>
      throw _privateConstructorUsedError; // 销售账单ID。可选，参数不填时表示要新建销售账单，添加商品后创建点餐销售账单。
  @JsonKey(name: 'sale_bill_uuid')
  set saleBillUuid(int value) =>
      throw _privateConstructorUsedError; // 销售订单ID。可选，参数不填时默认加购到第一个销售订单中
  @JsonKey(name: 'sale_order_uuid')
  int get saleOrderUuid =>
      throw _privateConstructorUsedError; // 销售订单ID。可选，参数不填时默认加购到第一个销售订单中
  @JsonKey(name: 'sale_order_uuid')
  set saleOrderUuid(int value) => throw _privateConstructorUsedError; // 必点方案ID
  @JsonKey(name: 'must_plan_uuid')
  int get mustPlanUuid => throw _privateConstructorUsedError; // 必点方案ID
  @JsonKey(name: 'must_plan_uuid')
  set mustPlanUuid(int value) =>
      throw _privateConstructorUsedError; // 操作类型。add: 加购，sub: 减购. 不填，默认是加购
  @JsonKey(name: "operation")
  String get operation =>
      throw _privateConstructorUsedError; // 操作类型。add: 加购，sub: 减购. 不填，默认是加购
  @JsonKey(name: "operation")
  set operation(String value) => throw _privateConstructorUsedError; // 规格ID
  @JsonKey(name: 'attribute_uuid')
  List<int> get attributeUuid => throw _privateConstructorUsedError; // 规格ID
  @JsonKey(name: 'attribute_uuid')
  set attributeUuid(List<int> value) =>
      throw _privateConstructorUsedError; // 某个规格商品ID
  @JsonKey(name: 'flavor_uuid')
  int get flavorUuid => throw _privateConstructorUsedError; // 某个规格商品ID
  @JsonKey(name: 'flavor_uuid')
  set flavorUuid(int value) => throw _privateConstructorUsedError; // 小料ID
  @JsonKey(name: 'sauce_uuid')
  List<int> get sauceUuid => throw _privateConstructorUsedError; // 小料ID
  @JsonKey(name: 'sauce_uuid')
  set sauceUuid(List<int> value) => throw _privateConstructorUsedError;

  /// Serializes this RequestOrderAddProduct to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RequestOrderAddProduct
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RequestOrderAddProductCopyWith<RequestOrderAddProduct> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RequestOrderAddProductCopyWith<$Res> {
  factory $RequestOrderAddProductCopyWith(RequestOrderAddProduct value,
          $Res Function(RequestOrderAddProduct) then) =
      _$RequestOrderAddProductCopyWithImpl<$Res, RequestOrderAddProduct>;
  @useResult
  $Res call(
      {@JsonKey(name: 'sale_bill_uuid') int saleBillUuid,
      @JsonKey(name: 'sale_order_uuid') int saleOrderUuid,
      @JsonKey(name: 'must_plan_uuid') int mustPlanUuid,
      @JsonKey(name: "operation") String operation,
      @JsonKey(name: 'attribute_uuid') List<int> attributeUuid,
      @JsonKey(name: 'flavor_uuid') int flavorUuid,
      @JsonKey(name: 'sauce_uuid') List<int> sauceUuid});
}

/// @nodoc
class _$RequestOrderAddProductCopyWithImpl<$Res,
        $Val extends RequestOrderAddProduct>
    implements $RequestOrderAddProductCopyWith<$Res> {
  _$RequestOrderAddProductCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RequestOrderAddProduct
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? saleBillUuid = null,
    Object? saleOrderUuid = null,
    Object? mustPlanUuid = null,
    Object? operation = null,
    Object? attributeUuid = null,
    Object? flavorUuid = null,
    Object? sauceUuid = null,
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
      mustPlanUuid: null == mustPlanUuid
          ? _value.mustPlanUuid
          : mustPlanUuid // ignore: cast_nullable_to_non_nullable
              as int,
      operation: null == operation
          ? _value.operation
          : operation // ignore: cast_nullable_to_non_nullable
              as String,
      attributeUuid: null == attributeUuid
          ? _value.attributeUuid
          : attributeUuid // ignore: cast_nullable_to_non_nullable
              as List<int>,
      flavorUuid: null == flavorUuid
          ? _value.flavorUuid
          : flavorUuid // ignore: cast_nullable_to_non_nullable
              as int,
      sauceUuid: null == sauceUuid
          ? _value.sauceUuid
          : sauceUuid // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RequestOrderAddProductImplCopyWith<$Res>
    implements $RequestOrderAddProductCopyWith<$Res> {
  factory _$$RequestOrderAddProductImplCopyWith(
          _$RequestOrderAddProductImpl value,
          $Res Function(_$RequestOrderAddProductImpl) then) =
      __$$RequestOrderAddProductImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'sale_bill_uuid') int saleBillUuid,
      @JsonKey(name: 'sale_order_uuid') int saleOrderUuid,
      @JsonKey(name: 'must_plan_uuid') int mustPlanUuid,
      @JsonKey(name: "operation") String operation,
      @JsonKey(name: 'attribute_uuid') List<int> attributeUuid,
      @JsonKey(name: 'flavor_uuid') int flavorUuid,
      @JsonKey(name: 'sauce_uuid') List<int> sauceUuid});
}

/// @nodoc
class __$$RequestOrderAddProductImplCopyWithImpl<$Res>
    extends _$RequestOrderAddProductCopyWithImpl<$Res,
        _$RequestOrderAddProductImpl>
    implements _$$RequestOrderAddProductImplCopyWith<$Res> {
  __$$RequestOrderAddProductImplCopyWithImpl(
      _$RequestOrderAddProductImpl _value,
      $Res Function(_$RequestOrderAddProductImpl) _then)
      : super(_value, _then);

  /// Create a copy of RequestOrderAddProduct
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? saleBillUuid = null,
    Object? saleOrderUuid = null,
    Object? mustPlanUuid = null,
    Object? operation = null,
    Object? attributeUuid = null,
    Object? flavorUuid = null,
    Object? sauceUuid = null,
  }) {
    return _then(_$RequestOrderAddProductImpl(
      saleBillUuid: null == saleBillUuid
          ? _value.saleBillUuid
          : saleBillUuid // ignore: cast_nullable_to_non_nullable
              as int,
      saleOrderUuid: null == saleOrderUuid
          ? _value.saleOrderUuid
          : saleOrderUuid // ignore: cast_nullable_to_non_nullable
              as int,
      mustPlanUuid: null == mustPlanUuid
          ? _value.mustPlanUuid
          : mustPlanUuid // ignore: cast_nullable_to_non_nullable
              as int,
      operation: null == operation
          ? _value.operation
          : operation // ignore: cast_nullable_to_non_nullable
              as String,
      attributeUuid: null == attributeUuid
          ? _value.attributeUuid
          : attributeUuid // ignore: cast_nullable_to_non_nullable
              as List<int>,
      flavorUuid: null == flavorUuid
          ? _value.flavorUuid
          : flavorUuid // ignore: cast_nullable_to_non_nullable
              as int,
      sauceUuid: null == sauceUuid
          ? _value.sauceUuid
          : sauceUuid // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RequestOrderAddProductImpl implements _RequestOrderAddProduct {
  _$RequestOrderAddProductImpl(
      {@JsonKey(name: 'sale_bill_uuid') this.saleBillUuid = 0,
      @JsonKey(name: 'sale_order_uuid') this.saleOrderUuid = 0,
      @JsonKey(name: 'must_plan_uuid') this.mustPlanUuid = 0,
      @JsonKey(name: "operation") this.operation = 'add',
      @JsonKey(name: 'attribute_uuid') this.attributeUuid = const [],
      @JsonKey(name: 'flavor_uuid') required this.flavorUuid,
      @JsonKey(name: 'sauce_uuid') this.sauceUuid = const []});

  factory _$RequestOrderAddProductImpl.fromJson(Map<String, dynamic> json) =>
      _$$RequestOrderAddProductImplFromJson(json);

// 销售账单ID。可选，参数不填时表示要新建销售账单，添加商品后创建点餐销售账单。
  @override
  @JsonKey(name: 'sale_bill_uuid')
  int saleBillUuid;
// 销售订单ID。可选，参数不填时默认加购到第一个销售订单中
  @override
  @JsonKey(name: 'sale_order_uuid')
  int saleOrderUuid;
// 必点方案ID
  @override
  @JsonKey(name: 'must_plan_uuid')
  int mustPlanUuid;
// 操作类型。add: 加购，sub: 减购. 不填，默认是加购
  @override
  @JsonKey(name: "operation")
  String operation;
// 规格ID
  @override
  @JsonKey(name: 'attribute_uuid')
  List<int> attributeUuid;
// 某个规格商品ID
  @override
  @JsonKey(name: 'flavor_uuid')
  int flavorUuid;
// 小料ID
  @override
  @JsonKey(name: 'sauce_uuid')
  List<int> sauceUuid;

  @override
  String toString() {
    return 'RequestOrderAddProduct(saleBillUuid: $saleBillUuid, saleOrderUuid: $saleOrderUuid, mustPlanUuid: $mustPlanUuid, operation: $operation, attributeUuid: $attributeUuid, flavorUuid: $flavorUuid, sauceUuid: $sauceUuid)';
  }

  /// Create a copy of RequestOrderAddProduct
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RequestOrderAddProductImplCopyWith<_$RequestOrderAddProductImpl>
      get copyWith => __$$RequestOrderAddProductImplCopyWithImpl<
          _$RequestOrderAddProductImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RequestOrderAddProductImplToJson(
      this,
    );
  }
}

abstract class _RequestOrderAddProduct implements RequestOrderAddProduct {
  factory _RequestOrderAddProduct(
          {@JsonKey(name: 'sale_bill_uuid') int saleBillUuid,
          @JsonKey(name: 'sale_order_uuid') int saleOrderUuid,
          @JsonKey(name: 'must_plan_uuid') int mustPlanUuid,
          @JsonKey(name: "operation") String operation,
          @JsonKey(name: 'attribute_uuid') List<int> attributeUuid,
          @JsonKey(name: 'flavor_uuid') required int flavorUuid,
          @JsonKey(name: 'sauce_uuid') List<int> sauceUuid}) =
      _$RequestOrderAddProductImpl;

  factory _RequestOrderAddProduct.fromJson(Map<String, dynamic> json) =
      _$RequestOrderAddProductImpl.fromJson;

// 销售账单ID。可选，参数不填时表示要新建销售账单，添加商品后创建点餐销售账单。
  @override
  @JsonKey(name: 'sale_bill_uuid')
  int get saleBillUuid; // 销售账单ID。可选，参数不填时表示要新建销售账单，添加商品后创建点餐销售账单。
  @JsonKey(name: 'sale_bill_uuid')
  set saleBillUuid(int value); // 销售订单ID。可选，参数不填时默认加购到第一个销售订单中
  @override
  @JsonKey(name: 'sale_order_uuid')
  int get saleOrderUuid; // 销售订单ID。可选，参数不填时默认加购到第一个销售订单中
  @JsonKey(name: 'sale_order_uuid')
  set saleOrderUuid(int value); // 必点方案ID
  @override
  @JsonKey(name: 'must_plan_uuid')
  int get mustPlanUuid; // 必点方案ID
  @JsonKey(name: 'must_plan_uuid')
  set mustPlanUuid(int value); // 操作类型。add: 加购，sub: 减购. 不填，默认是加购
  @override
  @JsonKey(name: "operation")
  String get operation; // 操作类型。add: 加购，sub: 减购. 不填，默认是加购
  @JsonKey(name: "operation")
  set operation(String value); // 规格ID
  @override
  @JsonKey(name: 'attribute_uuid')
  List<int> get attributeUuid; // 规格ID
  @JsonKey(name: 'attribute_uuid')
  set attributeUuid(List<int> value); // 某个规格商品ID
  @override
  @JsonKey(name: 'flavor_uuid')
  int get flavorUuid; // 某个规格商品ID
  @JsonKey(name: 'flavor_uuid')
  set flavorUuid(int value); // 小料ID
  @override
  @JsonKey(name: 'sauce_uuid')
  List<int> get sauceUuid; // 小料ID
  @JsonKey(name: 'sauce_uuid')
  set sauceUuid(List<int> value);

  /// Create a copy of RequestOrderAddProduct
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RequestOrderAddProductImplCopyWith<_$RequestOrderAddProductImpl>
      get copyWith => throw _privateConstructorUsedError;
}

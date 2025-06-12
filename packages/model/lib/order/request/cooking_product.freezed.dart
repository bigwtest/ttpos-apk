// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cooking_product.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RequestCooking _$RequestCookingFromJson(Map<String, dynamic> json) {
  return _RequestCooking.fromJson(json);
}

/// @nodoc
mixin _$RequestCooking {
// 是否忽略必点方案
  @JsonKey(name: "ignore_must")
  bool get ignoreMust => throw _privateConstructorUsedError; // 商品信息列表
  @JsonKey(name: "products")
  List<RequestCookingProducts> get products =>
      throw _privateConstructorUsedError; // 销售账单ID
  @JsonKey(name: "sale_bill_uuid")
  int get saleBillUuid => throw _privateConstructorUsedError; // 销售订单ID
  @JsonKey(name: "sale_order_uuid")
  int get saleOrderUuid => throw _privateConstructorUsedError; // 高级密码
  @JsonKey(name: "password")
  String? get password =>
      throw _privateConstructorUsedError; // 是否只是检查送厨，true时检查送厨，false时检查送厨并实际送厨
  @JsonKey(name: "is_check_cooking")
  bool get isCheckCooking => throw _privateConstructorUsedError;

  /// Serializes this RequestCooking to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RequestCooking
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RequestCookingCopyWith<RequestCooking> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RequestCookingCopyWith<$Res> {
  factory $RequestCookingCopyWith(
          RequestCooking value, $Res Function(RequestCooking) then) =
      _$RequestCookingCopyWithImpl<$Res, RequestCooking>;
  @useResult
  $Res call(
      {@JsonKey(name: "ignore_must") bool ignoreMust,
      @JsonKey(name: "products") List<RequestCookingProducts> products,
      @JsonKey(name: "sale_bill_uuid") int saleBillUuid,
      @JsonKey(name: "sale_order_uuid") int saleOrderUuid,
      @JsonKey(name: "password") String? password,
      @JsonKey(name: "is_check_cooking") bool isCheckCooking});
}

/// @nodoc
class _$RequestCookingCopyWithImpl<$Res, $Val extends RequestCooking>
    implements $RequestCookingCopyWith<$Res> {
  _$RequestCookingCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RequestCooking
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ignoreMust = null,
    Object? products = null,
    Object? saleBillUuid = null,
    Object? saleOrderUuid = null,
    Object? password = freezed,
    Object? isCheckCooking = null,
  }) {
    return _then(_value.copyWith(
      ignoreMust: null == ignoreMust
          ? _value.ignoreMust
          : ignoreMust // ignore: cast_nullable_to_non_nullable
              as bool,
      products: null == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<RequestCookingProducts>,
      saleBillUuid: null == saleBillUuid
          ? _value.saleBillUuid
          : saleBillUuid // ignore: cast_nullable_to_non_nullable
              as int,
      saleOrderUuid: null == saleOrderUuid
          ? _value.saleOrderUuid
          : saleOrderUuid // ignore: cast_nullable_to_non_nullable
              as int,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      isCheckCooking: null == isCheckCooking
          ? _value.isCheckCooking
          : isCheckCooking // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RequestCookingImplCopyWith<$Res>
    implements $RequestCookingCopyWith<$Res> {
  factory _$$RequestCookingImplCopyWith(_$RequestCookingImpl value,
          $Res Function(_$RequestCookingImpl) then) =
      __$$RequestCookingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "ignore_must") bool ignoreMust,
      @JsonKey(name: "products") List<RequestCookingProducts> products,
      @JsonKey(name: "sale_bill_uuid") int saleBillUuid,
      @JsonKey(name: "sale_order_uuid") int saleOrderUuid,
      @JsonKey(name: "password") String? password,
      @JsonKey(name: "is_check_cooking") bool isCheckCooking});
}

/// @nodoc
class __$$RequestCookingImplCopyWithImpl<$Res>
    extends _$RequestCookingCopyWithImpl<$Res, _$RequestCookingImpl>
    implements _$$RequestCookingImplCopyWith<$Res> {
  __$$RequestCookingImplCopyWithImpl(
      _$RequestCookingImpl _value, $Res Function(_$RequestCookingImpl) _then)
      : super(_value, _then);

  /// Create a copy of RequestCooking
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ignoreMust = null,
    Object? products = null,
    Object? saleBillUuid = null,
    Object? saleOrderUuid = null,
    Object? password = freezed,
    Object? isCheckCooking = null,
  }) {
    return _then(_$RequestCookingImpl(
      ignoreMust: null == ignoreMust
          ? _value.ignoreMust
          : ignoreMust // ignore: cast_nullable_to_non_nullable
              as bool,
      products: null == products
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<RequestCookingProducts>,
      saleBillUuid: null == saleBillUuid
          ? _value.saleBillUuid
          : saleBillUuid // ignore: cast_nullable_to_non_nullable
              as int,
      saleOrderUuid: null == saleOrderUuid
          ? _value.saleOrderUuid
          : saleOrderUuid // ignore: cast_nullable_to_non_nullable
              as int,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      isCheckCooking: null == isCheckCooking
          ? _value.isCheckCooking
          : isCheckCooking // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RequestCookingImpl implements _RequestCooking {
  const _$RequestCookingImpl(
      {@JsonKey(name: "ignore_must") required this.ignoreMust,
      @JsonKey(name: "products")
      final List<RequestCookingProducts> products = const [],
      @JsonKey(name: "sale_bill_uuid") required this.saleBillUuid,
      @JsonKey(name: "sale_order_uuid") required this.saleOrderUuid,
      @JsonKey(name: "password") this.password,
      @JsonKey(name: "is_check_cooking") this.isCheckCooking = false})
      : _products = products;

  factory _$RequestCookingImpl.fromJson(Map<String, dynamic> json) =>
      _$$RequestCookingImplFromJson(json);

// 是否忽略必点方案
  @override
  @JsonKey(name: "ignore_must")
  final bool ignoreMust;
// 商品信息列表
  final List<RequestCookingProducts> _products;
// 商品信息列表
  @override
  @JsonKey(name: "products")
  List<RequestCookingProducts> get products {
    if (_products is EqualUnmodifiableListView) return _products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_products);
  }

// 销售账单ID
  @override
  @JsonKey(name: "sale_bill_uuid")
  final int saleBillUuid;
// 销售订单ID
  @override
  @JsonKey(name: "sale_order_uuid")
  final int saleOrderUuid;
// 高级密码
  @override
  @JsonKey(name: "password")
  final String? password;
// 是否只是检查送厨，true时检查送厨，false时检查送厨并实际送厨
  @override
  @JsonKey(name: "is_check_cooking")
  final bool isCheckCooking;

  @override
  String toString() {
    return 'RequestCooking(ignoreMust: $ignoreMust, products: $products, saleBillUuid: $saleBillUuid, saleOrderUuid: $saleOrderUuid, password: $password, isCheckCooking: $isCheckCooking)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RequestCookingImpl &&
            (identical(other.ignoreMust, ignoreMust) ||
                other.ignoreMust == ignoreMust) &&
            const DeepCollectionEquality().equals(other._products, _products) &&
            (identical(other.saleBillUuid, saleBillUuid) ||
                other.saleBillUuid == saleBillUuid) &&
            (identical(other.saleOrderUuid, saleOrderUuid) ||
                other.saleOrderUuid == saleOrderUuid) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.isCheckCooking, isCheckCooking) ||
                other.isCheckCooking == isCheckCooking));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      ignoreMust,
      const DeepCollectionEquality().hash(_products),
      saleBillUuid,
      saleOrderUuid,
      password,
      isCheckCooking);

  /// Create a copy of RequestCooking
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RequestCookingImplCopyWith<_$RequestCookingImpl> get copyWith =>
      __$$RequestCookingImplCopyWithImpl<_$RequestCookingImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RequestCookingImplToJson(
      this,
    );
  }
}

abstract class _RequestCooking implements RequestCooking {
  const factory _RequestCooking(
      {@JsonKey(name: "ignore_must") required final bool ignoreMust,
      @JsonKey(name: "products") final List<RequestCookingProducts> products,
      @JsonKey(name: "sale_bill_uuid") required final int saleBillUuid,
      @JsonKey(name: "sale_order_uuid") required final int saleOrderUuid,
      @JsonKey(name: "password") final String? password,
      @JsonKey(name: "is_check_cooking")
      final bool isCheckCooking}) = _$RequestCookingImpl;

  factory _RequestCooking.fromJson(Map<String, dynamic> json) =
      _$RequestCookingImpl.fromJson;

// 是否忽略必点方案
  @override
  @JsonKey(name: "ignore_must")
  bool get ignoreMust; // 商品信息列表
  @override
  @JsonKey(name: "products")
  List<RequestCookingProducts> get products; // 销售账单ID
  @override
  @JsonKey(name: "sale_bill_uuid")
  int get saleBillUuid; // 销售订单ID
  @override
  @JsonKey(name: "sale_order_uuid")
  int get saleOrderUuid; // 高级密码
  @override
  @JsonKey(name: "password")
  String? get password; // 是否只是检查送厨，true时检查送厨，false时检查送厨并实际送厨
  @override
  @JsonKey(name: "is_check_cooking")
  bool get isCheckCooking;

  /// Create a copy of RequestCooking
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RequestCookingImplCopyWith<_$RequestCookingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

RequestCookingProducts _$RequestCookingProductsFromJson(
    Map<String, dynamic> json) {
  return _RequestCookingProducts.fromJson(json);
}

/// @nodoc
mixin _$RequestCookingProducts {
// 商品规格uuid
  @JsonKey(name: "flavor_product_bom_uuid")
  int get flavorProductBomUuid =>
      throw _privateConstructorUsedError; // 商品规格uuid
  @JsonKey(name: "flavor_product_bom_uuid")
  set flavorProductBomUuid(int value) =>
      throw _privateConstructorUsedError; // 数量数量
  @JsonKey(name: "num")
  int get num => throw _privateConstructorUsedError; // 数量数量
  @JsonKey(name: "num")
  set num(int value) => throw _privateConstructorUsedError; // 必点方案ID
  @JsonKey(name: 'must_plan_uuid')
  int get mustPlanUuid => throw _privateConstructorUsedError; // 必点方案ID
  @JsonKey(name: 'must_plan_uuid')
  set mustPlanUuid(int value) =>
      throw _privateConstructorUsedError; // 操作类型。add: 加购，sub: 减购
  @JsonKey(name: "operation")
  String get operation =>
      throw _privateConstructorUsedError; // 操作类型。add: 加购，sub: 减购
  @JsonKey(name: "operation")
  set operation(String value) => throw _privateConstructorUsedError; // 备注
  @JsonKey(name: "remark")
  String get remark => throw _privateConstructorUsedError; // 备注
  @JsonKey(name: "remark")
  set remark(String value) => throw _privateConstructorUsedError; // 属性信息
  @JsonKey(name: "product_package_attribute_uuid_list")
  List<int> get productPackageAttributeUuidList =>
      throw _privateConstructorUsedError; // 属性信息
  @JsonKey(name: "product_package_attribute_uuid_list")
  set productPackageAttributeUuidList(List<int> value) =>
      throw _privateConstructorUsedError; // 加料信息
  @JsonKey(name: "sauce_product_bom_uuid_list")
  List<int> get sauceProductBomUuidList =>
      throw _privateConstructorUsedError; // 加料信息
  @JsonKey(name: "sauce_product_bom_uuid_list")
  set sauceProductBomUuidList(List<int> value) =>
      throw _privateConstructorUsedError;

  /// Serializes this RequestCookingProducts to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RequestCookingProducts
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RequestCookingProductsCopyWith<RequestCookingProducts> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RequestCookingProductsCopyWith<$Res> {
  factory $RequestCookingProductsCopyWith(RequestCookingProducts value,
          $Res Function(RequestCookingProducts) then) =
      _$RequestCookingProductsCopyWithImpl<$Res, RequestCookingProducts>;
  @useResult
  $Res call(
      {@JsonKey(name: "flavor_product_bom_uuid") int flavorProductBomUuid,
      @JsonKey(name: "num") int num,
      @JsonKey(name: 'must_plan_uuid') int mustPlanUuid,
      @JsonKey(name: "operation") String operation,
      @JsonKey(name: "remark") String remark,
      @JsonKey(name: "product_package_attribute_uuid_list")
      List<int> productPackageAttributeUuidList,
      @JsonKey(name: "sauce_product_bom_uuid_list")
      List<int> sauceProductBomUuidList});
}

/// @nodoc
class _$RequestCookingProductsCopyWithImpl<$Res,
        $Val extends RequestCookingProducts>
    implements $RequestCookingProductsCopyWith<$Res> {
  _$RequestCookingProductsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RequestCookingProducts
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? flavorProductBomUuid = null,
    Object? num = null,
    Object? mustPlanUuid = null,
    Object? operation = null,
    Object? remark = null,
    Object? productPackageAttributeUuidList = null,
    Object? sauceProductBomUuidList = null,
  }) {
    return _then(_value.copyWith(
      flavorProductBomUuid: null == flavorProductBomUuid
          ? _value.flavorProductBomUuid
          : flavorProductBomUuid // ignore: cast_nullable_to_non_nullable
              as int,
      num: null == num
          ? _value.num
          : num // ignore: cast_nullable_to_non_nullable
              as int,
      mustPlanUuid: null == mustPlanUuid
          ? _value.mustPlanUuid
          : mustPlanUuid // ignore: cast_nullable_to_non_nullable
              as int,
      operation: null == operation
          ? _value.operation
          : operation // ignore: cast_nullable_to_non_nullable
              as String,
      remark: null == remark
          ? _value.remark
          : remark // ignore: cast_nullable_to_non_nullable
              as String,
      productPackageAttributeUuidList: null == productPackageAttributeUuidList
          ? _value.productPackageAttributeUuidList
          : productPackageAttributeUuidList // ignore: cast_nullable_to_non_nullable
              as List<int>,
      sauceProductBomUuidList: null == sauceProductBomUuidList
          ? _value.sauceProductBomUuidList
          : sauceProductBomUuidList // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RequestCookingProductsImplCopyWith<$Res>
    implements $RequestCookingProductsCopyWith<$Res> {
  factory _$$RequestCookingProductsImplCopyWith(
          _$RequestCookingProductsImpl value,
          $Res Function(_$RequestCookingProductsImpl) then) =
      __$$RequestCookingProductsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "flavor_product_bom_uuid") int flavorProductBomUuid,
      @JsonKey(name: "num") int num,
      @JsonKey(name: 'must_plan_uuid') int mustPlanUuid,
      @JsonKey(name: "operation") String operation,
      @JsonKey(name: "remark") String remark,
      @JsonKey(name: "product_package_attribute_uuid_list")
      List<int> productPackageAttributeUuidList,
      @JsonKey(name: "sauce_product_bom_uuid_list")
      List<int> sauceProductBomUuidList});
}

/// @nodoc
class __$$RequestCookingProductsImplCopyWithImpl<$Res>
    extends _$RequestCookingProductsCopyWithImpl<$Res,
        _$RequestCookingProductsImpl>
    implements _$$RequestCookingProductsImplCopyWith<$Res> {
  __$$RequestCookingProductsImplCopyWithImpl(
      _$RequestCookingProductsImpl _value,
      $Res Function(_$RequestCookingProductsImpl) _then)
      : super(_value, _then);

  /// Create a copy of RequestCookingProducts
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? flavorProductBomUuid = null,
    Object? num = null,
    Object? mustPlanUuid = null,
    Object? operation = null,
    Object? remark = null,
    Object? productPackageAttributeUuidList = null,
    Object? sauceProductBomUuidList = null,
  }) {
    return _then(_$RequestCookingProductsImpl(
      flavorProductBomUuid: null == flavorProductBomUuid
          ? _value.flavorProductBomUuid
          : flavorProductBomUuid // ignore: cast_nullable_to_non_nullable
              as int,
      num: null == num
          ? _value.num
          : num // ignore: cast_nullable_to_non_nullable
              as int,
      mustPlanUuid: null == mustPlanUuid
          ? _value.mustPlanUuid
          : mustPlanUuid // ignore: cast_nullable_to_non_nullable
              as int,
      operation: null == operation
          ? _value.operation
          : operation // ignore: cast_nullable_to_non_nullable
              as String,
      remark: null == remark
          ? _value.remark
          : remark // ignore: cast_nullable_to_non_nullable
              as String,
      productPackageAttributeUuidList: null == productPackageAttributeUuidList
          ? _value.productPackageAttributeUuidList
          : productPackageAttributeUuidList // ignore: cast_nullable_to_non_nullable
              as List<int>,
      sauceProductBomUuidList: null == sauceProductBomUuidList
          ? _value.sauceProductBomUuidList
          : sauceProductBomUuidList // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RequestCookingProductsImpl implements _RequestCookingProducts {
  _$RequestCookingProductsImpl(
      {@JsonKey(name: "flavor_product_bom_uuid")
      required this.flavorProductBomUuid,
      @JsonKey(name: "num") required this.num,
      @JsonKey(name: 'must_plan_uuid') this.mustPlanUuid = 0,
      @JsonKey(name: "operation") this.operation = 'add',
      @JsonKey(name: "remark") this.remark = '',
      @JsonKey(name: "product_package_attribute_uuid_list")
      required this.productPackageAttributeUuidList,
      @JsonKey(name: "sauce_product_bom_uuid_list")
      required this.sauceProductBomUuidList});

  factory _$RequestCookingProductsImpl.fromJson(Map<String, dynamic> json) =>
      _$$RequestCookingProductsImplFromJson(json);

// 商品规格uuid
  @override
  @JsonKey(name: "flavor_product_bom_uuid")
  int flavorProductBomUuid;
// 数量数量
  @override
  @JsonKey(name: "num")
  int num;
// 必点方案ID
  @override
  @JsonKey(name: 'must_plan_uuid')
  int mustPlanUuid;
// 操作类型。add: 加购，sub: 减购
  @override
  @JsonKey(name: "operation")
  String operation;
// 备注
  @override
  @JsonKey(name: "remark")
  String remark;
// 属性信息
  @override
  @JsonKey(name: "product_package_attribute_uuid_list")
  List<int> productPackageAttributeUuidList;
// 加料信息
  @override
  @JsonKey(name: "sauce_product_bom_uuid_list")
  List<int> sauceProductBomUuidList;

  @override
  String toString() {
    return 'RequestCookingProducts(flavorProductBomUuid: $flavorProductBomUuid, num: $num, mustPlanUuid: $mustPlanUuid, operation: $operation, remark: $remark, productPackageAttributeUuidList: $productPackageAttributeUuidList, sauceProductBomUuidList: $sauceProductBomUuidList)';
  }

  /// Create a copy of RequestCookingProducts
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RequestCookingProductsImplCopyWith<_$RequestCookingProductsImpl>
      get copyWith => __$$RequestCookingProductsImplCopyWithImpl<
          _$RequestCookingProductsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RequestCookingProductsImplToJson(
      this,
    );
  }
}

abstract class _RequestCookingProducts implements RequestCookingProducts {
  factory _RequestCookingProducts(
          {@JsonKey(name: "flavor_product_bom_uuid")
          required int flavorProductBomUuid,
          @JsonKey(name: "num") required int num,
          @JsonKey(name: 'must_plan_uuid') int mustPlanUuid,
          @JsonKey(name: "operation") String operation,
          @JsonKey(name: "remark") String remark,
          @JsonKey(name: "product_package_attribute_uuid_list")
          required List<int> productPackageAttributeUuidList,
          @JsonKey(name: "sauce_product_bom_uuid_list")
          required List<int> sauceProductBomUuidList}) =
      _$RequestCookingProductsImpl;

  factory _RequestCookingProducts.fromJson(Map<String, dynamic> json) =
      _$RequestCookingProductsImpl.fromJson;

// 商品规格uuid
  @override
  @JsonKey(name: "flavor_product_bom_uuid")
  int get flavorProductBomUuid; // 商品规格uuid
  @JsonKey(name: "flavor_product_bom_uuid")
  set flavorProductBomUuid(int value); // 数量数量
  @override
  @JsonKey(name: "num")
  int get num; // 数量数量
  @JsonKey(name: "num")
  set num(int value); // 必点方案ID
  @override
  @JsonKey(name: 'must_plan_uuid')
  int get mustPlanUuid; // 必点方案ID
  @JsonKey(name: 'must_plan_uuid')
  set mustPlanUuid(int value); // 操作类型。add: 加购，sub: 减购
  @override
  @JsonKey(name: "operation")
  String get operation; // 操作类型。add: 加购，sub: 减购
  @JsonKey(name: "operation")
  set operation(String value); // 备注
  @override
  @JsonKey(name: "remark")
  String get remark; // 备注
  @JsonKey(name: "remark")
  set remark(String value); // 属性信息
  @override
  @JsonKey(name: "product_package_attribute_uuid_list")
  List<int> get productPackageAttributeUuidList; // 属性信息
  @JsonKey(name: "product_package_attribute_uuid_list")
  set productPackageAttributeUuidList(List<int> value); // 加料信息
  @override
  @JsonKey(name: "sauce_product_bom_uuid_list")
  List<int> get sauceProductBomUuidList; // 加料信息
  @JsonKey(name: "sauce_product_bom_uuid_list")
  set sauceProductBomUuidList(List<int> value);

  /// Create a copy of RequestCookingProducts
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RequestCookingProductsImplCopyWith<_$RequestCookingProductsImpl>
      get copyWith => throw _privateConstructorUsedError;
}

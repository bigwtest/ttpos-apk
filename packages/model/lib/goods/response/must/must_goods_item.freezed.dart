// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'must_goods_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MustGoodsItem _$MustGoodsItemFromJson(Map<String, dynamic> json) {
  return _MustGoodsItem.fromJson(json);
}

/// @nodoc
mixin _$MustGoodsItem {
// 必选方案ID
  @JsonKey(name: "uuid")
  int get uuid => throw _privateConstructorUsedError; // 必选方案ID
  @JsonKey(name: "uuid")
  set uuid(int value) => throw _privateConstructorUsedError; // 顾客可修改必点数量
  @JsonKey(name: "can_change_num")
  bool get canChangeNum => throw _privateConstructorUsedError; // 顾客可修改必点数量
  @JsonKey(name: "can_change_num")
  set canChangeNum(bool value) => throw _privateConstructorUsedError; // 就餐人数
  @JsonKey(name: "meal_num")
  int get mealNum => throw _privateConstructorUsedError; // 就餐人数
  @JsonKey(name: "meal_num")
  set mealNum(int value) =>
      throw _privateConstructorUsedError; // 必点规则.0-固定商品 1-可选商品
  @JsonKey(name: "must_rule")
  int get mustRule => throw _privateConstructorUsedError; // 必点规则.0-固定商品 1-可选商品
  @JsonKey(name: "must_rule")
  set mustRule(int value) =>
      throw _privateConstructorUsedError; // 必点类型.0-每笔订单必点1份 1-每人必点1份
  @JsonKey(name: "must_type")
  int get mustType =>
      throw _privateConstructorUsedError; // 必点类型.0-每笔订单必点1份 1-每人必点1份
  @JsonKey(name: "must_type")
  set mustType(int value) => throw _privateConstructorUsedError; // 方案名称
  @JsonKey(name: "name")
  String get name => throw _privateConstructorUsedError; // 方案名称
  @JsonKey(name: "name")
  set name(String value) =>
      throw _privateConstructorUsedError; // 这个商品还需要点的数量。还差xx份
  @JsonKey(name: "need_num")
  int get needNum => throw _privateConstructorUsedError; // 这个商品还需要点的数量。还差xx份
  @JsonKey(name: "need_num")
  set needNum(int value) => throw _privateConstructorUsedError; // 商品列表
  @JsonKey(name: "products")
  BaseList<MustProducts> get products =>
      throw _privateConstructorUsedError; // 商品列表
  @JsonKey(name: "products")
  set products(BaseList<MustProducts> value) =>
      throw _privateConstructorUsedError; // 已选数量。已选择xx份
  @JsonKey(name: "selected_num")
  int get selectedNum => throw _privateConstructorUsedError; // 已选数量。已选择xx份
  @JsonKey(name: "selected_num")
  set selectedNum(int value) => throw _privateConstructorUsedError;

  /// Serializes this MustGoodsItem to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MustGoodsItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MustGoodsItemCopyWith<MustGoodsItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MustGoodsItemCopyWith<$Res> {
  factory $MustGoodsItemCopyWith(
          MustGoodsItem value, $Res Function(MustGoodsItem) then) =
      _$MustGoodsItemCopyWithImpl<$Res, MustGoodsItem>;
  @useResult
  $Res call(
      {@JsonKey(name: "uuid") int uuid,
      @JsonKey(name: "can_change_num") bool canChangeNum,
      @JsonKey(name: "meal_num") int mealNum,
      @JsonKey(name: "must_rule") int mustRule,
      @JsonKey(name: "must_type") int mustType,
      @JsonKey(name: "name") String name,
      @JsonKey(name: "need_num") int needNum,
      @JsonKey(name: "products") BaseList<MustProducts> products,
      @JsonKey(name: "selected_num") int selectedNum});

  $BaseListCopyWith<MustProducts, $Res> get products;
}

/// @nodoc
class _$MustGoodsItemCopyWithImpl<$Res, $Val extends MustGoodsItem>
    implements $MustGoodsItemCopyWith<$Res> {
  _$MustGoodsItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MustGoodsItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uuid = null,
    Object? canChangeNum = null,
    Object? mealNum = null,
    Object? mustRule = null,
    Object? mustType = null,
    Object? name = null,
    Object? needNum = null,
    Object? products = null,
    Object? selectedNum = null,
  }) {
    return _then(_value.copyWith(
      uuid: null == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as int,
      canChangeNum: null == canChangeNum
          ? _value.canChangeNum
          : canChangeNum // ignore: cast_nullable_to_non_nullable
              as bool,
      mealNum: null == mealNum
          ? _value.mealNum
          : mealNum // ignore: cast_nullable_to_non_nullable
              as int,
      mustRule: null == mustRule
          ? _value.mustRule
          : mustRule // ignore: cast_nullable_to_non_nullable
              as int,
      mustType: null == mustType
          ? _value.mustType
          : mustType // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      needNum: null == needNum
          ? _value.needNum
          : needNum // ignore: cast_nullable_to_non_nullable
              as int,
      products: null == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as BaseList<MustProducts>,
      selectedNum: null == selectedNum
          ? _value.selectedNum
          : selectedNum // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }

  /// Create a copy of MustGoodsItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BaseListCopyWith<MustProducts, $Res> get products {
    return $BaseListCopyWith<MustProducts, $Res>(_value.products, (value) {
      return _then(_value.copyWith(products: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MustGoodsItemImplCopyWith<$Res>
    implements $MustGoodsItemCopyWith<$Res> {
  factory _$$MustGoodsItemImplCopyWith(
          _$MustGoodsItemImpl value, $Res Function(_$MustGoodsItemImpl) then) =
      __$$MustGoodsItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "uuid") int uuid,
      @JsonKey(name: "can_change_num") bool canChangeNum,
      @JsonKey(name: "meal_num") int mealNum,
      @JsonKey(name: "must_rule") int mustRule,
      @JsonKey(name: "must_type") int mustType,
      @JsonKey(name: "name") String name,
      @JsonKey(name: "need_num") int needNum,
      @JsonKey(name: "products") BaseList<MustProducts> products,
      @JsonKey(name: "selected_num") int selectedNum});

  @override
  $BaseListCopyWith<MustProducts, $Res> get products;
}

/// @nodoc
class __$$MustGoodsItemImplCopyWithImpl<$Res>
    extends _$MustGoodsItemCopyWithImpl<$Res, _$MustGoodsItemImpl>
    implements _$$MustGoodsItemImplCopyWith<$Res> {
  __$$MustGoodsItemImplCopyWithImpl(
      _$MustGoodsItemImpl _value, $Res Function(_$MustGoodsItemImpl) _then)
      : super(_value, _then);

  /// Create a copy of MustGoodsItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uuid = null,
    Object? canChangeNum = null,
    Object? mealNum = null,
    Object? mustRule = null,
    Object? mustType = null,
    Object? name = null,
    Object? needNum = null,
    Object? products = null,
    Object? selectedNum = null,
  }) {
    return _then(_$MustGoodsItemImpl(
      uuid: null == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as int,
      canChangeNum: null == canChangeNum
          ? _value.canChangeNum
          : canChangeNum // ignore: cast_nullable_to_non_nullable
              as bool,
      mealNum: null == mealNum
          ? _value.mealNum
          : mealNum // ignore: cast_nullable_to_non_nullable
              as int,
      mustRule: null == mustRule
          ? _value.mustRule
          : mustRule // ignore: cast_nullable_to_non_nullable
              as int,
      mustType: null == mustType
          ? _value.mustType
          : mustType // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      needNum: null == needNum
          ? _value.needNum
          : needNum // ignore: cast_nullable_to_non_nullable
              as int,
      products: null == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as BaseList<MustProducts>,
      selectedNum: null == selectedNum
          ? _value.selectedNum
          : selectedNum // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MustGoodsItemImpl implements _MustGoodsItem {
  _$MustGoodsItemImpl(
      {@JsonKey(name: "uuid") required this.uuid,
      @JsonKey(name: "can_change_num") required this.canChangeNum,
      @JsonKey(name: "meal_num") required this.mealNum,
      @JsonKey(name: "must_rule") required this.mustRule,
      @JsonKey(name: "must_type") required this.mustType,
      @JsonKey(name: "name") required this.name,
      @JsonKey(name: "need_num") required this.needNum,
      @JsonKey(name: "products") required this.products,
      @JsonKey(name: "selected_num") required this.selectedNum});

  factory _$MustGoodsItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$MustGoodsItemImplFromJson(json);

// 必选方案ID
  @override
  @JsonKey(name: "uuid")
  int uuid;
// 顾客可修改必点数量
  @override
  @JsonKey(name: "can_change_num")
  bool canChangeNum;
// 就餐人数
  @override
  @JsonKey(name: "meal_num")
  int mealNum;
// 必点规则.0-固定商品 1-可选商品
  @override
  @JsonKey(name: "must_rule")
  int mustRule;
// 必点类型.0-每笔订单必点1份 1-每人必点1份
  @override
  @JsonKey(name: "must_type")
  int mustType;
// 方案名称
  @override
  @JsonKey(name: "name")
  String name;
// 这个商品还需要点的数量。还差xx份
  @override
  @JsonKey(name: "need_num")
  int needNum;
// 商品列表
  @override
  @JsonKey(name: "products")
  BaseList<MustProducts> products;
// 已选数量。已选择xx份
  @override
  @JsonKey(name: "selected_num")
  int selectedNum;

  @override
  String toString() {
    return 'MustGoodsItem(uuid: $uuid, canChangeNum: $canChangeNum, mealNum: $mealNum, mustRule: $mustRule, mustType: $mustType, name: $name, needNum: $needNum, products: $products, selectedNum: $selectedNum)';
  }

  /// Create a copy of MustGoodsItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MustGoodsItemImplCopyWith<_$MustGoodsItemImpl> get copyWith =>
      __$$MustGoodsItemImplCopyWithImpl<_$MustGoodsItemImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MustGoodsItemImplToJson(
      this,
    );
  }
}

abstract class _MustGoodsItem implements MustGoodsItem {
  factory _MustGoodsItem(
          {@JsonKey(name: "uuid") required int uuid,
          @JsonKey(name: "can_change_num") required bool canChangeNum,
          @JsonKey(name: "meal_num") required int mealNum,
          @JsonKey(name: "must_rule") required int mustRule,
          @JsonKey(name: "must_type") required int mustType,
          @JsonKey(name: "name") required String name,
          @JsonKey(name: "need_num") required int needNum,
          @JsonKey(name: "products") required BaseList<MustProducts> products,
          @JsonKey(name: "selected_num") required int selectedNum}) =
      _$MustGoodsItemImpl;

  factory _MustGoodsItem.fromJson(Map<String, dynamic> json) =
      _$MustGoodsItemImpl.fromJson;

// 必选方案ID
  @override
  @JsonKey(name: "uuid")
  int get uuid; // 必选方案ID
  @JsonKey(name: "uuid")
  set uuid(int value); // 顾客可修改必点数量
  @override
  @JsonKey(name: "can_change_num")
  bool get canChangeNum; // 顾客可修改必点数量
  @JsonKey(name: "can_change_num")
  set canChangeNum(bool value); // 就餐人数
  @override
  @JsonKey(name: "meal_num")
  int get mealNum; // 就餐人数
  @JsonKey(name: "meal_num")
  set mealNum(int value); // 必点规则.0-固定商品 1-可选商品
  @override
  @JsonKey(name: "must_rule")
  int get mustRule; // 必点规则.0-固定商品 1-可选商品
  @JsonKey(name: "must_rule")
  set mustRule(int value); // 必点类型.0-每笔订单必点1份 1-每人必点1份
  @override
  @JsonKey(name: "must_type")
  int get mustType; // 必点类型.0-每笔订单必点1份 1-每人必点1份
  @JsonKey(name: "must_type")
  set mustType(int value); // 方案名称
  @override
  @JsonKey(name: "name")
  String get name; // 方案名称
  @JsonKey(name: "name")
  set name(String value); // 这个商品还需要点的数量。还差xx份
  @override
  @JsonKey(name: "need_num")
  int get needNum; // 这个商品还需要点的数量。还差xx份
  @JsonKey(name: "need_num")
  set needNum(int value); // 商品列表
  @override
  @JsonKey(name: "products")
  BaseList<MustProducts> get products; // 商品列表
  @JsonKey(name: "products")
  set products(BaseList<MustProducts> value); // 已选数量。已选择xx份
  @override
  @JsonKey(name: "selected_num")
  int get selectedNum; // 已选数量。已选择xx份
  @JsonKey(name: "selected_num")
  set selectedNum(int value);

  /// Create a copy of MustGoodsItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MustGoodsItemImplCopyWith<_$MustGoodsItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MustProducts _$MustProductsFromJson(Map<String, dynamic> json) {
  return _MustProducts.fromJson(json);
}

/// @nodoc
mixin _$MustProducts {
// 是否是自动加购的商品。是则自动加入购物车，并且不显示在“必选方案”的弹框中
  @JsonKey(name: "is_auto_add")
  bool? get isAutoAdd =>
      throw _privateConstructorUsedError; // 是否是自动加购的商品。是则自动加入购物车，并且不显示在“必选方案”的弹框中
  @JsonKey(name: "is_auto_add")
  set isAutoAdd(bool? value) =>
      throw _privateConstructorUsedError; // 这个商品必选点的数量。还需点数量=must_num-selected_num
  @JsonKey(name: "must_num")
  int get mustNum =>
      throw _privateConstructorUsedError; // 这个商品必选点的数量。还需点数量=must_num-selected_num
  @JsonKey(name: "must_num")
  set mustNum(int value) =>
      throw _privateConstructorUsedError; // 这个商品还需要点的数量。还需点数量=must_num-selected_num
  @JsonKey(name: "need_num")
  int get needNum =>
      throw _privateConstructorUsedError; // 这个商品还需要点的数量。还需点数量=must_num-selected_num
  @JsonKey(name: "need_num")
  set needNum(int value) => throw _privateConstructorUsedError; // 商品详情
  @JsonKey(name: "product")
  GoodsProduct get product => throw _privateConstructorUsedError; // 商品详情
  @JsonKey(name: "product")
  set product(GoodsProduct value) => throw _privateConstructorUsedError; // 已选数量
  @JsonKey(name: "selected_num")
  int get selectedNum => throw _privateConstructorUsedError; // 已选数量
  @JsonKey(name: "selected_num")
  set selectedNum(int value) => throw _privateConstructorUsedError;

  /// Serializes this MustProducts to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MustProducts
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MustProductsCopyWith<MustProducts> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MustProductsCopyWith<$Res> {
  factory $MustProductsCopyWith(
          MustProducts value, $Res Function(MustProducts) then) =
      _$MustProductsCopyWithImpl<$Res, MustProducts>;
  @useResult
  $Res call(
      {@JsonKey(name: "is_auto_add") bool? isAutoAdd,
      @JsonKey(name: "must_num") int mustNum,
      @JsonKey(name: "need_num") int needNum,
      @JsonKey(name: "product") GoodsProduct product,
      @JsonKey(name: "selected_num") int selectedNum});

  $GoodsProductCopyWith<$Res> get product;
}

/// @nodoc
class _$MustProductsCopyWithImpl<$Res, $Val extends MustProducts>
    implements $MustProductsCopyWith<$Res> {
  _$MustProductsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MustProducts
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isAutoAdd = freezed,
    Object? mustNum = null,
    Object? needNum = null,
    Object? product = null,
    Object? selectedNum = null,
  }) {
    return _then(_value.copyWith(
      isAutoAdd: freezed == isAutoAdd
          ? _value.isAutoAdd
          : isAutoAdd // ignore: cast_nullable_to_non_nullable
              as bool?,
      mustNum: null == mustNum
          ? _value.mustNum
          : mustNum // ignore: cast_nullable_to_non_nullable
              as int,
      needNum: null == needNum
          ? _value.needNum
          : needNum // ignore: cast_nullable_to_non_nullable
              as int,
      product: null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as GoodsProduct,
      selectedNum: null == selectedNum
          ? _value.selectedNum
          : selectedNum // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }

  /// Create a copy of MustProducts
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $GoodsProductCopyWith<$Res> get product {
    return $GoodsProductCopyWith<$Res>(_value.product, (value) {
      return _then(_value.copyWith(product: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MustProductsImplCopyWith<$Res>
    implements $MustProductsCopyWith<$Res> {
  factory _$$MustProductsImplCopyWith(
          _$MustProductsImpl value, $Res Function(_$MustProductsImpl) then) =
      __$$MustProductsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "is_auto_add") bool? isAutoAdd,
      @JsonKey(name: "must_num") int mustNum,
      @JsonKey(name: "need_num") int needNum,
      @JsonKey(name: "product") GoodsProduct product,
      @JsonKey(name: "selected_num") int selectedNum});

  @override
  $GoodsProductCopyWith<$Res> get product;
}

/// @nodoc
class __$$MustProductsImplCopyWithImpl<$Res>
    extends _$MustProductsCopyWithImpl<$Res, _$MustProductsImpl>
    implements _$$MustProductsImplCopyWith<$Res> {
  __$$MustProductsImplCopyWithImpl(
      _$MustProductsImpl _value, $Res Function(_$MustProductsImpl) _then)
      : super(_value, _then);

  /// Create a copy of MustProducts
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isAutoAdd = freezed,
    Object? mustNum = null,
    Object? needNum = null,
    Object? product = null,
    Object? selectedNum = null,
  }) {
    return _then(_$MustProductsImpl(
      isAutoAdd: freezed == isAutoAdd
          ? _value.isAutoAdd
          : isAutoAdd // ignore: cast_nullable_to_non_nullable
              as bool?,
      mustNum: null == mustNum
          ? _value.mustNum
          : mustNum // ignore: cast_nullable_to_non_nullable
              as int,
      needNum: null == needNum
          ? _value.needNum
          : needNum // ignore: cast_nullable_to_non_nullable
              as int,
      product: null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as GoodsProduct,
      selectedNum: null == selectedNum
          ? _value.selectedNum
          : selectedNum // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MustProductsImpl implements _MustProducts {
  _$MustProductsImpl(
      {@JsonKey(name: "is_auto_add") this.isAutoAdd,
      @JsonKey(name: "must_num") required this.mustNum,
      @JsonKey(name: "need_num") required this.needNum,
      @JsonKey(name: "product") required this.product,
      @JsonKey(name: "selected_num") required this.selectedNum});

  factory _$MustProductsImpl.fromJson(Map<String, dynamic> json) =>
      _$$MustProductsImplFromJson(json);

// 是否是自动加购的商品。是则自动加入购物车，并且不显示在“必选方案”的弹框中
  @override
  @JsonKey(name: "is_auto_add")
  bool? isAutoAdd;
// 这个商品必选点的数量。还需点数量=must_num-selected_num
  @override
  @JsonKey(name: "must_num")
  int mustNum;
// 这个商品还需要点的数量。还需点数量=must_num-selected_num
  @override
  @JsonKey(name: "need_num")
  int needNum;
// 商品详情
  @override
  @JsonKey(name: "product")
  GoodsProduct product;
// 已选数量
  @override
  @JsonKey(name: "selected_num")
  int selectedNum;

  @override
  String toString() {
    return 'MustProducts(isAutoAdd: $isAutoAdd, mustNum: $mustNum, needNum: $needNum, product: $product, selectedNum: $selectedNum)';
  }

  /// Create a copy of MustProducts
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MustProductsImplCopyWith<_$MustProductsImpl> get copyWith =>
      __$$MustProductsImplCopyWithImpl<_$MustProductsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MustProductsImplToJson(
      this,
    );
  }
}

abstract class _MustProducts implements MustProducts {
  factory _MustProducts(
          {@JsonKey(name: "is_auto_add") bool? isAutoAdd,
          @JsonKey(name: "must_num") required int mustNum,
          @JsonKey(name: "need_num") required int needNum,
          @JsonKey(name: "product") required GoodsProduct product,
          @JsonKey(name: "selected_num") required int selectedNum}) =
      _$MustProductsImpl;

  factory _MustProducts.fromJson(Map<String, dynamic> json) =
      _$MustProductsImpl.fromJson;

// 是否是自动加购的商品。是则自动加入购物车，并且不显示在“必选方案”的弹框中
  @override
  @JsonKey(name: "is_auto_add")
  bool? get isAutoAdd; // 是否是自动加购的商品。是则自动加入购物车，并且不显示在“必选方案”的弹框中
  @JsonKey(name: "is_auto_add")
  set isAutoAdd(bool? value); // 这个商品必选点的数量。还需点数量=must_num-selected_num
  @override
  @JsonKey(name: "must_num")
  int get mustNum; // 这个商品必选点的数量。还需点数量=must_num-selected_num
  @JsonKey(name: "must_num")
  set mustNum(int value); // 这个商品还需要点的数量。还需点数量=must_num-selected_num
  @override
  @JsonKey(name: "need_num")
  int get needNum; // 这个商品还需要点的数量。还需点数量=must_num-selected_num
  @JsonKey(name: "need_num")
  set needNum(int value); // 商品详情
  @override
  @JsonKey(name: "product")
  GoodsProduct get product; // 商品详情
  @JsonKey(name: "product")
  set product(GoodsProduct value); // 已选数量
  @override
  @JsonKey(name: "selected_num")
  int get selectedNum; // 已选数量
  @JsonKey(name: "selected_num")
  set selectedNum(int value);

  /// Create a copy of MustProducts
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MustProductsImplCopyWith<_$MustProductsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

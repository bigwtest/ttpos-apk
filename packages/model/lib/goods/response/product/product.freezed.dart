// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GoodsProduct _$GoodsProductFromJson(Map<String, dynamic> json) {
  return _GoodsProduct.fromJson(json);
}

/// @nodoc
mixin _$GoodsProduct {
// 商品属性组
  @JsonKey(name: "attribute_groups")
  BaseList<GoodsAttributeGroups> get attributeGroups =>
      throw _privateConstructorUsedError; // 商品属性组
  @JsonKey(name: "attribute_groups")
  set attributeGroups(BaseList<GoodsAttributeGroups> value) =>
      throw _privateConstructorUsedError; // 商品规格
  @JsonKey(name: "flavors")
  BaseList<GoodsFlavors> get flavors =>
      throw _privateConstructorUsedError; // 商品规格
  @JsonKey(name: "flavors")
  set flavors(BaseList<GoodsFlavors> value) =>
      throw _privateConstructorUsedError; // 商品图片
  @JsonKey(name: "image")
  String get image => throw _privateConstructorUsedError; // 商品图片
  @JsonKey(name: "image")
  set image(String value) => throw _privateConstructorUsedError; // 商品限购数量
  @JsonKey(name: "limit_num")
  int get limitNum => throw _privateConstructorUsedError; // 商品限购数量
  @JsonKey(name: "limit_num")
  set limitNum(int value) => throw _privateConstructorUsedError; // 商品名称
  @JsonKey(name: "locale_name")
  LocaleName get localeName => throw _privateConstructorUsedError; // 商品名称
  @JsonKey(name: "locale_name")
  set localeName(LocaleName value) =>
      throw _privateConstructorUsedError; // 商品价格
  @JsonKey(name: "price")
  SafetyNumber get price => throw _privateConstructorUsedError; // 商品价格
  @JsonKey(name: "price")
  set price(SafetyNumber value) => throw _privateConstructorUsedError; // 商品小料
  @JsonKey(name: "sauces")
  GoodsSaucesList get sauces => throw _privateConstructorUsedError; // 商品小料
  @JsonKey(name: "sauces")
  set sauces(GoodsSaucesList value) =>
      throw _privateConstructorUsedError; // 商品单位
  @JsonKey(name: "unit")
  LocaleName get unit => throw _privateConstructorUsedError; // 商品单位
  @JsonKey(name: "unit")
  set unit(LocaleName value) => throw _privateConstructorUsedError; // 商品UUID
  @JsonKey(name: "uuid")
  int get uuid => throw _privateConstructorUsedError; // 商品UUID
  @JsonKey(name: "uuid")
  set uuid(int value) => throw _privateConstructorUsedError; // 分类ID
  @JsonKey(name: "category_uuid")
  int? get categoryUuid => throw _privateConstructorUsedError; // 分类ID
  @JsonKey(name: "category_uuid")
  set categoryUuid(int? value) => throw _privateConstructorUsedError; // 一级分类
  @JsonKey(name: "first_category_uuid")
  int? get firstCategoryUuid => throw _privateConstructorUsedError; // 一级分类
  @JsonKey(name: "first_category_uuid")
  set firstCategoryUuid(int? value) =>
      throw _privateConstructorUsedError; // 特色分类ID
  @JsonKey(name: "special_category_uuid")
  int? get specialCategoryUuid => throw _privateConstructorUsedError; // 特色分类ID
  @JsonKey(name: "special_category_uuid")
  set specialCategoryUuid(int? value) =>
      throw _privateConstructorUsedError; // 卖点
  @JsonKey(name: "describe")
  String? get describe => throw _privateConstructorUsedError; // 卖点
  @JsonKey(name: "describe")
  set describe(String? value) => throw _privateConstructorUsedError; // 是不是自助餐商品
  @JsonKey(name: "is_buffet")
  bool? get isBuffet => throw _privateConstructorUsedError; // 是不是自助餐商品
  @JsonKey(name: "is_buffet")
  set isBuffet(bool? value) => throw _privateConstructorUsedError;

  /// Serializes this GoodsProduct to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GoodsProduct
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GoodsProductCopyWith<GoodsProduct> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GoodsProductCopyWith<$Res> {
  factory $GoodsProductCopyWith(
          GoodsProduct value, $Res Function(GoodsProduct) then) =
      _$GoodsProductCopyWithImpl<$Res, GoodsProduct>;
  @useResult
  $Res call(
      {@JsonKey(name: "attribute_groups")
      BaseList<GoodsAttributeGroups> attributeGroups,
      @JsonKey(name: "flavors") BaseList<GoodsFlavors> flavors,
      @JsonKey(name: "image") String image,
      @JsonKey(name: "limit_num") int limitNum,
      @JsonKey(name: "locale_name") LocaleName localeName,
      @JsonKey(name: "price") SafetyNumber price,
      @JsonKey(name: "sauces") GoodsSaucesList sauces,
      @JsonKey(name: "unit") LocaleName unit,
      @JsonKey(name: "uuid") int uuid,
      @JsonKey(name: "category_uuid") int? categoryUuid,
      @JsonKey(name: "first_category_uuid") int? firstCategoryUuid,
      @JsonKey(name: "special_category_uuid") int? specialCategoryUuid,
      @JsonKey(name: "describe") String? describe,
      @JsonKey(name: "is_buffet") bool? isBuffet});

  $BaseListCopyWith<GoodsAttributeGroups, $Res> get attributeGroups;
  $BaseListCopyWith<GoodsFlavors, $Res> get flavors;
  $LocaleNameCopyWith<$Res> get localeName;
  $SafetyNumberCopyWith<$Res> get price;
  $GoodsSaucesListCopyWith<$Res> get sauces;
  $LocaleNameCopyWith<$Res> get unit;
}

/// @nodoc
class _$GoodsProductCopyWithImpl<$Res, $Val extends GoodsProduct>
    implements $GoodsProductCopyWith<$Res> {
  _$GoodsProductCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GoodsProduct
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? attributeGroups = null,
    Object? flavors = null,
    Object? image = null,
    Object? limitNum = null,
    Object? localeName = null,
    Object? price = null,
    Object? sauces = null,
    Object? unit = null,
    Object? uuid = null,
    Object? categoryUuid = freezed,
    Object? firstCategoryUuid = freezed,
    Object? specialCategoryUuid = freezed,
    Object? describe = freezed,
    Object? isBuffet = freezed,
  }) {
    return _then(_value.copyWith(
      attributeGroups: null == attributeGroups
          ? _value.attributeGroups
          : attributeGroups // ignore: cast_nullable_to_non_nullable
              as BaseList<GoodsAttributeGroups>,
      flavors: null == flavors
          ? _value.flavors
          : flavors // ignore: cast_nullable_to_non_nullable
              as BaseList<GoodsFlavors>,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      limitNum: null == limitNum
          ? _value.limitNum
          : limitNum // ignore: cast_nullable_to_non_nullable
              as int,
      localeName: null == localeName
          ? _value.localeName
          : localeName // ignore: cast_nullable_to_non_nullable
              as LocaleName,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as SafetyNumber,
      sauces: null == sauces
          ? _value.sauces
          : sauces // ignore: cast_nullable_to_non_nullable
              as GoodsSaucesList,
      unit: null == unit
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as LocaleName,
      uuid: null == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as int,
      categoryUuid: freezed == categoryUuid
          ? _value.categoryUuid
          : categoryUuid // ignore: cast_nullable_to_non_nullable
              as int?,
      firstCategoryUuid: freezed == firstCategoryUuid
          ? _value.firstCategoryUuid
          : firstCategoryUuid // ignore: cast_nullable_to_non_nullable
              as int?,
      specialCategoryUuid: freezed == specialCategoryUuid
          ? _value.specialCategoryUuid
          : specialCategoryUuid // ignore: cast_nullable_to_non_nullable
              as int?,
      describe: freezed == describe
          ? _value.describe
          : describe // ignore: cast_nullable_to_non_nullable
              as String?,
      isBuffet: freezed == isBuffet
          ? _value.isBuffet
          : isBuffet // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }

  /// Create a copy of GoodsProduct
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BaseListCopyWith<GoodsAttributeGroups, $Res> get attributeGroups {
    return $BaseListCopyWith<GoodsAttributeGroups, $Res>(_value.attributeGroups,
        (value) {
      return _then(_value.copyWith(attributeGroups: value) as $Val);
    });
  }

  /// Create a copy of GoodsProduct
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BaseListCopyWith<GoodsFlavors, $Res> get flavors {
    return $BaseListCopyWith<GoodsFlavors, $Res>(_value.flavors, (value) {
      return _then(_value.copyWith(flavors: value) as $Val);
    });
  }

  /// Create a copy of GoodsProduct
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LocaleNameCopyWith<$Res> get localeName {
    return $LocaleNameCopyWith<$Res>(_value.localeName, (value) {
      return _then(_value.copyWith(localeName: value) as $Val);
    });
  }

  /// Create a copy of GoodsProduct
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SafetyNumberCopyWith<$Res> get price {
    return $SafetyNumberCopyWith<$Res>(_value.price, (value) {
      return _then(_value.copyWith(price: value) as $Val);
    });
  }

  /// Create a copy of GoodsProduct
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $GoodsSaucesListCopyWith<$Res> get sauces {
    return $GoodsSaucesListCopyWith<$Res>(_value.sauces, (value) {
      return _then(_value.copyWith(sauces: value) as $Val);
    });
  }

  /// Create a copy of GoodsProduct
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LocaleNameCopyWith<$Res> get unit {
    return $LocaleNameCopyWith<$Res>(_value.unit, (value) {
      return _then(_value.copyWith(unit: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$GoodsProductImplCopyWith<$Res>
    implements $GoodsProductCopyWith<$Res> {
  factory _$$GoodsProductImplCopyWith(
          _$GoodsProductImpl value, $Res Function(_$GoodsProductImpl) then) =
      __$$GoodsProductImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "attribute_groups")
      BaseList<GoodsAttributeGroups> attributeGroups,
      @JsonKey(name: "flavors") BaseList<GoodsFlavors> flavors,
      @JsonKey(name: "image") String image,
      @JsonKey(name: "limit_num") int limitNum,
      @JsonKey(name: "locale_name") LocaleName localeName,
      @JsonKey(name: "price") SafetyNumber price,
      @JsonKey(name: "sauces") GoodsSaucesList sauces,
      @JsonKey(name: "unit") LocaleName unit,
      @JsonKey(name: "uuid") int uuid,
      @JsonKey(name: "category_uuid") int? categoryUuid,
      @JsonKey(name: "first_category_uuid") int? firstCategoryUuid,
      @JsonKey(name: "special_category_uuid") int? specialCategoryUuid,
      @JsonKey(name: "describe") String? describe,
      @JsonKey(name: "is_buffet") bool? isBuffet});

  @override
  $BaseListCopyWith<GoodsAttributeGroups, $Res> get attributeGroups;
  @override
  $BaseListCopyWith<GoodsFlavors, $Res> get flavors;
  @override
  $LocaleNameCopyWith<$Res> get localeName;
  @override
  $SafetyNumberCopyWith<$Res> get price;
  @override
  $GoodsSaucesListCopyWith<$Res> get sauces;
  @override
  $LocaleNameCopyWith<$Res> get unit;
}

/// @nodoc
class __$$GoodsProductImplCopyWithImpl<$Res>
    extends _$GoodsProductCopyWithImpl<$Res, _$GoodsProductImpl>
    implements _$$GoodsProductImplCopyWith<$Res> {
  __$$GoodsProductImplCopyWithImpl(
      _$GoodsProductImpl _value, $Res Function(_$GoodsProductImpl) _then)
      : super(_value, _then);

  /// Create a copy of GoodsProduct
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? attributeGroups = null,
    Object? flavors = null,
    Object? image = null,
    Object? limitNum = null,
    Object? localeName = null,
    Object? price = null,
    Object? sauces = null,
    Object? unit = null,
    Object? uuid = null,
    Object? categoryUuid = freezed,
    Object? firstCategoryUuid = freezed,
    Object? specialCategoryUuid = freezed,
    Object? describe = freezed,
    Object? isBuffet = freezed,
  }) {
    return _then(_$GoodsProductImpl(
      attributeGroups: null == attributeGroups
          ? _value.attributeGroups
          : attributeGroups // ignore: cast_nullable_to_non_nullable
              as BaseList<GoodsAttributeGroups>,
      flavors: null == flavors
          ? _value.flavors
          : flavors // ignore: cast_nullable_to_non_nullable
              as BaseList<GoodsFlavors>,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      limitNum: null == limitNum
          ? _value.limitNum
          : limitNum // ignore: cast_nullable_to_non_nullable
              as int,
      localeName: null == localeName
          ? _value.localeName
          : localeName // ignore: cast_nullable_to_non_nullable
              as LocaleName,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as SafetyNumber,
      sauces: null == sauces
          ? _value.sauces
          : sauces // ignore: cast_nullable_to_non_nullable
              as GoodsSaucesList,
      unit: null == unit
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as LocaleName,
      uuid: null == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as int,
      categoryUuid: freezed == categoryUuid
          ? _value.categoryUuid
          : categoryUuid // ignore: cast_nullable_to_non_nullable
              as int?,
      firstCategoryUuid: freezed == firstCategoryUuid
          ? _value.firstCategoryUuid
          : firstCategoryUuid // ignore: cast_nullable_to_non_nullable
              as int?,
      specialCategoryUuid: freezed == specialCategoryUuid
          ? _value.specialCategoryUuid
          : specialCategoryUuid // ignore: cast_nullable_to_non_nullable
              as int?,
      describe: freezed == describe
          ? _value.describe
          : describe // ignore: cast_nullable_to_non_nullable
              as String?,
      isBuffet: freezed == isBuffet
          ? _value.isBuffet
          : isBuffet // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GoodsProductImpl with DiagnosticableTreeMixin implements _GoodsProduct {
  _$GoodsProductImpl(
      {@JsonKey(name: "attribute_groups") required this.attributeGroups,
      @JsonKey(name: "flavors") required this.flavors,
      @JsonKey(name: "image") required this.image,
      @JsonKey(name: "limit_num") required this.limitNum,
      @JsonKey(name: "locale_name") required this.localeName,
      @JsonKey(name: "price") required this.price,
      @JsonKey(name: "sauces") required this.sauces,
      @JsonKey(name: "unit") required this.unit,
      @JsonKey(name: "uuid") required this.uuid,
      @JsonKey(name: "category_uuid") this.categoryUuid,
      @JsonKey(name: "first_category_uuid") this.firstCategoryUuid,
      @JsonKey(name: "special_category_uuid") this.specialCategoryUuid,
      @JsonKey(name: "describe") this.describe,
      @JsonKey(name: "is_buffet") this.isBuffet});

  factory _$GoodsProductImpl.fromJson(Map<String, dynamic> json) =>
      _$$GoodsProductImplFromJson(json);

// 商品属性组
  @override
  @JsonKey(name: "attribute_groups")
  BaseList<GoodsAttributeGroups> attributeGroups;
// 商品规格
  @override
  @JsonKey(name: "flavors")
  BaseList<GoodsFlavors> flavors;
// 商品图片
  @override
  @JsonKey(name: "image")
  String image;
// 商品限购数量
  @override
  @JsonKey(name: "limit_num")
  int limitNum;
// 商品名称
  @override
  @JsonKey(name: "locale_name")
  LocaleName localeName;
// 商品价格
  @override
  @JsonKey(name: "price")
  SafetyNumber price;
// 商品小料
  @override
  @JsonKey(name: "sauces")
  GoodsSaucesList sauces;
// 商品单位
  @override
  @JsonKey(name: "unit")
  LocaleName unit;
// 商品UUID
  @override
  @JsonKey(name: "uuid")
  int uuid;
// 分类ID
  @override
  @JsonKey(name: "category_uuid")
  int? categoryUuid;
// 一级分类
  @override
  @JsonKey(name: "first_category_uuid")
  int? firstCategoryUuid;
// 特色分类ID
  @override
  @JsonKey(name: "special_category_uuid")
  int? specialCategoryUuid;
// 卖点
  @override
  @JsonKey(name: "describe")
  String? describe;
// 是不是自助餐商品
  @override
  @JsonKey(name: "is_buffet")
  bool? isBuffet;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'GoodsProduct(attributeGroups: $attributeGroups, flavors: $flavors, image: $image, limitNum: $limitNum, localeName: $localeName, price: $price, sauces: $sauces, unit: $unit, uuid: $uuid, categoryUuid: $categoryUuid, firstCategoryUuid: $firstCategoryUuid, specialCategoryUuid: $specialCategoryUuid, describe: $describe, isBuffet: $isBuffet)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'GoodsProduct'))
      ..add(DiagnosticsProperty('attributeGroups', attributeGroups))
      ..add(DiagnosticsProperty('flavors', flavors))
      ..add(DiagnosticsProperty('image', image))
      ..add(DiagnosticsProperty('limitNum', limitNum))
      ..add(DiagnosticsProperty('localeName', localeName))
      ..add(DiagnosticsProperty('price', price))
      ..add(DiagnosticsProperty('sauces', sauces))
      ..add(DiagnosticsProperty('unit', unit))
      ..add(DiagnosticsProperty('uuid', uuid))
      ..add(DiagnosticsProperty('categoryUuid', categoryUuid))
      ..add(DiagnosticsProperty('firstCategoryUuid', firstCategoryUuid))
      ..add(DiagnosticsProperty('specialCategoryUuid', specialCategoryUuid))
      ..add(DiagnosticsProperty('describe', describe))
      ..add(DiagnosticsProperty('isBuffet', isBuffet));
  }

  /// Create a copy of GoodsProduct
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GoodsProductImplCopyWith<_$GoodsProductImpl> get copyWith =>
      __$$GoodsProductImplCopyWithImpl<_$GoodsProductImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GoodsProductImplToJson(
      this,
    );
  }
}

abstract class _GoodsProduct implements GoodsProduct {
  factory _GoodsProduct(
      {@JsonKey(name: "attribute_groups")
      required BaseList<GoodsAttributeGroups> attributeGroups,
      @JsonKey(name: "flavors") required BaseList<GoodsFlavors> flavors,
      @JsonKey(name: "image") required String image,
      @JsonKey(name: "limit_num") required int limitNum,
      @JsonKey(name: "locale_name") required LocaleName localeName,
      @JsonKey(name: "price") required SafetyNumber price,
      @JsonKey(name: "sauces") required GoodsSaucesList sauces,
      @JsonKey(name: "unit") required LocaleName unit,
      @JsonKey(name: "uuid") required int uuid,
      @JsonKey(name: "category_uuid") int? categoryUuid,
      @JsonKey(name: "first_category_uuid") int? firstCategoryUuid,
      @JsonKey(name: "special_category_uuid") int? specialCategoryUuid,
      @JsonKey(name: "describe") String? describe,
      @JsonKey(name: "is_buffet") bool? isBuffet}) = _$GoodsProductImpl;

  factory _GoodsProduct.fromJson(Map<String, dynamic> json) =
      _$GoodsProductImpl.fromJson;

// 商品属性组
  @override
  @JsonKey(name: "attribute_groups")
  BaseList<GoodsAttributeGroups> get attributeGroups; // 商品属性组
  @JsonKey(name: "attribute_groups")
  set attributeGroups(BaseList<GoodsAttributeGroups> value); // 商品规格
  @override
  @JsonKey(name: "flavors")
  BaseList<GoodsFlavors> get flavors; // 商品规格
  @JsonKey(name: "flavors")
  set flavors(BaseList<GoodsFlavors> value); // 商品图片
  @override
  @JsonKey(name: "image")
  String get image; // 商品图片
  @JsonKey(name: "image")
  set image(String value); // 商品限购数量
  @override
  @JsonKey(name: "limit_num")
  int get limitNum; // 商品限购数量
  @JsonKey(name: "limit_num")
  set limitNum(int value); // 商品名称
  @override
  @JsonKey(name: "locale_name")
  LocaleName get localeName; // 商品名称
  @JsonKey(name: "locale_name")
  set localeName(LocaleName value); // 商品价格
  @override
  @JsonKey(name: "price")
  SafetyNumber get price; // 商品价格
  @JsonKey(name: "price")
  set price(SafetyNumber value); // 商品小料
  @override
  @JsonKey(name: "sauces")
  GoodsSaucesList get sauces; // 商品小料
  @JsonKey(name: "sauces")
  set sauces(GoodsSaucesList value); // 商品单位
  @override
  @JsonKey(name: "unit")
  LocaleName get unit; // 商品单位
  @JsonKey(name: "unit")
  set unit(LocaleName value); // 商品UUID
  @override
  @JsonKey(name: "uuid")
  int get uuid; // 商品UUID
  @JsonKey(name: "uuid")
  set uuid(int value); // 分类ID
  @override
  @JsonKey(name: "category_uuid")
  int? get categoryUuid; // 分类ID
  @JsonKey(name: "category_uuid")
  set categoryUuid(int? value); // 一级分类
  @override
  @JsonKey(name: "first_category_uuid")
  int? get firstCategoryUuid; // 一级分类
  @JsonKey(name: "first_category_uuid")
  set firstCategoryUuid(int? value); // 特色分类ID
  @override
  @JsonKey(name: "special_category_uuid")
  int? get specialCategoryUuid; // 特色分类ID
  @JsonKey(name: "special_category_uuid")
  set specialCategoryUuid(int? value); // 卖点
  @override
  @JsonKey(name: "describe")
  String? get describe; // 卖点
  @JsonKey(name: "describe")
  set describe(String? value); // 是不是自助餐商品
  @override
  @JsonKey(name: "is_buffet")
  bool? get isBuffet; // 是不是自助餐商品
  @JsonKey(name: "is_buffet")
  set isBuffet(bool? value);

  /// Create a copy of GoodsProduct
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GoodsProductImplCopyWith<_$GoodsProductImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

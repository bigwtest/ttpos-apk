// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'must_plan_product.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MustPlanProductWrapper _$MustPlanProductWrapperFromJson(
    Map<String, dynamic> json) {
  return _MustPlanProductWrapper.fromJson(json);
}

/// @nodoc
mixin _$MustPlanProductWrapper {
  @JsonKey(name: "is_auto_add")
  bool get isAutoAdd => throw _privateConstructorUsedError;
  @JsonKey(name: "must_num")
  int get mustNum => throw _privateConstructorUsedError;
  @JsonKey(name: "need_num")
  int get needNum => throw _privateConstructorUsedError;
  @JsonKey(name: "product")
  MustPlanProduct get product => throw _privateConstructorUsedError;

  /// Serializes this MustPlanProductWrapper to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MustPlanProductWrapper
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MustPlanProductWrapperCopyWith<MustPlanProductWrapper> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MustPlanProductWrapperCopyWith<$Res> {
  factory $MustPlanProductWrapperCopyWith(MustPlanProductWrapper value,
          $Res Function(MustPlanProductWrapper) then) =
      _$MustPlanProductWrapperCopyWithImpl<$Res, MustPlanProductWrapper>;
  @useResult
  $Res call(
      {@JsonKey(name: "is_auto_add") bool isAutoAdd,
      @JsonKey(name: "must_num") int mustNum,
      @JsonKey(name: "need_num") int needNum,
      @JsonKey(name: "product") MustPlanProduct product});

  $MustPlanProductCopyWith<$Res> get product;
}

/// @nodoc
class _$MustPlanProductWrapperCopyWithImpl<$Res,
        $Val extends MustPlanProductWrapper>
    implements $MustPlanProductWrapperCopyWith<$Res> {
  _$MustPlanProductWrapperCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MustPlanProductWrapper
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isAutoAdd = null,
    Object? mustNum = null,
    Object? needNum = null,
    Object? product = null,
  }) {
    return _then(_value.copyWith(
      isAutoAdd: null == isAutoAdd
          ? _value.isAutoAdd
          : isAutoAdd // ignore: cast_nullable_to_non_nullable
              as bool,
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
              as MustPlanProduct,
    ) as $Val);
  }

  /// Create a copy of MustPlanProductWrapper
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MustPlanProductCopyWith<$Res> get product {
    return $MustPlanProductCopyWith<$Res>(_value.product, (value) {
      return _then(_value.copyWith(product: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MustPlanProductWrapperImplCopyWith<$Res>
    implements $MustPlanProductWrapperCopyWith<$Res> {
  factory _$$MustPlanProductWrapperImplCopyWith(
          _$MustPlanProductWrapperImpl value,
          $Res Function(_$MustPlanProductWrapperImpl) then) =
      __$$MustPlanProductWrapperImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "is_auto_add") bool isAutoAdd,
      @JsonKey(name: "must_num") int mustNum,
      @JsonKey(name: "need_num") int needNum,
      @JsonKey(name: "product") MustPlanProduct product});

  @override
  $MustPlanProductCopyWith<$Res> get product;
}

/// @nodoc
class __$$MustPlanProductWrapperImplCopyWithImpl<$Res>
    extends _$MustPlanProductWrapperCopyWithImpl<$Res,
        _$MustPlanProductWrapperImpl>
    implements _$$MustPlanProductWrapperImplCopyWith<$Res> {
  __$$MustPlanProductWrapperImplCopyWithImpl(
      _$MustPlanProductWrapperImpl _value,
      $Res Function(_$MustPlanProductWrapperImpl) _then)
      : super(_value, _then);

  /// Create a copy of MustPlanProductWrapper
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isAutoAdd = null,
    Object? mustNum = null,
    Object? needNum = null,
    Object? product = null,
  }) {
    return _then(_$MustPlanProductWrapperImpl(
      isAutoAdd: null == isAutoAdd
          ? _value.isAutoAdd
          : isAutoAdd // ignore: cast_nullable_to_non_nullable
              as bool,
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
              as MustPlanProduct,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MustPlanProductWrapperImpl implements _MustPlanProductWrapper {
  const _$MustPlanProductWrapperImpl(
      {@JsonKey(name: "is_auto_add") required this.isAutoAdd,
      @JsonKey(name: "must_num") required this.mustNum,
      @JsonKey(name: "need_num") required this.needNum,
      @JsonKey(name: "product") required this.product});

  factory _$MustPlanProductWrapperImpl.fromJson(Map<String, dynamic> json) =>
      _$$MustPlanProductWrapperImplFromJson(json);

  @override
  @JsonKey(name: "is_auto_add")
  final bool isAutoAdd;
  @override
  @JsonKey(name: "must_num")
  final int mustNum;
  @override
  @JsonKey(name: "need_num")
  final int needNum;
  @override
  @JsonKey(name: "product")
  final MustPlanProduct product;

  @override
  String toString() {
    return 'MustPlanProductWrapper(isAutoAdd: $isAutoAdd, mustNum: $mustNum, needNum: $needNum, product: $product)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MustPlanProductWrapperImpl &&
            (identical(other.isAutoAdd, isAutoAdd) ||
                other.isAutoAdd == isAutoAdd) &&
            (identical(other.mustNum, mustNum) || other.mustNum == mustNum) &&
            (identical(other.needNum, needNum) || other.needNum == needNum) &&
            (identical(other.product, product) || other.product == product));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, isAutoAdd, mustNum, needNum, product);

  /// Create a copy of MustPlanProductWrapper
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MustPlanProductWrapperImplCopyWith<_$MustPlanProductWrapperImpl>
      get copyWith => __$$MustPlanProductWrapperImplCopyWithImpl<
          _$MustPlanProductWrapperImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MustPlanProductWrapperImplToJson(
      this,
    );
  }
}

abstract class _MustPlanProductWrapper implements MustPlanProductWrapper {
  const factory _MustPlanProductWrapper(
          {@JsonKey(name: "is_auto_add") required final bool isAutoAdd,
          @JsonKey(name: "must_num") required final int mustNum,
          @JsonKey(name: "need_num") required final int needNum,
          @JsonKey(name: "product") required final MustPlanProduct product}) =
      _$MustPlanProductWrapperImpl;

  factory _MustPlanProductWrapper.fromJson(Map<String, dynamic> json) =
      _$MustPlanProductWrapperImpl.fromJson;

  @override
  @JsonKey(name: "is_auto_add")
  bool get isAutoAdd;
  @override
  @JsonKey(name: "must_num")
  int get mustNum;
  @override
  @JsonKey(name: "need_num")
  int get needNum;
  @override
  @JsonKey(name: "product")
  MustPlanProduct get product;

  /// Create a copy of MustPlanProductWrapper
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MustPlanProductWrapperImplCopyWith<_$MustPlanProductWrapperImpl>
      get copyWith => throw _privateConstructorUsedError;
}

MustPlanProduct _$MustPlanProductFromJson(Map<String, dynamic> json) {
  return _MustPlanProduct.fromJson(json);
}

/// @nodoc
mixin _$MustPlanProduct {
  @JsonKey(name: "attribute_groups")
  BaseList<MustPlanProductAttributeGroup> get attributeGroups =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "flavors")
  BaseList<MustPlanProductFlavor> get flavors =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "image")
  String get image => throw _privateConstructorUsedError;
  @JsonKey(name: "limit_num")
  int get limitNum => throw _privateConstructorUsedError;
  @JsonKey(name: "locale_name")
  LocaleName get localeName => throw _privateConstructorUsedError;
  @JsonKey(name: "price")
  double get price => throw _privateConstructorUsedError;
  @JsonKey(name: "sauces")
  MustPlanSauces get sauces => throw _privateConstructorUsedError;
  @JsonKey(name: "unit")
  LocaleName get unit => throw _privateConstructorUsedError;
  @JsonKey(name: "uuid")
  int get uuid => throw _privateConstructorUsedError;

  /// Serializes this MustPlanProduct to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MustPlanProduct
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MustPlanProductCopyWith<MustPlanProduct> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MustPlanProductCopyWith<$Res> {
  factory $MustPlanProductCopyWith(
          MustPlanProduct value, $Res Function(MustPlanProduct) then) =
      _$MustPlanProductCopyWithImpl<$Res, MustPlanProduct>;
  @useResult
  $Res call(
      {@JsonKey(name: "attribute_groups")
      BaseList<MustPlanProductAttributeGroup> attributeGroups,
      @JsonKey(name: "flavors") BaseList<MustPlanProductFlavor> flavors,
      @JsonKey(name: "image") String image,
      @JsonKey(name: "limit_num") int limitNum,
      @JsonKey(name: "locale_name") LocaleName localeName,
      @JsonKey(name: "price") double price,
      @JsonKey(name: "sauces") MustPlanSauces sauces,
      @JsonKey(name: "unit") LocaleName unit,
      @JsonKey(name: "uuid") int uuid});

  $BaseListCopyWith<MustPlanProductAttributeGroup, $Res> get attributeGroups;
  $BaseListCopyWith<MustPlanProductFlavor, $Res> get flavors;
  $LocaleNameCopyWith<$Res> get localeName;
  $MustPlanSaucesCopyWith<$Res> get sauces;
  $LocaleNameCopyWith<$Res> get unit;
}

/// @nodoc
class _$MustPlanProductCopyWithImpl<$Res, $Val extends MustPlanProduct>
    implements $MustPlanProductCopyWith<$Res> {
  _$MustPlanProductCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MustPlanProduct
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
  }) {
    return _then(_value.copyWith(
      attributeGroups: null == attributeGroups
          ? _value.attributeGroups
          : attributeGroups // ignore: cast_nullable_to_non_nullable
              as BaseList<MustPlanProductAttributeGroup>,
      flavors: null == flavors
          ? _value.flavors
          : flavors // ignore: cast_nullable_to_non_nullable
              as BaseList<MustPlanProductFlavor>,
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
              as double,
      sauces: null == sauces
          ? _value.sauces
          : sauces // ignore: cast_nullable_to_non_nullable
              as MustPlanSauces,
      unit: null == unit
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as LocaleName,
      uuid: null == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }

  /// Create a copy of MustPlanProduct
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BaseListCopyWith<MustPlanProductAttributeGroup, $Res> get attributeGroups {
    return $BaseListCopyWith<MustPlanProductAttributeGroup, $Res>(
        _value.attributeGroups, (value) {
      return _then(_value.copyWith(attributeGroups: value) as $Val);
    });
  }

  /// Create a copy of MustPlanProduct
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BaseListCopyWith<MustPlanProductFlavor, $Res> get flavors {
    return $BaseListCopyWith<MustPlanProductFlavor, $Res>(_value.flavors,
        (value) {
      return _then(_value.copyWith(flavors: value) as $Val);
    });
  }

  /// Create a copy of MustPlanProduct
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LocaleNameCopyWith<$Res> get localeName {
    return $LocaleNameCopyWith<$Res>(_value.localeName, (value) {
      return _then(_value.copyWith(localeName: value) as $Val);
    });
  }

  /// Create a copy of MustPlanProduct
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MustPlanSaucesCopyWith<$Res> get sauces {
    return $MustPlanSaucesCopyWith<$Res>(_value.sauces, (value) {
      return _then(_value.copyWith(sauces: value) as $Val);
    });
  }

  /// Create a copy of MustPlanProduct
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
abstract class _$$MustPlanProductImplCopyWith<$Res>
    implements $MustPlanProductCopyWith<$Res> {
  factory _$$MustPlanProductImplCopyWith(_$MustPlanProductImpl value,
          $Res Function(_$MustPlanProductImpl) then) =
      __$$MustPlanProductImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "attribute_groups")
      BaseList<MustPlanProductAttributeGroup> attributeGroups,
      @JsonKey(name: "flavors") BaseList<MustPlanProductFlavor> flavors,
      @JsonKey(name: "image") String image,
      @JsonKey(name: "limit_num") int limitNum,
      @JsonKey(name: "locale_name") LocaleName localeName,
      @JsonKey(name: "price") double price,
      @JsonKey(name: "sauces") MustPlanSauces sauces,
      @JsonKey(name: "unit") LocaleName unit,
      @JsonKey(name: "uuid") int uuid});

  @override
  $BaseListCopyWith<MustPlanProductAttributeGroup, $Res> get attributeGroups;
  @override
  $BaseListCopyWith<MustPlanProductFlavor, $Res> get flavors;
  @override
  $LocaleNameCopyWith<$Res> get localeName;
  @override
  $MustPlanSaucesCopyWith<$Res> get sauces;
  @override
  $LocaleNameCopyWith<$Res> get unit;
}

/// @nodoc
class __$$MustPlanProductImplCopyWithImpl<$Res>
    extends _$MustPlanProductCopyWithImpl<$Res, _$MustPlanProductImpl>
    implements _$$MustPlanProductImplCopyWith<$Res> {
  __$$MustPlanProductImplCopyWithImpl(
      _$MustPlanProductImpl _value, $Res Function(_$MustPlanProductImpl) _then)
      : super(_value, _then);

  /// Create a copy of MustPlanProduct
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
  }) {
    return _then(_$MustPlanProductImpl(
      attributeGroups: null == attributeGroups
          ? _value.attributeGroups
          : attributeGroups // ignore: cast_nullable_to_non_nullable
              as BaseList<MustPlanProductAttributeGroup>,
      flavors: null == flavors
          ? _value.flavors
          : flavors // ignore: cast_nullable_to_non_nullable
              as BaseList<MustPlanProductFlavor>,
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
              as double,
      sauces: null == sauces
          ? _value.sauces
          : sauces // ignore: cast_nullable_to_non_nullable
              as MustPlanSauces,
      unit: null == unit
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as LocaleName,
      uuid: null == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MustPlanProductImpl implements _MustPlanProduct {
  const _$MustPlanProductImpl(
      {@JsonKey(name: "attribute_groups") required this.attributeGroups,
      @JsonKey(name: "flavors") required this.flavors,
      @JsonKey(name: "image") required this.image,
      @JsonKey(name: "limit_num") required this.limitNum,
      @JsonKey(name: "locale_name") required this.localeName,
      @JsonKey(name: "price") required this.price,
      @JsonKey(name: "sauces") required this.sauces,
      @JsonKey(name: "unit") required this.unit,
      @JsonKey(name: "uuid") required this.uuid});

  factory _$MustPlanProductImpl.fromJson(Map<String, dynamic> json) =>
      _$$MustPlanProductImplFromJson(json);

  @override
  @JsonKey(name: "attribute_groups")
  final BaseList<MustPlanProductAttributeGroup> attributeGroups;
  @override
  @JsonKey(name: "flavors")
  final BaseList<MustPlanProductFlavor> flavors;
  @override
  @JsonKey(name: "image")
  final String image;
  @override
  @JsonKey(name: "limit_num")
  final int limitNum;
  @override
  @JsonKey(name: "locale_name")
  final LocaleName localeName;
  @override
  @JsonKey(name: "price")
  final double price;
  @override
  @JsonKey(name: "sauces")
  final MustPlanSauces sauces;
  @override
  @JsonKey(name: "unit")
  final LocaleName unit;
  @override
  @JsonKey(name: "uuid")
  final int uuid;

  @override
  String toString() {
    return 'MustPlanProduct(attributeGroups: $attributeGroups, flavors: $flavors, image: $image, limitNum: $limitNum, localeName: $localeName, price: $price, sauces: $sauces, unit: $unit, uuid: $uuid)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MustPlanProductImpl &&
            (identical(other.attributeGroups, attributeGroups) ||
                other.attributeGroups == attributeGroups) &&
            (identical(other.flavors, flavors) || other.flavors == flavors) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.limitNum, limitNum) ||
                other.limitNum == limitNum) &&
            (identical(other.localeName, localeName) ||
                other.localeName == localeName) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.sauces, sauces) || other.sauces == sauces) &&
            (identical(other.unit, unit) || other.unit == unit) &&
            (identical(other.uuid, uuid) || other.uuid == uuid));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, attributeGroups, flavors, image,
      limitNum, localeName, price, sauces, unit, uuid);

  /// Create a copy of MustPlanProduct
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MustPlanProductImplCopyWith<_$MustPlanProductImpl> get copyWith =>
      __$$MustPlanProductImplCopyWithImpl<_$MustPlanProductImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MustPlanProductImplToJson(
      this,
    );
  }
}

abstract class _MustPlanProduct implements MustPlanProduct {
  const factory _MustPlanProduct(
      {@JsonKey(name: "attribute_groups")
      required final BaseList<MustPlanProductAttributeGroup> attributeGroups,
      @JsonKey(name: "flavors")
      required final BaseList<MustPlanProductFlavor> flavors,
      @JsonKey(name: "image") required final String image,
      @JsonKey(name: "limit_num") required final int limitNum,
      @JsonKey(name: "locale_name") required final LocaleName localeName,
      @JsonKey(name: "price") required final double price,
      @JsonKey(name: "sauces") required final MustPlanSauces sauces,
      @JsonKey(name: "unit") required final LocaleName unit,
      @JsonKey(name: "uuid") required final int uuid}) = _$MustPlanProductImpl;

  factory _MustPlanProduct.fromJson(Map<String, dynamic> json) =
      _$MustPlanProductImpl.fromJson;

  @override
  @JsonKey(name: "attribute_groups")
  BaseList<MustPlanProductAttributeGroup> get attributeGroups;
  @override
  @JsonKey(name: "flavors")
  BaseList<MustPlanProductFlavor> get flavors;
  @override
  @JsonKey(name: "image")
  String get image;
  @override
  @JsonKey(name: "limit_num")
  int get limitNum;
  @override
  @JsonKey(name: "locale_name")
  LocaleName get localeName;
  @override
  @JsonKey(name: "price")
  double get price;
  @override
  @JsonKey(name: "sauces")
  MustPlanSauces get sauces;
  @override
  @JsonKey(name: "unit")
  LocaleName get unit;
  @override
  @JsonKey(name: "uuid")
  int get uuid;

  /// Create a copy of MustPlanProduct
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MustPlanProductImplCopyWith<_$MustPlanProductImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MustPlanProductAttributeGroup _$MustPlanProductAttributeGroupFromJson(
    Map<String, dynamic> json) {
  return _MustPlanProductAttributeGroup.fromJson(json);
}

/// @nodoc
mixin _$MustPlanProductAttributeGroup {
  @JsonKey(name: "attributes")
  BaseList<MustPlanProductAttribute> get attributes =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "is_must")
  bool get isMust => throw _privateConstructorUsedError;
  @JsonKey(name: "locale_name")
  LocaleName get localeName => throw _privateConstructorUsedError;
  @JsonKey(name: "max_select")
  int get maxSelect => throw _privateConstructorUsedError;

  /// Serializes this MustPlanProductAttributeGroup to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MustPlanProductAttributeGroup
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MustPlanProductAttributeGroupCopyWith<MustPlanProductAttributeGroup>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MustPlanProductAttributeGroupCopyWith<$Res> {
  factory $MustPlanProductAttributeGroupCopyWith(
          MustPlanProductAttributeGroup value,
          $Res Function(MustPlanProductAttributeGroup) then) =
      _$MustPlanProductAttributeGroupCopyWithImpl<$Res,
          MustPlanProductAttributeGroup>;
  @useResult
  $Res call(
      {@JsonKey(name: "attributes")
      BaseList<MustPlanProductAttribute> attributes,
      @JsonKey(name: "is_must") bool isMust,
      @JsonKey(name: "locale_name") LocaleName localeName,
      @JsonKey(name: "max_select") int maxSelect});

  $BaseListCopyWith<MustPlanProductAttribute, $Res> get attributes;
  $LocaleNameCopyWith<$Res> get localeName;
}

/// @nodoc
class _$MustPlanProductAttributeGroupCopyWithImpl<$Res,
        $Val extends MustPlanProductAttributeGroup>
    implements $MustPlanProductAttributeGroupCopyWith<$Res> {
  _$MustPlanProductAttributeGroupCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MustPlanProductAttributeGroup
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? attributes = null,
    Object? isMust = null,
    Object? localeName = null,
    Object? maxSelect = null,
  }) {
    return _then(_value.copyWith(
      attributes: null == attributes
          ? _value.attributes
          : attributes // ignore: cast_nullable_to_non_nullable
              as BaseList<MustPlanProductAttribute>,
      isMust: null == isMust
          ? _value.isMust
          : isMust // ignore: cast_nullable_to_non_nullable
              as bool,
      localeName: null == localeName
          ? _value.localeName
          : localeName // ignore: cast_nullable_to_non_nullable
              as LocaleName,
      maxSelect: null == maxSelect
          ? _value.maxSelect
          : maxSelect // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }

  /// Create a copy of MustPlanProductAttributeGroup
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BaseListCopyWith<MustPlanProductAttribute, $Res> get attributes {
    return $BaseListCopyWith<MustPlanProductAttribute, $Res>(_value.attributes,
        (value) {
      return _then(_value.copyWith(attributes: value) as $Val);
    });
  }

  /// Create a copy of MustPlanProductAttributeGroup
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LocaleNameCopyWith<$Res> get localeName {
    return $LocaleNameCopyWith<$Res>(_value.localeName, (value) {
      return _then(_value.copyWith(localeName: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MustPlanProductAttributeGroupImplCopyWith<$Res>
    implements $MustPlanProductAttributeGroupCopyWith<$Res> {
  factory _$$MustPlanProductAttributeGroupImplCopyWith(
          _$MustPlanProductAttributeGroupImpl value,
          $Res Function(_$MustPlanProductAttributeGroupImpl) then) =
      __$$MustPlanProductAttributeGroupImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "attributes")
      BaseList<MustPlanProductAttribute> attributes,
      @JsonKey(name: "is_must") bool isMust,
      @JsonKey(name: "locale_name") LocaleName localeName,
      @JsonKey(name: "max_select") int maxSelect});

  @override
  $BaseListCopyWith<MustPlanProductAttribute, $Res> get attributes;
  @override
  $LocaleNameCopyWith<$Res> get localeName;
}

/// @nodoc
class __$$MustPlanProductAttributeGroupImplCopyWithImpl<$Res>
    extends _$MustPlanProductAttributeGroupCopyWithImpl<$Res,
        _$MustPlanProductAttributeGroupImpl>
    implements _$$MustPlanProductAttributeGroupImplCopyWith<$Res> {
  __$$MustPlanProductAttributeGroupImplCopyWithImpl(
      _$MustPlanProductAttributeGroupImpl _value,
      $Res Function(_$MustPlanProductAttributeGroupImpl) _then)
      : super(_value, _then);

  /// Create a copy of MustPlanProductAttributeGroup
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? attributes = null,
    Object? isMust = null,
    Object? localeName = null,
    Object? maxSelect = null,
  }) {
    return _then(_$MustPlanProductAttributeGroupImpl(
      attributes: null == attributes
          ? _value.attributes
          : attributes // ignore: cast_nullable_to_non_nullable
              as BaseList<MustPlanProductAttribute>,
      isMust: null == isMust
          ? _value.isMust
          : isMust // ignore: cast_nullable_to_non_nullable
              as bool,
      localeName: null == localeName
          ? _value.localeName
          : localeName // ignore: cast_nullable_to_non_nullable
              as LocaleName,
      maxSelect: null == maxSelect
          ? _value.maxSelect
          : maxSelect // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MustPlanProductAttributeGroupImpl
    implements _MustPlanProductAttributeGroup {
  const _$MustPlanProductAttributeGroupImpl(
      {@JsonKey(name: "attributes") required this.attributes,
      @JsonKey(name: "is_must") required this.isMust,
      @JsonKey(name: "locale_name") required this.localeName,
      @JsonKey(name: "max_select") required this.maxSelect});

  factory _$MustPlanProductAttributeGroupImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$MustPlanProductAttributeGroupImplFromJson(json);

  @override
  @JsonKey(name: "attributes")
  final BaseList<MustPlanProductAttribute> attributes;
  @override
  @JsonKey(name: "is_must")
  final bool isMust;
  @override
  @JsonKey(name: "locale_name")
  final LocaleName localeName;
  @override
  @JsonKey(name: "max_select")
  final int maxSelect;

  @override
  String toString() {
    return 'MustPlanProductAttributeGroup(attributes: $attributes, isMust: $isMust, localeName: $localeName, maxSelect: $maxSelect)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MustPlanProductAttributeGroupImpl &&
            (identical(other.attributes, attributes) ||
                other.attributes == attributes) &&
            (identical(other.isMust, isMust) || other.isMust == isMust) &&
            (identical(other.localeName, localeName) ||
                other.localeName == localeName) &&
            (identical(other.maxSelect, maxSelect) ||
                other.maxSelect == maxSelect));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, attributes, isMust, localeName, maxSelect);

  /// Create a copy of MustPlanProductAttributeGroup
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MustPlanProductAttributeGroupImplCopyWith<
          _$MustPlanProductAttributeGroupImpl>
      get copyWith => __$$MustPlanProductAttributeGroupImplCopyWithImpl<
          _$MustPlanProductAttributeGroupImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MustPlanProductAttributeGroupImplToJson(
      this,
    );
  }
}

abstract class _MustPlanProductAttributeGroup
    implements MustPlanProductAttributeGroup {
  const factory _MustPlanProductAttributeGroup(
          {@JsonKey(name: "attributes")
          required final BaseList<MustPlanProductAttribute> attributes,
          @JsonKey(name: "is_must") required final bool isMust,
          @JsonKey(name: "locale_name") required final LocaleName localeName,
          @JsonKey(name: "max_select") required final int maxSelect}) =
      _$MustPlanProductAttributeGroupImpl;

  factory _MustPlanProductAttributeGroup.fromJson(Map<String, dynamic> json) =
      _$MustPlanProductAttributeGroupImpl.fromJson;

  @override
  @JsonKey(name: "attributes")
  BaseList<MustPlanProductAttribute> get attributes;
  @override
  @JsonKey(name: "is_must")
  bool get isMust;
  @override
  @JsonKey(name: "locale_name")
  LocaleName get localeName;
  @override
  @JsonKey(name: "max_select")
  int get maxSelect;

  /// Create a copy of MustPlanProductAttributeGroup
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MustPlanProductAttributeGroupImplCopyWith<
          _$MustPlanProductAttributeGroupImpl>
      get copyWith => throw _privateConstructorUsedError;
}

MustPlanProductAttribute _$MustPlanProductAttributeFromJson(
    Map<String, dynamic> json) {
  return _MustPlanProductAttribute.fromJson(json);
}

/// @nodoc
mixin _$MustPlanProductAttribute {
  @JsonKey(name: "is_default_selected")
  bool get isDefaultSelected => throw _privateConstructorUsedError;
  @JsonKey(name: "locale_name")
  LocaleName get localeName => throw _privateConstructorUsedError;
  @JsonKey(name: "uuid")
  int get uuid => throw _privateConstructorUsedError;

  /// Serializes this MustPlanProductAttribute to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MustPlanProductAttribute
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MustPlanProductAttributeCopyWith<MustPlanProductAttribute> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MustPlanProductAttributeCopyWith<$Res> {
  factory $MustPlanProductAttributeCopyWith(MustPlanProductAttribute value,
          $Res Function(MustPlanProductAttribute) then) =
      _$MustPlanProductAttributeCopyWithImpl<$Res, MustPlanProductAttribute>;
  @useResult
  $Res call(
      {@JsonKey(name: "is_default_selected") bool isDefaultSelected,
      @JsonKey(name: "locale_name") LocaleName localeName,
      @JsonKey(name: "uuid") int uuid});

  $LocaleNameCopyWith<$Res> get localeName;
}

/// @nodoc
class _$MustPlanProductAttributeCopyWithImpl<$Res,
        $Val extends MustPlanProductAttribute>
    implements $MustPlanProductAttributeCopyWith<$Res> {
  _$MustPlanProductAttributeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MustPlanProductAttribute
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isDefaultSelected = null,
    Object? localeName = null,
    Object? uuid = null,
  }) {
    return _then(_value.copyWith(
      isDefaultSelected: null == isDefaultSelected
          ? _value.isDefaultSelected
          : isDefaultSelected // ignore: cast_nullable_to_non_nullable
              as bool,
      localeName: null == localeName
          ? _value.localeName
          : localeName // ignore: cast_nullable_to_non_nullable
              as LocaleName,
      uuid: null == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }

  /// Create a copy of MustPlanProductAttribute
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LocaleNameCopyWith<$Res> get localeName {
    return $LocaleNameCopyWith<$Res>(_value.localeName, (value) {
      return _then(_value.copyWith(localeName: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MustPlanProductAttributeImplCopyWith<$Res>
    implements $MustPlanProductAttributeCopyWith<$Res> {
  factory _$$MustPlanProductAttributeImplCopyWith(
          _$MustPlanProductAttributeImpl value,
          $Res Function(_$MustPlanProductAttributeImpl) then) =
      __$$MustPlanProductAttributeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "is_default_selected") bool isDefaultSelected,
      @JsonKey(name: "locale_name") LocaleName localeName,
      @JsonKey(name: "uuid") int uuid});

  @override
  $LocaleNameCopyWith<$Res> get localeName;
}

/// @nodoc
class __$$MustPlanProductAttributeImplCopyWithImpl<$Res>
    extends _$MustPlanProductAttributeCopyWithImpl<$Res,
        _$MustPlanProductAttributeImpl>
    implements _$$MustPlanProductAttributeImplCopyWith<$Res> {
  __$$MustPlanProductAttributeImplCopyWithImpl(
      _$MustPlanProductAttributeImpl _value,
      $Res Function(_$MustPlanProductAttributeImpl) _then)
      : super(_value, _then);

  /// Create a copy of MustPlanProductAttribute
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isDefaultSelected = null,
    Object? localeName = null,
    Object? uuid = null,
  }) {
    return _then(_$MustPlanProductAttributeImpl(
      isDefaultSelected: null == isDefaultSelected
          ? _value.isDefaultSelected
          : isDefaultSelected // ignore: cast_nullable_to_non_nullable
              as bool,
      localeName: null == localeName
          ? _value.localeName
          : localeName // ignore: cast_nullable_to_non_nullable
              as LocaleName,
      uuid: null == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MustPlanProductAttributeImpl implements _MustPlanProductAttribute {
  const _$MustPlanProductAttributeImpl(
      {@JsonKey(name: "is_default_selected") required this.isDefaultSelected,
      @JsonKey(name: "locale_name") required this.localeName,
      @JsonKey(name: "uuid") required this.uuid});

  factory _$MustPlanProductAttributeImpl.fromJson(Map<String, dynamic> json) =>
      _$$MustPlanProductAttributeImplFromJson(json);

  @override
  @JsonKey(name: "is_default_selected")
  final bool isDefaultSelected;
  @override
  @JsonKey(name: "locale_name")
  final LocaleName localeName;
  @override
  @JsonKey(name: "uuid")
  final int uuid;

  @override
  String toString() {
    return 'MustPlanProductAttribute(isDefaultSelected: $isDefaultSelected, localeName: $localeName, uuid: $uuid)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MustPlanProductAttributeImpl &&
            (identical(other.isDefaultSelected, isDefaultSelected) ||
                other.isDefaultSelected == isDefaultSelected) &&
            (identical(other.localeName, localeName) ||
                other.localeName == localeName) &&
            (identical(other.uuid, uuid) || other.uuid == uuid));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, isDefaultSelected, localeName, uuid);

  /// Create a copy of MustPlanProductAttribute
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MustPlanProductAttributeImplCopyWith<_$MustPlanProductAttributeImpl>
      get copyWith => __$$MustPlanProductAttributeImplCopyWithImpl<
          _$MustPlanProductAttributeImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MustPlanProductAttributeImplToJson(
      this,
    );
  }
}

abstract class _MustPlanProductAttribute implements MustPlanProductAttribute {
  const factory _MustPlanProductAttribute(
          {@JsonKey(name: "is_default_selected")
          required final bool isDefaultSelected,
          @JsonKey(name: "locale_name") required final LocaleName localeName,
          @JsonKey(name: "uuid") required final int uuid}) =
      _$MustPlanProductAttributeImpl;

  factory _MustPlanProductAttribute.fromJson(Map<String, dynamic> json) =
      _$MustPlanProductAttributeImpl.fromJson;

  @override
  @JsonKey(name: "is_default_selected")
  bool get isDefaultSelected;
  @override
  @JsonKey(name: "locale_name")
  LocaleName get localeName;
  @override
  @JsonKey(name: "uuid")
  int get uuid;

  /// Create a copy of MustPlanProductAttribute
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MustPlanProductAttributeImplCopyWith<_$MustPlanProductAttributeImpl>
      get copyWith => throw _privateConstructorUsedError;
}

MustPlanProductFlavor _$MustPlanProductFlavorFromJson(
    Map<String, dynamic> json) {
  return _MustPlanProductFlavor.fromJson(json);
}

/// @nodoc
mixin _$MustPlanProductFlavor {
  @JsonKey(name: "locale_name")
  LocaleName get localeName => throw _privateConstructorUsedError;
  @JsonKey(name: "price")
  double get price => throw _privateConstructorUsedError;
  @JsonKey(name: "stock_num")
  int get stockNum => throw _privateConstructorUsedError;
  @JsonKey(name: "uuid")
  int get uuid => throw _privateConstructorUsedError;

  /// Serializes this MustPlanProductFlavor to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MustPlanProductFlavor
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MustPlanProductFlavorCopyWith<MustPlanProductFlavor> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MustPlanProductFlavorCopyWith<$Res> {
  factory $MustPlanProductFlavorCopyWith(MustPlanProductFlavor value,
          $Res Function(MustPlanProductFlavor) then) =
      _$MustPlanProductFlavorCopyWithImpl<$Res, MustPlanProductFlavor>;
  @useResult
  $Res call(
      {@JsonKey(name: "locale_name") LocaleName localeName,
      @JsonKey(name: "price") double price,
      @JsonKey(name: "stock_num") int stockNum,
      @JsonKey(name: "uuid") int uuid});

  $LocaleNameCopyWith<$Res> get localeName;
}

/// @nodoc
class _$MustPlanProductFlavorCopyWithImpl<$Res,
        $Val extends MustPlanProductFlavor>
    implements $MustPlanProductFlavorCopyWith<$Res> {
  _$MustPlanProductFlavorCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MustPlanProductFlavor
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? localeName = null,
    Object? price = null,
    Object? stockNum = null,
    Object? uuid = null,
  }) {
    return _then(_value.copyWith(
      localeName: null == localeName
          ? _value.localeName
          : localeName // ignore: cast_nullable_to_non_nullable
              as LocaleName,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      stockNum: null == stockNum
          ? _value.stockNum
          : stockNum // ignore: cast_nullable_to_non_nullable
              as int,
      uuid: null == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }

  /// Create a copy of MustPlanProductFlavor
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LocaleNameCopyWith<$Res> get localeName {
    return $LocaleNameCopyWith<$Res>(_value.localeName, (value) {
      return _then(_value.copyWith(localeName: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MustPlanProductFlavorImplCopyWith<$Res>
    implements $MustPlanProductFlavorCopyWith<$Res> {
  factory _$$MustPlanProductFlavorImplCopyWith(
          _$MustPlanProductFlavorImpl value,
          $Res Function(_$MustPlanProductFlavorImpl) then) =
      __$$MustPlanProductFlavorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "locale_name") LocaleName localeName,
      @JsonKey(name: "price") double price,
      @JsonKey(name: "stock_num") int stockNum,
      @JsonKey(name: "uuid") int uuid});

  @override
  $LocaleNameCopyWith<$Res> get localeName;
}

/// @nodoc
class __$$MustPlanProductFlavorImplCopyWithImpl<$Res>
    extends _$MustPlanProductFlavorCopyWithImpl<$Res,
        _$MustPlanProductFlavorImpl>
    implements _$$MustPlanProductFlavorImplCopyWith<$Res> {
  __$$MustPlanProductFlavorImplCopyWithImpl(_$MustPlanProductFlavorImpl _value,
      $Res Function(_$MustPlanProductFlavorImpl) _then)
      : super(_value, _then);

  /// Create a copy of MustPlanProductFlavor
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? localeName = null,
    Object? price = null,
    Object? stockNum = null,
    Object? uuid = null,
  }) {
    return _then(_$MustPlanProductFlavorImpl(
      localeName: null == localeName
          ? _value.localeName
          : localeName // ignore: cast_nullable_to_non_nullable
              as LocaleName,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      stockNum: null == stockNum
          ? _value.stockNum
          : stockNum // ignore: cast_nullable_to_non_nullable
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
class _$MustPlanProductFlavorImpl implements _MustPlanProductFlavor {
  const _$MustPlanProductFlavorImpl(
      {@JsonKey(name: "locale_name") required this.localeName,
      @JsonKey(name: "price") required this.price,
      @JsonKey(name: "stock_num") required this.stockNum,
      @JsonKey(name: "uuid") required this.uuid});

  factory _$MustPlanProductFlavorImpl.fromJson(Map<String, dynamic> json) =>
      _$$MustPlanProductFlavorImplFromJson(json);

  @override
  @JsonKey(name: "locale_name")
  final LocaleName localeName;
  @override
  @JsonKey(name: "price")
  final double price;
  @override
  @JsonKey(name: "stock_num")
  final int stockNum;
  @override
  @JsonKey(name: "uuid")
  final int uuid;

  @override
  String toString() {
    return 'MustPlanProductFlavor(localeName: $localeName, price: $price, stockNum: $stockNum, uuid: $uuid)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MustPlanProductFlavorImpl &&
            (identical(other.localeName, localeName) ||
                other.localeName == localeName) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.stockNum, stockNum) ||
                other.stockNum == stockNum) &&
            (identical(other.uuid, uuid) || other.uuid == uuid));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, localeName, price, stockNum, uuid);

  /// Create a copy of MustPlanProductFlavor
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MustPlanProductFlavorImplCopyWith<_$MustPlanProductFlavorImpl>
      get copyWith => __$$MustPlanProductFlavorImplCopyWithImpl<
          _$MustPlanProductFlavorImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MustPlanProductFlavorImplToJson(
      this,
    );
  }
}

abstract class _MustPlanProductFlavor implements MustPlanProductFlavor {
  const factory _MustPlanProductFlavor(
          {@JsonKey(name: "locale_name") required final LocaleName localeName,
          @JsonKey(name: "price") required final double price,
          @JsonKey(name: "stock_num") required final int stockNum,
          @JsonKey(name: "uuid") required final int uuid}) =
      _$MustPlanProductFlavorImpl;

  factory _MustPlanProductFlavor.fromJson(Map<String, dynamic> json) =
      _$MustPlanProductFlavorImpl.fromJson;

  @override
  @JsonKey(name: "locale_name")
  LocaleName get localeName;
  @override
  @JsonKey(name: "price")
  double get price;
  @override
  @JsonKey(name: "stock_num")
  int get stockNum;
  @override
  @JsonKey(name: "uuid")
  int get uuid;

  /// Create a copy of MustPlanProductFlavor
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MustPlanProductFlavorImplCopyWith<_$MustPlanProductFlavorImpl>
      get copyWith => throw _privateConstructorUsedError;
}

MustPlanSauces _$MustPlanSaucesFromJson(Map<String, dynamic> json) {
  return _MustPlanSauces.fromJson(json);
}

/// @nodoc
mixin _$MustPlanSauces {
  @JsonKey(name: "is_must")
  bool get isMust => throw _privateConstructorUsedError;
  @JsonKey(name: "list")
  List<MustPlanProductSauce> get list => throw _privateConstructorUsedError;
  @JsonKey(name: "max_select")
  int get maxSelect => throw _privateConstructorUsedError;

  /// Serializes this MustPlanSauces to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MustPlanSauces
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MustPlanSaucesCopyWith<MustPlanSauces> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MustPlanSaucesCopyWith<$Res> {
  factory $MustPlanSaucesCopyWith(
          MustPlanSauces value, $Res Function(MustPlanSauces) then) =
      _$MustPlanSaucesCopyWithImpl<$Res, MustPlanSauces>;
  @useResult
  $Res call(
      {@JsonKey(name: "is_must") bool isMust,
      @JsonKey(name: "list") List<MustPlanProductSauce> list,
      @JsonKey(name: "max_select") int maxSelect});
}

/// @nodoc
class _$MustPlanSaucesCopyWithImpl<$Res, $Val extends MustPlanSauces>
    implements $MustPlanSaucesCopyWith<$Res> {
  _$MustPlanSaucesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MustPlanSauces
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isMust = null,
    Object? list = null,
    Object? maxSelect = null,
  }) {
    return _then(_value.copyWith(
      isMust: null == isMust
          ? _value.isMust
          : isMust // ignore: cast_nullable_to_non_nullable
              as bool,
      list: null == list
          ? _value.list
          : list // ignore: cast_nullable_to_non_nullable
              as List<MustPlanProductSauce>,
      maxSelect: null == maxSelect
          ? _value.maxSelect
          : maxSelect // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MustPlanSaucesImplCopyWith<$Res>
    implements $MustPlanSaucesCopyWith<$Res> {
  factory _$$MustPlanSaucesImplCopyWith(_$MustPlanSaucesImpl value,
          $Res Function(_$MustPlanSaucesImpl) then) =
      __$$MustPlanSaucesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "is_must") bool isMust,
      @JsonKey(name: "list") List<MustPlanProductSauce> list,
      @JsonKey(name: "max_select") int maxSelect});
}

/// @nodoc
class __$$MustPlanSaucesImplCopyWithImpl<$Res>
    extends _$MustPlanSaucesCopyWithImpl<$Res, _$MustPlanSaucesImpl>
    implements _$$MustPlanSaucesImplCopyWith<$Res> {
  __$$MustPlanSaucesImplCopyWithImpl(
      _$MustPlanSaucesImpl _value, $Res Function(_$MustPlanSaucesImpl) _then)
      : super(_value, _then);

  /// Create a copy of MustPlanSauces
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isMust = null,
    Object? list = null,
    Object? maxSelect = null,
  }) {
    return _then(_$MustPlanSaucesImpl(
      isMust: null == isMust
          ? _value.isMust
          : isMust // ignore: cast_nullable_to_non_nullable
              as bool,
      list: null == list
          ? _value._list
          : list // ignore: cast_nullable_to_non_nullable
              as List<MustPlanProductSauce>,
      maxSelect: null == maxSelect
          ? _value.maxSelect
          : maxSelect // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MustPlanSaucesImpl implements _MustPlanSauces {
  const _$MustPlanSaucesImpl(
      {@JsonKey(name: "is_must") required this.isMust,
      @JsonKey(name: "list") required final List<MustPlanProductSauce> list,
      @JsonKey(name: "max_select") required this.maxSelect})
      : _list = list;

  factory _$MustPlanSaucesImpl.fromJson(Map<String, dynamic> json) =>
      _$$MustPlanSaucesImplFromJson(json);

  @override
  @JsonKey(name: "is_must")
  final bool isMust;
  final List<MustPlanProductSauce> _list;
  @override
  @JsonKey(name: "list")
  List<MustPlanProductSauce> get list {
    if (_list is EqualUnmodifiableListView) return _list;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_list);
  }

  @override
  @JsonKey(name: "max_select")
  final int maxSelect;

  @override
  String toString() {
    return 'MustPlanSauces(isMust: $isMust, list: $list, maxSelect: $maxSelect)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MustPlanSaucesImpl &&
            (identical(other.isMust, isMust) || other.isMust == isMust) &&
            const DeepCollectionEquality().equals(other._list, _list) &&
            (identical(other.maxSelect, maxSelect) ||
                other.maxSelect == maxSelect));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, isMust,
      const DeepCollectionEquality().hash(_list), maxSelect);

  /// Create a copy of MustPlanSauces
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MustPlanSaucesImplCopyWith<_$MustPlanSaucesImpl> get copyWith =>
      __$$MustPlanSaucesImplCopyWithImpl<_$MustPlanSaucesImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MustPlanSaucesImplToJson(
      this,
    );
  }
}

abstract class _MustPlanSauces implements MustPlanSauces {
  const factory _MustPlanSauces(
          {@JsonKey(name: "is_must") required final bool isMust,
          @JsonKey(name: "list") required final List<MustPlanProductSauce> list,
          @JsonKey(name: "max_select") required final int maxSelect}) =
      _$MustPlanSaucesImpl;

  factory _MustPlanSauces.fromJson(Map<String, dynamic> json) =
      _$MustPlanSaucesImpl.fromJson;

  @override
  @JsonKey(name: "is_must")
  bool get isMust;
  @override
  @JsonKey(name: "list")
  List<MustPlanProductSauce> get list;
  @override
  @JsonKey(name: "max_select")
  int get maxSelect;

  /// Create a copy of MustPlanSauces
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MustPlanSaucesImplCopyWith<_$MustPlanSaucesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MustPlanProductSauce _$MustPlanProductSauceFromJson(Map<String, dynamic> json) {
  return _ProductSauce.fromJson(json);
}

/// @nodoc
mixin _$MustPlanProductSauce {
  @JsonKey(name: "is_default_selected")
  bool get isDefaultSelected => throw _privateConstructorUsedError;
  @JsonKey(name: "locale_name")
  LocaleName get localeName => throw _privateConstructorUsedError;
  @JsonKey(name: "price")
  double get price => throw _privateConstructorUsedError;
  @JsonKey(name: "stock_num")
  int get stockNum => throw _privateConstructorUsedError;
  @JsonKey(name: "uuid")
  int get uuid => throw _privateConstructorUsedError;

  /// Serializes this MustPlanProductSauce to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MustPlanProductSauce
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MustPlanProductSauceCopyWith<MustPlanProductSauce> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MustPlanProductSauceCopyWith<$Res> {
  factory $MustPlanProductSauceCopyWith(MustPlanProductSauce value,
          $Res Function(MustPlanProductSauce) then) =
      _$MustPlanProductSauceCopyWithImpl<$Res, MustPlanProductSauce>;
  @useResult
  $Res call(
      {@JsonKey(name: "is_default_selected") bool isDefaultSelected,
      @JsonKey(name: "locale_name") LocaleName localeName,
      @JsonKey(name: "price") double price,
      @JsonKey(name: "stock_num") int stockNum,
      @JsonKey(name: "uuid") int uuid});

  $LocaleNameCopyWith<$Res> get localeName;
}

/// @nodoc
class _$MustPlanProductSauceCopyWithImpl<$Res,
        $Val extends MustPlanProductSauce>
    implements $MustPlanProductSauceCopyWith<$Res> {
  _$MustPlanProductSauceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MustPlanProductSauce
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isDefaultSelected = null,
    Object? localeName = null,
    Object? price = null,
    Object? stockNum = null,
    Object? uuid = null,
  }) {
    return _then(_value.copyWith(
      isDefaultSelected: null == isDefaultSelected
          ? _value.isDefaultSelected
          : isDefaultSelected // ignore: cast_nullable_to_non_nullable
              as bool,
      localeName: null == localeName
          ? _value.localeName
          : localeName // ignore: cast_nullable_to_non_nullable
              as LocaleName,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      stockNum: null == stockNum
          ? _value.stockNum
          : stockNum // ignore: cast_nullable_to_non_nullable
              as int,
      uuid: null == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }

  /// Create a copy of MustPlanProductSauce
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LocaleNameCopyWith<$Res> get localeName {
    return $LocaleNameCopyWith<$Res>(_value.localeName, (value) {
      return _then(_value.copyWith(localeName: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ProductSauceImplCopyWith<$Res>
    implements $MustPlanProductSauceCopyWith<$Res> {
  factory _$$ProductSauceImplCopyWith(
          _$ProductSauceImpl value, $Res Function(_$ProductSauceImpl) then) =
      __$$ProductSauceImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "is_default_selected") bool isDefaultSelected,
      @JsonKey(name: "locale_name") LocaleName localeName,
      @JsonKey(name: "price") double price,
      @JsonKey(name: "stock_num") int stockNum,
      @JsonKey(name: "uuid") int uuid});

  @override
  $LocaleNameCopyWith<$Res> get localeName;
}

/// @nodoc
class __$$ProductSauceImplCopyWithImpl<$Res>
    extends _$MustPlanProductSauceCopyWithImpl<$Res, _$ProductSauceImpl>
    implements _$$ProductSauceImplCopyWith<$Res> {
  __$$ProductSauceImplCopyWithImpl(
      _$ProductSauceImpl _value, $Res Function(_$ProductSauceImpl) _then)
      : super(_value, _then);

  /// Create a copy of MustPlanProductSauce
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isDefaultSelected = null,
    Object? localeName = null,
    Object? price = null,
    Object? stockNum = null,
    Object? uuid = null,
  }) {
    return _then(_$ProductSauceImpl(
      isDefaultSelected: null == isDefaultSelected
          ? _value.isDefaultSelected
          : isDefaultSelected // ignore: cast_nullable_to_non_nullable
              as bool,
      localeName: null == localeName
          ? _value.localeName
          : localeName // ignore: cast_nullable_to_non_nullable
              as LocaleName,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      stockNum: null == stockNum
          ? _value.stockNum
          : stockNum // ignore: cast_nullable_to_non_nullable
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
class _$ProductSauceImpl implements _ProductSauce {
  const _$ProductSauceImpl(
      {@JsonKey(name: "is_default_selected") required this.isDefaultSelected,
      @JsonKey(name: "locale_name") required this.localeName,
      @JsonKey(name: "price") required this.price,
      @JsonKey(name: "stock_num") required this.stockNum,
      @JsonKey(name: "uuid") required this.uuid});

  factory _$ProductSauceImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductSauceImplFromJson(json);

  @override
  @JsonKey(name: "is_default_selected")
  final bool isDefaultSelected;
  @override
  @JsonKey(name: "locale_name")
  final LocaleName localeName;
  @override
  @JsonKey(name: "price")
  final double price;
  @override
  @JsonKey(name: "stock_num")
  final int stockNum;
  @override
  @JsonKey(name: "uuid")
  final int uuid;

  @override
  String toString() {
    return 'MustPlanProductSauce(isDefaultSelected: $isDefaultSelected, localeName: $localeName, price: $price, stockNum: $stockNum, uuid: $uuid)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductSauceImpl &&
            (identical(other.isDefaultSelected, isDefaultSelected) ||
                other.isDefaultSelected == isDefaultSelected) &&
            (identical(other.localeName, localeName) ||
                other.localeName == localeName) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.stockNum, stockNum) ||
                other.stockNum == stockNum) &&
            (identical(other.uuid, uuid) || other.uuid == uuid));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, isDefaultSelected, localeName, price, stockNum, uuid);

  /// Create a copy of MustPlanProductSauce
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductSauceImplCopyWith<_$ProductSauceImpl> get copyWith =>
      __$$ProductSauceImplCopyWithImpl<_$ProductSauceImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductSauceImplToJson(
      this,
    );
  }
}

abstract class _ProductSauce implements MustPlanProductSauce {
  const factory _ProductSauce(
      {@JsonKey(name: "is_default_selected")
      required final bool isDefaultSelected,
      @JsonKey(name: "locale_name") required final LocaleName localeName,
      @JsonKey(name: "price") required final double price,
      @JsonKey(name: "stock_num") required final int stockNum,
      @JsonKey(name: "uuid") required final int uuid}) = _$ProductSauceImpl;

  factory _ProductSauce.fromJson(Map<String, dynamic> json) =
      _$ProductSauceImpl.fromJson;

  @override
  @JsonKey(name: "is_default_selected")
  bool get isDefaultSelected;
  @override
  @JsonKey(name: "locale_name")
  LocaleName get localeName;
  @override
  @JsonKey(name: "price")
  double get price;
  @override
  @JsonKey(name: "stock_num")
  int get stockNum;
  @override
  @JsonKey(name: "uuid")
  int get uuid;

  /// Create a copy of MustPlanProductSauce
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductSauceImplCopyWith<_$ProductSauceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

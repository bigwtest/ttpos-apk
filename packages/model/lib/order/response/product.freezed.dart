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

Product _$ProductFromJson(Map<String, dynamic> json) {
  return _Product.fromJson(json);
}

/// @nodoc
mixin _$Product {
// 自助餐信息
  @JsonKey(name: "about_buffet")
  AboutBuffet get aboutBuffet => throw _privateConstructorUsedError; // 自助餐信息
  @JsonKey(name: "about_buffet")
  set aboutBuffet(AboutBuffet value) =>
      throw _privateConstructorUsedError; // 折扣价,折后。折扣价不等于原价时，前端要显示出折扣价。
  @JsonKey(name: "discount_price")
  double get discountPrice =>
      throw _privateConstructorUsedError; // 折扣价,折后。折扣价不等于原价时，前端要显示出折扣价。
  @JsonKey(name: "discount_price")
  set discountPrice(double value) =>
      throw _privateConstructorUsedError; // 制作完成数量
  @JsonKey(name: "finished_num")
  int? get finishedNum => throw _privateConstructorUsedError; // 制作完成数量
  @JsonKey(name: "finished_num")
  set finishedNum(int? value) => throw _privateConstructorUsedError; // 是否是自助餐
  @JsonKey(name: "is_buffet")
  bool get isBuffet => throw _privateConstructorUsedError; // 是否是自助餐
  @JsonKey(name: "is_buffet")
  set isBuffet(bool value) => throw _privateConstructorUsedError; // 是否退菜
  @JsonKey(name: "is_cancel")
  bool get isCancel => throw _privateConstructorUsedError; // 是否退菜
  @JsonKey(name: "is_cancel")
  set isCancel(bool value) => throw _privateConstructorUsedError; // 是否是赠菜
  @JsonKey(name: "is_gift")
  bool get isGift => throw _privateConstructorUsedError; // 是否是赠菜
  @JsonKey(name: "is_gift")
  set isGift(bool value) => throw _privateConstructorUsedError; // 是否必点
  @JsonKey(name: "is_must")
  bool get isMust => throw _privateConstructorUsedError; // 是否必点
  @JsonKey(name: "is_must")
  set isMust(bool value) => throw _privateConstructorUsedError; // 必点方案ID
  @JsonKey(name: 'must_plan_uuid')
  int get mustPlanUuid => throw _privateConstructorUsedError; // 必点方案ID
  @JsonKey(name: 'must_plan_uuid')
  set mustPlanUuid(int value) => throw _privateConstructorUsedError; // 商品属性
  @JsonKey(name: "locale_attribute_name")
  LocaleName get localeAttributeName =>
      throw _privateConstructorUsedError; // 商品属性
  @JsonKey(name: "locale_attribute_name")
  set localeAttributeName(LocaleName value) =>
      throw _privateConstructorUsedError; // 商品名称。商品名称、自助餐名称、自助餐加钟名称
  @JsonKey(name: "locale_name")
  LocaleName get localeName =>
      throw _privateConstructorUsedError; // 商品名称。商品名称、自助餐名称、自助餐加钟名称
  @JsonKey(name: "locale_name")
  set localeName(LocaleName value) => throw _privateConstructorUsedError; // 数量
  @JsonKey(name: "num")
  int get num => throw _privateConstructorUsedError; // 数量
  @JsonKey(name: "num")
  set num(int value) => throw _privateConstructorUsedError; // 原价
  @JsonKey(name: "price")
  double get price => throw _privateConstructorUsedError; // 原价
  @JsonKey(name: "price")
  set price(double value) => throw _privateConstructorUsedError; // 单价
  @JsonKey(name: "unit_price")
  double? get unitPrice => throw _privateConstructorUsedError; // 单价
  @JsonKey(name: "unit_price")
  set unitPrice(double? value) => throw _privateConstructorUsedError; // 备注
  @JsonKey(name: "remark")
  String get remark => throw _privateConstructorUsedError; // 备注
  @JsonKey(name: "remark")
  set remark(String value) =>
      throw _privateConstructorUsedError; // 0: 未送厨 1:已送厨 2:制作完成（出餐）
  @JsonKey(name: "status")
  int get status =>
      throw _privateConstructorUsedError; // 0: 未送厨 1:已送厨 2:制作完成（出餐）
  @JsonKey(name: "status")
  set status(int value) => throw _privateConstructorUsedError; // 商品uuid
  @JsonKey(name: "uuid")
  int get uuid => throw _privateConstructorUsedError; // 商品uuid
  @JsonKey(name: "uuid")
  set uuid(int value) => throw _privateConstructorUsedError; // 商品ID
  @JsonKey(name: "product_package_uuid")
  int? get productPackageUuid => throw _privateConstructorUsedError; // 商品ID
  @JsonKey(name: "product_package_uuid")
  set productPackageUuid(int? value) =>
      throw _privateConstructorUsedError; // 该商品是否显示在厨显
  @JsonKey(name: "is_show_kitchen")
  int? get isShowKitchen => throw _privateConstructorUsedError; // 该商品是否显示在厨显
  @JsonKey(name: "is_show_kitchen")
  set isShowKitchen(int? value) =>
      throw _privateConstructorUsedError; // 顾客可修改必点数量
  @JsonKey(name: "can_change_num")
  bool get canChangeNum => throw _privateConstructorUsedError; // 顾客可修改必点数量
  @JsonKey(name: "can_change_num")
  set canChangeNum(bool value) => throw _privateConstructorUsedError; // 商品限购数量
  @JsonKey(name: "limit_num")
  int? get limitNum => throw _privateConstructorUsedError; // 商品限购数量
  @JsonKey(name: "limit_num")
  set limitNum(int? value) => throw _privateConstructorUsedError;

  /// Serializes this Product to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Product
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductCopyWith<Product> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductCopyWith<$Res> {
  factory $ProductCopyWith(Product value, $Res Function(Product) then) =
      _$ProductCopyWithImpl<$Res, Product>;
  @useResult
  $Res call(
      {@JsonKey(name: "about_buffet") AboutBuffet aboutBuffet,
      @JsonKey(name: "discount_price") double discountPrice,
      @JsonKey(name: "finished_num") int? finishedNum,
      @JsonKey(name: "is_buffet") bool isBuffet,
      @JsonKey(name: "is_cancel") bool isCancel,
      @JsonKey(name: "is_gift") bool isGift,
      @JsonKey(name: "is_must") bool isMust,
      @JsonKey(name: 'must_plan_uuid') int mustPlanUuid,
      @JsonKey(name: "locale_attribute_name") LocaleName localeAttributeName,
      @JsonKey(name: "locale_name") LocaleName localeName,
      @JsonKey(name: "num") int num,
      @JsonKey(name: "price") double price,
      @JsonKey(name: "unit_price") double? unitPrice,
      @JsonKey(name: "remark") String remark,
      @JsonKey(name: "status") int status,
      @JsonKey(name: "uuid") int uuid,
      @JsonKey(name: "product_package_uuid") int? productPackageUuid,
      @JsonKey(name: "is_show_kitchen") int? isShowKitchen,
      @JsonKey(name: "can_change_num") bool canChangeNum,
      @JsonKey(name: "limit_num") int? limitNum});

  $AboutBuffetCopyWith<$Res> get aboutBuffet;
  $LocaleNameCopyWith<$Res> get localeAttributeName;
  $LocaleNameCopyWith<$Res> get localeName;
}

/// @nodoc
class _$ProductCopyWithImpl<$Res, $Val extends Product>
    implements $ProductCopyWith<$Res> {
  _$ProductCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Product
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? aboutBuffet = null,
    Object? discountPrice = null,
    Object? finishedNum = freezed,
    Object? isBuffet = null,
    Object? isCancel = null,
    Object? isGift = null,
    Object? isMust = null,
    Object? mustPlanUuid = null,
    Object? localeAttributeName = null,
    Object? localeName = null,
    Object? num = null,
    Object? price = null,
    Object? unitPrice = freezed,
    Object? remark = null,
    Object? status = null,
    Object? uuid = null,
    Object? productPackageUuid = freezed,
    Object? isShowKitchen = freezed,
    Object? canChangeNum = null,
    Object? limitNum = freezed,
  }) {
    return _then(_value.copyWith(
      aboutBuffet: null == aboutBuffet
          ? _value.aboutBuffet
          : aboutBuffet // ignore: cast_nullable_to_non_nullable
              as AboutBuffet,
      discountPrice: null == discountPrice
          ? _value.discountPrice
          : discountPrice // ignore: cast_nullable_to_non_nullable
              as double,
      finishedNum: freezed == finishedNum
          ? _value.finishedNum
          : finishedNum // ignore: cast_nullable_to_non_nullable
              as int?,
      isBuffet: null == isBuffet
          ? _value.isBuffet
          : isBuffet // ignore: cast_nullable_to_non_nullable
              as bool,
      isCancel: null == isCancel
          ? _value.isCancel
          : isCancel // ignore: cast_nullable_to_non_nullable
              as bool,
      isGift: null == isGift
          ? _value.isGift
          : isGift // ignore: cast_nullable_to_non_nullable
              as bool,
      isMust: null == isMust
          ? _value.isMust
          : isMust // ignore: cast_nullable_to_non_nullable
              as bool,
      mustPlanUuid: null == mustPlanUuid
          ? _value.mustPlanUuid
          : mustPlanUuid // ignore: cast_nullable_to_non_nullable
              as int,
      localeAttributeName: null == localeAttributeName
          ? _value.localeAttributeName
          : localeAttributeName // ignore: cast_nullable_to_non_nullable
              as LocaleName,
      localeName: null == localeName
          ? _value.localeName
          : localeName // ignore: cast_nullable_to_non_nullable
              as LocaleName,
      num: null == num
          ? _value.num
          : num // ignore: cast_nullable_to_non_nullable
              as int,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      unitPrice: freezed == unitPrice
          ? _value.unitPrice
          : unitPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      remark: null == remark
          ? _value.remark
          : remark // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
      uuid: null == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as int,
      productPackageUuid: freezed == productPackageUuid
          ? _value.productPackageUuid
          : productPackageUuid // ignore: cast_nullable_to_non_nullable
              as int?,
      isShowKitchen: freezed == isShowKitchen
          ? _value.isShowKitchen
          : isShowKitchen // ignore: cast_nullable_to_non_nullable
              as int?,
      canChangeNum: null == canChangeNum
          ? _value.canChangeNum
          : canChangeNum // ignore: cast_nullable_to_non_nullable
              as bool,
      limitNum: freezed == limitNum
          ? _value.limitNum
          : limitNum // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }

  /// Create a copy of Product
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AboutBuffetCopyWith<$Res> get aboutBuffet {
    return $AboutBuffetCopyWith<$Res>(_value.aboutBuffet, (value) {
      return _then(_value.copyWith(aboutBuffet: value) as $Val);
    });
  }

  /// Create a copy of Product
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LocaleNameCopyWith<$Res> get localeAttributeName {
    return $LocaleNameCopyWith<$Res>(_value.localeAttributeName, (value) {
      return _then(_value.copyWith(localeAttributeName: value) as $Val);
    });
  }

  /// Create a copy of Product
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
abstract class _$$ProductImplCopyWith<$Res> implements $ProductCopyWith<$Res> {
  factory _$$ProductImplCopyWith(
          _$ProductImpl value, $Res Function(_$ProductImpl) then) =
      __$$ProductImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "about_buffet") AboutBuffet aboutBuffet,
      @JsonKey(name: "discount_price") double discountPrice,
      @JsonKey(name: "finished_num") int? finishedNum,
      @JsonKey(name: "is_buffet") bool isBuffet,
      @JsonKey(name: "is_cancel") bool isCancel,
      @JsonKey(name: "is_gift") bool isGift,
      @JsonKey(name: "is_must") bool isMust,
      @JsonKey(name: 'must_plan_uuid') int mustPlanUuid,
      @JsonKey(name: "locale_attribute_name") LocaleName localeAttributeName,
      @JsonKey(name: "locale_name") LocaleName localeName,
      @JsonKey(name: "num") int num,
      @JsonKey(name: "price") double price,
      @JsonKey(name: "unit_price") double? unitPrice,
      @JsonKey(name: "remark") String remark,
      @JsonKey(name: "status") int status,
      @JsonKey(name: "uuid") int uuid,
      @JsonKey(name: "product_package_uuid") int? productPackageUuid,
      @JsonKey(name: "is_show_kitchen") int? isShowKitchen,
      @JsonKey(name: "can_change_num") bool canChangeNum,
      @JsonKey(name: "limit_num") int? limitNum});

  @override
  $AboutBuffetCopyWith<$Res> get aboutBuffet;
  @override
  $LocaleNameCopyWith<$Res> get localeAttributeName;
  @override
  $LocaleNameCopyWith<$Res> get localeName;
}

/// @nodoc
class __$$ProductImplCopyWithImpl<$Res>
    extends _$ProductCopyWithImpl<$Res, _$ProductImpl>
    implements _$$ProductImplCopyWith<$Res> {
  __$$ProductImplCopyWithImpl(
      _$ProductImpl _value, $Res Function(_$ProductImpl) _then)
      : super(_value, _then);

  /// Create a copy of Product
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? aboutBuffet = null,
    Object? discountPrice = null,
    Object? finishedNum = freezed,
    Object? isBuffet = null,
    Object? isCancel = null,
    Object? isGift = null,
    Object? isMust = null,
    Object? mustPlanUuid = null,
    Object? localeAttributeName = null,
    Object? localeName = null,
    Object? num = null,
    Object? price = null,
    Object? unitPrice = freezed,
    Object? remark = null,
    Object? status = null,
    Object? uuid = null,
    Object? productPackageUuid = freezed,
    Object? isShowKitchen = freezed,
    Object? canChangeNum = null,
    Object? limitNum = freezed,
  }) {
    return _then(_$ProductImpl(
      aboutBuffet: null == aboutBuffet
          ? _value.aboutBuffet
          : aboutBuffet // ignore: cast_nullable_to_non_nullable
              as AboutBuffet,
      discountPrice: null == discountPrice
          ? _value.discountPrice
          : discountPrice // ignore: cast_nullable_to_non_nullable
              as double,
      finishedNum: freezed == finishedNum
          ? _value.finishedNum
          : finishedNum // ignore: cast_nullable_to_non_nullable
              as int?,
      isBuffet: null == isBuffet
          ? _value.isBuffet
          : isBuffet // ignore: cast_nullable_to_non_nullable
              as bool,
      isCancel: null == isCancel
          ? _value.isCancel
          : isCancel // ignore: cast_nullable_to_non_nullable
              as bool,
      isGift: null == isGift
          ? _value.isGift
          : isGift // ignore: cast_nullable_to_non_nullable
              as bool,
      isMust: null == isMust
          ? _value.isMust
          : isMust // ignore: cast_nullable_to_non_nullable
              as bool,
      mustPlanUuid: null == mustPlanUuid
          ? _value.mustPlanUuid
          : mustPlanUuid // ignore: cast_nullable_to_non_nullable
              as int,
      localeAttributeName: null == localeAttributeName
          ? _value.localeAttributeName
          : localeAttributeName // ignore: cast_nullable_to_non_nullable
              as LocaleName,
      localeName: null == localeName
          ? _value.localeName
          : localeName // ignore: cast_nullable_to_non_nullable
              as LocaleName,
      num: null == num
          ? _value.num
          : num // ignore: cast_nullable_to_non_nullable
              as int,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      unitPrice: freezed == unitPrice
          ? _value.unitPrice
          : unitPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      remark: null == remark
          ? _value.remark
          : remark // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
      uuid: null == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as int,
      productPackageUuid: freezed == productPackageUuid
          ? _value.productPackageUuid
          : productPackageUuid // ignore: cast_nullable_to_non_nullable
              as int?,
      isShowKitchen: freezed == isShowKitchen
          ? _value.isShowKitchen
          : isShowKitchen // ignore: cast_nullable_to_non_nullable
              as int?,
      canChangeNum: null == canChangeNum
          ? _value.canChangeNum
          : canChangeNum // ignore: cast_nullable_to_non_nullable
              as bool,
      limitNum: freezed == limitNum
          ? _value.limitNum
          : limitNum // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductImpl implements _Product {
  _$ProductImpl(
      {@JsonKey(name: "about_buffet") required this.aboutBuffet,
      @JsonKey(name: "discount_price") required this.discountPrice,
      @JsonKey(name: "finished_num") this.finishedNum,
      @JsonKey(name: "is_buffet") required this.isBuffet,
      @JsonKey(name: "is_cancel") required this.isCancel,
      @JsonKey(name: "is_gift") required this.isGift,
      @JsonKey(name: "is_must") required this.isMust,
      @JsonKey(name: 'must_plan_uuid') this.mustPlanUuid = 0,
      @JsonKey(name: "locale_attribute_name") required this.localeAttributeName,
      @JsonKey(name: "locale_name") required this.localeName,
      @JsonKey(name: "num") required this.num,
      @JsonKey(name: "price") required this.price,
      @JsonKey(name: "unit_price") this.unitPrice,
      @JsonKey(name: "remark") required this.remark,
      @JsonKey(name: "status") required this.status,
      @JsonKey(name: "uuid") required this.uuid,
      @JsonKey(name: "product_package_uuid") this.productPackageUuid,
      @JsonKey(name: "is_show_kitchen") this.isShowKitchen,
      @JsonKey(name: "can_change_num") this.canChangeNum = true,
      @JsonKey(name: "limit_num") this.limitNum});

  factory _$ProductImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductImplFromJson(json);

// 自助餐信息
  @override
  @JsonKey(name: "about_buffet")
  AboutBuffet aboutBuffet;
// 折扣价,折后。折扣价不等于原价时，前端要显示出折扣价。
  @override
  @JsonKey(name: "discount_price")
  double discountPrice;
// 制作完成数量
  @override
  @JsonKey(name: "finished_num")
  int? finishedNum;
// 是否是自助餐
  @override
  @JsonKey(name: "is_buffet")
  bool isBuffet;
// 是否退菜
  @override
  @JsonKey(name: "is_cancel")
  bool isCancel;
// 是否是赠菜
  @override
  @JsonKey(name: "is_gift")
  bool isGift;
// 是否必点
  @override
  @JsonKey(name: "is_must")
  bool isMust;
// 必点方案ID
  @override
  @JsonKey(name: 'must_plan_uuid')
  int mustPlanUuid;
// 商品属性
  @override
  @JsonKey(name: "locale_attribute_name")
  LocaleName localeAttributeName;
// 商品名称。商品名称、自助餐名称、自助餐加钟名称
  @override
  @JsonKey(name: "locale_name")
  LocaleName localeName;
// 数量
  @override
  @JsonKey(name: "num")
  int num;
// 原价
  @override
  @JsonKey(name: "price")
  double price;
// 单价
  @override
  @JsonKey(name: "unit_price")
  double? unitPrice;
// 备注
  @override
  @JsonKey(name: "remark")
  String remark;
// 0: 未送厨 1:已送厨 2:制作完成（出餐）
  @override
  @JsonKey(name: "status")
  int status;
// 商品uuid
  @override
  @JsonKey(name: "uuid")
  int uuid;
// 商品ID
  @override
  @JsonKey(name: "product_package_uuid")
  int? productPackageUuid;
// 该商品是否显示在厨显
  @override
  @JsonKey(name: "is_show_kitchen")
  int? isShowKitchen;
// 顾客可修改必点数量
  @override
  @JsonKey(name: "can_change_num")
  bool canChangeNum;
// 商品限购数量
  @override
  @JsonKey(name: "limit_num")
  int? limitNum;

  @override
  String toString() {
    return 'Product(aboutBuffet: $aboutBuffet, discountPrice: $discountPrice, finishedNum: $finishedNum, isBuffet: $isBuffet, isCancel: $isCancel, isGift: $isGift, isMust: $isMust, mustPlanUuid: $mustPlanUuid, localeAttributeName: $localeAttributeName, localeName: $localeName, num: $num, price: $price, unitPrice: $unitPrice, remark: $remark, status: $status, uuid: $uuid, productPackageUuid: $productPackageUuid, isShowKitchen: $isShowKitchen, canChangeNum: $canChangeNum, limitNum: $limitNum)';
  }

  /// Create a copy of Product
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductImplCopyWith<_$ProductImpl> get copyWith =>
      __$$ProductImplCopyWithImpl<_$ProductImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductImplToJson(
      this,
    );
  }
}

abstract class _Product implements Product {
  factory _Product(
      {@JsonKey(name: "about_buffet") required AboutBuffet aboutBuffet,
      @JsonKey(name: "discount_price") required double discountPrice,
      @JsonKey(name: "finished_num") int? finishedNum,
      @JsonKey(name: "is_buffet") required bool isBuffet,
      @JsonKey(name: "is_cancel") required bool isCancel,
      @JsonKey(name: "is_gift") required bool isGift,
      @JsonKey(name: "is_must") required bool isMust,
      @JsonKey(name: 'must_plan_uuid') int mustPlanUuid,
      @JsonKey(name: "locale_attribute_name")
      required LocaleName localeAttributeName,
      @JsonKey(name: "locale_name") required LocaleName localeName,
      @JsonKey(name: "num") required int num,
      @JsonKey(name: "price") required double price,
      @JsonKey(name: "unit_price") double? unitPrice,
      @JsonKey(name: "remark") required String remark,
      @JsonKey(name: "status") required int status,
      @JsonKey(name: "uuid") required int uuid,
      @JsonKey(name: "product_package_uuid") int? productPackageUuid,
      @JsonKey(name: "is_show_kitchen") int? isShowKitchen,
      @JsonKey(name: "can_change_num") bool canChangeNum,
      @JsonKey(name: "limit_num") int? limitNum}) = _$ProductImpl;

  factory _Product.fromJson(Map<String, dynamic> json) = _$ProductImpl.fromJson;

// 自助餐信息
  @override
  @JsonKey(name: "about_buffet")
  AboutBuffet get aboutBuffet; // 自助餐信息
  @JsonKey(name: "about_buffet")
  set aboutBuffet(AboutBuffet value); // 折扣价,折后。折扣价不等于原价时，前端要显示出折扣价。
  @override
  @JsonKey(name: "discount_price")
  double get discountPrice; // 折扣价,折后。折扣价不等于原价时，前端要显示出折扣价。
  @JsonKey(name: "discount_price")
  set discountPrice(double value); // 制作完成数量
  @override
  @JsonKey(name: "finished_num")
  int? get finishedNum; // 制作完成数量
  @JsonKey(name: "finished_num")
  set finishedNum(int? value); // 是否是自助餐
  @override
  @JsonKey(name: "is_buffet")
  bool get isBuffet; // 是否是自助餐
  @JsonKey(name: "is_buffet")
  set isBuffet(bool value); // 是否退菜
  @override
  @JsonKey(name: "is_cancel")
  bool get isCancel; // 是否退菜
  @JsonKey(name: "is_cancel")
  set isCancel(bool value); // 是否是赠菜
  @override
  @JsonKey(name: "is_gift")
  bool get isGift; // 是否是赠菜
  @JsonKey(name: "is_gift")
  set isGift(bool value); // 是否必点
  @override
  @JsonKey(name: "is_must")
  bool get isMust; // 是否必点
  @JsonKey(name: "is_must")
  set isMust(bool value); // 必点方案ID
  @override
  @JsonKey(name: 'must_plan_uuid')
  int get mustPlanUuid; // 必点方案ID
  @JsonKey(name: 'must_plan_uuid')
  set mustPlanUuid(int value); // 商品属性
  @override
  @JsonKey(name: "locale_attribute_name")
  LocaleName get localeAttributeName; // 商品属性
  @JsonKey(name: "locale_attribute_name")
  set localeAttributeName(LocaleName value); // 商品名称。商品名称、自助餐名称、自助餐加钟名称
  @override
  @JsonKey(name: "locale_name")
  LocaleName get localeName; // 商品名称。商品名称、自助餐名称、自助餐加钟名称
  @JsonKey(name: "locale_name")
  set localeName(LocaleName value); // 数量
  @override
  @JsonKey(name: "num")
  int get num; // 数量
  @JsonKey(name: "num")
  set num(int value); // 原价
  @override
  @JsonKey(name: "price")
  double get price; // 原价
  @JsonKey(name: "price")
  set price(double value); // 单价
  @override
  @JsonKey(name: "unit_price")
  double? get unitPrice; // 单价
  @JsonKey(name: "unit_price")
  set unitPrice(double? value); // 备注
  @override
  @JsonKey(name: "remark")
  String get remark; // 备注
  @JsonKey(name: "remark")
  set remark(String value); // 0: 未送厨 1:已送厨 2:制作完成（出餐）
  @override
  @JsonKey(name: "status")
  int get status; // 0: 未送厨 1:已送厨 2:制作完成（出餐）
  @JsonKey(name: "status")
  set status(int value); // 商品uuid
  @override
  @JsonKey(name: "uuid")
  int get uuid; // 商品uuid
  @JsonKey(name: "uuid")
  set uuid(int value); // 商品ID
  @override
  @JsonKey(name: "product_package_uuid")
  int? get productPackageUuid; // 商品ID
  @JsonKey(name: "product_package_uuid")
  set productPackageUuid(int? value); // 该商品是否显示在厨显
  @override
  @JsonKey(name: "is_show_kitchen")
  int? get isShowKitchen; // 该商品是否显示在厨显
  @JsonKey(name: "is_show_kitchen")
  set isShowKitchen(int? value); // 顾客可修改必点数量
  @override
  @JsonKey(name: "can_change_num")
  bool get canChangeNum; // 顾客可修改必点数量
  @JsonKey(name: "can_change_num")
  set canChangeNum(bool value); // 商品限购数量
  @override
  @JsonKey(name: "limit_num")
  int? get limitNum; // 商品限购数量
  @JsonKey(name: "limit_num")
  set limitNum(int? value);

  /// Create a copy of Product
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductImplCopyWith<_$ProductImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AboutBuffet _$AboutBuffetFromJson(Map<String, dynamic> json) {
  return _AboutBuffet.fromJson(json);
}

/// @nodoc
mixin _$AboutBuffet {
// 自助餐Id
  @JsonKey(name: "buffet_uuid")
  int get buffetUuid => throw _privateConstructorUsedError; // 自助餐顾客类型uuid
  @JsonKey(name: "customer_type_uuid")
  int get customerTypeUuid => throw _privateConstructorUsedError; // 是否是自助餐顾客
  @JsonKey(name: "is_customer")
  bool get isCustomer => throw _privateConstructorUsedError; // 是否是加钟
  @JsonKey(name: "is_delay")
  bool get isDelay => throw _privateConstructorUsedError;

  /// Serializes this AboutBuffet to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AboutBuffet
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AboutBuffetCopyWith<AboutBuffet> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AboutBuffetCopyWith<$Res> {
  factory $AboutBuffetCopyWith(
          AboutBuffet value, $Res Function(AboutBuffet) then) =
      _$AboutBuffetCopyWithImpl<$Res, AboutBuffet>;
  @useResult
  $Res call(
      {@JsonKey(name: "buffet_uuid") int buffetUuid,
      @JsonKey(name: "customer_type_uuid") int customerTypeUuid,
      @JsonKey(name: "is_customer") bool isCustomer,
      @JsonKey(name: "is_delay") bool isDelay});
}

/// @nodoc
class _$AboutBuffetCopyWithImpl<$Res, $Val extends AboutBuffet>
    implements $AboutBuffetCopyWith<$Res> {
  _$AboutBuffetCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AboutBuffet
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? buffetUuid = null,
    Object? customerTypeUuid = null,
    Object? isCustomer = null,
    Object? isDelay = null,
  }) {
    return _then(_value.copyWith(
      buffetUuid: null == buffetUuid
          ? _value.buffetUuid
          : buffetUuid // ignore: cast_nullable_to_non_nullable
              as int,
      customerTypeUuid: null == customerTypeUuid
          ? _value.customerTypeUuid
          : customerTypeUuid // ignore: cast_nullable_to_non_nullable
              as int,
      isCustomer: null == isCustomer
          ? _value.isCustomer
          : isCustomer // ignore: cast_nullable_to_non_nullable
              as bool,
      isDelay: null == isDelay
          ? _value.isDelay
          : isDelay // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AboutBuffetImplCopyWith<$Res>
    implements $AboutBuffetCopyWith<$Res> {
  factory _$$AboutBuffetImplCopyWith(
          _$AboutBuffetImpl value, $Res Function(_$AboutBuffetImpl) then) =
      __$$AboutBuffetImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "buffet_uuid") int buffetUuid,
      @JsonKey(name: "customer_type_uuid") int customerTypeUuid,
      @JsonKey(name: "is_customer") bool isCustomer,
      @JsonKey(name: "is_delay") bool isDelay});
}

/// @nodoc
class __$$AboutBuffetImplCopyWithImpl<$Res>
    extends _$AboutBuffetCopyWithImpl<$Res, _$AboutBuffetImpl>
    implements _$$AboutBuffetImplCopyWith<$Res> {
  __$$AboutBuffetImplCopyWithImpl(
      _$AboutBuffetImpl _value, $Res Function(_$AboutBuffetImpl) _then)
      : super(_value, _then);

  /// Create a copy of AboutBuffet
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? buffetUuid = null,
    Object? customerTypeUuid = null,
    Object? isCustomer = null,
    Object? isDelay = null,
  }) {
    return _then(_$AboutBuffetImpl(
      buffetUuid: null == buffetUuid
          ? _value.buffetUuid
          : buffetUuid // ignore: cast_nullable_to_non_nullable
              as int,
      customerTypeUuid: null == customerTypeUuid
          ? _value.customerTypeUuid
          : customerTypeUuid // ignore: cast_nullable_to_non_nullable
              as int,
      isCustomer: null == isCustomer
          ? _value.isCustomer
          : isCustomer // ignore: cast_nullable_to_non_nullable
              as bool,
      isDelay: null == isDelay
          ? _value.isDelay
          : isDelay // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AboutBuffetImpl implements _AboutBuffet {
  const _$AboutBuffetImpl(
      {@JsonKey(name: "buffet_uuid") required this.buffetUuid,
      @JsonKey(name: "customer_type_uuid") required this.customerTypeUuid,
      @JsonKey(name: "is_customer") required this.isCustomer,
      @JsonKey(name: "is_delay") required this.isDelay});

  factory _$AboutBuffetImpl.fromJson(Map<String, dynamic> json) =>
      _$$AboutBuffetImplFromJson(json);

// 自助餐Id
  @override
  @JsonKey(name: "buffet_uuid")
  final int buffetUuid;
// 自助餐顾客类型uuid
  @override
  @JsonKey(name: "customer_type_uuid")
  final int customerTypeUuid;
// 是否是自助餐顾客
  @override
  @JsonKey(name: "is_customer")
  final bool isCustomer;
// 是否是加钟
  @override
  @JsonKey(name: "is_delay")
  final bool isDelay;

  @override
  String toString() {
    return 'AboutBuffet(buffetUuid: $buffetUuid, customerTypeUuid: $customerTypeUuid, isCustomer: $isCustomer, isDelay: $isDelay)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AboutBuffetImpl &&
            (identical(other.buffetUuid, buffetUuid) ||
                other.buffetUuid == buffetUuid) &&
            (identical(other.customerTypeUuid, customerTypeUuid) ||
                other.customerTypeUuid == customerTypeUuid) &&
            (identical(other.isCustomer, isCustomer) ||
                other.isCustomer == isCustomer) &&
            (identical(other.isDelay, isDelay) || other.isDelay == isDelay));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, buffetUuid, customerTypeUuid, isCustomer, isDelay);

  /// Create a copy of AboutBuffet
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AboutBuffetImplCopyWith<_$AboutBuffetImpl> get copyWith =>
      __$$AboutBuffetImplCopyWithImpl<_$AboutBuffetImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AboutBuffetImplToJson(
      this,
    );
  }
}

abstract class _AboutBuffet implements AboutBuffet {
  const factory _AboutBuffet(
      {@JsonKey(name: "buffet_uuid") required final int buffetUuid,
      @JsonKey(name: "customer_type_uuid") required final int customerTypeUuid,
      @JsonKey(name: "is_customer") required final bool isCustomer,
      @JsonKey(name: "is_delay")
      required final bool isDelay}) = _$AboutBuffetImpl;

  factory _AboutBuffet.fromJson(Map<String, dynamic> json) =
      _$AboutBuffetImpl.fromJson;

// 自助餐Id
  @override
  @JsonKey(name: "buffet_uuid")
  int get buffetUuid; // 自助餐顾客类型uuid
  @override
  @JsonKey(name: "customer_type_uuid")
  int get customerTypeUuid; // 是否是自助餐顾客
  @override
  @JsonKey(name: "is_customer")
  bool get isCustomer; // 是否是加钟
  @override
  @JsonKey(name: "is_delay")
  bool get isDelay;

  /// Create a copy of AboutBuffet
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AboutBuffetImplCopyWith<_$AboutBuffetImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

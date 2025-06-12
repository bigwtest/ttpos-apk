// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cart_product.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ResponseCartProduct _$ResponseCartProductFromJson(Map<String, dynamic> json) {
  return _ResponseCartProduct.fromJson(json);
}

/// @nodoc
mixin _$ResponseCartProduct {
// 商品ID
  @JsonKey(name: 'uuid')
  int get uuid => throw _privateConstructorUsedError; // 商品名称（多语言）
  @JsonKey(name: 'locale_name')
  LocaleName get localeName =>
      throw _privateConstructorUsedError; // 商品属性名称（多语言）
  @JsonKey(name: 'locale_attribute_name')
  LocaleName get localeAttributeName =>
      throw _privateConstructorUsedError; // 商品数量
  @JsonKey(name: 'num')
  int get num => throw _privateConstructorUsedError; // 商品制作数量
  @JsonKey(name: 'finished_num')
  int? get finishedNum => throw _privateConstructorUsedError; // 商品原价 - (总价)
  @JsonKey(name: 'price')
  SafetyNumber get price => throw _privateConstructorUsedError; // 商品原价 - (单价)
  @JsonKey(name: 'unit_price')
  SafetyNumber get unitPrice =>
      throw _privateConstructorUsedError; // 折扣价。折扣加为0的话表示没有对商品进行折扣，则显示原价
  @JsonKey(name: 'discount_price')
  SafetyNumber get discountPrice =>
      throw _privateConstructorUsedError; // 商品状态 0: 未送厨 1:已送厨
  @JsonKey(name: 'status')
  int get status => throw _privateConstructorUsedError; // 备注
  @JsonKey(name: 'remark')
  String get remark => throw _privateConstructorUsedError; // 是否必点
  @JsonKey(name: 'is_must')
  bool get isMust => throw _privateConstructorUsedError; // 是否赠品
  @JsonKey(name: 'is_gift')
  bool get isGift => throw _privateConstructorUsedError; // 是否取消
  @JsonKey(name: 'is_cancel')
  bool get isCancel => throw _privateConstructorUsedError; // 是否自助餐产品
  @JsonKey(name: 'is_buffet')
  bool get isBuffet => throw _privateConstructorUsedError; // 是否显示厨房
  @JsonKey(name: 'is_show_kitchen')
  int get isShowKitchen => throw _privateConstructorUsedError; // 自助餐相关信息
  @JsonKey(name: 'about_buffet')
  ResponseCartAboutBuffet get aboutBuffet => throw _privateConstructorUsedError;

  /// Serializes this ResponseCartProduct to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ResponseCartProduct
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ResponseCartProductCopyWith<ResponseCartProduct> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResponseCartProductCopyWith<$Res> {
  factory $ResponseCartProductCopyWith(
          ResponseCartProduct value, $Res Function(ResponseCartProduct) then) =
      _$ResponseCartProductCopyWithImpl<$Res, ResponseCartProduct>;
  @useResult
  $Res call(
      {@JsonKey(name: 'uuid') int uuid,
      @JsonKey(name: 'locale_name') LocaleName localeName,
      @JsonKey(name: 'locale_attribute_name') LocaleName localeAttributeName,
      @JsonKey(name: 'num') int num,
      @JsonKey(name: 'finished_num') int? finishedNum,
      @JsonKey(name: 'price') SafetyNumber price,
      @JsonKey(name: 'unit_price') SafetyNumber unitPrice,
      @JsonKey(name: 'discount_price') SafetyNumber discountPrice,
      @JsonKey(name: 'status') int status,
      @JsonKey(name: 'remark') String remark,
      @JsonKey(name: 'is_must') bool isMust,
      @JsonKey(name: 'is_gift') bool isGift,
      @JsonKey(name: 'is_cancel') bool isCancel,
      @JsonKey(name: 'is_buffet') bool isBuffet,
      @JsonKey(name: 'is_show_kitchen') int isShowKitchen,
      @JsonKey(name: 'about_buffet') ResponseCartAboutBuffet aboutBuffet});

  $LocaleNameCopyWith<$Res> get localeName;
  $LocaleNameCopyWith<$Res> get localeAttributeName;
  $SafetyNumberCopyWith<$Res> get price;
  $SafetyNumberCopyWith<$Res> get unitPrice;
  $SafetyNumberCopyWith<$Res> get discountPrice;
  $ResponseCartAboutBuffetCopyWith<$Res> get aboutBuffet;
}

/// @nodoc
class _$ResponseCartProductCopyWithImpl<$Res, $Val extends ResponseCartProduct>
    implements $ResponseCartProductCopyWith<$Res> {
  _$ResponseCartProductCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ResponseCartProduct
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uuid = null,
    Object? localeName = null,
    Object? localeAttributeName = null,
    Object? num = null,
    Object? finishedNum = freezed,
    Object? price = null,
    Object? unitPrice = null,
    Object? discountPrice = null,
    Object? status = null,
    Object? remark = null,
    Object? isMust = null,
    Object? isGift = null,
    Object? isCancel = null,
    Object? isBuffet = null,
    Object? isShowKitchen = null,
    Object? aboutBuffet = null,
  }) {
    return _then(_value.copyWith(
      uuid: null == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as int,
      localeName: null == localeName
          ? _value.localeName
          : localeName // ignore: cast_nullable_to_non_nullable
              as LocaleName,
      localeAttributeName: null == localeAttributeName
          ? _value.localeAttributeName
          : localeAttributeName // ignore: cast_nullable_to_non_nullable
              as LocaleName,
      num: null == num
          ? _value.num
          : num // ignore: cast_nullable_to_non_nullable
              as int,
      finishedNum: freezed == finishedNum
          ? _value.finishedNum
          : finishedNum // ignore: cast_nullable_to_non_nullable
              as int?,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as SafetyNumber,
      unitPrice: null == unitPrice
          ? _value.unitPrice
          : unitPrice // ignore: cast_nullable_to_non_nullable
              as SafetyNumber,
      discountPrice: null == discountPrice
          ? _value.discountPrice
          : discountPrice // ignore: cast_nullable_to_non_nullable
              as SafetyNumber,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
      remark: null == remark
          ? _value.remark
          : remark // ignore: cast_nullable_to_non_nullable
              as String,
      isMust: null == isMust
          ? _value.isMust
          : isMust // ignore: cast_nullable_to_non_nullable
              as bool,
      isGift: null == isGift
          ? _value.isGift
          : isGift // ignore: cast_nullable_to_non_nullable
              as bool,
      isCancel: null == isCancel
          ? _value.isCancel
          : isCancel // ignore: cast_nullable_to_non_nullable
              as bool,
      isBuffet: null == isBuffet
          ? _value.isBuffet
          : isBuffet // ignore: cast_nullable_to_non_nullable
              as bool,
      isShowKitchen: null == isShowKitchen
          ? _value.isShowKitchen
          : isShowKitchen // ignore: cast_nullable_to_non_nullable
              as int,
      aboutBuffet: null == aboutBuffet
          ? _value.aboutBuffet
          : aboutBuffet // ignore: cast_nullable_to_non_nullable
              as ResponseCartAboutBuffet,
    ) as $Val);
  }

  /// Create a copy of ResponseCartProduct
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LocaleNameCopyWith<$Res> get localeName {
    return $LocaleNameCopyWith<$Res>(_value.localeName, (value) {
      return _then(_value.copyWith(localeName: value) as $Val);
    });
  }

  /// Create a copy of ResponseCartProduct
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LocaleNameCopyWith<$Res> get localeAttributeName {
    return $LocaleNameCopyWith<$Res>(_value.localeAttributeName, (value) {
      return _then(_value.copyWith(localeAttributeName: value) as $Val);
    });
  }

  /// Create a copy of ResponseCartProduct
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SafetyNumberCopyWith<$Res> get price {
    return $SafetyNumberCopyWith<$Res>(_value.price, (value) {
      return _then(_value.copyWith(price: value) as $Val);
    });
  }

  /// Create a copy of ResponseCartProduct
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SafetyNumberCopyWith<$Res> get unitPrice {
    return $SafetyNumberCopyWith<$Res>(_value.unitPrice, (value) {
      return _then(_value.copyWith(unitPrice: value) as $Val);
    });
  }

  /// Create a copy of ResponseCartProduct
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SafetyNumberCopyWith<$Res> get discountPrice {
    return $SafetyNumberCopyWith<$Res>(_value.discountPrice, (value) {
      return _then(_value.copyWith(discountPrice: value) as $Val);
    });
  }

  /// Create a copy of ResponseCartProduct
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ResponseCartAboutBuffetCopyWith<$Res> get aboutBuffet {
    return $ResponseCartAboutBuffetCopyWith<$Res>(_value.aboutBuffet, (value) {
      return _then(_value.copyWith(aboutBuffet: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ResponseCartProductImplCopyWith<$Res>
    implements $ResponseCartProductCopyWith<$Res> {
  factory _$$ResponseCartProductImplCopyWith(_$ResponseCartProductImpl value,
          $Res Function(_$ResponseCartProductImpl) then) =
      __$$ResponseCartProductImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'uuid') int uuid,
      @JsonKey(name: 'locale_name') LocaleName localeName,
      @JsonKey(name: 'locale_attribute_name') LocaleName localeAttributeName,
      @JsonKey(name: 'num') int num,
      @JsonKey(name: 'finished_num') int? finishedNum,
      @JsonKey(name: 'price') SafetyNumber price,
      @JsonKey(name: 'unit_price') SafetyNumber unitPrice,
      @JsonKey(name: 'discount_price') SafetyNumber discountPrice,
      @JsonKey(name: 'status') int status,
      @JsonKey(name: 'remark') String remark,
      @JsonKey(name: 'is_must') bool isMust,
      @JsonKey(name: 'is_gift') bool isGift,
      @JsonKey(name: 'is_cancel') bool isCancel,
      @JsonKey(name: 'is_buffet') bool isBuffet,
      @JsonKey(name: 'is_show_kitchen') int isShowKitchen,
      @JsonKey(name: 'about_buffet') ResponseCartAboutBuffet aboutBuffet});

  @override
  $LocaleNameCopyWith<$Res> get localeName;
  @override
  $LocaleNameCopyWith<$Res> get localeAttributeName;
  @override
  $SafetyNumberCopyWith<$Res> get price;
  @override
  $SafetyNumberCopyWith<$Res> get unitPrice;
  @override
  $SafetyNumberCopyWith<$Res> get discountPrice;
  @override
  $ResponseCartAboutBuffetCopyWith<$Res> get aboutBuffet;
}

/// @nodoc
class __$$ResponseCartProductImplCopyWithImpl<$Res>
    extends _$ResponseCartProductCopyWithImpl<$Res, _$ResponseCartProductImpl>
    implements _$$ResponseCartProductImplCopyWith<$Res> {
  __$$ResponseCartProductImplCopyWithImpl(_$ResponseCartProductImpl _value,
      $Res Function(_$ResponseCartProductImpl) _then)
      : super(_value, _then);

  /// Create a copy of ResponseCartProduct
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uuid = null,
    Object? localeName = null,
    Object? localeAttributeName = null,
    Object? num = null,
    Object? finishedNum = freezed,
    Object? price = null,
    Object? unitPrice = null,
    Object? discountPrice = null,
    Object? status = null,
    Object? remark = null,
    Object? isMust = null,
    Object? isGift = null,
    Object? isCancel = null,
    Object? isBuffet = null,
    Object? isShowKitchen = null,
    Object? aboutBuffet = null,
  }) {
    return _then(_$ResponseCartProductImpl(
      uuid: null == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as int,
      localeName: null == localeName
          ? _value.localeName
          : localeName // ignore: cast_nullable_to_non_nullable
              as LocaleName,
      localeAttributeName: null == localeAttributeName
          ? _value.localeAttributeName
          : localeAttributeName // ignore: cast_nullable_to_non_nullable
              as LocaleName,
      num: null == num
          ? _value.num
          : num // ignore: cast_nullable_to_non_nullable
              as int,
      finishedNum: freezed == finishedNum
          ? _value.finishedNum
          : finishedNum // ignore: cast_nullable_to_non_nullable
              as int?,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as SafetyNumber,
      unitPrice: null == unitPrice
          ? _value.unitPrice
          : unitPrice // ignore: cast_nullable_to_non_nullable
              as SafetyNumber,
      discountPrice: null == discountPrice
          ? _value.discountPrice
          : discountPrice // ignore: cast_nullable_to_non_nullable
              as SafetyNumber,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
      remark: null == remark
          ? _value.remark
          : remark // ignore: cast_nullable_to_non_nullable
              as String,
      isMust: null == isMust
          ? _value.isMust
          : isMust // ignore: cast_nullable_to_non_nullable
              as bool,
      isGift: null == isGift
          ? _value.isGift
          : isGift // ignore: cast_nullable_to_non_nullable
              as bool,
      isCancel: null == isCancel
          ? _value.isCancel
          : isCancel // ignore: cast_nullable_to_non_nullable
              as bool,
      isBuffet: null == isBuffet
          ? _value.isBuffet
          : isBuffet // ignore: cast_nullable_to_non_nullable
              as bool,
      isShowKitchen: null == isShowKitchen
          ? _value.isShowKitchen
          : isShowKitchen // ignore: cast_nullable_to_non_nullable
              as int,
      aboutBuffet: null == aboutBuffet
          ? _value.aboutBuffet
          : aboutBuffet // ignore: cast_nullable_to_non_nullable
              as ResponseCartAboutBuffet,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ResponseCartProductImpl implements _ResponseCartProduct {
  _$ResponseCartProductImpl(
      {@JsonKey(name: 'uuid') required this.uuid,
      @JsonKey(name: 'locale_name') required this.localeName,
      @JsonKey(name: 'locale_attribute_name') required this.localeAttributeName,
      @JsonKey(name: 'num') required this.num,
      @JsonKey(name: 'finished_num') this.finishedNum,
      @JsonKey(name: 'price') required this.price,
      @JsonKey(name: 'unit_price') required this.unitPrice,
      @JsonKey(name: 'discount_price') required this.discountPrice,
      @JsonKey(name: 'status') required this.status,
      @JsonKey(name: 'remark') required this.remark,
      @JsonKey(name: 'is_must') required this.isMust,
      @JsonKey(name: 'is_gift') required this.isGift,
      @JsonKey(name: 'is_cancel') required this.isCancel,
      @JsonKey(name: 'is_buffet') required this.isBuffet,
      @JsonKey(name: 'is_show_kitchen') this.isShowKitchen = 0,
      @JsonKey(name: 'about_buffet') required this.aboutBuffet});

  factory _$ResponseCartProductImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResponseCartProductImplFromJson(json);

// 商品ID
  @override
  @JsonKey(name: 'uuid')
  final int uuid;
// 商品名称（多语言）
  @override
  @JsonKey(name: 'locale_name')
  final LocaleName localeName;
// 商品属性名称（多语言）
  @override
  @JsonKey(name: 'locale_attribute_name')
  final LocaleName localeAttributeName;
// 商品数量
  @override
  @JsonKey(name: 'num')
  final int num;
// 商品制作数量
  @override
  @JsonKey(name: 'finished_num')
  final int? finishedNum;
// 商品原价 - (总价)
  @override
  @JsonKey(name: 'price')
  final SafetyNumber price;
// 商品原价 - (单价)
  @override
  @JsonKey(name: 'unit_price')
  final SafetyNumber unitPrice;
// 折扣价。折扣加为0的话表示没有对商品进行折扣，则显示原价
  @override
  @JsonKey(name: 'discount_price')
  final SafetyNumber discountPrice;
// 商品状态 0: 未送厨 1:已送厨
  @override
  @JsonKey(name: 'status')
  final int status;
// 备注
  @override
  @JsonKey(name: 'remark')
  final String remark;
// 是否必点
  @override
  @JsonKey(name: 'is_must')
  final bool isMust;
// 是否赠品
  @override
  @JsonKey(name: 'is_gift')
  final bool isGift;
// 是否取消
  @override
  @JsonKey(name: 'is_cancel')
  final bool isCancel;
// 是否自助餐产品
  @override
  @JsonKey(name: 'is_buffet')
  final bool isBuffet;
// 是否显示厨房
  @override
  @JsonKey(name: 'is_show_kitchen')
  final int isShowKitchen;
// 自助餐相关信息
  @override
  @JsonKey(name: 'about_buffet')
  final ResponseCartAboutBuffet aboutBuffet;

  @override
  String toString() {
    return 'ResponseCartProduct(uuid: $uuid, localeName: $localeName, localeAttributeName: $localeAttributeName, num: $num, finishedNum: $finishedNum, price: $price, unitPrice: $unitPrice, discountPrice: $discountPrice, status: $status, remark: $remark, isMust: $isMust, isGift: $isGift, isCancel: $isCancel, isBuffet: $isBuffet, isShowKitchen: $isShowKitchen, aboutBuffet: $aboutBuffet)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResponseCartProductImpl &&
            (identical(other.uuid, uuid) || other.uuid == uuid) &&
            (identical(other.localeName, localeName) ||
                other.localeName == localeName) &&
            (identical(other.localeAttributeName, localeAttributeName) ||
                other.localeAttributeName == localeAttributeName) &&
            (identical(other.num, num) || other.num == num) &&
            (identical(other.finishedNum, finishedNum) ||
                other.finishedNum == finishedNum) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.unitPrice, unitPrice) ||
                other.unitPrice == unitPrice) &&
            (identical(other.discountPrice, discountPrice) ||
                other.discountPrice == discountPrice) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.remark, remark) || other.remark == remark) &&
            (identical(other.isMust, isMust) || other.isMust == isMust) &&
            (identical(other.isGift, isGift) || other.isGift == isGift) &&
            (identical(other.isCancel, isCancel) ||
                other.isCancel == isCancel) &&
            (identical(other.isBuffet, isBuffet) ||
                other.isBuffet == isBuffet) &&
            (identical(other.isShowKitchen, isShowKitchen) ||
                other.isShowKitchen == isShowKitchen) &&
            (identical(other.aboutBuffet, aboutBuffet) ||
                other.aboutBuffet == aboutBuffet));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      uuid,
      localeName,
      localeAttributeName,
      num,
      finishedNum,
      price,
      unitPrice,
      discountPrice,
      status,
      remark,
      isMust,
      isGift,
      isCancel,
      isBuffet,
      isShowKitchen,
      aboutBuffet);

  /// Create a copy of ResponseCartProduct
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ResponseCartProductImplCopyWith<_$ResponseCartProductImpl> get copyWith =>
      __$$ResponseCartProductImplCopyWithImpl<_$ResponseCartProductImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResponseCartProductImplToJson(
      this,
    );
  }
}

abstract class _ResponseCartProduct implements ResponseCartProduct {
  factory _ResponseCartProduct(
          {@JsonKey(name: 'uuid') required final int uuid,
          @JsonKey(name: 'locale_name') required final LocaleName localeName,
          @JsonKey(name: 'locale_attribute_name')
          required final LocaleName localeAttributeName,
          @JsonKey(name: 'num') required final int num,
          @JsonKey(name: 'finished_num') final int? finishedNum,
          @JsonKey(name: 'price') required final SafetyNumber price,
          @JsonKey(name: 'unit_price') required final SafetyNumber unitPrice,
          @JsonKey(name: 'discount_price')
          required final SafetyNumber discountPrice,
          @JsonKey(name: 'status') required final int status,
          @JsonKey(name: 'remark') required final String remark,
          @JsonKey(name: 'is_must') required final bool isMust,
          @JsonKey(name: 'is_gift') required final bool isGift,
          @JsonKey(name: 'is_cancel') required final bool isCancel,
          @JsonKey(name: 'is_buffet') required final bool isBuffet,
          @JsonKey(name: 'is_show_kitchen') final int isShowKitchen,
          @JsonKey(name: 'about_buffet')
          required final ResponseCartAboutBuffet aboutBuffet}) =
      _$ResponseCartProductImpl;

  factory _ResponseCartProduct.fromJson(Map<String, dynamic> json) =
      _$ResponseCartProductImpl.fromJson;

// 商品ID
  @override
  @JsonKey(name: 'uuid')
  int get uuid; // 商品名称（多语言）
  @override
  @JsonKey(name: 'locale_name')
  LocaleName get localeName; // 商品属性名称（多语言）
  @override
  @JsonKey(name: 'locale_attribute_name')
  LocaleName get localeAttributeName; // 商品数量
  @override
  @JsonKey(name: 'num')
  int get num; // 商品制作数量
  @override
  @JsonKey(name: 'finished_num')
  int? get finishedNum; // 商品原价 - (总价)
  @override
  @JsonKey(name: 'price')
  SafetyNumber get price; // 商品原价 - (单价)
  @override
  @JsonKey(name: 'unit_price')
  SafetyNumber get unitPrice; // 折扣价。折扣加为0的话表示没有对商品进行折扣，则显示原价
  @override
  @JsonKey(name: 'discount_price')
  SafetyNumber get discountPrice; // 商品状态 0: 未送厨 1:已送厨
  @override
  @JsonKey(name: 'status')
  int get status; // 备注
  @override
  @JsonKey(name: 'remark')
  String get remark; // 是否必点
  @override
  @JsonKey(name: 'is_must')
  bool get isMust; // 是否赠品
  @override
  @JsonKey(name: 'is_gift')
  bool get isGift; // 是否取消
  @override
  @JsonKey(name: 'is_cancel')
  bool get isCancel; // 是否自助餐产品
  @override
  @JsonKey(name: 'is_buffet')
  bool get isBuffet; // 是否显示厨房
  @override
  @JsonKey(name: 'is_show_kitchen')
  int get isShowKitchen; // 自助餐相关信息
  @override
  @JsonKey(name: 'about_buffet')
  ResponseCartAboutBuffet get aboutBuffet;

  /// Create a copy of ResponseCartProduct
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ResponseCartProductImplCopyWith<_$ResponseCartProductImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

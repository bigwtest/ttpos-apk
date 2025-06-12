// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'must_order_product_list.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GoodsMustOrderProductList _$GoodsMustOrderProductListFromJson(
    Map<String, dynamic> json) {
  return _GoodsMustOrderProductList.fromJson(json);
}

/// @nodoc
mixin _$GoodsMustOrderProductList {
// 自助餐信息
  @JsonKey(name: "about_buffet")
  AboutBuffet get aboutBuffet =>
      throw _privateConstructorUsedError; // 折扣价,折后。折扣价不等于原价时，前端要显示出折扣价。
  @JsonKey(name: "discount_price")
  double get discountPrice => throw _privateConstructorUsedError; // 是否退菜
  @JsonKey(name: "is_cancel")
  bool get isCancel => throw _privateConstructorUsedError; // 是否是赠菜
  @JsonKey(name: "is_gift")
  bool get isGift => throw _privateConstructorUsedError; // 是否必点
  @JsonKey(name: "is_must")
  bool get isMust => throw _privateConstructorUsedError; // 商品属性
  @JsonKey(name: "locale_attribute_name")
  LocaleName get localeAttributeName =>
      throw _privateConstructorUsedError; // 自助餐名称
  @JsonKey(name: "locale_name")
  LocaleName get localeName => throw _privateConstructorUsedError; // 数量
  @JsonKey(name: "num")
  int get num => throw _privateConstructorUsedError; // 原价
  @JsonKey(name: "price")
  double get price => throw _privateConstructorUsedError; // 备注
  @JsonKey(name: "remark")
  String get remark => throw _privateConstructorUsedError; // 0: 未送厨 1:已送厨
  @JsonKey(name: "status")
  int get status => throw _privateConstructorUsedError; // 商品uuid
  @JsonKey(name: "uuid")
  int get uuid => throw _privateConstructorUsedError;

  /// Serializes this GoodsMustOrderProductList to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GoodsMustOrderProductList
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GoodsMustOrderProductListCopyWith<GoodsMustOrderProductList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GoodsMustOrderProductListCopyWith<$Res> {
  factory $GoodsMustOrderProductListCopyWith(GoodsMustOrderProductList value,
          $Res Function(GoodsMustOrderProductList) then) =
      _$GoodsMustOrderProductListCopyWithImpl<$Res, GoodsMustOrderProductList>;
  @useResult
  $Res call(
      {@JsonKey(name: "about_buffet") AboutBuffet aboutBuffet,
      @JsonKey(name: "discount_price") double discountPrice,
      @JsonKey(name: "is_cancel") bool isCancel,
      @JsonKey(name: "is_gift") bool isGift,
      @JsonKey(name: "is_must") bool isMust,
      @JsonKey(name: "locale_attribute_name") LocaleName localeAttributeName,
      @JsonKey(name: "locale_name") LocaleName localeName,
      @JsonKey(name: "num") int num,
      @JsonKey(name: "price") double price,
      @JsonKey(name: "remark") String remark,
      @JsonKey(name: "status") int status,
      @JsonKey(name: "uuid") int uuid});

  $AboutBuffetCopyWith<$Res> get aboutBuffet;
  $LocaleNameCopyWith<$Res> get localeAttributeName;
  $LocaleNameCopyWith<$Res> get localeName;
}

/// @nodoc
class _$GoodsMustOrderProductListCopyWithImpl<$Res,
        $Val extends GoodsMustOrderProductList>
    implements $GoodsMustOrderProductListCopyWith<$Res> {
  _$GoodsMustOrderProductListCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GoodsMustOrderProductList
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? aboutBuffet = null,
    Object? discountPrice = null,
    Object? isCancel = null,
    Object? isGift = null,
    Object? isMust = null,
    Object? localeAttributeName = null,
    Object? localeName = null,
    Object? num = null,
    Object? price = null,
    Object? remark = null,
    Object? status = null,
    Object? uuid = null,
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
    ) as $Val);
  }

  /// Create a copy of GoodsMustOrderProductList
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AboutBuffetCopyWith<$Res> get aboutBuffet {
    return $AboutBuffetCopyWith<$Res>(_value.aboutBuffet, (value) {
      return _then(_value.copyWith(aboutBuffet: value) as $Val);
    });
  }

  /// Create a copy of GoodsMustOrderProductList
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LocaleNameCopyWith<$Res> get localeAttributeName {
    return $LocaleNameCopyWith<$Res>(_value.localeAttributeName, (value) {
      return _then(_value.copyWith(localeAttributeName: value) as $Val);
    });
  }

  /// Create a copy of GoodsMustOrderProductList
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
abstract class _$$GoodsMustOrderProductListImplCopyWith<$Res>
    implements $GoodsMustOrderProductListCopyWith<$Res> {
  factory _$$GoodsMustOrderProductListImplCopyWith(
          _$GoodsMustOrderProductListImpl value,
          $Res Function(_$GoodsMustOrderProductListImpl) then) =
      __$$GoodsMustOrderProductListImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "about_buffet") AboutBuffet aboutBuffet,
      @JsonKey(name: "discount_price") double discountPrice,
      @JsonKey(name: "is_cancel") bool isCancel,
      @JsonKey(name: "is_gift") bool isGift,
      @JsonKey(name: "is_must") bool isMust,
      @JsonKey(name: "locale_attribute_name") LocaleName localeAttributeName,
      @JsonKey(name: "locale_name") LocaleName localeName,
      @JsonKey(name: "num") int num,
      @JsonKey(name: "price") double price,
      @JsonKey(name: "remark") String remark,
      @JsonKey(name: "status") int status,
      @JsonKey(name: "uuid") int uuid});

  @override
  $AboutBuffetCopyWith<$Res> get aboutBuffet;
  @override
  $LocaleNameCopyWith<$Res> get localeAttributeName;
  @override
  $LocaleNameCopyWith<$Res> get localeName;
}

/// @nodoc
class __$$GoodsMustOrderProductListImplCopyWithImpl<$Res>
    extends _$GoodsMustOrderProductListCopyWithImpl<$Res,
        _$GoodsMustOrderProductListImpl>
    implements _$$GoodsMustOrderProductListImplCopyWith<$Res> {
  __$$GoodsMustOrderProductListImplCopyWithImpl(
      _$GoodsMustOrderProductListImpl _value,
      $Res Function(_$GoodsMustOrderProductListImpl) _then)
      : super(_value, _then);

  /// Create a copy of GoodsMustOrderProductList
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? aboutBuffet = null,
    Object? discountPrice = null,
    Object? isCancel = null,
    Object? isGift = null,
    Object? isMust = null,
    Object? localeAttributeName = null,
    Object? localeName = null,
    Object? num = null,
    Object? price = null,
    Object? remark = null,
    Object? status = null,
    Object? uuid = null,
  }) {
    return _then(_$GoodsMustOrderProductListImpl(
      aboutBuffet: null == aboutBuffet
          ? _value.aboutBuffet
          : aboutBuffet // ignore: cast_nullable_to_non_nullable
              as AboutBuffet,
      discountPrice: null == discountPrice
          ? _value.discountPrice
          : discountPrice // ignore: cast_nullable_to_non_nullable
              as double,
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GoodsMustOrderProductListImpl implements _GoodsMustOrderProductList {
  _$GoodsMustOrderProductListImpl(
      {@JsonKey(name: "about_buffet") required this.aboutBuffet,
      @JsonKey(name: "discount_price") required this.discountPrice,
      @JsonKey(name: "is_cancel") required this.isCancel,
      @JsonKey(name: "is_gift") required this.isGift,
      @JsonKey(name: "is_must") required this.isMust,
      @JsonKey(name: "locale_attribute_name") required this.localeAttributeName,
      @JsonKey(name: "locale_name") required this.localeName,
      @JsonKey(name: "num") required this.num,
      @JsonKey(name: "price") required this.price,
      @JsonKey(name: "remark") required this.remark,
      @JsonKey(name: "status") required this.status,
      @JsonKey(name: "uuid") required this.uuid});

  factory _$GoodsMustOrderProductListImpl.fromJson(Map<String, dynamic> json) =>
      _$$GoodsMustOrderProductListImplFromJson(json);

// 自助餐信息
  @override
  @JsonKey(name: "about_buffet")
  final AboutBuffet aboutBuffet;
// 折扣价,折后。折扣价不等于原价时，前端要显示出折扣价。
  @override
  @JsonKey(name: "discount_price")
  final double discountPrice;
// 是否退菜
  @override
  @JsonKey(name: "is_cancel")
  final bool isCancel;
// 是否是赠菜
  @override
  @JsonKey(name: "is_gift")
  final bool isGift;
// 是否必点
  @override
  @JsonKey(name: "is_must")
  final bool isMust;
// 商品属性
  @override
  @JsonKey(name: "locale_attribute_name")
  final LocaleName localeAttributeName;
// 自助餐名称
  @override
  @JsonKey(name: "locale_name")
  final LocaleName localeName;
// 数量
  @override
  @JsonKey(name: "num")
  final int num;
// 原价
  @override
  @JsonKey(name: "price")
  final double price;
// 备注
  @override
  @JsonKey(name: "remark")
  final String remark;
// 0: 未送厨 1:已送厨
  @override
  @JsonKey(name: "status")
  final int status;
// 商品uuid
  @override
  @JsonKey(name: "uuid")
  final int uuid;

  @override
  String toString() {
    return 'GoodsMustOrderProductList(aboutBuffet: $aboutBuffet, discountPrice: $discountPrice, isCancel: $isCancel, isGift: $isGift, isMust: $isMust, localeAttributeName: $localeAttributeName, localeName: $localeName, num: $num, price: $price, remark: $remark, status: $status, uuid: $uuid)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GoodsMustOrderProductListImpl &&
            (identical(other.aboutBuffet, aboutBuffet) ||
                other.aboutBuffet == aboutBuffet) &&
            (identical(other.discountPrice, discountPrice) ||
                other.discountPrice == discountPrice) &&
            (identical(other.isCancel, isCancel) ||
                other.isCancel == isCancel) &&
            (identical(other.isGift, isGift) || other.isGift == isGift) &&
            (identical(other.isMust, isMust) || other.isMust == isMust) &&
            (identical(other.localeAttributeName, localeAttributeName) ||
                other.localeAttributeName == localeAttributeName) &&
            (identical(other.localeName, localeName) ||
                other.localeName == localeName) &&
            (identical(other.num, num) || other.num == num) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.remark, remark) || other.remark == remark) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.uuid, uuid) || other.uuid == uuid));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      aboutBuffet,
      discountPrice,
      isCancel,
      isGift,
      isMust,
      localeAttributeName,
      localeName,
      num,
      price,
      remark,
      status,
      uuid);

  /// Create a copy of GoodsMustOrderProductList
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GoodsMustOrderProductListImplCopyWith<_$GoodsMustOrderProductListImpl>
      get copyWith => __$$GoodsMustOrderProductListImplCopyWithImpl<
          _$GoodsMustOrderProductListImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GoodsMustOrderProductListImplToJson(
      this,
    );
  }
}

abstract class _GoodsMustOrderProductList implements GoodsMustOrderProductList {
  factory _GoodsMustOrderProductList(
      {@JsonKey(name: "about_buffet") required final AboutBuffet aboutBuffet,
      @JsonKey(name: "discount_price") required final double discountPrice,
      @JsonKey(name: "is_cancel") required final bool isCancel,
      @JsonKey(name: "is_gift") required final bool isGift,
      @JsonKey(name: "is_must") required final bool isMust,
      @JsonKey(name: "locale_attribute_name")
      required final LocaleName localeAttributeName,
      @JsonKey(name: "locale_name") required final LocaleName localeName,
      @JsonKey(name: "num") required final int num,
      @JsonKey(name: "price") required final double price,
      @JsonKey(name: "remark") required final String remark,
      @JsonKey(name: "status") required final int status,
      @JsonKey(name: "uuid")
      required final int uuid}) = _$GoodsMustOrderProductListImpl;

  factory _GoodsMustOrderProductList.fromJson(Map<String, dynamic> json) =
      _$GoodsMustOrderProductListImpl.fromJson;

// 自助餐信息
  @override
  @JsonKey(name: "about_buffet")
  AboutBuffet get aboutBuffet; // 折扣价,折后。折扣价不等于原价时，前端要显示出折扣价。
  @override
  @JsonKey(name: "discount_price")
  double get discountPrice; // 是否退菜
  @override
  @JsonKey(name: "is_cancel")
  bool get isCancel; // 是否是赠菜
  @override
  @JsonKey(name: "is_gift")
  bool get isGift; // 是否必点
  @override
  @JsonKey(name: "is_must")
  bool get isMust; // 商品属性
  @override
  @JsonKey(name: "locale_attribute_name")
  LocaleName get localeAttributeName; // 自助餐名称
  @override
  @JsonKey(name: "locale_name")
  LocaleName get localeName; // 数量
  @override
  @JsonKey(name: "num")
  int get num; // 原价
  @override
  @JsonKey(name: "price")
  double get price; // 备注
  @override
  @JsonKey(name: "remark")
  String get remark; // 0: 未送厨 1:已送厨
  @override
  @JsonKey(name: "status")
  int get status; // 商品uuid
  @override
  @JsonKey(name: "uuid")
  int get uuid;

  /// Create a copy of GoodsMustOrderProductList
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GoodsMustOrderProductListImplCopyWith<_$GoodsMustOrderProductListImpl>
      get copyWith => throw _privateConstructorUsedError;
}

AboutBuffet _$AboutBuffetFromJson(Map<String, dynamic> json) {
  return _AboutBuffet.fromJson(json);
}

/// @nodoc
mixin _$AboutBuffet {
// 是否是自助餐顾客
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
      {@JsonKey(name: "is_customer") bool isCustomer,
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
    Object? isCustomer = null,
    Object? isDelay = null,
  }) {
    return _then(_value.copyWith(
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
      {@JsonKey(name: "is_customer") bool isCustomer,
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
    Object? isCustomer = null,
    Object? isDelay = null,
  }) {
    return _then(_$AboutBuffetImpl(
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
      {@JsonKey(name: "is_customer") required this.isCustomer,
      @JsonKey(name: "is_delay") required this.isDelay});

  factory _$AboutBuffetImpl.fromJson(Map<String, dynamic> json) =>
      _$$AboutBuffetImplFromJson(json);

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
    return 'AboutBuffet(isCustomer: $isCustomer, isDelay: $isDelay)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AboutBuffetImpl &&
            (identical(other.isCustomer, isCustomer) ||
                other.isCustomer == isCustomer) &&
            (identical(other.isDelay, isDelay) || other.isDelay == isDelay));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, isCustomer, isDelay);

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
          {@JsonKey(name: "is_customer") required final bool isCustomer,
          @JsonKey(name: "is_delay") required final bool isDelay}) =
      _$AboutBuffetImpl;

  factory _AboutBuffet.fromJson(Map<String, dynamic> json) =
      _$AboutBuffetImpl.fromJson;

// 是否是自助餐顾客
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

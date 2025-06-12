// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'resp_order_product.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RespOrderProduct _$RespOrderProductFromJson(Map<String, dynamic> json) {
  return _RespOrderProduct.fromJson(json);
}

/// @nodoc
mixin _$RespOrderProduct {
  @JsonKey(name: "gift_reason")
  String get giftReason => throw _privateConstructorUsedError;
  @JsonKey(name: "image_url")
  String get imageUrl => throw _privateConstructorUsedError;
  @JsonKey(name: "is_buffet")
  bool get isBuffet => throw _privateConstructorUsedError;
  @JsonKey(name: "is_buffet_customer")
  bool get isBuffetCustomer => throw _privateConstructorUsedError;
  @JsonKey(name: "is_delay")
  bool get isDelay => throw _privateConstructorUsedError;
  @JsonKey(name: "is_gift")
  bool get isGift => throw _privateConstructorUsedError;
  @JsonKey(name: "is_must")
  bool get isMust => throw _privateConstructorUsedError;
  @JsonKey(name: "locale_attribute_name")
  LocaleName get localeAttributeName => throw _privateConstructorUsedError;
  @JsonKey(name: "locale_name")
  LocaleName get localeName => throw _privateConstructorUsedError;
  @JsonKey(name: "num")
  int get num => throw _privateConstructorUsedError;
  @JsonKey(name: "price")
  double get price => throw _privateConstructorUsedError;
  @JsonKey(name: "refund_amount")
  double get refundAmount => throw _privateConstructorUsedError;
  @JsonKey(name: "refund_reason")
  String get refundReason => throw _privateConstructorUsedError;
  @JsonKey(name: "remark")
  String get remark => throw _privateConstructorUsedError;
  @JsonKey(name: "sale_price")
  double get salePrice => throw _privateConstructorUsedError;
  @JsonKey(name: "status")
  int get status => throw _privateConstructorUsedError;
  @JsonKey(name: "total_price")
  double get totalPrice => throw _privateConstructorUsedError;
  @JsonKey(name: "uuid")
  int get uuid => throw _privateConstructorUsedError;

  /// Serializes this RespOrderProduct to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RespOrderProduct
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RespOrderProductCopyWith<RespOrderProduct> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RespOrderProductCopyWith<$Res> {
  factory $RespOrderProductCopyWith(
          RespOrderProduct value, $Res Function(RespOrderProduct) then) =
      _$RespOrderProductCopyWithImpl<$Res, RespOrderProduct>;
  @useResult
  $Res call(
      {@JsonKey(name: "gift_reason") String giftReason,
      @JsonKey(name: "image_url") String imageUrl,
      @JsonKey(name: "is_buffet") bool isBuffet,
      @JsonKey(name: "is_buffet_customer") bool isBuffetCustomer,
      @JsonKey(name: "is_delay") bool isDelay,
      @JsonKey(name: "is_gift") bool isGift,
      @JsonKey(name: "is_must") bool isMust,
      @JsonKey(name: "locale_attribute_name") LocaleName localeAttributeName,
      @JsonKey(name: "locale_name") LocaleName localeName,
      @JsonKey(name: "num") int num,
      @JsonKey(name: "price") double price,
      @JsonKey(name: "refund_amount") double refundAmount,
      @JsonKey(name: "refund_reason") String refundReason,
      @JsonKey(name: "remark") String remark,
      @JsonKey(name: "sale_price") double salePrice,
      @JsonKey(name: "status") int status,
      @JsonKey(name: "total_price") double totalPrice,
      @JsonKey(name: "uuid") int uuid});

  $LocaleNameCopyWith<$Res> get localeAttributeName;
  $LocaleNameCopyWith<$Res> get localeName;
}

/// @nodoc
class _$RespOrderProductCopyWithImpl<$Res, $Val extends RespOrderProduct>
    implements $RespOrderProductCopyWith<$Res> {
  _$RespOrderProductCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RespOrderProduct
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? giftReason = null,
    Object? imageUrl = null,
    Object? isBuffet = null,
    Object? isBuffetCustomer = null,
    Object? isDelay = null,
    Object? isGift = null,
    Object? isMust = null,
    Object? localeAttributeName = null,
    Object? localeName = null,
    Object? num = null,
    Object? price = null,
    Object? refundAmount = null,
    Object? refundReason = null,
    Object? remark = null,
    Object? salePrice = null,
    Object? status = null,
    Object? totalPrice = null,
    Object? uuid = null,
  }) {
    return _then(_value.copyWith(
      giftReason: null == giftReason
          ? _value.giftReason
          : giftReason // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      isBuffet: null == isBuffet
          ? _value.isBuffet
          : isBuffet // ignore: cast_nullable_to_non_nullable
              as bool,
      isBuffetCustomer: null == isBuffetCustomer
          ? _value.isBuffetCustomer
          : isBuffetCustomer // ignore: cast_nullable_to_non_nullable
              as bool,
      isDelay: null == isDelay
          ? _value.isDelay
          : isDelay // ignore: cast_nullable_to_non_nullable
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
      refundAmount: null == refundAmount
          ? _value.refundAmount
          : refundAmount // ignore: cast_nullable_to_non_nullable
              as double,
      refundReason: null == refundReason
          ? _value.refundReason
          : refundReason // ignore: cast_nullable_to_non_nullable
              as String,
      remark: null == remark
          ? _value.remark
          : remark // ignore: cast_nullable_to_non_nullable
              as String,
      salePrice: null == salePrice
          ? _value.salePrice
          : salePrice // ignore: cast_nullable_to_non_nullable
              as double,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
      totalPrice: null == totalPrice
          ? _value.totalPrice
          : totalPrice // ignore: cast_nullable_to_non_nullable
              as double,
      uuid: null == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }

  /// Create a copy of RespOrderProduct
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LocaleNameCopyWith<$Res> get localeAttributeName {
    return $LocaleNameCopyWith<$Res>(_value.localeAttributeName, (value) {
      return _then(_value.copyWith(localeAttributeName: value) as $Val);
    });
  }

  /// Create a copy of RespOrderProduct
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
abstract class _$$RespOrderProductImplCopyWith<$Res>
    implements $RespOrderProductCopyWith<$Res> {
  factory _$$RespOrderProductImplCopyWith(_$RespOrderProductImpl value,
          $Res Function(_$RespOrderProductImpl) then) =
      __$$RespOrderProductImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "gift_reason") String giftReason,
      @JsonKey(name: "image_url") String imageUrl,
      @JsonKey(name: "is_buffet") bool isBuffet,
      @JsonKey(name: "is_buffet_customer") bool isBuffetCustomer,
      @JsonKey(name: "is_delay") bool isDelay,
      @JsonKey(name: "is_gift") bool isGift,
      @JsonKey(name: "is_must") bool isMust,
      @JsonKey(name: "locale_attribute_name") LocaleName localeAttributeName,
      @JsonKey(name: "locale_name") LocaleName localeName,
      @JsonKey(name: "num") int num,
      @JsonKey(name: "price") double price,
      @JsonKey(name: "refund_amount") double refundAmount,
      @JsonKey(name: "refund_reason") String refundReason,
      @JsonKey(name: "remark") String remark,
      @JsonKey(name: "sale_price") double salePrice,
      @JsonKey(name: "status") int status,
      @JsonKey(name: "total_price") double totalPrice,
      @JsonKey(name: "uuid") int uuid});

  @override
  $LocaleNameCopyWith<$Res> get localeAttributeName;
  @override
  $LocaleNameCopyWith<$Res> get localeName;
}

/// @nodoc
class __$$RespOrderProductImplCopyWithImpl<$Res>
    extends _$RespOrderProductCopyWithImpl<$Res, _$RespOrderProductImpl>
    implements _$$RespOrderProductImplCopyWith<$Res> {
  __$$RespOrderProductImplCopyWithImpl(_$RespOrderProductImpl _value,
      $Res Function(_$RespOrderProductImpl) _then)
      : super(_value, _then);

  /// Create a copy of RespOrderProduct
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? giftReason = null,
    Object? imageUrl = null,
    Object? isBuffet = null,
    Object? isBuffetCustomer = null,
    Object? isDelay = null,
    Object? isGift = null,
    Object? isMust = null,
    Object? localeAttributeName = null,
    Object? localeName = null,
    Object? num = null,
    Object? price = null,
    Object? refundAmount = null,
    Object? refundReason = null,
    Object? remark = null,
    Object? salePrice = null,
    Object? status = null,
    Object? totalPrice = null,
    Object? uuid = null,
  }) {
    return _then(_$RespOrderProductImpl(
      giftReason: null == giftReason
          ? _value.giftReason
          : giftReason // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      isBuffet: null == isBuffet
          ? _value.isBuffet
          : isBuffet // ignore: cast_nullable_to_non_nullable
              as bool,
      isBuffetCustomer: null == isBuffetCustomer
          ? _value.isBuffetCustomer
          : isBuffetCustomer // ignore: cast_nullable_to_non_nullable
              as bool,
      isDelay: null == isDelay
          ? _value.isDelay
          : isDelay // ignore: cast_nullable_to_non_nullable
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
      refundAmount: null == refundAmount
          ? _value.refundAmount
          : refundAmount // ignore: cast_nullable_to_non_nullable
              as double,
      refundReason: null == refundReason
          ? _value.refundReason
          : refundReason // ignore: cast_nullable_to_non_nullable
              as String,
      remark: null == remark
          ? _value.remark
          : remark // ignore: cast_nullable_to_non_nullable
              as String,
      salePrice: null == salePrice
          ? _value.salePrice
          : salePrice // ignore: cast_nullable_to_non_nullable
              as double,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
      totalPrice: null == totalPrice
          ? _value.totalPrice
          : totalPrice // ignore: cast_nullable_to_non_nullable
              as double,
      uuid: null == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RespOrderProductImpl implements _RespOrderProduct {
  _$RespOrderProductImpl(
      {@JsonKey(name: "gift_reason") required this.giftReason,
      @JsonKey(name: "image_url") required this.imageUrl,
      @JsonKey(name: "is_buffet") required this.isBuffet,
      @JsonKey(name: "is_buffet_customer") required this.isBuffetCustomer,
      @JsonKey(name: "is_delay") required this.isDelay,
      @JsonKey(name: "is_gift") required this.isGift,
      @JsonKey(name: "is_must") required this.isMust,
      @JsonKey(name: "locale_attribute_name") required this.localeAttributeName,
      @JsonKey(name: "locale_name") required this.localeName,
      @JsonKey(name: "num") required this.num,
      @JsonKey(name: "price") required this.price,
      @JsonKey(name: "refund_amount") required this.refundAmount,
      @JsonKey(name: "refund_reason") required this.refundReason,
      @JsonKey(name: "remark") required this.remark,
      @JsonKey(name: "sale_price") required this.salePrice,
      @JsonKey(name: "status") required this.status,
      @JsonKey(name: "total_price") required this.totalPrice,
      @JsonKey(name: "uuid") required this.uuid});

  factory _$RespOrderProductImpl.fromJson(Map<String, dynamic> json) =>
      _$$RespOrderProductImplFromJson(json);

  @override
  @JsonKey(name: "gift_reason")
  final String giftReason;
  @override
  @JsonKey(name: "image_url")
  final String imageUrl;
  @override
  @JsonKey(name: "is_buffet")
  final bool isBuffet;
  @override
  @JsonKey(name: "is_buffet_customer")
  final bool isBuffetCustomer;
  @override
  @JsonKey(name: "is_delay")
  final bool isDelay;
  @override
  @JsonKey(name: "is_gift")
  final bool isGift;
  @override
  @JsonKey(name: "is_must")
  final bool isMust;
  @override
  @JsonKey(name: "locale_attribute_name")
  final LocaleName localeAttributeName;
  @override
  @JsonKey(name: "locale_name")
  final LocaleName localeName;
  @override
  @JsonKey(name: "num")
  final int num;
  @override
  @JsonKey(name: "price")
  final double price;
  @override
  @JsonKey(name: "refund_amount")
  final double refundAmount;
  @override
  @JsonKey(name: "refund_reason")
  final String refundReason;
  @override
  @JsonKey(name: "remark")
  final String remark;
  @override
  @JsonKey(name: "sale_price")
  final double salePrice;
  @override
  @JsonKey(name: "status")
  final int status;
  @override
  @JsonKey(name: "total_price")
  final double totalPrice;
  @override
  @JsonKey(name: "uuid")
  final int uuid;

  @override
  String toString() {
    return 'RespOrderProduct(giftReason: $giftReason, imageUrl: $imageUrl, isBuffet: $isBuffet, isBuffetCustomer: $isBuffetCustomer, isDelay: $isDelay, isGift: $isGift, isMust: $isMust, localeAttributeName: $localeAttributeName, localeName: $localeName, num: $num, price: $price, refundAmount: $refundAmount, refundReason: $refundReason, remark: $remark, salePrice: $salePrice, status: $status, totalPrice: $totalPrice, uuid: $uuid)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RespOrderProductImpl &&
            (identical(other.giftReason, giftReason) ||
                other.giftReason == giftReason) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.isBuffet, isBuffet) ||
                other.isBuffet == isBuffet) &&
            (identical(other.isBuffetCustomer, isBuffetCustomer) ||
                other.isBuffetCustomer == isBuffetCustomer) &&
            (identical(other.isDelay, isDelay) || other.isDelay == isDelay) &&
            (identical(other.isGift, isGift) || other.isGift == isGift) &&
            (identical(other.isMust, isMust) || other.isMust == isMust) &&
            (identical(other.localeAttributeName, localeAttributeName) ||
                other.localeAttributeName == localeAttributeName) &&
            (identical(other.localeName, localeName) ||
                other.localeName == localeName) &&
            (identical(other.num, num) || other.num == num) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.refundAmount, refundAmount) ||
                other.refundAmount == refundAmount) &&
            (identical(other.refundReason, refundReason) ||
                other.refundReason == refundReason) &&
            (identical(other.remark, remark) || other.remark == remark) &&
            (identical(other.salePrice, salePrice) ||
                other.salePrice == salePrice) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.totalPrice, totalPrice) ||
                other.totalPrice == totalPrice) &&
            (identical(other.uuid, uuid) || other.uuid == uuid));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      giftReason,
      imageUrl,
      isBuffet,
      isBuffetCustomer,
      isDelay,
      isGift,
      isMust,
      localeAttributeName,
      localeName,
      num,
      price,
      refundAmount,
      refundReason,
      remark,
      salePrice,
      status,
      totalPrice,
      uuid);

  /// Create a copy of RespOrderProduct
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RespOrderProductImplCopyWith<_$RespOrderProductImpl> get copyWith =>
      __$$RespOrderProductImplCopyWithImpl<_$RespOrderProductImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RespOrderProductImplToJson(
      this,
    );
  }
}

abstract class _RespOrderProduct implements RespOrderProduct {
  factory _RespOrderProduct(
      {@JsonKey(name: "gift_reason") required final String giftReason,
      @JsonKey(name: "image_url") required final String imageUrl,
      @JsonKey(name: "is_buffet") required final bool isBuffet,
      @JsonKey(name: "is_buffet_customer") required final bool isBuffetCustomer,
      @JsonKey(name: "is_delay") required final bool isDelay,
      @JsonKey(name: "is_gift") required final bool isGift,
      @JsonKey(name: "is_must") required final bool isMust,
      @JsonKey(name: "locale_attribute_name")
      required final LocaleName localeAttributeName,
      @JsonKey(name: "locale_name") required final LocaleName localeName,
      @JsonKey(name: "num") required final int num,
      @JsonKey(name: "price") required final double price,
      @JsonKey(name: "refund_amount") required final double refundAmount,
      @JsonKey(name: "refund_reason") required final String refundReason,
      @JsonKey(name: "remark") required final String remark,
      @JsonKey(name: "sale_price") required final double salePrice,
      @JsonKey(name: "status") required final int status,
      @JsonKey(name: "total_price") required final double totalPrice,
      @JsonKey(name: "uuid") required final int uuid}) = _$RespOrderProductImpl;

  factory _RespOrderProduct.fromJson(Map<String, dynamic> json) =
      _$RespOrderProductImpl.fromJson;

  @override
  @JsonKey(name: "gift_reason")
  String get giftReason;
  @override
  @JsonKey(name: "image_url")
  String get imageUrl;
  @override
  @JsonKey(name: "is_buffet")
  bool get isBuffet;
  @override
  @JsonKey(name: "is_buffet_customer")
  bool get isBuffetCustomer;
  @override
  @JsonKey(name: "is_delay")
  bool get isDelay;
  @override
  @JsonKey(name: "is_gift")
  bool get isGift;
  @override
  @JsonKey(name: "is_must")
  bool get isMust;
  @override
  @JsonKey(name: "locale_attribute_name")
  LocaleName get localeAttributeName;
  @override
  @JsonKey(name: "locale_name")
  LocaleName get localeName;
  @override
  @JsonKey(name: "num")
  int get num;
  @override
  @JsonKey(name: "price")
  double get price;
  @override
  @JsonKey(name: "refund_amount")
  double get refundAmount;
  @override
  @JsonKey(name: "refund_reason")
  String get refundReason;
  @override
  @JsonKey(name: "remark")
  String get remark;
  @override
  @JsonKey(name: "sale_price")
  double get salePrice;
  @override
  @JsonKey(name: "status")
  int get status;
  @override
  @JsonKey(name: "total_price")
  double get totalPrice;
  @override
  @JsonKey(name: "uuid")
  int get uuid;

  /// Create a copy of RespOrderProduct
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RespOrderProductImplCopyWith<_$RespOrderProductImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

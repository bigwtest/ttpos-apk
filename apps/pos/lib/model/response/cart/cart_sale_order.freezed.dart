// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cart_sale_order.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ResponseCartSaleOrder _$ResponseCartSaleOrderFromJson(
    Map<String, dynamic> json) {
  return _ResponseCartSaleOrder.fromJson(json);
}

/// @nodoc
mixin _$ResponseCartSaleOrder {
// 订单ID
  @JsonKey(name: 'uuid')
  int get uuid => throw _privateConstructorUsedError; // 订单号
  @JsonKey(name: 'order_no')
  String get orderNo => throw _privateConstructorUsedError; // 订单状态
  @JsonKey(name: 'status')
  int get status => throw _privateConstructorUsedError; // 是否有折扣
  @JsonKey(name: 'is_discount')
  bool get isDiscount => throw _privateConstructorUsedError; // 是否有会员折扣
  @JsonKey(name: 'is_member_discount')
  bool? get isMemberDiscount => throw _privateConstructorUsedError; // 订单改价折扣率
  @JsonKey(name: 'custom_discount_rate')
  double get customDiscountRate => throw _privateConstructorUsedError; // 订单抹零规则
  @JsonKey(name: 'zero_rule')
  int get zeroRule => throw _privateConstructorUsedError; // 商品列表
  @JsonKey(name: 'product_list')
  List<ResponseCartProduct> get productList =>
      throw _privateConstructorUsedError; // 金额信息
  @JsonKey(name: 'amount_info')
  ResponseCartAmountInfo get amountInfo =>
      throw _privateConstructorUsedError; // 商品数量
  @JsonKey(name: 'product_num')
  int get productNum => throw _privateConstructorUsedError; // 优惠弹窗-自动抹零提示
  @JsonKey(name: "auto_discount_message")
  String? get autoDiscountMessage => throw _privateConstructorUsedError;

  /// Serializes this ResponseCartSaleOrder to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ResponseCartSaleOrder
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ResponseCartSaleOrderCopyWith<ResponseCartSaleOrder> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResponseCartSaleOrderCopyWith<$Res> {
  factory $ResponseCartSaleOrderCopyWith(ResponseCartSaleOrder value,
          $Res Function(ResponseCartSaleOrder) then) =
      _$ResponseCartSaleOrderCopyWithImpl<$Res, ResponseCartSaleOrder>;
  @useResult
  $Res call(
      {@JsonKey(name: 'uuid') int uuid,
      @JsonKey(name: 'order_no') String orderNo,
      @JsonKey(name: 'status') int status,
      @JsonKey(name: 'is_discount') bool isDiscount,
      @JsonKey(name: 'is_member_discount') bool? isMemberDiscount,
      @JsonKey(name: 'custom_discount_rate') double customDiscountRate,
      @JsonKey(name: 'zero_rule') int zeroRule,
      @JsonKey(name: 'product_list') List<ResponseCartProduct> productList,
      @JsonKey(name: 'amount_info') ResponseCartAmountInfo amountInfo,
      @JsonKey(name: 'product_num') int productNum,
      @JsonKey(name: "auto_discount_message") String? autoDiscountMessage});

  $ResponseCartAmountInfoCopyWith<$Res> get amountInfo;
}

/// @nodoc
class _$ResponseCartSaleOrderCopyWithImpl<$Res,
        $Val extends ResponseCartSaleOrder>
    implements $ResponseCartSaleOrderCopyWith<$Res> {
  _$ResponseCartSaleOrderCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ResponseCartSaleOrder
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uuid = null,
    Object? orderNo = null,
    Object? status = null,
    Object? isDiscount = null,
    Object? isMemberDiscount = freezed,
    Object? customDiscountRate = null,
    Object? zeroRule = null,
    Object? productList = null,
    Object? amountInfo = null,
    Object? productNum = null,
    Object? autoDiscountMessage = freezed,
  }) {
    return _then(_value.copyWith(
      uuid: null == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as int,
      orderNo: null == orderNo
          ? _value.orderNo
          : orderNo // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
      isDiscount: null == isDiscount
          ? _value.isDiscount
          : isDiscount // ignore: cast_nullable_to_non_nullable
              as bool,
      isMemberDiscount: freezed == isMemberDiscount
          ? _value.isMemberDiscount
          : isMemberDiscount // ignore: cast_nullable_to_non_nullable
              as bool?,
      customDiscountRate: null == customDiscountRate
          ? _value.customDiscountRate
          : customDiscountRate // ignore: cast_nullable_to_non_nullable
              as double,
      zeroRule: null == zeroRule
          ? _value.zeroRule
          : zeroRule // ignore: cast_nullable_to_non_nullable
              as int,
      productList: null == productList
          ? _value.productList
          : productList // ignore: cast_nullable_to_non_nullable
              as List<ResponseCartProduct>,
      amountInfo: null == amountInfo
          ? _value.amountInfo
          : amountInfo // ignore: cast_nullable_to_non_nullable
              as ResponseCartAmountInfo,
      productNum: null == productNum
          ? _value.productNum
          : productNum // ignore: cast_nullable_to_non_nullable
              as int,
      autoDiscountMessage: freezed == autoDiscountMessage
          ? _value.autoDiscountMessage
          : autoDiscountMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  /// Create a copy of ResponseCartSaleOrder
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ResponseCartAmountInfoCopyWith<$Res> get amountInfo {
    return $ResponseCartAmountInfoCopyWith<$Res>(_value.amountInfo, (value) {
      return _then(_value.copyWith(amountInfo: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ResponseCartSaleOrderImplCopyWith<$Res>
    implements $ResponseCartSaleOrderCopyWith<$Res> {
  factory _$$ResponseCartSaleOrderImplCopyWith(
          _$ResponseCartSaleOrderImpl value,
          $Res Function(_$ResponseCartSaleOrderImpl) then) =
      __$$ResponseCartSaleOrderImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'uuid') int uuid,
      @JsonKey(name: 'order_no') String orderNo,
      @JsonKey(name: 'status') int status,
      @JsonKey(name: 'is_discount') bool isDiscount,
      @JsonKey(name: 'is_member_discount') bool? isMemberDiscount,
      @JsonKey(name: 'custom_discount_rate') double customDiscountRate,
      @JsonKey(name: 'zero_rule') int zeroRule,
      @JsonKey(name: 'product_list') List<ResponseCartProduct> productList,
      @JsonKey(name: 'amount_info') ResponseCartAmountInfo amountInfo,
      @JsonKey(name: 'product_num') int productNum,
      @JsonKey(name: "auto_discount_message") String? autoDiscountMessage});

  @override
  $ResponseCartAmountInfoCopyWith<$Res> get amountInfo;
}

/// @nodoc
class __$$ResponseCartSaleOrderImplCopyWithImpl<$Res>
    extends _$ResponseCartSaleOrderCopyWithImpl<$Res,
        _$ResponseCartSaleOrderImpl>
    implements _$$ResponseCartSaleOrderImplCopyWith<$Res> {
  __$$ResponseCartSaleOrderImplCopyWithImpl(_$ResponseCartSaleOrderImpl _value,
      $Res Function(_$ResponseCartSaleOrderImpl) _then)
      : super(_value, _then);

  /// Create a copy of ResponseCartSaleOrder
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uuid = null,
    Object? orderNo = null,
    Object? status = null,
    Object? isDiscount = null,
    Object? isMemberDiscount = freezed,
    Object? customDiscountRate = null,
    Object? zeroRule = null,
    Object? productList = null,
    Object? amountInfo = null,
    Object? productNum = null,
    Object? autoDiscountMessage = freezed,
  }) {
    return _then(_$ResponseCartSaleOrderImpl(
      uuid: null == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as int,
      orderNo: null == orderNo
          ? _value.orderNo
          : orderNo // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
      isDiscount: null == isDiscount
          ? _value.isDiscount
          : isDiscount // ignore: cast_nullable_to_non_nullable
              as bool,
      isMemberDiscount: freezed == isMemberDiscount
          ? _value.isMemberDiscount
          : isMemberDiscount // ignore: cast_nullable_to_non_nullable
              as bool?,
      customDiscountRate: null == customDiscountRate
          ? _value.customDiscountRate
          : customDiscountRate // ignore: cast_nullable_to_non_nullable
              as double,
      zeroRule: null == zeroRule
          ? _value.zeroRule
          : zeroRule // ignore: cast_nullable_to_non_nullable
              as int,
      productList: null == productList
          ? _value._productList
          : productList // ignore: cast_nullable_to_non_nullable
              as List<ResponseCartProduct>,
      amountInfo: null == amountInfo
          ? _value.amountInfo
          : amountInfo // ignore: cast_nullable_to_non_nullable
              as ResponseCartAmountInfo,
      productNum: null == productNum
          ? _value.productNum
          : productNum // ignore: cast_nullable_to_non_nullable
              as int,
      autoDiscountMessage: freezed == autoDiscountMessage
          ? _value.autoDiscountMessage
          : autoDiscountMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ResponseCartSaleOrderImpl implements _ResponseCartSaleOrder {
  _$ResponseCartSaleOrderImpl(
      {@JsonKey(name: 'uuid') required this.uuid,
      @JsonKey(name: 'order_no') required this.orderNo,
      @JsonKey(name: 'status') required this.status,
      @JsonKey(name: 'is_discount') required this.isDiscount,
      @JsonKey(name: 'is_member_discount') this.isMemberDiscount,
      @JsonKey(name: 'custom_discount_rate') required this.customDiscountRate,
      @JsonKey(name: 'zero_rule') required this.zeroRule,
      @JsonKey(name: 'product_list')
      required final List<ResponseCartProduct> productList,
      @JsonKey(name: 'amount_info') required this.amountInfo,
      @JsonKey(name: 'product_num') required this.productNum,
      @JsonKey(name: "auto_discount_message") this.autoDiscountMessage})
      : _productList = productList;

  factory _$ResponseCartSaleOrderImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResponseCartSaleOrderImplFromJson(json);

// 订单ID
  @override
  @JsonKey(name: 'uuid')
  final int uuid;
// 订单号
  @override
  @JsonKey(name: 'order_no')
  final String orderNo;
// 订单状态
  @override
  @JsonKey(name: 'status')
  final int status;
// 是否有折扣
  @override
  @JsonKey(name: 'is_discount')
  final bool isDiscount;
// 是否有会员折扣
  @override
  @JsonKey(name: 'is_member_discount')
  final bool? isMemberDiscount;
// 订单改价折扣率
  @override
  @JsonKey(name: 'custom_discount_rate')
  final double customDiscountRate;
// 订单抹零规则
  @override
  @JsonKey(name: 'zero_rule')
  final int zeroRule;
// 商品列表
  final List<ResponseCartProduct> _productList;
// 商品列表
  @override
  @JsonKey(name: 'product_list')
  List<ResponseCartProduct> get productList {
    if (_productList is EqualUnmodifiableListView) return _productList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_productList);
  }

// 金额信息
  @override
  @JsonKey(name: 'amount_info')
  final ResponseCartAmountInfo amountInfo;
// 商品数量
  @override
  @JsonKey(name: 'product_num')
  final int productNum;
// 优惠弹窗-自动抹零提示
  @override
  @JsonKey(name: "auto_discount_message")
  final String? autoDiscountMessage;

  @override
  String toString() {
    return 'ResponseCartSaleOrder(uuid: $uuid, orderNo: $orderNo, status: $status, isDiscount: $isDiscount, isMemberDiscount: $isMemberDiscount, customDiscountRate: $customDiscountRate, zeroRule: $zeroRule, productList: $productList, amountInfo: $amountInfo, productNum: $productNum, autoDiscountMessage: $autoDiscountMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResponseCartSaleOrderImpl &&
            (identical(other.uuid, uuid) || other.uuid == uuid) &&
            (identical(other.orderNo, orderNo) || other.orderNo == orderNo) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.isDiscount, isDiscount) ||
                other.isDiscount == isDiscount) &&
            (identical(other.isMemberDiscount, isMemberDiscount) ||
                other.isMemberDiscount == isMemberDiscount) &&
            (identical(other.customDiscountRate, customDiscountRate) ||
                other.customDiscountRate == customDiscountRate) &&
            (identical(other.zeroRule, zeroRule) ||
                other.zeroRule == zeroRule) &&
            const DeepCollectionEquality()
                .equals(other._productList, _productList) &&
            (identical(other.amountInfo, amountInfo) ||
                other.amountInfo == amountInfo) &&
            (identical(other.productNum, productNum) ||
                other.productNum == productNum) &&
            (identical(other.autoDiscountMessage, autoDiscountMessage) ||
                other.autoDiscountMessage == autoDiscountMessage));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      uuid,
      orderNo,
      status,
      isDiscount,
      isMemberDiscount,
      customDiscountRate,
      zeroRule,
      const DeepCollectionEquality().hash(_productList),
      amountInfo,
      productNum,
      autoDiscountMessage);

  /// Create a copy of ResponseCartSaleOrder
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ResponseCartSaleOrderImplCopyWith<_$ResponseCartSaleOrderImpl>
      get copyWith => __$$ResponseCartSaleOrderImplCopyWithImpl<
          _$ResponseCartSaleOrderImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResponseCartSaleOrderImplToJson(
      this,
    );
  }
}

abstract class _ResponseCartSaleOrder implements ResponseCartSaleOrder {
  factory _ResponseCartSaleOrder(
      {@JsonKey(name: 'uuid') required final int uuid,
      @JsonKey(name: 'order_no') required final String orderNo,
      @JsonKey(name: 'status') required final int status,
      @JsonKey(name: 'is_discount') required final bool isDiscount,
      @JsonKey(name: 'is_member_discount') final bool? isMemberDiscount,
      @JsonKey(name: 'custom_discount_rate')
      required final double customDiscountRate,
      @JsonKey(name: 'zero_rule') required final int zeroRule,
      @JsonKey(name: 'product_list')
      required final List<ResponseCartProduct> productList,
      @JsonKey(name: 'amount_info')
      required final ResponseCartAmountInfo amountInfo,
      @JsonKey(name: 'product_num') required final int productNum,
      @JsonKey(name: "auto_discount_message")
      final String? autoDiscountMessage}) = _$ResponseCartSaleOrderImpl;

  factory _ResponseCartSaleOrder.fromJson(Map<String, dynamic> json) =
      _$ResponseCartSaleOrderImpl.fromJson;

// 订单ID
  @override
  @JsonKey(name: 'uuid')
  int get uuid; // 订单号
  @override
  @JsonKey(name: 'order_no')
  String get orderNo; // 订单状态
  @override
  @JsonKey(name: 'status')
  int get status; // 是否有折扣
  @override
  @JsonKey(name: 'is_discount')
  bool get isDiscount; // 是否有会员折扣
  @override
  @JsonKey(name: 'is_member_discount')
  bool? get isMemberDiscount; // 订单改价折扣率
  @override
  @JsonKey(name: 'custom_discount_rate')
  double get customDiscountRate; // 订单抹零规则
  @override
  @JsonKey(name: 'zero_rule')
  int get zeroRule; // 商品列表
  @override
  @JsonKey(name: 'product_list')
  List<ResponseCartProduct> get productList; // 金额信息
  @override
  @JsonKey(name: 'amount_info')
  ResponseCartAmountInfo get amountInfo; // 商品数量
  @override
  @JsonKey(name: 'product_num')
  int get productNum; // 优惠弹窗-自动抹零提示
  @override
  @JsonKey(name: "auto_discount_message")
  String? get autoDiscountMessage;

  /// Create a copy of ResponseCartSaleOrder
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ResponseCartSaleOrderImplCopyWith<_$ResponseCartSaleOrderImpl>
      get copyWith => throw _privateConstructorUsedError;
}

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'must_order_amount_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GoodsMustOrderAmountInfo _$GoodsMustOrderAmountInfoFromJson(
    Map<String, dynamic> json) {
  return _GoodsMustOrderAmountInfo.fromJson(json);
}

/// @nodoc
mixin _$GoodsMustOrderAmountInfo {
// 总金额。商品未含税时，总金额=商品金额(折后)+服务费+税费。商品已含税时，总金额=商品金额（折后，含商品消费税）+服务费+税费（只有服务费税）
  @JsonKey(name: "amount")
  double get amount =>
      throw _privateConstructorUsedError; // 优惠折扣金额(整单打折优惠金额+订单抹零金额)
  @JsonKey(name: "discount_amount")
  double get discountAmount => throw _privateConstructorUsedError; // 会员优惠折扣金额
  @JsonKey(name: "member_discount_amount")
  double get memberDiscountAmount =>
      throw _privateConstructorUsedError; // 商品金额(折后价)
  @JsonKey(name: "product_amount")
  double get productAmount => throw _privateConstructorUsedError; // 商品金额(原价)
  @JsonKey(name: "product_origin_amount")
  double get productOriginAmount => throw _privateConstructorUsedError; // 服务费
  @JsonKey(name: "service_amount")
  double get serviceAmount =>
      throw _privateConstructorUsedError; // 税费（商品税费+服务费税费）
  @JsonKey(name: "tax_amount")
  double get taxAmount => throw _privateConstructorUsedError;

  /// Serializes this GoodsMustOrderAmountInfo to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GoodsMustOrderAmountInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GoodsMustOrderAmountInfoCopyWith<GoodsMustOrderAmountInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GoodsMustOrderAmountInfoCopyWith<$Res> {
  factory $GoodsMustOrderAmountInfoCopyWith(GoodsMustOrderAmountInfo value,
          $Res Function(GoodsMustOrderAmountInfo) then) =
      _$GoodsMustOrderAmountInfoCopyWithImpl<$Res, GoodsMustOrderAmountInfo>;
  @useResult
  $Res call(
      {@JsonKey(name: "amount") double amount,
      @JsonKey(name: "discount_amount") double discountAmount,
      @JsonKey(name: "member_discount_amount") double memberDiscountAmount,
      @JsonKey(name: "product_amount") double productAmount,
      @JsonKey(name: "product_origin_amount") double productOriginAmount,
      @JsonKey(name: "service_amount") double serviceAmount,
      @JsonKey(name: "tax_amount") double taxAmount});
}

/// @nodoc
class _$GoodsMustOrderAmountInfoCopyWithImpl<$Res,
        $Val extends GoodsMustOrderAmountInfo>
    implements $GoodsMustOrderAmountInfoCopyWith<$Res> {
  _$GoodsMustOrderAmountInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GoodsMustOrderAmountInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? amount = null,
    Object? discountAmount = null,
    Object? memberDiscountAmount = null,
    Object? productAmount = null,
    Object? productOriginAmount = null,
    Object? serviceAmount = null,
    Object? taxAmount = null,
  }) {
    return _then(_value.copyWith(
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      discountAmount: null == discountAmount
          ? _value.discountAmount
          : discountAmount // ignore: cast_nullable_to_non_nullable
              as double,
      memberDiscountAmount: null == memberDiscountAmount
          ? _value.memberDiscountAmount
          : memberDiscountAmount // ignore: cast_nullable_to_non_nullable
              as double,
      productAmount: null == productAmount
          ? _value.productAmount
          : productAmount // ignore: cast_nullable_to_non_nullable
              as double,
      productOriginAmount: null == productOriginAmount
          ? _value.productOriginAmount
          : productOriginAmount // ignore: cast_nullable_to_non_nullable
              as double,
      serviceAmount: null == serviceAmount
          ? _value.serviceAmount
          : serviceAmount // ignore: cast_nullable_to_non_nullable
              as double,
      taxAmount: null == taxAmount
          ? _value.taxAmount
          : taxAmount // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GoodsMustOrderAmountInfoImplCopyWith<$Res>
    implements $GoodsMustOrderAmountInfoCopyWith<$Res> {
  factory _$$GoodsMustOrderAmountInfoImplCopyWith(
          _$GoodsMustOrderAmountInfoImpl value,
          $Res Function(_$GoodsMustOrderAmountInfoImpl) then) =
      __$$GoodsMustOrderAmountInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "amount") double amount,
      @JsonKey(name: "discount_amount") double discountAmount,
      @JsonKey(name: "member_discount_amount") double memberDiscountAmount,
      @JsonKey(name: "product_amount") double productAmount,
      @JsonKey(name: "product_origin_amount") double productOriginAmount,
      @JsonKey(name: "service_amount") double serviceAmount,
      @JsonKey(name: "tax_amount") double taxAmount});
}

/// @nodoc
class __$$GoodsMustOrderAmountInfoImplCopyWithImpl<$Res>
    extends _$GoodsMustOrderAmountInfoCopyWithImpl<$Res,
        _$GoodsMustOrderAmountInfoImpl>
    implements _$$GoodsMustOrderAmountInfoImplCopyWith<$Res> {
  __$$GoodsMustOrderAmountInfoImplCopyWithImpl(
      _$GoodsMustOrderAmountInfoImpl _value,
      $Res Function(_$GoodsMustOrderAmountInfoImpl) _then)
      : super(_value, _then);

  /// Create a copy of GoodsMustOrderAmountInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? amount = null,
    Object? discountAmount = null,
    Object? memberDiscountAmount = null,
    Object? productAmount = null,
    Object? productOriginAmount = null,
    Object? serviceAmount = null,
    Object? taxAmount = null,
  }) {
    return _then(_$GoodsMustOrderAmountInfoImpl(
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      discountAmount: null == discountAmount
          ? _value.discountAmount
          : discountAmount // ignore: cast_nullable_to_non_nullable
              as double,
      memberDiscountAmount: null == memberDiscountAmount
          ? _value.memberDiscountAmount
          : memberDiscountAmount // ignore: cast_nullable_to_non_nullable
              as double,
      productAmount: null == productAmount
          ? _value.productAmount
          : productAmount // ignore: cast_nullable_to_non_nullable
              as double,
      productOriginAmount: null == productOriginAmount
          ? _value.productOriginAmount
          : productOriginAmount // ignore: cast_nullable_to_non_nullable
              as double,
      serviceAmount: null == serviceAmount
          ? _value.serviceAmount
          : serviceAmount // ignore: cast_nullable_to_non_nullable
              as double,
      taxAmount: null == taxAmount
          ? _value.taxAmount
          : taxAmount // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GoodsMustOrderAmountInfoImpl implements _GoodsMustOrderAmountInfo {
  _$GoodsMustOrderAmountInfoImpl(
      {@JsonKey(name: "amount") required this.amount,
      @JsonKey(name: "discount_amount") required this.discountAmount,
      @JsonKey(name: "member_discount_amount")
      required this.memberDiscountAmount,
      @JsonKey(name: "product_amount") required this.productAmount,
      @JsonKey(name: "product_origin_amount") required this.productOriginAmount,
      @JsonKey(name: "service_amount") required this.serviceAmount,
      @JsonKey(name: "tax_amount") required this.taxAmount});

  factory _$GoodsMustOrderAmountInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$GoodsMustOrderAmountInfoImplFromJson(json);

// 总金额。商品未含税时，总金额=商品金额(折后)+服务费+税费。商品已含税时，总金额=商品金额（折后，含商品消费税）+服务费+税费（只有服务费税）
  @override
  @JsonKey(name: "amount")
  final double amount;
// 优惠折扣金额(整单打折优惠金额+订单抹零金额)
  @override
  @JsonKey(name: "discount_amount")
  final double discountAmount;
// 会员优惠折扣金额
  @override
  @JsonKey(name: "member_discount_amount")
  final double memberDiscountAmount;
// 商品金额(折后价)
  @override
  @JsonKey(name: "product_amount")
  final double productAmount;
// 商品金额(原价)
  @override
  @JsonKey(name: "product_origin_amount")
  final double productOriginAmount;
// 服务费
  @override
  @JsonKey(name: "service_amount")
  final double serviceAmount;
// 税费（商品税费+服务费税费）
  @override
  @JsonKey(name: "tax_amount")
  final double taxAmount;

  @override
  String toString() {
    return 'GoodsMustOrderAmountInfo(amount: $amount, discountAmount: $discountAmount, memberDiscountAmount: $memberDiscountAmount, productAmount: $productAmount, productOriginAmount: $productOriginAmount, serviceAmount: $serviceAmount, taxAmount: $taxAmount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GoodsMustOrderAmountInfoImpl &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.discountAmount, discountAmount) ||
                other.discountAmount == discountAmount) &&
            (identical(other.memberDiscountAmount, memberDiscountAmount) ||
                other.memberDiscountAmount == memberDiscountAmount) &&
            (identical(other.productAmount, productAmount) ||
                other.productAmount == productAmount) &&
            (identical(other.productOriginAmount, productOriginAmount) ||
                other.productOriginAmount == productOriginAmount) &&
            (identical(other.serviceAmount, serviceAmount) ||
                other.serviceAmount == serviceAmount) &&
            (identical(other.taxAmount, taxAmount) ||
                other.taxAmount == taxAmount));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      amount,
      discountAmount,
      memberDiscountAmount,
      productAmount,
      productOriginAmount,
      serviceAmount,
      taxAmount);

  /// Create a copy of GoodsMustOrderAmountInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GoodsMustOrderAmountInfoImplCopyWith<_$GoodsMustOrderAmountInfoImpl>
      get copyWith => __$$GoodsMustOrderAmountInfoImplCopyWithImpl<
          _$GoodsMustOrderAmountInfoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GoodsMustOrderAmountInfoImplToJson(
      this,
    );
  }
}

abstract class _GoodsMustOrderAmountInfo implements GoodsMustOrderAmountInfo {
  factory _GoodsMustOrderAmountInfo(
      {@JsonKey(name: "amount") required final double amount,
      @JsonKey(name: "discount_amount") required final double discountAmount,
      @JsonKey(name: "member_discount_amount")
      required final double memberDiscountAmount,
      @JsonKey(name: "product_amount") required final double productAmount,
      @JsonKey(name: "product_origin_amount")
      required final double productOriginAmount,
      @JsonKey(name: "service_amount") required final double serviceAmount,
      @JsonKey(name: "tax_amount")
      required final double taxAmount}) = _$GoodsMustOrderAmountInfoImpl;

  factory _GoodsMustOrderAmountInfo.fromJson(Map<String, dynamic> json) =
      _$GoodsMustOrderAmountInfoImpl.fromJson;

// 总金额。商品未含税时，总金额=商品金额(折后)+服务费+税费。商品已含税时，总金额=商品金额（折后，含商品消费税）+服务费+税费（只有服务费税）
  @override
  @JsonKey(name: "amount")
  double get amount; // 优惠折扣金额(整单打折优惠金额+订单抹零金额)
  @override
  @JsonKey(name: "discount_amount")
  double get discountAmount; // 会员优惠折扣金额
  @override
  @JsonKey(name: "member_discount_amount")
  double get memberDiscountAmount; // 商品金额(折后价)
  @override
  @JsonKey(name: "product_amount")
  double get productAmount; // 商品金额(原价)
  @override
  @JsonKey(name: "product_origin_amount")
  double get productOriginAmount; // 服务费
  @override
  @JsonKey(name: "service_amount")
  double get serviceAmount; // 税费（商品税费+服务费税费）
  @override
  @JsonKey(name: "tax_amount")
  double get taxAmount;

  /// Create a copy of GoodsMustOrderAmountInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GoodsMustOrderAmountInfoImplCopyWith<_$GoodsMustOrderAmountInfoImpl>
      get copyWith => throw _privateConstructorUsedError;
}

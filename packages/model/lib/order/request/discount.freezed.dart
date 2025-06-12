// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'discount.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RequestDiscountDesk _$RequestDiscountDeskFromJson(Map<String, dynamic> json) {
  return _RequestDiscountDesk.fromJson(json);
}

/// @nodoc
mixin _$RequestDiscountDesk {
// 折扣方式
  @JsonKey(name: "discount_method")
  int get discountMethod => throw _privateConstructorUsedError; // 销售账单ID
  @JsonKey(name: "sale_bill_uuid")
  int get saleBillUuid => throw _privateConstructorUsedError; // 销售订单ID
  @JsonKey(name: "sale_order_uuid")
  int get saleOrderUuid => throw _privateConstructorUsedError; // 金额
  @JsonKey(name: "price")
  double get price => throw _privateConstructorUsedError; // 抹零规则
  @JsonKey(name: "zero_rule")
  int get zeroRule =>
      throw _privateConstructorUsedError; // 打折类型 0=百分比折扣，如八折为80% 1=百分比减免Off，如八折为20% off
  @JsonKey(name: "discount_type")
  int get discountType => throw _privateConstructorUsedError; // 打折。0-100之间
  @JsonKey(name: "discount")
  double get discount => throw _privateConstructorUsedError;

  /// Serializes this RequestDiscountDesk to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RequestDiscountDesk
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RequestDiscountDeskCopyWith<RequestDiscountDesk> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RequestDiscountDeskCopyWith<$Res> {
  factory $RequestDiscountDeskCopyWith(
          RequestDiscountDesk value, $Res Function(RequestDiscountDesk) then) =
      _$RequestDiscountDeskCopyWithImpl<$Res, RequestDiscountDesk>;
  @useResult
  $Res call(
      {@JsonKey(name: "discount_method") int discountMethod,
      @JsonKey(name: "sale_bill_uuid") int saleBillUuid,
      @JsonKey(name: "sale_order_uuid") int saleOrderUuid,
      @JsonKey(name: "price") double price,
      @JsonKey(name: "zero_rule") int zeroRule,
      @JsonKey(name: "discount_type") int discountType,
      @JsonKey(name: "discount") double discount});
}

/// @nodoc
class _$RequestDiscountDeskCopyWithImpl<$Res, $Val extends RequestDiscountDesk>
    implements $RequestDiscountDeskCopyWith<$Res> {
  _$RequestDiscountDeskCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RequestDiscountDesk
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? discountMethod = null,
    Object? saleBillUuid = null,
    Object? saleOrderUuid = null,
    Object? price = null,
    Object? zeroRule = null,
    Object? discountType = null,
    Object? discount = null,
  }) {
    return _then(_value.copyWith(
      discountMethod: null == discountMethod
          ? _value.discountMethod
          : discountMethod // ignore: cast_nullable_to_non_nullable
              as int,
      saleBillUuid: null == saleBillUuid
          ? _value.saleBillUuid
          : saleBillUuid // ignore: cast_nullable_to_non_nullable
              as int,
      saleOrderUuid: null == saleOrderUuid
          ? _value.saleOrderUuid
          : saleOrderUuid // ignore: cast_nullable_to_non_nullable
              as int,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      zeroRule: null == zeroRule
          ? _value.zeroRule
          : zeroRule // ignore: cast_nullable_to_non_nullable
              as int,
      discountType: null == discountType
          ? _value.discountType
          : discountType // ignore: cast_nullable_to_non_nullable
              as int,
      discount: null == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RequestDiscountDeskImplCopyWith<$Res>
    implements $RequestDiscountDeskCopyWith<$Res> {
  factory _$$RequestDiscountDeskImplCopyWith(_$RequestDiscountDeskImpl value,
          $Res Function(_$RequestDiscountDeskImpl) then) =
      __$$RequestDiscountDeskImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "discount_method") int discountMethod,
      @JsonKey(name: "sale_bill_uuid") int saleBillUuid,
      @JsonKey(name: "sale_order_uuid") int saleOrderUuid,
      @JsonKey(name: "price") double price,
      @JsonKey(name: "zero_rule") int zeroRule,
      @JsonKey(name: "discount_type") int discountType,
      @JsonKey(name: "discount") double discount});
}

/// @nodoc
class __$$RequestDiscountDeskImplCopyWithImpl<$Res>
    extends _$RequestDiscountDeskCopyWithImpl<$Res, _$RequestDiscountDeskImpl>
    implements _$$RequestDiscountDeskImplCopyWith<$Res> {
  __$$RequestDiscountDeskImplCopyWithImpl(_$RequestDiscountDeskImpl _value,
      $Res Function(_$RequestDiscountDeskImpl) _then)
      : super(_value, _then);

  /// Create a copy of RequestDiscountDesk
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? discountMethod = null,
    Object? saleBillUuid = null,
    Object? saleOrderUuid = null,
    Object? price = null,
    Object? zeroRule = null,
    Object? discountType = null,
    Object? discount = null,
  }) {
    return _then(_$RequestDiscountDeskImpl(
      discountMethod: null == discountMethod
          ? _value.discountMethod
          : discountMethod // ignore: cast_nullable_to_non_nullable
              as int,
      saleBillUuid: null == saleBillUuid
          ? _value.saleBillUuid
          : saleBillUuid // ignore: cast_nullable_to_non_nullable
              as int,
      saleOrderUuid: null == saleOrderUuid
          ? _value.saleOrderUuid
          : saleOrderUuid // ignore: cast_nullable_to_non_nullable
              as int,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      zeroRule: null == zeroRule
          ? _value.zeroRule
          : zeroRule // ignore: cast_nullable_to_non_nullable
              as int,
      discountType: null == discountType
          ? _value.discountType
          : discountType // ignore: cast_nullable_to_non_nullable
              as int,
      discount: null == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RequestDiscountDeskImpl implements _RequestDiscountDesk {
  _$RequestDiscountDeskImpl(
      {@JsonKey(name: "discount_method") required this.discountMethod,
      @JsonKey(name: "sale_bill_uuid") required this.saleBillUuid,
      @JsonKey(name: "sale_order_uuid") required this.saleOrderUuid,
      @JsonKey(name: "price") required this.price,
      @JsonKey(name: "zero_rule") required this.zeroRule,
      @JsonKey(name: "discount_type") required this.discountType,
      @JsonKey(name: "discount") required this.discount});

  factory _$RequestDiscountDeskImpl.fromJson(Map<String, dynamic> json) =>
      _$$RequestDiscountDeskImplFromJson(json);

// 折扣方式
  @override
  @JsonKey(name: "discount_method")
  final int discountMethod;
// 销售账单ID
  @override
  @JsonKey(name: "sale_bill_uuid")
  final int saleBillUuid;
// 销售订单ID
  @override
  @JsonKey(name: "sale_order_uuid")
  final int saleOrderUuid;
// 金额
  @override
  @JsonKey(name: "price")
  final double price;
// 抹零规则
  @override
  @JsonKey(name: "zero_rule")
  final int zeroRule;
// 打折类型 0=百分比折扣，如八折为80% 1=百分比减免Off，如八折为20% off
  @override
  @JsonKey(name: "discount_type")
  final int discountType;
// 打折。0-100之间
  @override
  @JsonKey(name: "discount")
  final double discount;

  @override
  String toString() {
    return 'RequestDiscountDesk(discountMethod: $discountMethod, saleBillUuid: $saleBillUuid, saleOrderUuid: $saleOrderUuid, price: $price, zeroRule: $zeroRule, discountType: $discountType, discount: $discount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RequestDiscountDeskImpl &&
            (identical(other.discountMethod, discountMethod) ||
                other.discountMethod == discountMethod) &&
            (identical(other.saleBillUuid, saleBillUuid) ||
                other.saleBillUuid == saleBillUuid) &&
            (identical(other.saleOrderUuid, saleOrderUuid) ||
                other.saleOrderUuid == saleOrderUuid) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.zeroRule, zeroRule) ||
                other.zeroRule == zeroRule) &&
            (identical(other.discountType, discountType) ||
                other.discountType == discountType) &&
            (identical(other.discount, discount) ||
                other.discount == discount));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, discountMethod, saleBillUuid,
      saleOrderUuid, price, zeroRule, discountType, discount);

  /// Create a copy of RequestDiscountDesk
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RequestDiscountDeskImplCopyWith<_$RequestDiscountDeskImpl> get copyWith =>
      __$$RequestDiscountDeskImplCopyWithImpl<_$RequestDiscountDeskImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RequestDiscountDeskImplToJson(
      this,
    );
  }
}

abstract class _RequestDiscountDesk implements RequestDiscountDesk {
  factory _RequestDiscountDesk(
          {@JsonKey(name: "discount_method") required final int discountMethod,
          @JsonKey(name: "sale_bill_uuid") required final int saleBillUuid,
          @JsonKey(name: "sale_order_uuid") required final int saleOrderUuid,
          @JsonKey(name: "price") required final double price,
          @JsonKey(name: "zero_rule") required final int zeroRule,
          @JsonKey(name: "discount_type") required final int discountType,
          @JsonKey(name: "discount") required final double discount}) =
      _$RequestDiscountDeskImpl;

  factory _RequestDiscountDesk.fromJson(Map<String, dynamic> json) =
      _$RequestDiscountDeskImpl.fromJson;

// 折扣方式
  @override
  @JsonKey(name: "discount_method")
  int get discountMethod; // 销售账单ID
  @override
  @JsonKey(name: "sale_bill_uuid")
  int get saleBillUuid; // 销售订单ID
  @override
  @JsonKey(name: "sale_order_uuid")
  int get saleOrderUuid; // 金额
  @override
  @JsonKey(name: "price")
  double get price; // 抹零规则
  @override
  @JsonKey(name: "zero_rule")
  int get zeroRule; // 打折类型 0=百分比折扣，如八折为80% 1=百分比减免Off，如八折为20% off
  @override
  @JsonKey(name: "discount_type")
  int get discountType; // 打折。0-100之间
  @override
  @JsonKey(name: "discount")
  double get discount;

  /// Create a copy of RequestDiscountDesk
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RequestDiscountDeskImplCopyWith<_$RequestDiscountDeskImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

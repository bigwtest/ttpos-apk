// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'un_send_product.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ResponseUnSendProduct _$ResponseUnSendProductFromJson(
    Map<String, dynamic> json) {
  return _ResponseUnSendProduct.fromJson(json);
}

/// @nodoc
mixin _$ResponseUnSendProduct {
// 产品名称
  @JsonKey(name: "product_name_text")
  String? get productNameText => throw _privateConstructorUsedError; // 出菜状态
  @JsonKey(name: "kitchen_status")
  int? get kitchenStatus => throw _privateConstructorUsedError; // 消费税支付价格
  @JsonKey(name: "consumption_tax_pay_price")
  dynamic get consumptionTaxPayPrice =>
      throw _privateConstructorUsedError; // 消费税总完税价格
  @JsonKey(name: "total_consumption_tax_pay_price")
  dynamic get totalConsumptionTaxPayPrice =>
      throw _privateConstructorUsedError; // 消费税订单总价
  @JsonKey(name: "total_consumption_tax_order_price")
  dynamic get totalConsumptionTaxOrderPrice =>
      throw _privateConstructorUsedError; // 产品规格id
  @JsonKey(name: "product_sku_id")
  int? get productSkuId => throw _privateConstructorUsedError;

  /// Serializes this ResponseUnSendProduct to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ResponseUnSendProduct
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ResponseUnSendProductCopyWith<ResponseUnSendProduct> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResponseUnSendProductCopyWith<$Res> {
  factory $ResponseUnSendProductCopyWith(ResponseUnSendProduct value,
          $Res Function(ResponseUnSendProduct) then) =
      _$ResponseUnSendProductCopyWithImpl<$Res, ResponseUnSendProduct>;
  @useResult
  $Res call(
      {@JsonKey(name: "product_name_text") String? productNameText,
      @JsonKey(name: "kitchen_status") int? kitchenStatus,
      @JsonKey(name: "consumption_tax_pay_price")
      dynamic consumptionTaxPayPrice,
      @JsonKey(name: "total_consumption_tax_pay_price")
      dynamic totalConsumptionTaxPayPrice,
      @JsonKey(name: "total_consumption_tax_order_price")
      dynamic totalConsumptionTaxOrderPrice,
      @JsonKey(name: "product_sku_id") int? productSkuId});
}

/// @nodoc
class _$ResponseUnSendProductCopyWithImpl<$Res,
        $Val extends ResponseUnSendProduct>
    implements $ResponseUnSendProductCopyWith<$Res> {
  _$ResponseUnSendProductCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ResponseUnSendProduct
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productNameText = freezed,
    Object? kitchenStatus = freezed,
    Object? consumptionTaxPayPrice = freezed,
    Object? totalConsumptionTaxPayPrice = freezed,
    Object? totalConsumptionTaxOrderPrice = freezed,
    Object? productSkuId = freezed,
  }) {
    return _then(_value.copyWith(
      productNameText: freezed == productNameText
          ? _value.productNameText
          : productNameText // ignore: cast_nullable_to_non_nullable
              as String?,
      kitchenStatus: freezed == kitchenStatus
          ? _value.kitchenStatus
          : kitchenStatus // ignore: cast_nullable_to_non_nullable
              as int?,
      consumptionTaxPayPrice: freezed == consumptionTaxPayPrice
          ? _value.consumptionTaxPayPrice
          : consumptionTaxPayPrice // ignore: cast_nullable_to_non_nullable
              as dynamic,
      totalConsumptionTaxPayPrice: freezed == totalConsumptionTaxPayPrice
          ? _value.totalConsumptionTaxPayPrice
          : totalConsumptionTaxPayPrice // ignore: cast_nullable_to_non_nullable
              as dynamic,
      totalConsumptionTaxOrderPrice: freezed == totalConsumptionTaxOrderPrice
          ? _value.totalConsumptionTaxOrderPrice
          : totalConsumptionTaxOrderPrice // ignore: cast_nullable_to_non_nullable
              as dynamic,
      productSkuId: freezed == productSkuId
          ? _value.productSkuId
          : productSkuId // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ResponseUnSendProductImplCopyWith<$Res>
    implements $ResponseUnSendProductCopyWith<$Res> {
  factory _$$ResponseUnSendProductImplCopyWith(
          _$ResponseUnSendProductImpl value,
          $Res Function(_$ResponseUnSendProductImpl) then) =
      __$$ResponseUnSendProductImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "product_name_text") String? productNameText,
      @JsonKey(name: "kitchen_status") int? kitchenStatus,
      @JsonKey(name: "consumption_tax_pay_price")
      dynamic consumptionTaxPayPrice,
      @JsonKey(name: "total_consumption_tax_pay_price")
      dynamic totalConsumptionTaxPayPrice,
      @JsonKey(name: "total_consumption_tax_order_price")
      dynamic totalConsumptionTaxOrderPrice,
      @JsonKey(name: "product_sku_id") int? productSkuId});
}

/// @nodoc
class __$$ResponseUnSendProductImplCopyWithImpl<$Res>
    extends _$ResponseUnSendProductCopyWithImpl<$Res,
        _$ResponseUnSendProductImpl>
    implements _$$ResponseUnSendProductImplCopyWith<$Res> {
  __$$ResponseUnSendProductImplCopyWithImpl(_$ResponseUnSendProductImpl _value,
      $Res Function(_$ResponseUnSendProductImpl) _then)
      : super(_value, _then);

  /// Create a copy of ResponseUnSendProduct
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productNameText = freezed,
    Object? kitchenStatus = freezed,
    Object? consumptionTaxPayPrice = freezed,
    Object? totalConsumptionTaxPayPrice = freezed,
    Object? totalConsumptionTaxOrderPrice = freezed,
    Object? productSkuId = freezed,
  }) {
    return _then(_$ResponseUnSendProductImpl(
      productNameText: freezed == productNameText
          ? _value.productNameText
          : productNameText // ignore: cast_nullable_to_non_nullable
              as String?,
      kitchenStatus: freezed == kitchenStatus
          ? _value.kitchenStatus
          : kitchenStatus // ignore: cast_nullable_to_non_nullable
              as int?,
      consumptionTaxPayPrice: freezed == consumptionTaxPayPrice
          ? _value.consumptionTaxPayPrice
          : consumptionTaxPayPrice // ignore: cast_nullable_to_non_nullable
              as dynamic,
      totalConsumptionTaxPayPrice: freezed == totalConsumptionTaxPayPrice
          ? _value.totalConsumptionTaxPayPrice
          : totalConsumptionTaxPayPrice // ignore: cast_nullable_to_non_nullable
              as dynamic,
      totalConsumptionTaxOrderPrice: freezed == totalConsumptionTaxOrderPrice
          ? _value.totalConsumptionTaxOrderPrice
          : totalConsumptionTaxOrderPrice // ignore: cast_nullable_to_non_nullable
              as dynamic,
      productSkuId: freezed == productSkuId
          ? _value.productSkuId
          : productSkuId // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ResponseUnSendProductImpl implements _ResponseUnSendProduct {
  _$ResponseUnSendProductImpl(
      {@JsonKey(name: "product_name_text") this.productNameText,
      @JsonKey(name: "kitchen_status") this.kitchenStatus,
      @JsonKey(name: "consumption_tax_pay_price") this.consumptionTaxPayPrice,
      @JsonKey(name: "total_consumption_tax_pay_price")
      this.totalConsumptionTaxPayPrice,
      @JsonKey(name: "total_consumption_tax_order_price")
      this.totalConsumptionTaxOrderPrice,
      @JsonKey(name: "product_sku_id") this.productSkuId});

  factory _$ResponseUnSendProductImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResponseUnSendProductImplFromJson(json);

// 产品名称
  @override
  @JsonKey(name: "product_name_text")
  final String? productNameText;
// 出菜状态
  @override
  @JsonKey(name: "kitchen_status")
  final int? kitchenStatus;
// 消费税支付价格
  @override
  @JsonKey(name: "consumption_tax_pay_price")
  final dynamic consumptionTaxPayPrice;
// 消费税总完税价格
  @override
  @JsonKey(name: "total_consumption_tax_pay_price")
  final dynamic totalConsumptionTaxPayPrice;
// 消费税订单总价
  @override
  @JsonKey(name: "total_consumption_tax_order_price")
  final dynamic totalConsumptionTaxOrderPrice;
// 产品规格id
  @override
  @JsonKey(name: "product_sku_id")
  final int? productSkuId;

  @override
  String toString() {
    return 'ResponseUnSendProduct(productNameText: $productNameText, kitchenStatus: $kitchenStatus, consumptionTaxPayPrice: $consumptionTaxPayPrice, totalConsumptionTaxPayPrice: $totalConsumptionTaxPayPrice, totalConsumptionTaxOrderPrice: $totalConsumptionTaxOrderPrice, productSkuId: $productSkuId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResponseUnSendProductImpl &&
            (identical(other.productNameText, productNameText) ||
                other.productNameText == productNameText) &&
            (identical(other.kitchenStatus, kitchenStatus) ||
                other.kitchenStatus == kitchenStatus) &&
            const DeepCollectionEquality()
                .equals(other.consumptionTaxPayPrice, consumptionTaxPayPrice) &&
            const DeepCollectionEquality().equals(
                other.totalConsumptionTaxPayPrice,
                totalConsumptionTaxPayPrice) &&
            const DeepCollectionEquality().equals(
                other.totalConsumptionTaxOrderPrice,
                totalConsumptionTaxOrderPrice) &&
            (identical(other.productSkuId, productSkuId) ||
                other.productSkuId == productSkuId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      productNameText,
      kitchenStatus,
      const DeepCollectionEquality().hash(consumptionTaxPayPrice),
      const DeepCollectionEquality().hash(totalConsumptionTaxPayPrice),
      const DeepCollectionEquality().hash(totalConsumptionTaxOrderPrice),
      productSkuId);

  /// Create a copy of ResponseUnSendProduct
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ResponseUnSendProductImplCopyWith<_$ResponseUnSendProductImpl>
      get copyWith => __$$ResponseUnSendProductImplCopyWithImpl<
          _$ResponseUnSendProductImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResponseUnSendProductImplToJson(
      this,
    );
  }
}

abstract class _ResponseUnSendProduct implements ResponseUnSendProduct {
  factory _ResponseUnSendProduct(
          {@JsonKey(name: "product_name_text") final String? productNameText,
          @JsonKey(name: "kitchen_status") final int? kitchenStatus,
          @JsonKey(name: "consumption_tax_pay_price")
          final dynamic consumptionTaxPayPrice,
          @JsonKey(name: "total_consumption_tax_pay_price")
          final dynamic totalConsumptionTaxPayPrice,
          @JsonKey(name: "total_consumption_tax_order_price")
          final dynamic totalConsumptionTaxOrderPrice,
          @JsonKey(name: "product_sku_id") final int? productSkuId}) =
      _$ResponseUnSendProductImpl;

  factory _ResponseUnSendProduct.fromJson(Map<String, dynamic> json) =
      _$ResponseUnSendProductImpl.fromJson;

// 产品名称
  @override
  @JsonKey(name: "product_name_text")
  String? get productNameText; // 出菜状态
  @override
  @JsonKey(name: "kitchen_status")
  int? get kitchenStatus; // 消费税支付价格
  @override
  @JsonKey(name: "consumption_tax_pay_price")
  dynamic get consumptionTaxPayPrice; // 消费税总完税价格
  @override
  @JsonKey(name: "total_consumption_tax_pay_price")
  dynamic get totalConsumptionTaxPayPrice; // 消费税订单总价
  @override
  @JsonKey(name: "total_consumption_tax_order_price")
  dynamic get totalConsumptionTaxOrderPrice; // 产品规格id
  @override
  @JsonKey(name: "product_sku_id")
  int? get productSkuId;

  /// Create a copy of ResponseUnSendProduct
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ResponseUnSendProductImplCopyWith<_$ResponseUnSendProductImpl>
      get copyWith => throw _privateConstructorUsedError;
}

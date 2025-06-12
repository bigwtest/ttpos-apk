// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'gift_product.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RequestOrderGiftingProduct _$RequestOrderGiftingProductFromJson(
    Map<String, dynamic> json) {
  return _RequestOrderGiftingProduct.fromJson(json);
}

/// @nodoc
mixin _$RequestOrderGiftingProduct {
// 销售账单ID
  @JsonKey(name: 'sale_bill_uuid')
  int get saleBillUuid => throw _privateConstructorUsedError; // 销售订单ID
  @JsonKey(name: 'sale_order_uuid')
  int get saleOrderUuid => throw _privateConstructorUsedError; // 销售订单商品ID
  @JsonKey(name: 'sale_order_product_uuid')
  int get saleOrderProductUuid => throw _privateConstructorUsedError; // 赠菜原因
  @JsonKey(name: 'reason')
  String? get reason => throw _privateConstructorUsedError; // 赠菜标签ids
  @JsonKey(name: 'gift_ids')
  List<int>? get giftIds => throw _privateConstructorUsedError;

  /// Serializes this RequestOrderGiftingProduct to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RequestOrderGiftingProduct
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RequestOrderGiftingProductCopyWith<RequestOrderGiftingProduct>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RequestOrderGiftingProductCopyWith<$Res> {
  factory $RequestOrderGiftingProductCopyWith(RequestOrderGiftingProduct value,
          $Res Function(RequestOrderGiftingProduct) then) =
      _$RequestOrderGiftingProductCopyWithImpl<$Res,
          RequestOrderGiftingProduct>;
  @useResult
  $Res call(
      {@JsonKey(name: 'sale_bill_uuid') int saleBillUuid,
      @JsonKey(name: 'sale_order_uuid') int saleOrderUuid,
      @JsonKey(name: 'sale_order_product_uuid') int saleOrderProductUuid,
      @JsonKey(name: 'reason') String? reason,
      @JsonKey(name: 'gift_ids') List<int>? giftIds});
}

/// @nodoc
class _$RequestOrderGiftingProductCopyWithImpl<$Res,
        $Val extends RequestOrderGiftingProduct>
    implements $RequestOrderGiftingProductCopyWith<$Res> {
  _$RequestOrderGiftingProductCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RequestOrderGiftingProduct
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? saleBillUuid = null,
    Object? saleOrderUuid = null,
    Object? saleOrderProductUuid = null,
    Object? reason = freezed,
    Object? giftIds = freezed,
  }) {
    return _then(_value.copyWith(
      saleBillUuid: null == saleBillUuid
          ? _value.saleBillUuid
          : saleBillUuid // ignore: cast_nullable_to_non_nullable
              as int,
      saleOrderUuid: null == saleOrderUuid
          ? _value.saleOrderUuid
          : saleOrderUuid // ignore: cast_nullable_to_non_nullable
              as int,
      saleOrderProductUuid: null == saleOrderProductUuid
          ? _value.saleOrderProductUuid
          : saleOrderProductUuid // ignore: cast_nullable_to_non_nullable
              as int,
      reason: freezed == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String?,
      giftIds: freezed == giftIds
          ? _value.giftIds
          : giftIds // ignore: cast_nullable_to_non_nullable
              as List<int>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RequestOrderGiftingProductImplCopyWith<$Res>
    implements $RequestOrderGiftingProductCopyWith<$Res> {
  factory _$$RequestOrderGiftingProductImplCopyWith(
          _$RequestOrderGiftingProductImpl value,
          $Res Function(_$RequestOrderGiftingProductImpl) then) =
      __$$RequestOrderGiftingProductImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'sale_bill_uuid') int saleBillUuid,
      @JsonKey(name: 'sale_order_uuid') int saleOrderUuid,
      @JsonKey(name: 'sale_order_product_uuid') int saleOrderProductUuid,
      @JsonKey(name: 'reason') String? reason,
      @JsonKey(name: 'gift_ids') List<int>? giftIds});
}

/// @nodoc
class __$$RequestOrderGiftingProductImplCopyWithImpl<$Res>
    extends _$RequestOrderGiftingProductCopyWithImpl<$Res,
        _$RequestOrderGiftingProductImpl>
    implements _$$RequestOrderGiftingProductImplCopyWith<$Res> {
  __$$RequestOrderGiftingProductImplCopyWithImpl(
      _$RequestOrderGiftingProductImpl _value,
      $Res Function(_$RequestOrderGiftingProductImpl) _then)
      : super(_value, _then);

  /// Create a copy of RequestOrderGiftingProduct
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? saleBillUuid = null,
    Object? saleOrderUuid = null,
    Object? saleOrderProductUuid = null,
    Object? reason = freezed,
    Object? giftIds = freezed,
  }) {
    return _then(_$RequestOrderGiftingProductImpl(
      saleBillUuid: null == saleBillUuid
          ? _value.saleBillUuid
          : saleBillUuid // ignore: cast_nullable_to_non_nullable
              as int,
      saleOrderUuid: null == saleOrderUuid
          ? _value.saleOrderUuid
          : saleOrderUuid // ignore: cast_nullable_to_non_nullable
              as int,
      saleOrderProductUuid: null == saleOrderProductUuid
          ? _value.saleOrderProductUuid
          : saleOrderProductUuid // ignore: cast_nullable_to_non_nullable
              as int,
      reason: freezed == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String?,
      giftIds: freezed == giftIds
          ? _value._giftIds
          : giftIds // ignore: cast_nullable_to_non_nullable
              as List<int>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RequestOrderGiftingProductImpl extends _RequestOrderGiftingProduct {
  const _$RequestOrderGiftingProductImpl(
      {@JsonKey(name: 'sale_bill_uuid') required this.saleBillUuid,
      @JsonKey(name: 'sale_order_uuid') required this.saleOrderUuid,
      @JsonKey(name: 'sale_order_product_uuid')
      required this.saleOrderProductUuid,
      @JsonKey(name: 'reason') this.reason,
      @JsonKey(name: 'gift_ids') final List<int>? giftIds})
      : _giftIds = giftIds,
        super._();

  factory _$RequestOrderGiftingProductImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$RequestOrderGiftingProductImplFromJson(json);

// 销售账单ID
  @override
  @JsonKey(name: 'sale_bill_uuid')
  final int saleBillUuid;
// 销售订单ID
  @override
  @JsonKey(name: 'sale_order_uuid')
  final int saleOrderUuid;
// 销售订单商品ID
  @override
  @JsonKey(name: 'sale_order_product_uuid')
  final int saleOrderProductUuid;
// 赠菜原因
  @override
  @JsonKey(name: 'reason')
  final String? reason;
// 赠菜标签ids
  final List<int>? _giftIds;
// 赠菜标签ids
  @override
  @JsonKey(name: 'gift_ids')
  List<int>? get giftIds {
    final value = _giftIds;
    if (value == null) return null;
    if (_giftIds is EqualUnmodifiableListView) return _giftIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'RequestOrderGiftingProduct(saleBillUuid: $saleBillUuid, saleOrderUuid: $saleOrderUuid, saleOrderProductUuid: $saleOrderProductUuid, reason: $reason, giftIds: $giftIds)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RequestOrderGiftingProductImpl &&
            (identical(other.saleBillUuid, saleBillUuid) ||
                other.saleBillUuid == saleBillUuid) &&
            (identical(other.saleOrderUuid, saleOrderUuid) ||
                other.saleOrderUuid == saleOrderUuid) &&
            (identical(other.saleOrderProductUuid, saleOrderProductUuid) ||
                other.saleOrderProductUuid == saleOrderProductUuid) &&
            (identical(other.reason, reason) || other.reason == reason) &&
            const DeepCollectionEquality().equals(other._giftIds, _giftIds));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      saleBillUuid,
      saleOrderUuid,
      saleOrderProductUuid,
      reason,
      const DeepCollectionEquality().hash(_giftIds));

  /// Create a copy of RequestOrderGiftingProduct
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RequestOrderGiftingProductImplCopyWith<_$RequestOrderGiftingProductImpl>
      get copyWith => __$$RequestOrderGiftingProductImplCopyWithImpl<
          _$RequestOrderGiftingProductImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RequestOrderGiftingProductImplToJson(
      this,
    );
  }
}

abstract class _RequestOrderGiftingProduct extends RequestOrderGiftingProduct {
  const factory _RequestOrderGiftingProduct(
          {@JsonKey(name: 'sale_bill_uuid') required final int saleBillUuid,
          @JsonKey(name: 'sale_order_uuid') required final int saleOrderUuid,
          @JsonKey(name: 'sale_order_product_uuid')
          required final int saleOrderProductUuid,
          @JsonKey(name: 'reason') final String? reason,
          @JsonKey(name: 'gift_ids') final List<int>? giftIds}) =
      _$RequestOrderGiftingProductImpl;
  const _RequestOrderGiftingProduct._() : super._();

  factory _RequestOrderGiftingProduct.fromJson(Map<String, dynamic> json) =
      _$RequestOrderGiftingProductImpl.fromJson;

// 销售账单ID
  @override
  @JsonKey(name: 'sale_bill_uuid')
  int get saleBillUuid; // 销售订单ID
  @override
  @JsonKey(name: 'sale_order_uuid')
  int get saleOrderUuid; // 销售订单商品ID
  @override
  @JsonKey(name: 'sale_order_product_uuid')
  int get saleOrderProductUuid; // 赠菜原因
  @override
  @JsonKey(name: 'reason')
  String? get reason; // 赠菜标签ids
  @override
  @JsonKey(name: 'gift_ids')
  List<int>? get giftIds;

  /// Create a copy of RequestOrderGiftingProduct
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RequestOrderGiftingProductImplCopyWith<_$RequestOrderGiftingProductImpl>
      get copyWith => throw _privateConstructorUsedError;
}

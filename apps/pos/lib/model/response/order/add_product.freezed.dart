// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_product.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ResponseOrderAddProduct _$ResponseOrderAddProductFromJson(
    Map<String, dynamic> json) {
  return _ResponseOrderAddProduct.fromJson(json);
}

/// @nodoc
mixin _$ResponseOrderAddProduct {
// common_res
  @JsonKey(name: 'response_cart')
  ResponseCart? get responseCart =>
      throw _privateConstructorUsedError; // 商品被删除或者已下架
  @JsonKey(name: 'product_delete')
  ResponseOrderProductDelete? get productDelete =>
      throw _privateConstructorUsedError; // 商品规格被删除或者已下架
  @JsonKey(name: 'product_sku_delete')
  ResponseOrderProductSkuDelete? get productSkuDelete =>
      throw _privateConstructorUsedError; // 商品加料被删除或者已下架 - product_feed_id
  @JsonKey(name: 'product_feed_delete')
  List<dynamic>? get productFeedDelete => throw _privateConstructorUsedError;

  /// Serializes this ResponseOrderAddProduct to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ResponseOrderAddProduct
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ResponseOrderAddProductCopyWith<ResponseOrderAddProduct> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResponseOrderAddProductCopyWith<$Res> {
  factory $ResponseOrderAddProductCopyWith(ResponseOrderAddProduct value,
          $Res Function(ResponseOrderAddProduct) then) =
      _$ResponseOrderAddProductCopyWithImpl<$Res, ResponseOrderAddProduct>;
  @useResult
  $Res call(
      {@JsonKey(name: 'response_cart') ResponseCart? responseCart,
      @JsonKey(name: 'product_delete')
      ResponseOrderProductDelete? productDelete,
      @JsonKey(name: 'product_sku_delete')
      ResponseOrderProductSkuDelete? productSkuDelete,
      @JsonKey(name: 'product_feed_delete') List<dynamic>? productFeedDelete});

  $ResponseCartCopyWith<$Res>? get responseCart;
  $ResponseOrderProductDeleteCopyWith<$Res>? get productDelete;
  $ResponseOrderProductSkuDeleteCopyWith<$Res>? get productSkuDelete;
}

/// @nodoc
class _$ResponseOrderAddProductCopyWithImpl<$Res,
        $Val extends ResponseOrderAddProduct>
    implements $ResponseOrderAddProductCopyWith<$Res> {
  _$ResponseOrderAddProductCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ResponseOrderAddProduct
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? responseCart = freezed,
    Object? productDelete = freezed,
    Object? productSkuDelete = freezed,
    Object? productFeedDelete = freezed,
  }) {
    return _then(_value.copyWith(
      responseCart: freezed == responseCart
          ? _value.responseCart
          : responseCart // ignore: cast_nullable_to_non_nullable
              as ResponseCart?,
      productDelete: freezed == productDelete
          ? _value.productDelete
          : productDelete // ignore: cast_nullable_to_non_nullable
              as ResponseOrderProductDelete?,
      productSkuDelete: freezed == productSkuDelete
          ? _value.productSkuDelete
          : productSkuDelete // ignore: cast_nullable_to_non_nullable
              as ResponseOrderProductSkuDelete?,
      productFeedDelete: freezed == productFeedDelete
          ? _value.productFeedDelete
          : productFeedDelete // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
    ) as $Val);
  }

  /// Create a copy of ResponseOrderAddProduct
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ResponseCartCopyWith<$Res>? get responseCart {
    if (_value.responseCart == null) {
      return null;
    }

    return $ResponseCartCopyWith<$Res>(_value.responseCart!, (value) {
      return _then(_value.copyWith(responseCart: value) as $Val);
    });
  }

  /// Create a copy of ResponseOrderAddProduct
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ResponseOrderProductDeleteCopyWith<$Res>? get productDelete {
    if (_value.productDelete == null) {
      return null;
    }

    return $ResponseOrderProductDeleteCopyWith<$Res>(_value.productDelete!,
        (value) {
      return _then(_value.copyWith(productDelete: value) as $Val);
    });
  }

  /// Create a copy of ResponseOrderAddProduct
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ResponseOrderProductSkuDeleteCopyWith<$Res>? get productSkuDelete {
    if (_value.productSkuDelete == null) {
      return null;
    }

    return $ResponseOrderProductSkuDeleteCopyWith<$Res>(
        _value.productSkuDelete!, (value) {
      return _then(_value.copyWith(productSkuDelete: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ResponseOrderAddProductImplCopyWith<$Res>
    implements $ResponseOrderAddProductCopyWith<$Res> {
  factory _$$ResponseOrderAddProductImplCopyWith(
          _$ResponseOrderAddProductImpl value,
          $Res Function(_$ResponseOrderAddProductImpl) then) =
      __$$ResponseOrderAddProductImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'response_cart') ResponseCart? responseCart,
      @JsonKey(name: 'product_delete')
      ResponseOrderProductDelete? productDelete,
      @JsonKey(name: 'product_sku_delete')
      ResponseOrderProductSkuDelete? productSkuDelete,
      @JsonKey(name: 'product_feed_delete') List<dynamic>? productFeedDelete});

  @override
  $ResponseCartCopyWith<$Res>? get responseCart;
  @override
  $ResponseOrderProductDeleteCopyWith<$Res>? get productDelete;
  @override
  $ResponseOrderProductSkuDeleteCopyWith<$Res>? get productSkuDelete;
}

/// @nodoc
class __$$ResponseOrderAddProductImplCopyWithImpl<$Res>
    extends _$ResponseOrderAddProductCopyWithImpl<$Res,
        _$ResponseOrderAddProductImpl>
    implements _$$ResponseOrderAddProductImplCopyWith<$Res> {
  __$$ResponseOrderAddProductImplCopyWithImpl(
      _$ResponseOrderAddProductImpl _value,
      $Res Function(_$ResponseOrderAddProductImpl) _then)
      : super(_value, _then);

  /// Create a copy of ResponseOrderAddProduct
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? responseCart = freezed,
    Object? productDelete = freezed,
    Object? productSkuDelete = freezed,
    Object? productFeedDelete = freezed,
  }) {
    return _then(_$ResponseOrderAddProductImpl(
      responseCart: freezed == responseCart
          ? _value.responseCart
          : responseCart // ignore: cast_nullable_to_non_nullable
              as ResponseCart?,
      productDelete: freezed == productDelete
          ? _value.productDelete
          : productDelete // ignore: cast_nullable_to_non_nullable
              as ResponseOrderProductDelete?,
      productSkuDelete: freezed == productSkuDelete
          ? _value.productSkuDelete
          : productSkuDelete // ignore: cast_nullable_to_non_nullable
              as ResponseOrderProductSkuDelete?,
      productFeedDelete: freezed == productFeedDelete
          ? _value._productFeedDelete
          : productFeedDelete // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ResponseOrderAddProductImpl implements _ResponseOrderAddProduct {
  _$ResponseOrderAddProductImpl(
      {@JsonKey(name: 'response_cart') this.responseCart,
      @JsonKey(name: 'product_delete') this.productDelete,
      @JsonKey(name: 'product_sku_delete') this.productSkuDelete,
      @JsonKey(name: 'product_feed_delete')
      final List<dynamic>? productFeedDelete})
      : _productFeedDelete = productFeedDelete;

  factory _$ResponseOrderAddProductImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResponseOrderAddProductImplFromJson(json);

// common_res
  @override
  @JsonKey(name: 'response_cart')
  final ResponseCart? responseCart;
// 商品被删除或者已下架
  @override
  @JsonKey(name: 'product_delete')
  final ResponseOrderProductDelete? productDelete;
// 商品规格被删除或者已下架
  @override
  @JsonKey(name: 'product_sku_delete')
  final ResponseOrderProductSkuDelete? productSkuDelete;
// 商品加料被删除或者已下架 - product_feed_id
  final List<dynamic>? _productFeedDelete;
// 商品加料被删除或者已下架 - product_feed_id
  @override
  @JsonKey(name: 'product_feed_delete')
  List<dynamic>? get productFeedDelete {
    final value = _productFeedDelete;
    if (value == null) return null;
    if (_productFeedDelete is EqualUnmodifiableListView)
      return _productFeedDelete;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ResponseOrderAddProduct(responseCart: $responseCart, productDelete: $productDelete, productSkuDelete: $productSkuDelete, productFeedDelete: $productFeedDelete)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResponseOrderAddProductImpl &&
            (identical(other.responseCart, responseCart) ||
                other.responseCart == responseCart) &&
            (identical(other.productDelete, productDelete) ||
                other.productDelete == productDelete) &&
            (identical(other.productSkuDelete, productSkuDelete) ||
                other.productSkuDelete == productSkuDelete) &&
            const DeepCollectionEquality()
                .equals(other._productFeedDelete, _productFeedDelete));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      responseCart,
      productDelete,
      productSkuDelete,
      const DeepCollectionEquality().hash(_productFeedDelete));

  /// Create a copy of ResponseOrderAddProduct
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ResponseOrderAddProductImplCopyWith<_$ResponseOrderAddProductImpl>
      get copyWith => __$$ResponseOrderAddProductImplCopyWithImpl<
          _$ResponseOrderAddProductImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResponseOrderAddProductImplToJson(
      this,
    );
  }
}

abstract class _ResponseOrderAddProduct implements ResponseOrderAddProduct {
  factory _ResponseOrderAddProduct(
      {@JsonKey(name: 'response_cart') final ResponseCart? responseCart,
      @JsonKey(name: 'product_delete')
      final ResponseOrderProductDelete? productDelete,
      @JsonKey(name: 'product_sku_delete')
      final ResponseOrderProductSkuDelete? productSkuDelete,
      @JsonKey(name: 'product_feed_delete')
      final List<dynamic>? productFeedDelete}) = _$ResponseOrderAddProductImpl;

  factory _ResponseOrderAddProduct.fromJson(Map<String, dynamic> json) =
      _$ResponseOrderAddProductImpl.fromJson;

// common_res
  @override
  @JsonKey(name: 'response_cart')
  ResponseCart? get responseCart; // 商品被删除或者已下架
  @override
  @JsonKey(name: 'product_delete')
  ResponseOrderProductDelete? get productDelete; // 商品规格被删除或者已下架
  @override
  @JsonKey(name: 'product_sku_delete')
  ResponseOrderProductSkuDelete?
      get productSkuDelete; // 商品加料被删除或者已下架 - product_feed_id
  @override
  @JsonKey(name: 'product_feed_delete')
  List<dynamic>? get productFeedDelete;

  /// Create a copy of ResponseOrderAddProduct
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ResponseOrderAddProductImplCopyWith<_$ResponseOrderAddProductImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ResponseOrderProductDelete _$ResponseOrderProductDeleteFromJson(
    Map<String, dynamic> json) {
  return _ResponseOrderProductDelete.fromJson(json);
}

/// @nodoc
mixin _$ResponseOrderProductDelete {
// 产品id
  @JsonKey(name: 'product_id')
  int? get productId => throw _privateConstructorUsedError;

  /// Serializes this ResponseOrderProductDelete to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ResponseOrderProductDelete
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ResponseOrderProductDeleteCopyWith<ResponseOrderProductDelete>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResponseOrderProductDeleteCopyWith<$Res> {
  factory $ResponseOrderProductDeleteCopyWith(ResponseOrderProductDelete value,
          $Res Function(ResponseOrderProductDelete) then) =
      _$ResponseOrderProductDeleteCopyWithImpl<$Res,
          ResponseOrderProductDelete>;
  @useResult
  $Res call({@JsonKey(name: 'product_id') int? productId});
}

/// @nodoc
class _$ResponseOrderProductDeleteCopyWithImpl<$Res,
        $Val extends ResponseOrderProductDelete>
    implements $ResponseOrderProductDeleteCopyWith<$Res> {
  _$ResponseOrderProductDeleteCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ResponseOrderProductDelete
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productId = freezed,
  }) {
    return _then(_value.copyWith(
      productId: freezed == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ResponseOrderProductDeleteImplCopyWith<$Res>
    implements $ResponseOrderProductDeleteCopyWith<$Res> {
  factory _$$ResponseOrderProductDeleteImplCopyWith(
          _$ResponseOrderProductDeleteImpl value,
          $Res Function(_$ResponseOrderProductDeleteImpl) then) =
      __$$ResponseOrderProductDeleteImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'product_id') int? productId});
}

/// @nodoc
class __$$ResponseOrderProductDeleteImplCopyWithImpl<$Res>
    extends _$ResponseOrderProductDeleteCopyWithImpl<$Res,
        _$ResponseOrderProductDeleteImpl>
    implements _$$ResponseOrderProductDeleteImplCopyWith<$Res> {
  __$$ResponseOrderProductDeleteImplCopyWithImpl(
      _$ResponseOrderProductDeleteImpl _value,
      $Res Function(_$ResponseOrderProductDeleteImpl) _then)
      : super(_value, _then);

  /// Create a copy of ResponseOrderProductDelete
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productId = freezed,
  }) {
    return _then(_$ResponseOrderProductDeleteImpl(
      productId: freezed == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ResponseOrderProductDeleteImpl implements _ResponseOrderProductDelete {
  _$ResponseOrderProductDeleteImpl(
      {@JsonKey(name: 'product_id') this.productId});

  factory _$ResponseOrderProductDeleteImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ResponseOrderProductDeleteImplFromJson(json);

// 产品id
  @override
  @JsonKey(name: 'product_id')
  final int? productId;

  @override
  String toString() {
    return 'ResponseOrderProductDelete(productId: $productId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResponseOrderProductDeleteImpl &&
            (identical(other.productId, productId) ||
                other.productId == productId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, productId);

  /// Create a copy of ResponseOrderProductDelete
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ResponseOrderProductDeleteImplCopyWith<_$ResponseOrderProductDeleteImpl>
      get copyWith => __$$ResponseOrderProductDeleteImplCopyWithImpl<
          _$ResponseOrderProductDeleteImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResponseOrderProductDeleteImplToJson(
      this,
    );
  }
}

abstract class _ResponseOrderProductDelete
    implements ResponseOrderProductDelete {
  factory _ResponseOrderProductDelete(
          {@JsonKey(name: 'product_id') final int? productId}) =
      _$ResponseOrderProductDeleteImpl;

  factory _ResponseOrderProductDelete.fromJson(Map<String, dynamic> json) =
      _$ResponseOrderProductDeleteImpl.fromJson;

// 产品id
  @override
  @JsonKey(name: 'product_id')
  int? get productId;

  /// Create a copy of ResponseOrderProductDelete
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ResponseOrderProductDeleteImplCopyWith<_$ResponseOrderProductDeleteImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ResponseOrderProductSkuDelete _$ResponseOrderProductSkuDeleteFromJson(
    Map<String, dynamic> json) {
  return _ResponseOrderProductSkuDelete.fromJson(json);
}

/// @nodoc
mixin _$ResponseOrderProductSkuDelete {
// 产品sku_id
  @JsonKey(name: 'product_sku_id')
  int? get productSkuId => throw _privateConstructorUsedError;

  /// Serializes this ResponseOrderProductSkuDelete to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ResponseOrderProductSkuDelete
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ResponseOrderProductSkuDeleteCopyWith<ResponseOrderProductSkuDelete>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResponseOrderProductSkuDeleteCopyWith<$Res> {
  factory $ResponseOrderProductSkuDeleteCopyWith(
          ResponseOrderProductSkuDelete value,
          $Res Function(ResponseOrderProductSkuDelete) then) =
      _$ResponseOrderProductSkuDeleteCopyWithImpl<$Res,
          ResponseOrderProductSkuDelete>;
  @useResult
  $Res call({@JsonKey(name: 'product_sku_id') int? productSkuId});
}

/// @nodoc
class _$ResponseOrderProductSkuDeleteCopyWithImpl<$Res,
        $Val extends ResponseOrderProductSkuDelete>
    implements $ResponseOrderProductSkuDeleteCopyWith<$Res> {
  _$ResponseOrderProductSkuDeleteCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ResponseOrderProductSkuDelete
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productSkuId = freezed,
  }) {
    return _then(_value.copyWith(
      productSkuId: freezed == productSkuId
          ? _value.productSkuId
          : productSkuId // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ResponseOrderProductSkuDeleteImplCopyWith<$Res>
    implements $ResponseOrderProductSkuDeleteCopyWith<$Res> {
  factory _$$ResponseOrderProductSkuDeleteImplCopyWith(
          _$ResponseOrderProductSkuDeleteImpl value,
          $Res Function(_$ResponseOrderProductSkuDeleteImpl) then) =
      __$$ResponseOrderProductSkuDeleteImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'product_sku_id') int? productSkuId});
}

/// @nodoc
class __$$ResponseOrderProductSkuDeleteImplCopyWithImpl<$Res>
    extends _$ResponseOrderProductSkuDeleteCopyWithImpl<$Res,
        _$ResponseOrderProductSkuDeleteImpl>
    implements _$$ResponseOrderProductSkuDeleteImplCopyWith<$Res> {
  __$$ResponseOrderProductSkuDeleteImplCopyWithImpl(
      _$ResponseOrderProductSkuDeleteImpl _value,
      $Res Function(_$ResponseOrderProductSkuDeleteImpl) _then)
      : super(_value, _then);

  /// Create a copy of ResponseOrderProductSkuDelete
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productSkuId = freezed,
  }) {
    return _then(_$ResponseOrderProductSkuDeleteImpl(
      productSkuId: freezed == productSkuId
          ? _value.productSkuId
          : productSkuId // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ResponseOrderProductSkuDeleteImpl
    implements _ResponseOrderProductSkuDelete {
  _$ResponseOrderProductSkuDeleteImpl(
      {@JsonKey(name: 'product_sku_id') this.productSkuId});

  factory _$ResponseOrderProductSkuDeleteImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ResponseOrderProductSkuDeleteImplFromJson(json);

// 产品sku_id
  @override
  @JsonKey(name: 'product_sku_id')
  final int? productSkuId;

  @override
  String toString() {
    return 'ResponseOrderProductSkuDelete(productSkuId: $productSkuId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResponseOrderProductSkuDeleteImpl &&
            (identical(other.productSkuId, productSkuId) ||
                other.productSkuId == productSkuId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, productSkuId);

  /// Create a copy of ResponseOrderProductSkuDelete
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ResponseOrderProductSkuDeleteImplCopyWith<
          _$ResponseOrderProductSkuDeleteImpl>
      get copyWith => __$$ResponseOrderProductSkuDeleteImplCopyWithImpl<
          _$ResponseOrderProductSkuDeleteImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResponseOrderProductSkuDeleteImplToJson(
      this,
    );
  }
}

abstract class _ResponseOrderProductSkuDelete
    implements ResponseOrderProductSkuDelete {
  factory _ResponseOrderProductSkuDelete(
          {@JsonKey(name: 'product_sku_id') final int? productSkuId}) =
      _$ResponseOrderProductSkuDeleteImpl;

  factory _ResponseOrderProductSkuDelete.fromJson(Map<String, dynamic> json) =
      _$ResponseOrderProductSkuDeleteImpl.fromJson;

// 产品sku_id
  @override
  @JsonKey(name: 'product_sku_id')
  int? get productSkuId;

  /// Create a copy of ResponseOrderProductSkuDelete
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ResponseOrderProductSkuDeleteImplCopyWith<
          _$ResponseOrderProductSkuDeleteImpl>
      get copyWith => throw _privateConstructorUsedError;
}

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'unsent_kitchen.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UnsentKitchen _$UnsentKitchenFromJson(Map<String, dynamic> json) {
  return _UnsentKitchen.fromJson(json);
}

/// @nodoc
mixin _$UnsentKitchen {
// 金额信息
  @JsonKey(name: "amount_info")
  UnsentKitchenAmountInfo get amountInfo =>
      throw _privateConstructorUsedError; // 商品列表
  @JsonKey(name: "products")
  BaseList<Product> get products => throw _privateConstructorUsedError;

  /// Serializes this UnsentKitchen to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UnsentKitchen
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UnsentKitchenCopyWith<UnsentKitchen> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UnsentKitchenCopyWith<$Res> {
  factory $UnsentKitchenCopyWith(
          UnsentKitchen value, $Res Function(UnsentKitchen) then) =
      _$UnsentKitchenCopyWithImpl<$Res, UnsentKitchen>;
  @useResult
  $Res call(
      {@JsonKey(name: "amount_info") UnsentKitchenAmountInfo amountInfo,
      @JsonKey(name: "products") BaseList<Product> products});

  $UnsentKitchenAmountInfoCopyWith<$Res> get amountInfo;
  $BaseListCopyWith<Product, $Res> get products;
}

/// @nodoc
class _$UnsentKitchenCopyWithImpl<$Res, $Val extends UnsentKitchen>
    implements $UnsentKitchenCopyWith<$Res> {
  _$UnsentKitchenCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UnsentKitchen
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? amountInfo = null,
    Object? products = null,
  }) {
    return _then(_value.copyWith(
      amountInfo: null == amountInfo
          ? _value.amountInfo
          : amountInfo // ignore: cast_nullable_to_non_nullable
              as UnsentKitchenAmountInfo,
      products: null == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as BaseList<Product>,
    ) as $Val);
  }

  /// Create a copy of UnsentKitchen
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UnsentKitchenAmountInfoCopyWith<$Res> get amountInfo {
    return $UnsentKitchenAmountInfoCopyWith<$Res>(_value.amountInfo, (value) {
      return _then(_value.copyWith(amountInfo: value) as $Val);
    });
  }

  /// Create a copy of UnsentKitchen
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BaseListCopyWith<Product, $Res> get products {
    return $BaseListCopyWith<Product, $Res>(_value.products, (value) {
      return _then(_value.copyWith(products: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UnsentKitchenImplCopyWith<$Res>
    implements $UnsentKitchenCopyWith<$Res> {
  factory _$$UnsentKitchenImplCopyWith(
          _$UnsentKitchenImpl value, $Res Function(_$UnsentKitchenImpl) then) =
      __$$UnsentKitchenImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "amount_info") UnsentKitchenAmountInfo amountInfo,
      @JsonKey(name: "products") BaseList<Product> products});

  @override
  $UnsentKitchenAmountInfoCopyWith<$Res> get amountInfo;
  @override
  $BaseListCopyWith<Product, $Res> get products;
}

/// @nodoc
class __$$UnsentKitchenImplCopyWithImpl<$Res>
    extends _$UnsentKitchenCopyWithImpl<$Res, _$UnsentKitchenImpl>
    implements _$$UnsentKitchenImplCopyWith<$Res> {
  __$$UnsentKitchenImplCopyWithImpl(
      _$UnsentKitchenImpl _value, $Res Function(_$UnsentKitchenImpl) _then)
      : super(_value, _then);

  /// Create a copy of UnsentKitchen
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? amountInfo = null,
    Object? products = null,
  }) {
    return _then(_$UnsentKitchenImpl(
      amountInfo: null == amountInfo
          ? _value.amountInfo
          : amountInfo // ignore: cast_nullable_to_non_nullable
              as UnsentKitchenAmountInfo,
      products: null == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as BaseList<Product>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UnsentKitchenImpl implements _UnsentKitchen {
  const _$UnsentKitchenImpl(
      {@JsonKey(name: "amount_info") required this.amountInfo,
      @JsonKey(name: "products") required this.products});

  factory _$UnsentKitchenImpl.fromJson(Map<String, dynamic> json) =>
      _$$UnsentKitchenImplFromJson(json);

// 金额信息
  @override
  @JsonKey(name: "amount_info")
  final UnsentKitchenAmountInfo amountInfo;
// 商品列表
  @override
  @JsonKey(name: "products")
  final BaseList<Product> products;

  @override
  String toString() {
    return 'UnsentKitchen(amountInfo: $amountInfo, products: $products)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UnsentKitchenImpl &&
            (identical(other.amountInfo, amountInfo) ||
                other.amountInfo == amountInfo) &&
            (identical(other.products, products) ||
                other.products == products));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, amountInfo, products);

  /// Create a copy of UnsentKitchen
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UnsentKitchenImplCopyWith<_$UnsentKitchenImpl> get copyWith =>
      __$$UnsentKitchenImplCopyWithImpl<_$UnsentKitchenImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UnsentKitchenImplToJson(
      this,
    );
  }
}

abstract class _UnsentKitchen implements UnsentKitchen {
  const factory _UnsentKitchen(
      {@JsonKey(name: "amount_info")
      required final UnsentKitchenAmountInfo amountInfo,
      @JsonKey(name: "products")
      required final BaseList<Product> products}) = _$UnsentKitchenImpl;

  factory _UnsentKitchen.fromJson(Map<String, dynamic> json) =
      _$UnsentKitchenImpl.fromJson;

// 金额信息
  @override
  @JsonKey(name: "amount_info")
  UnsentKitchenAmountInfo get amountInfo; // 商品列表
  @override
  @JsonKey(name: "products")
  BaseList<Product> get products;

  /// Create a copy of UnsentKitchen
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UnsentKitchenImplCopyWith<_$UnsentKitchenImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UnsentKitchenAmountInfo _$UnsentKitchenAmountInfoFromJson(
    Map<String, dynamic> json) {
  return _UnsentKitchenAmountInfo.fromJson(json);
}

/// @nodoc
mixin _$UnsentKitchenAmountInfo {
// 商品金额(折后价)
  @JsonKey(name: "product_amount")
  SafetyNumber get productAmount =>
      throw _privateConstructorUsedError; // 总数量，用于点餐助手、h5
  @JsonKey(name: "product_num")
  int get productNum => throw _privateConstructorUsedError;

  /// Serializes this UnsentKitchenAmountInfo to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UnsentKitchenAmountInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UnsentKitchenAmountInfoCopyWith<UnsentKitchenAmountInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UnsentKitchenAmountInfoCopyWith<$Res> {
  factory $UnsentKitchenAmountInfoCopyWith(UnsentKitchenAmountInfo value,
          $Res Function(UnsentKitchenAmountInfo) then) =
      _$UnsentKitchenAmountInfoCopyWithImpl<$Res, UnsentKitchenAmountInfo>;
  @useResult
  $Res call(
      {@JsonKey(name: "product_amount") SafetyNumber productAmount,
      @JsonKey(name: "product_num") int productNum});

  $SafetyNumberCopyWith<$Res> get productAmount;
}

/// @nodoc
class _$UnsentKitchenAmountInfoCopyWithImpl<$Res,
        $Val extends UnsentKitchenAmountInfo>
    implements $UnsentKitchenAmountInfoCopyWith<$Res> {
  _$UnsentKitchenAmountInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UnsentKitchenAmountInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productAmount = null,
    Object? productNum = null,
  }) {
    return _then(_value.copyWith(
      productAmount: null == productAmount
          ? _value.productAmount
          : productAmount // ignore: cast_nullable_to_non_nullable
              as SafetyNumber,
      productNum: null == productNum
          ? _value.productNum
          : productNum // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }

  /// Create a copy of UnsentKitchenAmountInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SafetyNumberCopyWith<$Res> get productAmount {
    return $SafetyNumberCopyWith<$Res>(_value.productAmount, (value) {
      return _then(_value.copyWith(productAmount: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UnsentKitchenAmountInfoImplCopyWith<$Res>
    implements $UnsentKitchenAmountInfoCopyWith<$Res> {
  factory _$$UnsentKitchenAmountInfoImplCopyWith(
          _$UnsentKitchenAmountInfoImpl value,
          $Res Function(_$UnsentKitchenAmountInfoImpl) then) =
      __$$UnsentKitchenAmountInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "product_amount") SafetyNumber productAmount,
      @JsonKey(name: "product_num") int productNum});

  @override
  $SafetyNumberCopyWith<$Res> get productAmount;
}

/// @nodoc
class __$$UnsentKitchenAmountInfoImplCopyWithImpl<$Res>
    extends _$UnsentKitchenAmountInfoCopyWithImpl<$Res,
        _$UnsentKitchenAmountInfoImpl>
    implements _$$UnsentKitchenAmountInfoImplCopyWith<$Res> {
  __$$UnsentKitchenAmountInfoImplCopyWithImpl(
      _$UnsentKitchenAmountInfoImpl _value,
      $Res Function(_$UnsentKitchenAmountInfoImpl) _then)
      : super(_value, _then);

  /// Create a copy of UnsentKitchenAmountInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productAmount = null,
    Object? productNum = null,
  }) {
    return _then(_$UnsentKitchenAmountInfoImpl(
      productAmount: null == productAmount
          ? _value.productAmount
          : productAmount // ignore: cast_nullable_to_non_nullable
              as SafetyNumber,
      productNum: null == productNum
          ? _value.productNum
          : productNum // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UnsentKitchenAmountInfoImpl implements _UnsentKitchenAmountInfo {
  const _$UnsentKitchenAmountInfoImpl(
      {@JsonKey(name: "product_amount") required this.productAmount,
      @JsonKey(name: "product_num") required this.productNum});

  factory _$UnsentKitchenAmountInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$UnsentKitchenAmountInfoImplFromJson(json);

// 商品金额(折后价)
  @override
  @JsonKey(name: "product_amount")
  final SafetyNumber productAmount;
// 总数量，用于点餐助手、h5
  @override
  @JsonKey(name: "product_num")
  final int productNum;

  @override
  String toString() {
    return 'UnsentKitchenAmountInfo(productAmount: $productAmount, productNum: $productNum)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UnsentKitchenAmountInfoImpl &&
            (identical(other.productAmount, productAmount) ||
                other.productAmount == productAmount) &&
            (identical(other.productNum, productNum) ||
                other.productNum == productNum));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, productAmount, productNum);

  /// Create a copy of UnsentKitchenAmountInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UnsentKitchenAmountInfoImplCopyWith<_$UnsentKitchenAmountInfoImpl>
      get copyWith => __$$UnsentKitchenAmountInfoImplCopyWithImpl<
          _$UnsentKitchenAmountInfoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UnsentKitchenAmountInfoImplToJson(
      this,
    );
  }
}

abstract class _UnsentKitchenAmountInfo implements UnsentKitchenAmountInfo {
  const factory _UnsentKitchenAmountInfo(
          {@JsonKey(name: "product_amount")
          required final SafetyNumber productAmount,
          @JsonKey(name: "product_num") required final int productNum}) =
      _$UnsentKitchenAmountInfoImpl;

  factory _UnsentKitchenAmountInfo.fromJson(Map<String, dynamic> json) =
      _$UnsentKitchenAmountInfoImpl.fromJson;

// 商品金额(折后价)
  @override
  @JsonKey(name: "product_amount")
  SafetyNumber get productAmount; // 总数量，用于点餐助手、h5
  @override
  @JsonKey(name: "product_num")
  int get productNum;

  /// Create a copy of UnsentKitchenAmountInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UnsentKitchenAmountInfoImplCopyWith<_$UnsentKitchenAmountInfoImpl>
      get copyWith => throw _privateConstructorUsedError;
}

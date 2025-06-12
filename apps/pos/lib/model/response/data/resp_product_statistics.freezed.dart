// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'resp_product_statistics.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RespProductStatistics _$RespProductStatisticsFromJson(
    Map<String, dynamic> json) {
  return _RespProductStatistics.fromJson(json);
}

/// @nodoc
mixin _$RespProductStatistics {
  @JsonKey(name: "products")
  List<BusinessDataRespProduct> get products =>
      throw _privateConstructorUsedError;

  /// Serializes this RespProductStatistics to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RespProductStatistics
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RespProductStatisticsCopyWith<RespProductStatistics> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RespProductStatisticsCopyWith<$Res> {
  factory $RespProductStatisticsCopyWith(RespProductStatistics value,
          $Res Function(RespProductStatistics) then) =
      _$RespProductStatisticsCopyWithImpl<$Res, RespProductStatistics>;
  @useResult
  $Res call(
      {@JsonKey(name: "products") List<BusinessDataRespProduct> products});
}

/// @nodoc
class _$RespProductStatisticsCopyWithImpl<$Res,
        $Val extends RespProductStatistics>
    implements $RespProductStatisticsCopyWith<$Res> {
  _$RespProductStatisticsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RespProductStatistics
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? products = null,
  }) {
    return _then(_value.copyWith(
      products: null == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<BusinessDataRespProduct>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RespProductStatisticsImplCopyWith<$Res>
    implements $RespProductStatisticsCopyWith<$Res> {
  factory _$$RespProductStatisticsImplCopyWith(
          _$RespProductStatisticsImpl value,
          $Res Function(_$RespProductStatisticsImpl) then) =
      __$$RespProductStatisticsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "products") List<BusinessDataRespProduct> products});
}

/// @nodoc
class __$$RespProductStatisticsImplCopyWithImpl<$Res>
    extends _$RespProductStatisticsCopyWithImpl<$Res,
        _$RespProductStatisticsImpl>
    implements _$$RespProductStatisticsImplCopyWith<$Res> {
  __$$RespProductStatisticsImplCopyWithImpl(_$RespProductStatisticsImpl _value,
      $Res Function(_$RespProductStatisticsImpl) _then)
      : super(_value, _then);

  /// Create a copy of RespProductStatistics
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? products = null,
  }) {
    return _then(_$RespProductStatisticsImpl(
      products: null == products
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<BusinessDataRespProduct>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RespProductStatisticsImpl implements _RespProductStatistics {
  _$RespProductStatisticsImpl(
      {@JsonKey(name: "products")
      required final List<BusinessDataRespProduct> products})
      : _products = products;

  factory _$RespProductStatisticsImpl.fromJson(Map<String, dynamic> json) =>
      _$$RespProductStatisticsImplFromJson(json);

  final List<BusinessDataRespProduct> _products;
  @override
  @JsonKey(name: "products")
  List<BusinessDataRespProduct> get products {
    if (_products is EqualUnmodifiableListView) return _products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_products);
  }

  @override
  String toString() {
    return 'RespProductStatistics(products: $products)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RespProductStatisticsImpl &&
            const DeepCollectionEquality().equals(other._products, _products));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_products));

  /// Create a copy of RespProductStatistics
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RespProductStatisticsImplCopyWith<_$RespProductStatisticsImpl>
      get copyWith => __$$RespProductStatisticsImplCopyWithImpl<
          _$RespProductStatisticsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RespProductStatisticsImplToJson(
      this,
    );
  }
}

abstract class _RespProductStatistics implements RespProductStatistics {
  factory _RespProductStatistics(
          {@JsonKey(name: "products")
          required final List<BusinessDataRespProduct> products}) =
      _$RespProductStatisticsImpl;

  factory _RespProductStatistics.fromJson(Map<String, dynamic> json) =
      _$RespProductStatisticsImpl.fromJson;

  @override
  @JsonKey(name: "products")
  List<BusinessDataRespProduct> get products;

  /// Create a copy of RespProductStatistics
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RespProductStatisticsImplCopyWith<_$RespProductStatisticsImpl>
      get copyWith => throw _privateConstructorUsedError;
}

BusinessDataRespProduct _$BusinessDataRespProductFromJson(
    Map<String, dynamic> json) {
  return _BusinessDataRespProduct.fromJson(json);
}

/// @nodoc
mixin _$BusinessDataRespProduct {
  @JsonKey(name: "name")
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: "price")
  double get price => throw _privateConstructorUsedError;
  @JsonKey(name: "sales_num")
  int get salesNum => throw _privateConstructorUsedError;
  @JsonKey(name: "subtotal")
  double get subtotal => throw _privateConstructorUsedError;

  /// Serializes this BusinessDataRespProduct to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BusinessDataRespProduct
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BusinessDataRespProductCopyWith<BusinessDataRespProduct> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BusinessDataRespProductCopyWith<$Res> {
  factory $BusinessDataRespProductCopyWith(BusinessDataRespProduct value,
          $Res Function(BusinessDataRespProduct) then) =
      _$BusinessDataRespProductCopyWithImpl<$Res, BusinessDataRespProduct>;
  @useResult
  $Res call(
      {@JsonKey(name: "name") String name,
      @JsonKey(name: "price") double price,
      @JsonKey(name: "sales_num") int salesNum,
      @JsonKey(name: "subtotal") double subtotal});
}

/// @nodoc
class _$BusinessDataRespProductCopyWithImpl<$Res,
        $Val extends BusinessDataRespProduct>
    implements $BusinessDataRespProductCopyWith<$Res> {
  _$BusinessDataRespProductCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BusinessDataRespProduct
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? price = null,
    Object? salesNum = null,
    Object? subtotal = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      salesNum: null == salesNum
          ? _value.salesNum
          : salesNum // ignore: cast_nullable_to_non_nullable
              as int,
      subtotal: null == subtotal
          ? _value.subtotal
          : subtotal // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BusinessDataRespProductImplCopyWith<$Res>
    implements $BusinessDataRespProductCopyWith<$Res> {
  factory _$$BusinessDataRespProductImplCopyWith(
          _$BusinessDataRespProductImpl value,
          $Res Function(_$BusinessDataRespProductImpl) then) =
      __$$BusinessDataRespProductImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "name") String name,
      @JsonKey(name: "price") double price,
      @JsonKey(name: "sales_num") int salesNum,
      @JsonKey(name: "subtotal") double subtotal});
}

/// @nodoc
class __$$BusinessDataRespProductImplCopyWithImpl<$Res>
    extends _$BusinessDataRespProductCopyWithImpl<$Res,
        _$BusinessDataRespProductImpl>
    implements _$$BusinessDataRespProductImplCopyWith<$Res> {
  __$$BusinessDataRespProductImplCopyWithImpl(
      _$BusinessDataRespProductImpl _value,
      $Res Function(_$BusinessDataRespProductImpl) _then)
      : super(_value, _then);

  /// Create a copy of BusinessDataRespProduct
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? price = null,
    Object? salesNum = null,
    Object? subtotal = null,
  }) {
    return _then(_$BusinessDataRespProductImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      salesNum: null == salesNum
          ? _value.salesNum
          : salesNum // ignore: cast_nullable_to_non_nullable
              as int,
      subtotal: null == subtotal
          ? _value.subtotal
          : subtotal // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BusinessDataRespProductImpl implements _BusinessDataRespProduct {
  const _$BusinessDataRespProductImpl(
      {@JsonKey(name: "name") required this.name,
      @JsonKey(name: "price") required this.price,
      @JsonKey(name: "sales_num") required this.salesNum,
      @JsonKey(name: "subtotal") required this.subtotal});

  factory _$BusinessDataRespProductImpl.fromJson(Map<String, dynamic> json) =>
      _$$BusinessDataRespProductImplFromJson(json);

  @override
  @JsonKey(name: "name")
  final String name;
  @override
  @JsonKey(name: "price")
  final double price;
  @override
  @JsonKey(name: "sales_num")
  final int salesNum;
  @override
  @JsonKey(name: "subtotal")
  final double subtotal;

  @override
  String toString() {
    return 'BusinessDataRespProduct(name: $name, price: $price, salesNum: $salesNum, subtotal: $subtotal)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BusinessDataRespProductImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.salesNum, salesNum) ||
                other.salesNum == salesNum) &&
            (identical(other.subtotal, subtotal) ||
                other.subtotal == subtotal));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, price, salesNum, subtotal);

  /// Create a copy of BusinessDataRespProduct
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BusinessDataRespProductImplCopyWith<_$BusinessDataRespProductImpl>
      get copyWith => __$$BusinessDataRespProductImplCopyWithImpl<
          _$BusinessDataRespProductImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BusinessDataRespProductImplToJson(
      this,
    );
  }
}

abstract class _BusinessDataRespProduct implements BusinessDataRespProduct {
  const factory _BusinessDataRespProduct(
          {@JsonKey(name: "name") required final String name,
          @JsonKey(name: "price") required final double price,
          @JsonKey(name: "sales_num") required final int salesNum,
          @JsonKey(name: "subtotal") required final double subtotal}) =
      _$BusinessDataRespProductImpl;

  factory _BusinessDataRespProduct.fromJson(Map<String, dynamic> json) =
      _$BusinessDataRespProductImpl.fromJson;

  @override
  @JsonKey(name: "name")
  String get name;
  @override
  @JsonKey(name: "price")
  double get price;
  @override
  @JsonKey(name: "sales_num")
  int get salesNum;
  @override
  @JsonKey(name: "subtotal")
  double get subtotal;

  /// Create a copy of BusinessDataRespProduct
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BusinessDataRespProductImplCopyWith<_$BusinessDataRespProductImpl>
      get copyWith => throw _privateConstructorUsedError;
}

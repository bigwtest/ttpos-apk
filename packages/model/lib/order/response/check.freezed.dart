// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'check.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

OrderCheck _$OrderCheckFromJson(Map<String, dynamic> json) {
  return _OrderCheck.fromJson(json);
}

/// @nodoc
mixin _$OrderCheck {
  @JsonKey(name: "product_must_plans")
  BaseList<OrderMustPlan>? get productMustPlans =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "products")
  BaseList<Product>? get products => throw _privateConstructorUsedError;

  /// Serializes this OrderCheck to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OrderCheck
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OrderCheckCopyWith<OrderCheck> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderCheckCopyWith<$Res> {
  factory $OrderCheckCopyWith(
          OrderCheck value, $Res Function(OrderCheck) then) =
      _$OrderCheckCopyWithImpl<$Res, OrderCheck>;
  @useResult
  $Res call(
      {@JsonKey(name: "product_must_plans")
      BaseList<OrderMustPlan>? productMustPlans,
      @JsonKey(name: "products") BaseList<Product>? products});

  $BaseListCopyWith<OrderMustPlan, $Res>? get productMustPlans;
  $BaseListCopyWith<Product, $Res>? get products;
}

/// @nodoc
class _$OrderCheckCopyWithImpl<$Res, $Val extends OrderCheck>
    implements $OrderCheckCopyWith<$Res> {
  _$OrderCheckCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OrderCheck
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productMustPlans = freezed,
    Object? products = freezed,
  }) {
    return _then(_value.copyWith(
      productMustPlans: freezed == productMustPlans
          ? _value.productMustPlans
          : productMustPlans // ignore: cast_nullable_to_non_nullable
              as BaseList<OrderMustPlan>?,
      products: freezed == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as BaseList<Product>?,
    ) as $Val);
  }

  /// Create a copy of OrderCheck
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BaseListCopyWith<OrderMustPlan, $Res>? get productMustPlans {
    if (_value.productMustPlans == null) {
      return null;
    }

    return $BaseListCopyWith<OrderMustPlan, $Res>(_value.productMustPlans!,
        (value) {
      return _then(_value.copyWith(productMustPlans: value) as $Val);
    });
  }

  /// Create a copy of OrderCheck
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BaseListCopyWith<Product, $Res>? get products {
    if (_value.products == null) {
      return null;
    }

    return $BaseListCopyWith<Product, $Res>(_value.products!, (value) {
      return _then(_value.copyWith(products: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$OrderCheckImplCopyWith<$Res>
    implements $OrderCheckCopyWith<$Res> {
  factory _$$OrderCheckImplCopyWith(
          _$OrderCheckImpl value, $Res Function(_$OrderCheckImpl) then) =
      __$$OrderCheckImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "product_must_plans")
      BaseList<OrderMustPlan>? productMustPlans,
      @JsonKey(name: "products") BaseList<Product>? products});

  @override
  $BaseListCopyWith<OrderMustPlan, $Res>? get productMustPlans;
  @override
  $BaseListCopyWith<Product, $Res>? get products;
}

/// @nodoc
class __$$OrderCheckImplCopyWithImpl<$Res>
    extends _$OrderCheckCopyWithImpl<$Res, _$OrderCheckImpl>
    implements _$$OrderCheckImplCopyWith<$Res> {
  __$$OrderCheckImplCopyWithImpl(
      _$OrderCheckImpl _value, $Res Function(_$OrderCheckImpl) _then)
      : super(_value, _then);

  /// Create a copy of OrderCheck
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productMustPlans = freezed,
    Object? products = freezed,
  }) {
    return _then(_$OrderCheckImpl(
      productMustPlans: freezed == productMustPlans
          ? _value.productMustPlans
          : productMustPlans // ignore: cast_nullable_to_non_nullable
              as BaseList<OrderMustPlan>?,
      products: freezed == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as BaseList<Product>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OrderCheckImpl implements _OrderCheck {
  const _$OrderCheckImpl(
      {@JsonKey(name: "product_must_plans") this.productMustPlans,
      @JsonKey(name: "products") this.products});

  factory _$OrderCheckImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrderCheckImplFromJson(json);

  @override
  @JsonKey(name: "product_must_plans")
  final BaseList<OrderMustPlan>? productMustPlans;
  @override
  @JsonKey(name: "products")
  final BaseList<Product>? products;

  @override
  String toString() {
    return 'OrderCheck(productMustPlans: $productMustPlans, products: $products)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderCheckImpl &&
            (identical(other.productMustPlans, productMustPlans) ||
                other.productMustPlans == productMustPlans) &&
            (identical(other.products, products) ||
                other.products == products));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, productMustPlans, products);

  /// Create a copy of OrderCheck
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderCheckImplCopyWith<_$OrderCheckImpl> get copyWith =>
      __$$OrderCheckImplCopyWithImpl<_$OrderCheckImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OrderCheckImplToJson(
      this,
    );
  }
}

abstract class _OrderCheck implements OrderCheck {
  const factory _OrderCheck(
          {@JsonKey(name: "product_must_plans")
          final BaseList<OrderMustPlan>? productMustPlans,
          @JsonKey(name: "products") final BaseList<Product>? products}) =
      _$OrderCheckImpl;

  factory _OrderCheck.fromJson(Map<String, dynamic> json) =
      _$OrderCheckImpl.fromJson;

  @override
  @JsonKey(name: "product_must_plans")
  BaseList<OrderMustPlan>? get productMustPlans;
  @override
  @JsonKey(name: "products")
  BaseList<Product>? get products;

  /// Create a copy of OrderCheck
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OrderCheckImplCopyWith<_$OrderCheckImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AcceptProduct _$AcceptProductFromJson(Map<String, dynamic> json) {
  return _AcceptProduct.fromJson(json);
}

/// @nodoc
mixin _$AcceptProduct {
  @JsonKey(name: "locale_name")
  LocaleName get localeName => throw _privateConstructorUsedError;
  @JsonKey(name: "num")
  int get num => throw _privateConstructorUsedError;
  @JsonKey(name: "total_price")
  double get totalPrice => throw _privateConstructorUsedError;

  /// Serializes this AcceptProduct to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AcceptProduct
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AcceptProductCopyWith<AcceptProduct> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AcceptProductCopyWith<$Res> {
  factory $AcceptProductCopyWith(
          AcceptProduct value, $Res Function(AcceptProduct) then) =
      _$AcceptProductCopyWithImpl<$Res, AcceptProduct>;
  @useResult
  $Res call(
      {@JsonKey(name: "locale_name") LocaleName localeName,
      @JsonKey(name: "num") int num,
      @JsonKey(name: "total_price") double totalPrice});

  $LocaleNameCopyWith<$Res> get localeName;
}

/// @nodoc
class _$AcceptProductCopyWithImpl<$Res, $Val extends AcceptProduct>
    implements $AcceptProductCopyWith<$Res> {
  _$AcceptProductCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AcceptProduct
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? localeName = null,
    Object? num = null,
    Object? totalPrice = null,
  }) {
    return _then(_value.copyWith(
      localeName: null == localeName
          ? _value.localeName
          : localeName // ignore: cast_nullable_to_non_nullable
              as LocaleName,
      num: null == num
          ? _value.num
          : num // ignore: cast_nullable_to_non_nullable
              as int,
      totalPrice: null == totalPrice
          ? _value.totalPrice
          : totalPrice // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }

  /// Create a copy of AcceptProduct
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
abstract class _$$AcceptProductImplCopyWith<$Res>
    implements $AcceptProductCopyWith<$Res> {
  factory _$$AcceptProductImplCopyWith(
          _$AcceptProductImpl value, $Res Function(_$AcceptProductImpl) then) =
      __$$AcceptProductImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "locale_name") LocaleName localeName,
      @JsonKey(name: "num") int num,
      @JsonKey(name: "total_price") double totalPrice});

  @override
  $LocaleNameCopyWith<$Res> get localeName;
}

/// @nodoc
class __$$AcceptProductImplCopyWithImpl<$Res>
    extends _$AcceptProductCopyWithImpl<$Res, _$AcceptProductImpl>
    implements _$$AcceptProductImplCopyWith<$Res> {
  __$$AcceptProductImplCopyWithImpl(
      _$AcceptProductImpl _value, $Res Function(_$AcceptProductImpl) _then)
      : super(_value, _then);

  /// Create a copy of AcceptProduct
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? localeName = null,
    Object? num = null,
    Object? totalPrice = null,
  }) {
    return _then(_$AcceptProductImpl(
      localeName: null == localeName
          ? _value.localeName
          : localeName // ignore: cast_nullable_to_non_nullable
              as LocaleName,
      num: null == num
          ? _value.num
          : num // ignore: cast_nullable_to_non_nullable
              as int,
      totalPrice: null == totalPrice
          ? _value.totalPrice
          : totalPrice // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AcceptProductImpl implements _AcceptProduct {
  const _$AcceptProductImpl(
      {@JsonKey(name: "locale_name") required this.localeName,
      @JsonKey(name: "num") required this.num,
      @JsonKey(name: "total_price") required this.totalPrice});

  factory _$AcceptProductImpl.fromJson(Map<String, dynamic> json) =>
      _$$AcceptProductImplFromJson(json);

  @override
  @JsonKey(name: "locale_name")
  final LocaleName localeName;
  @override
  @JsonKey(name: "num")
  final int num;
  @override
  @JsonKey(name: "total_price")
  final double totalPrice;

  @override
  String toString() {
    return 'AcceptProduct(localeName: $localeName, num: $num, totalPrice: $totalPrice)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AcceptProductImpl &&
            (identical(other.localeName, localeName) ||
                other.localeName == localeName) &&
            (identical(other.num, num) || other.num == num) &&
            (identical(other.totalPrice, totalPrice) ||
                other.totalPrice == totalPrice));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, localeName, num, totalPrice);

  /// Create a copy of AcceptProduct
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AcceptProductImplCopyWith<_$AcceptProductImpl> get copyWith =>
      __$$AcceptProductImplCopyWithImpl<_$AcceptProductImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AcceptProductImplToJson(
      this,
    );
  }
}

abstract class _AcceptProduct implements AcceptProduct {
  const factory _AcceptProduct(
          {@JsonKey(name: "locale_name") required final LocaleName localeName,
          @JsonKey(name: "num") required final int num,
          @JsonKey(name: "total_price") required final double totalPrice}) =
      _$AcceptProductImpl;

  factory _AcceptProduct.fromJson(Map<String, dynamic> json) =
      _$AcceptProductImpl.fromJson;

  @override
  @JsonKey(name: "locale_name")
  LocaleName get localeName;
  @override
  @JsonKey(name: "num")
  int get num;
  @override
  @JsonKey(name: "total_price")
  double get totalPrice;

  /// Create a copy of AcceptProduct
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AcceptProductImplCopyWith<_$AcceptProductImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

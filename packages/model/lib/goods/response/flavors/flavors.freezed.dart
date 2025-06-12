// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'flavors.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GoodsFlavors _$GoodsFlavorsFromJson(Map<String, dynamic> json) {
  return _GoodsFlavors.fromJson(json);
}

/// @nodoc
mixin _$GoodsFlavors {
// 商品规格名称
  @JsonKey(name: "locale_name")
  LocaleName get localeName => throw _privateConstructorUsedError; // 商品规格名称
  @JsonKey(name: "locale_name")
  set localeName(LocaleName value) =>
      throw _privateConstructorUsedError; // 商品规格价格
  @JsonKey(name: "price")
  SafetyNumber get price => throw _privateConstructorUsedError; // 商品规格价格
  @JsonKey(name: "price")
  set price(SafetyNumber value) =>
      throw _privateConstructorUsedError; // 商品规格UUID
  @JsonKey(name: "uuid")
  int get uuid => throw _privateConstructorUsedError; // 商品规格UUID
  @JsonKey(name: "uuid")
  set uuid(int value) => throw _privateConstructorUsedError; // 商品条形码
  @JsonKey(name: "barcode")
  String? get barcode => throw _privateConstructorUsedError; // 商品条形码
  @JsonKey(name: "barcode")
  set barcode(String? value) => throw _privateConstructorUsedError; // 商品库存数量
  @JsonKey(name: "stock_num")
  int get stockNum => throw _privateConstructorUsedError; // 商品库存数量
  @JsonKey(name: "stock_num")
  set stockNum(int value) => throw _privateConstructorUsedError;

  /// Serializes this GoodsFlavors to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GoodsFlavors
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GoodsFlavorsCopyWith<GoodsFlavors> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GoodsFlavorsCopyWith<$Res> {
  factory $GoodsFlavorsCopyWith(
          GoodsFlavors value, $Res Function(GoodsFlavors) then) =
      _$GoodsFlavorsCopyWithImpl<$Res, GoodsFlavors>;
  @useResult
  $Res call(
      {@JsonKey(name: "locale_name") LocaleName localeName,
      @JsonKey(name: "price") SafetyNumber price,
      @JsonKey(name: "uuid") int uuid,
      @JsonKey(name: "barcode") String? barcode,
      @JsonKey(name: "stock_num") int stockNum});

  $LocaleNameCopyWith<$Res> get localeName;
  $SafetyNumberCopyWith<$Res> get price;
}

/// @nodoc
class _$GoodsFlavorsCopyWithImpl<$Res, $Val extends GoodsFlavors>
    implements $GoodsFlavorsCopyWith<$Res> {
  _$GoodsFlavorsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GoodsFlavors
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? localeName = null,
    Object? price = null,
    Object? uuid = null,
    Object? barcode = freezed,
    Object? stockNum = null,
  }) {
    return _then(_value.copyWith(
      localeName: null == localeName
          ? _value.localeName
          : localeName // ignore: cast_nullable_to_non_nullable
              as LocaleName,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as SafetyNumber,
      uuid: null == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as int,
      barcode: freezed == barcode
          ? _value.barcode
          : barcode // ignore: cast_nullable_to_non_nullable
              as String?,
      stockNum: null == stockNum
          ? _value.stockNum
          : stockNum // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }

  /// Create a copy of GoodsFlavors
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LocaleNameCopyWith<$Res> get localeName {
    return $LocaleNameCopyWith<$Res>(_value.localeName, (value) {
      return _then(_value.copyWith(localeName: value) as $Val);
    });
  }

  /// Create a copy of GoodsFlavors
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SafetyNumberCopyWith<$Res> get price {
    return $SafetyNumberCopyWith<$Res>(_value.price, (value) {
      return _then(_value.copyWith(price: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$GoodsFlavorsImplCopyWith<$Res>
    implements $GoodsFlavorsCopyWith<$Res> {
  factory _$$GoodsFlavorsImplCopyWith(
          _$GoodsFlavorsImpl value, $Res Function(_$GoodsFlavorsImpl) then) =
      __$$GoodsFlavorsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "locale_name") LocaleName localeName,
      @JsonKey(name: "price") SafetyNumber price,
      @JsonKey(name: "uuid") int uuid,
      @JsonKey(name: "barcode") String? barcode,
      @JsonKey(name: "stock_num") int stockNum});

  @override
  $LocaleNameCopyWith<$Res> get localeName;
  @override
  $SafetyNumberCopyWith<$Res> get price;
}

/// @nodoc
class __$$GoodsFlavorsImplCopyWithImpl<$Res>
    extends _$GoodsFlavorsCopyWithImpl<$Res, _$GoodsFlavorsImpl>
    implements _$$GoodsFlavorsImplCopyWith<$Res> {
  __$$GoodsFlavorsImplCopyWithImpl(
      _$GoodsFlavorsImpl _value, $Res Function(_$GoodsFlavorsImpl) _then)
      : super(_value, _then);

  /// Create a copy of GoodsFlavors
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? localeName = null,
    Object? price = null,
    Object? uuid = null,
    Object? barcode = freezed,
    Object? stockNum = null,
  }) {
    return _then(_$GoodsFlavorsImpl(
      localeName: null == localeName
          ? _value.localeName
          : localeName // ignore: cast_nullable_to_non_nullable
              as LocaleName,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as SafetyNumber,
      uuid: null == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as int,
      barcode: freezed == barcode
          ? _value.barcode
          : barcode // ignore: cast_nullable_to_non_nullable
              as String?,
      stockNum: null == stockNum
          ? _value.stockNum
          : stockNum // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GoodsFlavorsImpl implements _GoodsFlavors {
  _$GoodsFlavorsImpl(
      {@JsonKey(name: "locale_name") required this.localeName,
      @JsonKey(name: "price") required this.price,
      @JsonKey(name: "uuid") required this.uuid,
      @JsonKey(name: "barcode") this.barcode,
      @JsonKey(name: "stock_num") required this.stockNum});

  factory _$GoodsFlavorsImpl.fromJson(Map<String, dynamic> json) =>
      _$$GoodsFlavorsImplFromJson(json);

// 商品规格名称
  @override
  @JsonKey(name: "locale_name")
  LocaleName localeName;
// 商品规格价格
  @override
  @JsonKey(name: "price")
  SafetyNumber price;
// 商品规格UUID
  @override
  @JsonKey(name: "uuid")
  int uuid;
// 商品条形码
  @override
  @JsonKey(name: "barcode")
  String? barcode;
// 商品库存数量
  @override
  @JsonKey(name: "stock_num")
  int stockNum;

  @override
  String toString() {
    return 'GoodsFlavors(localeName: $localeName, price: $price, uuid: $uuid, barcode: $barcode, stockNum: $stockNum)';
  }

  /// Create a copy of GoodsFlavors
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GoodsFlavorsImplCopyWith<_$GoodsFlavorsImpl> get copyWith =>
      __$$GoodsFlavorsImplCopyWithImpl<_$GoodsFlavorsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GoodsFlavorsImplToJson(
      this,
    );
  }
}

abstract class _GoodsFlavors implements GoodsFlavors {
  factory _GoodsFlavors(
      {@JsonKey(name: "locale_name") required LocaleName localeName,
      @JsonKey(name: "price") required SafetyNumber price,
      @JsonKey(name: "uuid") required int uuid,
      @JsonKey(name: "barcode") String? barcode,
      @JsonKey(name: "stock_num") required int stockNum}) = _$GoodsFlavorsImpl;

  factory _GoodsFlavors.fromJson(Map<String, dynamic> json) =
      _$GoodsFlavorsImpl.fromJson;

// 商品规格名称
  @override
  @JsonKey(name: "locale_name")
  LocaleName get localeName; // 商品规格名称
  @JsonKey(name: "locale_name")
  set localeName(LocaleName value); // 商品规格价格
  @override
  @JsonKey(name: "price")
  SafetyNumber get price; // 商品规格价格
  @JsonKey(name: "price")
  set price(SafetyNumber value); // 商品规格UUID
  @override
  @JsonKey(name: "uuid")
  int get uuid; // 商品规格UUID
  @JsonKey(name: "uuid")
  set uuid(int value); // 商品条形码
  @override
  @JsonKey(name: "barcode")
  String? get barcode; // 商品条形码
  @JsonKey(name: "barcode")
  set barcode(String? value); // 商品库存数量
  @override
  @JsonKey(name: "stock_num")
  int get stockNum; // 商品库存数量
  @JsonKey(name: "stock_num")
  set stockNum(int value);

  /// Create a copy of GoodsFlavors
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GoodsFlavorsImplCopyWith<_$GoodsFlavorsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

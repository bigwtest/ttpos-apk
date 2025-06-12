// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'must.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GoodsMust _$GoodsMustFromJson(Map<String, dynamic> json) {
  return _GoodsMust.fromJson(json);
}

/// @nodoc
mixin _$GoodsMust {
// 必点方案列表
  @JsonKey(name: "list")
  List<MustGoodsItem> get list =>
      throw _privateConstructorUsedError; // 购物车信息。当必点方案中有自动加购商品时，返回购物车信息。后台会自动加购商品到购物车中，前端用这个购物车信息更新界面
  @JsonKey(name: "shop_cart_info")
  GoodsMustOrderInfo? get shopCartInfo => throw _privateConstructorUsedError;

  /// Serializes this GoodsMust to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GoodsMust
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GoodsMustCopyWith<GoodsMust> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GoodsMustCopyWith<$Res> {
  factory $GoodsMustCopyWith(GoodsMust value, $Res Function(GoodsMust) then) =
      _$GoodsMustCopyWithImpl<$Res, GoodsMust>;
  @useResult
  $Res call(
      {@JsonKey(name: "list") List<MustGoodsItem> list,
      @JsonKey(name: "shop_cart_info") GoodsMustOrderInfo? shopCartInfo});

  $GoodsMustOrderInfoCopyWith<$Res>? get shopCartInfo;
}

/// @nodoc
class _$GoodsMustCopyWithImpl<$Res, $Val extends GoodsMust>
    implements $GoodsMustCopyWith<$Res> {
  _$GoodsMustCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GoodsMust
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? list = null,
    Object? shopCartInfo = freezed,
  }) {
    return _then(_value.copyWith(
      list: null == list
          ? _value.list
          : list // ignore: cast_nullable_to_non_nullable
              as List<MustGoodsItem>,
      shopCartInfo: freezed == shopCartInfo
          ? _value.shopCartInfo
          : shopCartInfo // ignore: cast_nullable_to_non_nullable
              as GoodsMustOrderInfo?,
    ) as $Val);
  }

  /// Create a copy of GoodsMust
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $GoodsMustOrderInfoCopyWith<$Res>? get shopCartInfo {
    if (_value.shopCartInfo == null) {
      return null;
    }

    return $GoodsMustOrderInfoCopyWith<$Res>(_value.shopCartInfo!, (value) {
      return _then(_value.copyWith(shopCartInfo: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$GoodsMustImplCopyWith<$Res>
    implements $GoodsMustCopyWith<$Res> {
  factory _$$GoodsMustImplCopyWith(
          _$GoodsMustImpl value, $Res Function(_$GoodsMustImpl) then) =
      __$$GoodsMustImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "list") List<MustGoodsItem> list,
      @JsonKey(name: "shop_cart_info") GoodsMustOrderInfo? shopCartInfo});

  @override
  $GoodsMustOrderInfoCopyWith<$Res>? get shopCartInfo;
}

/// @nodoc
class __$$GoodsMustImplCopyWithImpl<$Res>
    extends _$GoodsMustCopyWithImpl<$Res, _$GoodsMustImpl>
    implements _$$GoodsMustImplCopyWith<$Res> {
  __$$GoodsMustImplCopyWithImpl(
      _$GoodsMustImpl _value, $Res Function(_$GoodsMustImpl) _then)
      : super(_value, _then);

  /// Create a copy of GoodsMust
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? list = null,
    Object? shopCartInfo = freezed,
  }) {
    return _then(_$GoodsMustImpl(
      list: null == list
          ? _value._list
          : list // ignore: cast_nullable_to_non_nullable
              as List<MustGoodsItem>,
      shopCartInfo: freezed == shopCartInfo
          ? _value.shopCartInfo
          : shopCartInfo // ignore: cast_nullable_to_non_nullable
              as GoodsMustOrderInfo?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GoodsMustImpl implements _GoodsMust {
  _$GoodsMustImpl(
      {@JsonKey(name: "list") required final List<MustGoodsItem> list,
      @JsonKey(name: "shop_cart_info") this.shopCartInfo})
      : _list = list;

  factory _$GoodsMustImpl.fromJson(Map<String, dynamic> json) =>
      _$$GoodsMustImplFromJson(json);

// 必点方案列表
  final List<MustGoodsItem> _list;
// 必点方案列表
  @override
  @JsonKey(name: "list")
  List<MustGoodsItem> get list {
    if (_list is EqualUnmodifiableListView) return _list;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_list);
  }

// 购物车信息。当必点方案中有自动加购商品时，返回购物车信息。后台会自动加购商品到购物车中，前端用这个购物车信息更新界面
  @override
  @JsonKey(name: "shop_cart_info")
  final GoodsMustOrderInfo? shopCartInfo;

  @override
  String toString() {
    return 'GoodsMust(list: $list, shopCartInfo: $shopCartInfo)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GoodsMustImpl &&
            const DeepCollectionEquality().equals(other._list, _list) &&
            (identical(other.shopCartInfo, shopCartInfo) ||
                other.shopCartInfo == shopCartInfo));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_list), shopCartInfo);

  /// Create a copy of GoodsMust
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GoodsMustImplCopyWith<_$GoodsMustImpl> get copyWith =>
      __$$GoodsMustImplCopyWithImpl<_$GoodsMustImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GoodsMustImplToJson(
      this,
    );
  }
}

abstract class _GoodsMust implements GoodsMust {
  factory _GoodsMust(
      {@JsonKey(name: "list") required final List<MustGoodsItem> list,
      @JsonKey(name: "shop_cart_info")
      final GoodsMustOrderInfo? shopCartInfo}) = _$GoodsMustImpl;

  factory _GoodsMust.fromJson(Map<String, dynamic> json) =
      _$GoodsMustImpl.fromJson;

// 必点方案列表
  @override
  @JsonKey(name: "list")
  List<MustGoodsItem>
      get list; // 购物车信息。当必点方案中有自动加购商品时，返回购物车信息。后台会自动加购商品到购物车中，前端用这个购物车信息更新界面
  @override
  @JsonKey(name: "shop_cart_info")
  GoodsMustOrderInfo? get shopCartInfo;

  /// Create a copy of GoodsMust
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GoodsMustImplCopyWith<_$GoodsMustImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

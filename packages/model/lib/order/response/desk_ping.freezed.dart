// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'desk_ping.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ResponseDeskPing _$ResponseDeskPingFromJson(Map<String, dynamic> json) {
  return _ResponseDeskPing.fromJson(json);
}

/// @nodoc
mixin _$ResponseDeskPing {
// 自助餐信息
  @JsonKey(name: "buffet")
  ResponseBuffet get buffet => throw _privateConstructorUsedError; // 桌台信息
  @JsonKey(name: "desk_info")
  Desk get deskInfo => throw _privateConstructorUsedError; // 必点方案列表
  @JsonKey(name: "must_plans")
  BaseList<MustGoodsItem> get mustPlans =>
      throw _privateConstructorUsedError; // 销售订单列表
  @JsonKey(name: "sale_order_list")
  List<ResponseSaleOrder>? get saleOrderList =>
      throw _privateConstructorUsedError; // 已送厨商品信息
  @JsonKey(name: "sent_kitchen")
  SentKitchen get sentKitchen =>
      throw _privateConstructorUsedError; // 已送厨商品列表，用于显示送厨数量和完成数量
  @JsonKey(name: "sent_kitchen_products")
  BaseList<SentKitchenProduct>? get sentKitchenProducts =>
      throw _privateConstructorUsedError; // 未送厨商品信息
  @JsonKey(name: "unsent_kitchen")
  UnsentKitchen get unsentKitchen => throw _privateConstructorUsedError; // 必选商品
  @JsonKey(name: "must_products")
  BaseList<GoodsBuffet>? get mustProducts => throw _privateConstructorUsedError;

  /// NOTE: 更新时间
  @JsonKey(name: "update_time")
  int? get updateTime => throw _privateConstructorUsedError;

  /// Serializes this ResponseDeskPing to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ResponseDeskPing
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ResponseDeskPingCopyWith<ResponseDeskPing> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResponseDeskPingCopyWith<$Res> {
  factory $ResponseDeskPingCopyWith(
          ResponseDeskPing value, $Res Function(ResponseDeskPing) then) =
      _$ResponseDeskPingCopyWithImpl<$Res, ResponseDeskPing>;
  @useResult
  $Res call(
      {@JsonKey(name: "buffet") ResponseBuffet buffet,
      @JsonKey(name: "desk_info") Desk deskInfo,
      @JsonKey(name: "must_plans") BaseList<MustGoodsItem> mustPlans,
      @JsonKey(name: "sale_order_list") List<ResponseSaleOrder>? saleOrderList,
      @JsonKey(name: "sent_kitchen") SentKitchen sentKitchen,
      @JsonKey(name: "sent_kitchen_products")
      BaseList<SentKitchenProduct>? sentKitchenProducts,
      @JsonKey(name: "unsent_kitchen") UnsentKitchen unsentKitchen,
      @JsonKey(name: "must_products") BaseList<GoodsBuffet>? mustProducts,
      @JsonKey(name: "update_time") int? updateTime});

  $ResponseBuffetCopyWith<$Res> get buffet;
  $DeskCopyWith<$Res> get deskInfo;
  $BaseListCopyWith<MustGoodsItem, $Res> get mustPlans;
  $SentKitchenCopyWith<$Res> get sentKitchen;
  $BaseListCopyWith<SentKitchenProduct, $Res>? get sentKitchenProducts;
  $UnsentKitchenCopyWith<$Res> get unsentKitchen;
  $BaseListCopyWith<GoodsBuffet, $Res>? get mustProducts;
}

/// @nodoc
class _$ResponseDeskPingCopyWithImpl<$Res, $Val extends ResponseDeskPing>
    implements $ResponseDeskPingCopyWith<$Res> {
  _$ResponseDeskPingCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ResponseDeskPing
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? buffet = null,
    Object? deskInfo = null,
    Object? mustPlans = null,
    Object? saleOrderList = freezed,
    Object? sentKitchen = null,
    Object? sentKitchenProducts = freezed,
    Object? unsentKitchen = null,
    Object? mustProducts = freezed,
    Object? updateTime = freezed,
  }) {
    return _then(_value.copyWith(
      buffet: null == buffet
          ? _value.buffet
          : buffet // ignore: cast_nullable_to_non_nullable
              as ResponseBuffet,
      deskInfo: null == deskInfo
          ? _value.deskInfo
          : deskInfo // ignore: cast_nullable_to_non_nullable
              as Desk,
      mustPlans: null == mustPlans
          ? _value.mustPlans
          : mustPlans // ignore: cast_nullable_to_non_nullable
              as BaseList<MustGoodsItem>,
      saleOrderList: freezed == saleOrderList
          ? _value.saleOrderList
          : saleOrderList // ignore: cast_nullable_to_non_nullable
              as List<ResponseSaleOrder>?,
      sentKitchen: null == sentKitchen
          ? _value.sentKitchen
          : sentKitchen // ignore: cast_nullable_to_non_nullable
              as SentKitchen,
      sentKitchenProducts: freezed == sentKitchenProducts
          ? _value.sentKitchenProducts
          : sentKitchenProducts // ignore: cast_nullable_to_non_nullable
              as BaseList<SentKitchenProduct>?,
      unsentKitchen: null == unsentKitchen
          ? _value.unsentKitchen
          : unsentKitchen // ignore: cast_nullable_to_non_nullable
              as UnsentKitchen,
      mustProducts: freezed == mustProducts
          ? _value.mustProducts
          : mustProducts // ignore: cast_nullable_to_non_nullable
              as BaseList<GoodsBuffet>?,
      updateTime: freezed == updateTime
          ? _value.updateTime
          : updateTime // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }

  /// Create a copy of ResponseDeskPing
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ResponseBuffetCopyWith<$Res> get buffet {
    return $ResponseBuffetCopyWith<$Res>(_value.buffet, (value) {
      return _then(_value.copyWith(buffet: value) as $Val);
    });
  }

  /// Create a copy of ResponseDeskPing
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DeskCopyWith<$Res> get deskInfo {
    return $DeskCopyWith<$Res>(_value.deskInfo, (value) {
      return _then(_value.copyWith(deskInfo: value) as $Val);
    });
  }

  /// Create a copy of ResponseDeskPing
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BaseListCopyWith<MustGoodsItem, $Res> get mustPlans {
    return $BaseListCopyWith<MustGoodsItem, $Res>(_value.mustPlans, (value) {
      return _then(_value.copyWith(mustPlans: value) as $Val);
    });
  }

  /// Create a copy of ResponseDeskPing
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SentKitchenCopyWith<$Res> get sentKitchen {
    return $SentKitchenCopyWith<$Res>(_value.sentKitchen, (value) {
      return _then(_value.copyWith(sentKitchen: value) as $Val);
    });
  }

  /// Create a copy of ResponseDeskPing
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BaseListCopyWith<SentKitchenProduct, $Res>? get sentKitchenProducts {
    if (_value.sentKitchenProducts == null) {
      return null;
    }

    return $BaseListCopyWith<SentKitchenProduct, $Res>(
        _value.sentKitchenProducts!, (value) {
      return _then(_value.copyWith(sentKitchenProducts: value) as $Val);
    });
  }

  /// Create a copy of ResponseDeskPing
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UnsentKitchenCopyWith<$Res> get unsentKitchen {
    return $UnsentKitchenCopyWith<$Res>(_value.unsentKitchen, (value) {
      return _then(_value.copyWith(unsentKitchen: value) as $Val);
    });
  }

  /// Create a copy of ResponseDeskPing
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BaseListCopyWith<GoodsBuffet, $Res>? get mustProducts {
    if (_value.mustProducts == null) {
      return null;
    }

    return $BaseListCopyWith<GoodsBuffet, $Res>(_value.mustProducts!, (value) {
      return _then(_value.copyWith(mustProducts: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ResponseDeskPingImplCopyWith<$Res>
    implements $ResponseDeskPingCopyWith<$Res> {
  factory _$$ResponseDeskPingImplCopyWith(_$ResponseDeskPingImpl value,
          $Res Function(_$ResponseDeskPingImpl) then) =
      __$$ResponseDeskPingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "buffet") ResponseBuffet buffet,
      @JsonKey(name: "desk_info") Desk deskInfo,
      @JsonKey(name: "must_plans") BaseList<MustGoodsItem> mustPlans,
      @JsonKey(name: "sale_order_list") List<ResponseSaleOrder>? saleOrderList,
      @JsonKey(name: "sent_kitchen") SentKitchen sentKitchen,
      @JsonKey(name: "sent_kitchen_products")
      BaseList<SentKitchenProduct>? sentKitchenProducts,
      @JsonKey(name: "unsent_kitchen") UnsentKitchen unsentKitchen,
      @JsonKey(name: "must_products") BaseList<GoodsBuffet>? mustProducts,
      @JsonKey(name: "update_time") int? updateTime});

  @override
  $ResponseBuffetCopyWith<$Res> get buffet;
  @override
  $DeskCopyWith<$Res> get deskInfo;
  @override
  $BaseListCopyWith<MustGoodsItem, $Res> get mustPlans;
  @override
  $SentKitchenCopyWith<$Res> get sentKitchen;
  @override
  $BaseListCopyWith<SentKitchenProduct, $Res>? get sentKitchenProducts;
  @override
  $UnsentKitchenCopyWith<$Res> get unsentKitchen;
  @override
  $BaseListCopyWith<GoodsBuffet, $Res>? get mustProducts;
}

/// @nodoc
class __$$ResponseDeskPingImplCopyWithImpl<$Res>
    extends _$ResponseDeskPingCopyWithImpl<$Res, _$ResponseDeskPingImpl>
    implements _$$ResponseDeskPingImplCopyWith<$Res> {
  __$$ResponseDeskPingImplCopyWithImpl(_$ResponseDeskPingImpl _value,
      $Res Function(_$ResponseDeskPingImpl) _then)
      : super(_value, _then);

  /// Create a copy of ResponseDeskPing
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? buffet = null,
    Object? deskInfo = null,
    Object? mustPlans = null,
    Object? saleOrderList = freezed,
    Object? sentKitchen = null,
    Object? sentKitchenProducts = freezed,
    Object? unsentKitchen = null,
    Object? mustProducts = freezed,
    Object? updateTime = freezed,
  }) {
    return _then(_$ResponseDeskPingImpl(
      buffet: null == buffet
          ? _value.buffet
          : buffet // ignore: cast_nullable_to_non_nullable
              as ResponseBuffet,
      deskInfo: null == deskInfo
          ? _value.deskInfo
          : deskInfo // ignore: cast_nullable_to_non_nullable
              as Desk,
      mustPlans: null == mustPlans
          ? _value.mustPlans
          : mustPlans // ignore: cast_nullable_to_non_nullable
              as BaseList<MustGoodsItem>,
      saleOrderList: freezed == saleOrderList
          ? _value._saleOrderList
          : saleOrderList // ignore: cast_nullable_to_non_nullable
              as List<ResponseSaleOrder>?,
      sentKitchen: null == sentKitchen
          ? _value.sentKitchen
          : sentKitchen // ignore: cast_nullable_to_non_nullable
              as SentKitchen,
      sentKitchenProducts: freezed == sentKitchenProducts
          ? _value.sentKitchenProducts
          : sentKitchenProducts // ignore: cast_nullable_to_non_nullable
              as BaseList<SentKitchenProduct>?,
      unsentKitchen: null == unsentKitchen
          ? _value.unsentKitchen
          : unsentKitchen // ignore: cast_nullable_to_non_nullable
              as UnsentKitchen,
      mustProducts: freezed == mustProducts
          ? _value.mustProducts
          : mustProducts // ignore: cast_nullable_to_non_nullable
              as BaseList<GoodsBuffet>?,
      updateTime: freezed == updateTime
          ? _value.updateTime
          : updateTime // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ResponseDeskPingImpl implements _ResponseDeskPing {
  const _$ResponseDeskPingImpl(
      {@JsonKey(name: "buffet") required this.buffet,
      @JsonKey(name: "desk_info") required this.deskInfo,
      @JsonKey(name: "must_plans") required this.mustPlans,
      @JsonKey(name: "sale_order_list")
      final List<ResponseSaleOrder>? saleOrderList,
      @JsonKey(name: "sent_kitchen") required this.sentKitchen,
      @JsonKey(name: "sent_kitchen_products") this.sentKitchenProducts,
      @JsonKey(name: "unsent_kitchen") required this.unsentKitchen,
      @JsonKey(name: "must_products") this.mustProducts,
      @JsonKey(name: "update_time") this.updateTime = 0})
      : _saleOrderList = saleOrderList;

  factory _$ResponseDeskPingImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResponseDeskPingImplFromJson(json);

// 自助餐信息
  @override
  @JsonKey(name: "buffet")
  final ResponseBuffet buffet;
// 桌台信息
  @override
  @JsonKey(name: "desk_info")
  final Desk deskInfo;
// 必点方案列表
  @override
  @JsonKey(name: "must_plans")
  final BaseList<MustGoodsItem> mustPlans;
// 销售订单列表
  final List<ResponseSaleOrder>? _saleOrderList;
// 销售订单列表
  @override
  @JsonKey(name: "sale_order_list")
  List<ResponseSaleOrder>? get saleOrderList {
    final value = _saleOrderList;
    if (value == null) return null;
    if (_saleOrderList is EqualUnmodifiableListView) return _saleOrderList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

// 已送厨商品信息
  @override
  @JsonKey(name: "sent_kitchen")
  final SentKitchen sentKitchen;
// 已送厨商品列表，用于显示送厨数量和完成数量
  @override
  @JsonKey(name: "sent_kitchen_products")
  final BaseList<SentKitchenProduct>? sentKitchenProducts;
// 未送厨商品信息
  @override
  @JsonKey(name: "unsent_kitchen")
  final UnsentKitchen unsentKitchen;
// 必选商品
  @override
  @JsonKey(name: "must_products")
  final BaseList<GoodsBuffet>? mustProducts;

  /// NOTE: 更新时间
  @override
  @JsonKey(name: "update_time")
  final int? updateTime;

  @override
  String toString() {
    return 'ResponseDeskPing(buffet: $buffet, deskInfo: $deskInfo, mustPlans: $mustPlans, saleOrderList: $saleOrderList, sentKitchen: $sentKitchen, sentKitchenProducts: $sentKitchenProducts, unsentKitchen: $unsentKitchen, mustProducts: $mustProducts, updateTime: $updateTime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResponseDeskPingImpl &&
            (identical(other.buffet, buffet) || other.buffet == buffet) &&
            (identical(other.deskInfo, deskInfo) ||
                other.deskInfo == deskInfo) &&
            (identical(other.mustPlans, mustPlans) ||
                other.mustPlans == mustPlans) &&
            const DeepCollectionEquality()
                .equals(other._saleOrderList, _saleOrderList) &&
            (identical(other.sentKitchen, sentKitchen) ||
                other.sentKitchen == sentKitchen) &&
            (identical(other.sentKitchenProducts, sentKitchenProducts) ||
                other.sentKitchenProducts == sentKitchenProducts) &&
            (identical(other.unsentKitchen, unsentKitchen) ||
                other.unsentKitchen == unsentKitchen) &&
            (identical(other.mustProducts, mustProducts) ||
                other.mustProducts == mustProducts) &&
            (identical(other.updateTime, updateTime) ||
                other.updateTime == updateTime));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      buffet,
      deskInfo,
      mustPlans,
      const DeepCollectionEquality().hash(_saleOrderList),
      sentKitchen,
      sentKitchenProducts,
      unsentKitchen,
      mustProducts,
      updateTime);

  /// Create a copy of ResponseDeskPing
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ResponseDeskPingImplCopyWith<_$ResponseDeskPingImpl> get copyWith =>
      __$$ResponseDeskPingImplCopyWithImpl<_$ResponseDeskPingImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResponseDeskPingImplToJson(
      this,
    );
  }
}

abstract class _ResponseDeskPing implements ResponseDeskPing {
  const factory _ResponseDeskPing(
      {@JsonKey(name: "buffet") required final ResponseBuffet buffet,
      @JsonKey(name: "desk_info") required final Desk deskInfo,
      @JsonKey(name: "must_plans")
      required final BaseList<MustGoodsItem> mustPlans,
      @JsonKey(name: "sale_order_list")
      final List<ResponseSaleOrder>? saleOrderList,
      @JsonKey(name: "sent_kitchen") required final SentKitchen sentKitchen,
      @JsonKey(name: "sent_kitchen_products")
      final BaseList<SentKitchenProduct>? sentKitchenProducts,
      @JsonKey(name: "unsent_kitchen")
      required final UnsentKitchen unsentKitchen,
      @JsonKey(name: "must_products") final BaseList<GoodsBuffet>? mustProducts,
      @JsonKey(name: "update_time")
      final int? updateTime}) = _$ResponseDeskPingImpl;

  factory _ResponseDeskPing.fromJson(Map<String, dynamic> json) =
      _$ResponseDeskPingImpl.fromJson;

// 自助餐信息
  @override
  @JsonKey(name: "buffet")
  ResponseBuffet get buffet; // 桌台信息
  @override
  @JsonKey(name: "desk_info")
  Desk get deskInfo; // 必点方案列表
  @override
  @JsonKey(name: "must_plans")
  BaseList<MustGoodsItem> get mustPlans; // 销售订单列表
  @override
  @JsonKey(name: "sale_order_list")
  List<ResponseSaleOrder>? get saleOrderList; // 已送厨商品信息
  @override
  @JsonKey(name: "sent_kitchen")
  SentKitchen get sentKitchen; // 已送厨商品列表，用于显示送厨数量和完成数量
  @override
  @JsonKey(name: "sent_kitchen_products")
  BaseList<SentKitchenProduct>? get sentKitchenProducts; // 未送厨商品信息
  @override
  @JsonKey(name: "unsent_kitchen")
  UnsentKitchen get unsentKitchen; // 必选商品
  @override
  @JsonKey(name: "must_products")
  BaseList<GoodsBuffet>? get mustProducts;

  /// NOTE: 更新时间
  @override
  @JsonKey(name: "update_time")
  int? get updateTime;

  /// Create a copy of ResponseDeskPing
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ResponseDeskPingImplCopyWith<_$ResponseDeskPingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SentKitchenProduct _$SentKitchenProductFromJson(Map<String, dynamic> json) {
  return _SentKitchenProduct.fromJson(json);
}

/// @nodoc
mixin _$SentKitchenProduct {
// 制作完成数量
  @JsonKey(name: "finished_num")
  int get finishedNum => throw _privateConstructorUsedError; // 商品Uuid
  @JsonKey(name: "product_package_uuid")
  int get productPackageUuid => throw _privateConstructorUsedError; // 已送厨商品数量
  @JsonKey(name: "sent_kitchen_product_num")
  int get sentKitchenProductNum => throw _privateConstructorUsedError;

  /// Serializes this SentKitchenProduct to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SentKitchenProduct
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SentKitchenProductCopyWith<SentKitchenProduct> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SentKitchenProductCopyWith<$Res> {
  factory $SentKitchenProductCopyWith(
          SentKitchenProduct value, $Res Function(SentKitchenProduct) then) =
      _$SentKitchenProductCopyWithImpl<$Res, SentKitchenProduct>;
  @useResult
  $Res call(
      {@JsonKey(name: "finished_num") int finishedNum,
      @JsonKey(name: "product_package_uuid") int productPackageUuid,
      @JsonKey(name: "sent_kitchen_product_num") int sentKitchenProductNum});
}

/// @nodoc
class _$SentKitchenProductCopyWithImpl<$Res, $Val extends SentKitchenProduct>
    implements $SentKitchenProductCopyWith<$Res> {
  _$SentKitchenProductCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SentKitchenProduct
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? finishedNum = null,
    Object? productPackageUuid = null,
    Object? sentKitchenProductNum = null,
  }) {
    return _then(_value.copyWith(
      finishedNum: null == finishedNum
          ? _value.finishedNum
          : finishedNum // ignore: cast_nullable_to_non_nullable
              as int,
      productPackageUuid: null == productPackageUuid
          ? _value.productPackageUuid
          : productPackageUuid // ignore: cast_nullable_to_non_nullable
              as int,
      sentKitchenProductNum: null == sentKitchenProductNum
          ? _value.sentKitchenProductNum
          : sentKitchenProductNum // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SentKitchenProductImplCopyWith<$Res>
    implements $SentKitchenProductCopyWith<$Res> {
  factory _$$SentKitchenProductImplCopyWith(_$SentKitchenProductImpl value,
          $Res Function(_$SentKitchenProductImpl) then) =
      __$$SentKitchenProductImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "finished_num") int finishedNum,
      @JsonKey(name: "product_package_uuid") int productPackageUuid,
      @JsonKey(name: "sent_kitchen_product_num") int sentKitchenProductNum});
}

/// @nodoc
class __$$SentKitchenProductImplCopyWithImpl<$Res>
    extends _$SentKitchenProductCopyWithImpl<$Res, _$SentKitchenProductImpl>
    implements _$$SentKitchenProductImplCopyWith<$Res> {
  __$$SentKitchenProductImplCopyWithImpl(_$SentKitchenProductImpl _value,
      $Res Function(_$SentKitchenProductImpl) _then)
      : super(_value, _then);

  /// Create a copy of SentKitchenProduct
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? finishedNum = null,
    Object? productPackageUuid = null,
    Object? sentKitchenProductNum = null,
  }) {
    return _then(_$SentKitchenProductImpl(
      finishedNum: null == finishedNum
          ? _value.finishedNum
          : finishedNum // ignore: cast_nullable_to_non_nullable
              as int,
      productPackageUuid: null == productPackageUuid
          ? _value.productPackageUuid
          : productPackageUuid // ignore: cast_nullable_to_non_nullable
              as int,
      sentKitchenProductNum: null == sentKitchenProductNum
          ? _value.sentKitchenProductNum
          : sentKitchenProductNum // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SentKitchenProductImpl implements _SentKitchenProduct {
  const _$SentKitchenProductImpl(
      {@JsonKey(name: "finished_num") required this.finishedNum,
      @JsonKey(name: "product_package_uuid") required this.productPackageUuid,
      @JsonKey(name: "sent_kitchen_product_num")
      required this.sentKitchenProductNum});

  factory _$SentKitchenProductImpl.fromJson(Map<String, dynamic> json) =>
      _$$SentKitchenProductImplFromJson(json);

// 制作完成数量
  @override
  @JsonKey(name: "finished_num")
  final int finishedNum;
// 商品Uuid
  @override
  @JsonKey(name: "product_package_uuid")
  final int productPackageUuid;
// 已送厨商品数量
  @override
  @JsonKey(name: "sent_kitchen_product_num")
  final int sentKitchenProductNum;

  @override
  String toString() {
    return 'SentKitchenProduct(finishedNum: $finishedNum, productPackageUuid: $productPackageUuid, sentKitchenProductNum: $sentKitchenProductNum)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SentKitchenProductImpl &&
            (identical(other.finishedNum, finishedNum) ||
                other.finishedNum == finishedNum) &&
            (identical(other.productPackageUuid, productPackageUuid) ||
                other.productPackageUuid == productPackageUuid) &&
            (identical(other.sentKitchenProductNum, sentKitchenProductNum) ||
                other.sentKitchenProductNum == sentKitchenProductNum));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, finishedNum, productPackageUuid, sentKitchenProductNum);

  /// Create a copy of SentKitchenProduct
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SentKitchenProductImplCopyWith<_$SentKitchenProductImpl> get copyWith =>
      __$$SentKitchenProductImplCopyWithImpl<_$SentKitchenProductImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SentKitchenProductImplToJson(
      this,
    );
  }
}

abstract class _SentKitchenProduct implements SentKitchenProduct {
  const factory _SentKitchenProduct(
      {@JsonKey(name: "finished_num") required final int finishedNum,
      @JsonKey(name: "product_package_uuid")
      required final int productPackageUuid,
      @JsonKey(name: "sent_kitchen_product_num")
      required final int sentKitchenProductNum}) = _$SentKitchenProductImpl;

  factory _SentKitchenProduct.fromJson(Map<String, dynamic> json) =
      _$SentKitchenProductImpl.fromJson;

// 制作完成数量
  @override
  @JsonKey(name: "finished_num")
  int get finishedNum; // 商品Uuid
  @override
  @JsonKey(name: "product_package_uuid")
  int get productPackageUuid; // 已送厨商品数量
  @override
  @JsonKey(name: "sent_kitchen_product_num")
  int get sentKitchenProductNum;

  /// Create a copy of SentKitchenProduct
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SentKitchenProductImplCopyWith<_$SentKitchenProductImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ResponseBuffet _$ResponseBuffetFromJson(Map<String, dynamic> json) {
  return _ResponseBuffet.fromJson(json);
}

/// @nodoc
mixin _$ResponseBuffet {
// 自助餐名称
  @JsonKey(name: "locale_name")
  LocaleName get localeName =>
      throw _privateConstructorUsedError; // 剩余用餐，单位秒，如果为-1，表示不限时
  @JsonKey(name: "remaining_seconds")
  int get remainingSeconds => throw _privateConstructorUsedError; // 剩余点餐，单位秒
  @JsonKey(name: "remaining_ordering_time")
  int get remainingOrderingTime =>
      throw _privateConstructorUsedError; // 自助餐结束前x分钟时提醒即将不可下单，用于助手端、平板端和h5，单位秒
  @JsonKey(name: "reminder_order_time")
  int get reminderOrderTime =>
      throw _privateConstructorUsedError; // 助手、平板、h5时间是否已设置
  @JsonKey(name: "is_tablet_h5_time_set")
  bool get isTabletH5TimeSet => throw _privateConstructorUsedError;

  /// Serializes this ResponseBuffet to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ResponseBuffet
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ResponseBuffetCopyWith<ResponseBuffet> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResponseBuffetCopyWith<$Res> {
  factory $ResponseBuffetCopyWith(
          ResponseBuffet value, $Res Function(ResponseBuffet) then) =
      _$ResponseBuffetCopyWithImpl<$Res, ResponseBuffet>;
  @useResult
  $Res call(
      {@JsonKey(name: "locale_name") LocaleName localeName,
      @JsonKey(name: "remaining_seconds") int remainingSeconds,
      @JsonKey(name: "remaining_ordering_time") int remainingOrderingTime,
      @JsonKey(name: "reminder_order_time") int reminderOrderTime,
      @JsonKey(name: "is_tablet_h5_time_set") bool isTabletH5TimeSet});

  $LocaleNameCopyWith<$Res> get localeName;
}

/// @nodoc
class _$ResponseBuffetCopyWithImpl<$Res, $Val extends ResponseBuffet>
    implements $ResponseBuffetCopyWith<$Res> {
  _$ResponseBuffetCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ResponseBuffet
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? localeName = null,
    Object? remainingSeconds = null,
    Object? remainingOrderingTime = null,
    Object? reminderOrderTime = null,
    Object? isTabletH5TimeSet = null,
  }) {
    return _then(_value.copyWith(
      localeName: null == localeName
          ? _value.localeName
          : localeName // ignore: cast_nullable_to_non_nullable
              as LocaleName,
      remainingSeconds: null == remainingSeconds
          ? _value.remainingSeconds
          : remainingSeconds // ignore: cast_nullable_to_non_nullable
              as int,
      remainingOrderingTime: null == remainingOrderingTime
          ? _value.remainingOrderingTime
          : remainingOrderingTime // ignore: cast_nullable_to_non_nullable
              as int,
      reminderOrderTime: null == reminderOrderTime
          ? _value.reminderOrderTime
          : reminderOrderTime // ignore: cast_nullable_to_non_nullable
              as int,
      isTabletH5TimeSet: null == isTabletH5TimeSet
          ? _value.isTabletH5TimeSet
          : isTabletH5TimeSet // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  /// Create a copy of ResponseBuffet
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
abstract class _$$ResponseBuffetImplCopyWith<$Res>
    implements $ResponseBuffetCopyWith<$Res> {
  factory _$$ResponseBuffetImplCopyWith(_$ResponseBuffetImpl value,
          $Res Function(_$ResponseBuffetImpl) then) =
      __$$ResponseBuffetImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "locale_name") LocaleName localeName,
      @JsonKey(name: "remaining_seconds") int remainingSeconds,
      @JsonKey(name: "remaining_ordering_time") int remainingOrderingTime,
      @JsonKey(name: "reminder_order_time") int reminderOrderTime,
      @JsonKey(name: "is_tablet_h5_time_set") bool isTabletH5TimeSet});

  @override
  $LocaleNameCopyWith<$Res> get localeName;
}

/// @nodoc
class __$$ResponseBuffetImplCopyWithImpl<$Res>
    extends _$ResponseBuffetCopyWithImpl<$Res, _$ResponseBuffetImpl>
    implements _$$ResponseBuffetImplCopyWith<$Res> {
  __$$ResponseBuffetImplCopyWithImpl(
      _$ResponseBuffetImpl _value, $Res Function(_$ResponseBuffetImpl) _then)
      : super(_value, _then);

  /// Create a copy of ResponseBuffet
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? localeName = null,
    Object? remainingSeconds = null,
    Object? remainingOrderingTime = null,
    Object? reminderOrderTime = null,
    Object? isTabletH5TimeSet = null,
  }) {
    return _then(_$ResponseBuffetImpl(
      localeName: null == localeName
          ? _value.localeName
          : localeName // ignore: cast_nullable_to_non_nullable
              as LocaleName,
      remainingSeconds: null == remainingSeconds
          ? _value.remainingSeconds
          : remainingSeconds // ignore: cast_nullable_to_non_nullable
              as int,
      remainingOrderingTime: null == remainingOrderingTime
          ? _value.remainingOrderingTime
          : remainingOrderingTime // ignore: cast_nullable_to_non_nullable
              as int,
      reminderOrderTime: null == reminderOrderTime
          ? _value.reminderOrderTime
          : reminderOrderTime // ignore: cast_nullable_to_non_nullable
              as int,
      isTabletH5TimeSet: null == isTabletH5TimeSet
          ? _value.isTabletH5TimeSet
          : isTabletH5TimeSet // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ResponseBuffetImpl implements _ResponseBuffet {
  const _$ResponseBuffetImpl(
      {@JsonKey(name: "locale_name") required this.localeName,
      @JsonKey(name: "remaining_seconds") required this.remainingSeconds,
      @JsonKey(name: "remaining_ordering_time")
      required this.remainingOrderingTime,
      @JsonKey(name: "reminder_order_time") required this.reminderOrderTime,
      @JsonKey(name: "is_tablet_h5_time_set") required this.isTabletH5TimeSet});

  factory _$ResponseBuffetImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResponseBuffetImplFromJson(json);

// 自助餐名称
  @override
  @JsonKey(name: "locale_name")
  final LocaleName localeName;
// 剩余用餐，单位秒，如果为-1，表示不限时
  @override
  @JsonKey(name: "remaining_seconds")
  final int remainingSeconds;
// 剩余点餐，单位秒
  @override
  @JsonKey(name: "remaining_ordering_time")
  final int remainingOrderingTime;
// 自助餐结束前x分钟时提醒即将不可下单，用于助手端、平板端和h5，单位秒
  @override
  @JsonKey(name: "reminder_order_time")
  final int reminderOrderTime;
// 助手、平板、h5时间是否已设置
  @override
  @JsonKey(name: "is_tablet_h5_time_set")
  final bool isTabletH5TimeSet;

  @override
  String toString() {
    return 'ResponseBuffet(localeName: $localeName, remainingSeconds: $remainingSeconds, remainingOrderingTime: $remainingOrderingTime, reminderOrderTime: $reminderOrderTime, isTabletH5TimeSet: $isTabletH5TimeSet)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResponseBuffetImpl &&
            (identical(other.localeName, localeName) ||
                other.localeName == localeName) &&
            (identical(other.remainingSeconds, remainingSeconds) ||
                other.remainingSeconds == remainingSeconds) &&
            (identical(other.remainingOrderingTime, remainingOrderingTime) ||
                other.remainingOrderingTime == remainingOrderingTime) &&
            (identical(other.reminderOrderTime, reminderOrderTime) ||
                other.reminderOrderTime == reminderOrderTime) &&
            (identical(other.isTabletH5TimeSet, isTabletH5TimeSet) ||
                other.isTabletH5TimeSet == isTabletH5TimeSet));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, localeName, remainingSeconds,
      remainingOrderingTime, reminderOrderTime, isTabletH5TimeSet);

  /// Create a copy of ResponseBuffet
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ResponseBuffetImplCopyWith<_$ResponseBuffetImpl> get copyWith =>
      __$$ResponseBuffetImplCopyWithImpl<_$ResponseBuffetImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResponseBuffetImplToJson(
      this,
    );
  }
}

abstract class _ResponseBuffet implements ResponseBuffet {
  const factory _ResponseBuffet(
      {@JsonKey(name: "locale_name") required final LocaleName localeName,
      @JsonKey(name: "remaining_seconds") required final int remainingSeconds,
      @JsonKey(name: "remaining_ordering_time")
      required final int remainingOrderingTime,
      @JsonKey(name: "reminder_order_time")
      required final int reminderOrderTime,
      @JsonKey(name: "is_tablet_h5_time_set")
      required final bool isTabletH5TimeSet}) = _$ResponseBuffetImpl;

  factory _ResponseBuffet.fromJson(Map<String, dynamic> json) =
      _$ResponseBuffetImpl.fromJson;

// 自助餐名称
  @override
  @JsonKey(name: "locale_name")
  LocaleName get localeName; // 剩余用餐，单位秒，如果为-1，表示不限时
  @override
  @JsonKey(name: "remaining_seconds")
  int get remainingSeconds; // 剩余点餐，单位秒
  @override
  @JsonKey(name: "remaining_ordering_time")
  int get remainingOrderingTime; // 自助餐结束前x分钟时提醒即将不可下单，用于助手端、平板端和h5，单位秒
  @override
  @JsonKey(name: "reminder_order_time")
  int get reminderOrderTime; // 助手、平板、h5时间是否已设置
  @override
  @JsonKey(name: "is_tablet_h5_time_set")
  bool get isTabletH5TimeSet;

  /// Create a copy of ResponseBuffet
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ResponseBuffetImplCopyWith<_$ResponseBuffetImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ResponseSaleOrder _$ResponseSaleOrderFromJson(Map<String, dynamic> json) {
  return _ResponseSaleOrder.fromJson(json);
}

/// @nodoc
mixin _$ResponseSaleOrder {
// 订单改价折扣率
  @JsonKey(name: "custom_discount_rate")
  double get customDiscountRate =>
      throw _privateConstructorUsedError; // 是否存在折扣 true:存在 false:不存在
  @JsonKey(name: "is_discount")
  bool get isDiscount => throw _privateConstructorUsedError; // 订单号
  @JsonKey(name: "order_no")
  String get orderNo => throw _privateConstructorUsedError; // 商品列表
  @JsonKey(name: "product_list")
  List<Product> get productList => throw _privateConstructorUsedError; // 商品数量
  @JsonKey(name: "product_num")
  int get productNum => throw _privateConstructorUsedError; // 订单状态, 0-未结账 1-已结账
  @JsonKey(name: "status")
  int get status => throw _privateConstructorUsedError; // uuid
  @JsonKey(name: "uuid")
  int get uuid => throw _privateConstructorUsedError; // 订单抹零规则
  @JsonKey(name: "zero_rule")
  int get zeroRule => throw _privateConstructorUsedError; // 金额信息
  @JsonKey(name: "amount_info")
  SentKitchenAmountInfo? get amountInfo =>
      throw _privateConstructorUsedError; // 优惠弹窗-自动抹零提示
  @JsonKey(name: "auto_discount_message")
  String? get autoDiscountMessage => throw _privateConstructorUsedError;

  /// Serializes this ResponseSaleOrder to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ResponseSaleOrder
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ResponseSaleOrderCopyWith<ResponseSaleOrder> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResponseSaleOrderCopyWith<$Res> {
  factory $ResponseSaleOrderCopyWith(
          ResponseSaleOrder value, $Res Function(ResponseSaleOrder) then) =
      _$ResponseSaleOrderCopyWithImpl<$Res, ResponseSaleOrder>;
  @useResult
  $Res call(
      {@JsonKey(name: "custom_discount_rate") double customDiscountRate,
      @JsonKey(name: "is_discount") bool isDiscount,
      @JsonKey(name: "order_no") String orderNo,
      @JsonKey(name: "product_list") List<Product> productList,
      @JsonKey(name: "product_num") int productNum,
      @JsonKey(name: "status") int status,
      @JsonKey(name: "uuid") int uuid,
      @JsonKey(name: "zero_rule") int zeroRule,
      @JsonKey(name: "amount_info") SentKitchenAmountInfo? amountInfo,
      @JsonKey(name: "auto_discount_message") String? autoDiscountMessage});

  $SentKitchenAmountInfoCopyWith<$Res>? get amountInfo;
}

/// @nodoc
class _$ResponseSaleOrderCopyWithImpl<$Res, $Val extends ResponseSaleOrder>
    implements $ResponseSaleOrderCopyWith<$Res> {
  _$ResponseSaleOrderCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ResponseSaleOrder
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? customDiscountRate = null,
    Object? isDiscount = null,
    Object? orderNo = null,
    Object? productList = null,
    Object? productNum = null,
    Object? status = null,
    Object? uuid = null,
    Object? zeroRule = null,
    Object? amountInfo = freezed,
    Object? autoDiscountMessage = freezed,
  }) {
    return _then(_value.copyWith(
      customDiscountRate: null == customDiscountRate
          ? _value.customDiscountRate
          : customDiscountRate // ignore: cast_nullable_to_non_nullable
              as double,
      isDiscount: null == isDiscount
          ? _value.isDiscount
          : isDiscount // ignore: cast_nullable_to_non_nullable
              as bool,
      orderNo: null == orderNo
          ? _value.orderNo
          : orderNo // ignore: cast_nullable_to_non_nullable
              as String,
      productList: null == productList
          ? _value.productList
          : productList // ignore: cast_nullable_to_non_nullable
              as List<Product>,
      productNum: null == productNum
          ? _value.productNum
          : productNum // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
      uuid: null == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as int,
      zeroRule: null == zeroRule
          ? _value.zeroRule
          : zeroRule // ignore: cast_nullable_to_non_nullable
              as int,
      amountInfo: freezed == amountInfo
          ? _value.amountInfo
          : amountInfo // ignore: cast_nullable_to_non_nullable
              as SentKitchenAmountInfo?,
      autoDiscountMessage: freezed == autoDiscountMessage
          ? _value.autoDiscountMessage
          : autoDiscountMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  /// Create a copy of ResponseSaleOrder
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SentKitchenAmountInfoCopyWith<$Res>? get amountInfo {
    if (_value.amountInfo == null) {
      return null;
    }

    return $SentKitchenAmountInfoCopyWith<$Res>(_value.amountInfo!, (value) {
      return _then(_value.copyWith(amountInfo: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ResponseSaleOrderImplCopyWith<$Res>
    implements $ResponseSaleOrderCopyWith<$Res> {
  factory _$$ResponseSaleOrderImplCopyWith(_$ResponseSaleOrderImpl value,
          $Res Function(_$ResponseSaleOrderImpl) then) =
      __$$ResponseSaleOrderImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "custom_discount_rate") double customDiscountRate,
      @JsonKey(name: "is_discount") bool isDiscount,
      @JsonKey(name: "order_no") String orderNo,
      @JsonKey(name: "product_list") List<Product> productList,
      @JsonKey(name: "product_num") int productNum,
      @JsonKey(name: "status") int status,
      @JsonKey(name: "uuid") int uuid,
      @JsonKey(name: "zero_rule") int zeroRule,
      @JsonKey(name: "amount_info") SentKitchenAmountInfo? amountInfo,
      @JsonKey(name: "auto_discount_message") String? autoDiscountMessage});

  @override
  $SentKitchenAmountInfoCopyWith<$Res>? get amountInfo;
}

/// @nodoc
class __$$ResponseSaleOrderImplCopyWithImpl<$Res>
    extends _$ResponseSaleOrderCopyWithImpl<$Res, _$ResponseSaleOrderImpl>
    implements _$$ResponseSaleOrderImplCopyWith<$Res> {
  __$$ResponseSaleOrderImplCopyWithImpl(_$ResponseSaleOrderImpl _value,
      $Res Function(_$ResponseSaleOrderImpl) _then)
      : super(_value, _then);

  /// Create a copy of ResponseSaleOrder
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? customDiscountRate = null,
    Object? isDiscount = null,
    Object? orderNo = null,
    Object? productList = null,
    Object? productNum = null,
    Object? status = null,
    Object? uuid = null,
    Object? zeroRule = null,
    Object? amountInfo = freezed,
    Object? autoDiscountMessage = freezed,
  }) {
    return _then(_$ResponseSaleOrderImpl(
      customDiscountRate: null == customDiscountRate
          ? _value.customDiscountRate
          : customDiscountRate // ignore: cast_nullable_to_non_nullable
              as double,
      isDiscount: null == isDiscount
          ? _value.isDiscount
          : isDiscount // ignore: cast_nullable_to_non_nullable
              as bool,
      orderNo: null == orderNo
          ? _value.orderNo
          : orderNo // ignore: cast_nullable_to_non_nullable
              as String,
      productList: null == productList
          ? _value._productList
          : productList // ignore: cast_nullable_to_non_nullable
              as List<Product>,
      productNum: null == productNum
          ? _value.productNum
          : productNum // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
      uuid: null == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as int,
      zeroRule: null == zeroRule
          ? _value.zeroRule
          : zeroRule // ignore: cast_nullable_to_non_nullable
              as int,
      amountInfo: freezed == amountInfo
          ? _value.amountInfo
          : amountInfo // ignore: cast_nullable_to_non_nullable
              as SentKitchenAmountInfo?,
      autoDiscountMessage: freezed == autoDiscountMessage
          ? _value.autoDiscountMessage
          : autoDiscountMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ResponseSaleOrderImpl implements _ResponseSaleOrder {
  const _$ResponseSaleOrderImpl(
      {@JsonKey(name: "custom_discount_rate") required this.customDiscountRate,
      @JsonKey(name: "is_discount") required this.isDiscount,
      @JsonKey(name: "order_no") required this.orderNo,
      @JsonKey(name: "product_list") required final List<Product> productList,
      @JsonKey(name: "product_num") required this.productNum,
      @JsonKey(name: "status") required this.status,
      @JsonKey(name: "uuid") required this.uuid,
      @JsonKey(name: "zero_rule") required this.zeroRule,
      @JsonKey(name: "amount_info") this.amountInfo,
      @JsonKey(name: "auto_discount_message") this.autoDiscountMessage})
      : _productList = productList;

  factory _$ResponseSaleOrderImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResponseSaleOrderImplFromJson(json);

// 订单改价折扣率
  @override
  @JsonKey(name: "custom_discount_rate")
  final double customDiscountRate;
// 是否存在折扣 true:存在 false:不存在
  @override
  @JsonKey(name: "is_discount")
  final bool isDiscount;
// 订单号
  @override
  @JsonKey(name: "order_no")
  final String orderNo;
// 商品列表
  final List<Product> _productList;
// 商品列表
  @override
  @JsonKey(name: "product_list")
  List<Product> get productList {
    if (_productList is EqualUnmodifiableListView) return _productList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_productList);
  }

// 商品数量
  @override
  @JsonKey(name: "product_num")
  final int productNum;
// 订单状态, 0-未结账 1-已结账
  @override
  @JsonKey(name: "status")
  final int status;
// uuid
  @override
  @JsonKey(name: "uuid")
  final int uuid;
// 订单抹零规则
  @override
  @JsonKey(name: "zero_rule")
  final int zeroRule;
// 金额信息
  @override
  @JsonKey(name: "amount_info")
  final SentKitchenAmountInfo? amountInfo;
// 优惠弹窗-自动抹零提示
  @override
  @JsonKey(name: "auto_discount_message")
  final String? autoDiscountMessage;

  @override
  String toString() {
    return 'ResponseSaleOrder(customDiscountRate: $customDiscountRate, isDiscount: $isDiscount, orderNo: $orderNo, productList: $productList, productNum: $productNum, status: $status, uuid: $uuid, zeroRule: $zeroRule, amountInfo: $amountInfo, autoDiscountMessage: $autoDiscountMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResponseSaleOrderImpl &&
            (identical(other.customDiscountRate, customDiscountRate) ||
                other.customDiscountRate == customDiscountRate) &&
            (identical(other.isDiscount, isDiscount) ||
                other.isDiscount == isDiscount) &&
            (identical(other.orderNo, orderNo) || other.orderNo == orderNo) &&
            const DeepCollectionEquality()
                .equals(other._productList, _productList) &&
            (identical(other.productNum, productNum) ||
                other.productNum == productNum) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.uuid, uuid) || other.uuid == uuid) &&
            (identical(other.zeroRule, zeroRule) ||
                other.zeroRule == zeroRule) &&
            (identical(other.amountInfo, amountInfo) ||
                other.amountInfo == amountInfo) &&
            (identical(other.autoDiscountMessage, autoDiscountMessage) ||
                other.autoDiscountMessage == autoDiscountMessage));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      customDiscountRate,
      isDiscount,
      orderNo,
      const DeepCollectionEquality().hash(_productList),
      productNum,
      status,
      uuid,
      zeroRule,
      amountInfo,
      autoDiscountMessage);

  /// Create a copy of ResponseSaleOrder
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ResponseSaleOrderImplCopyWith<_$ResponseSaleOrderImpl> get copyWith =>
      __$$ResponseSaleOrderImplCopyWithImpl<_$ResponseSaleOrderImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResponseSaleOrderImplToJson(
      this,
    );
  }
}

abstract class _ResponseSaleOrder implements ResponseSaleOrder {
  const factory _ResponseSaleOrder(
      {@JsonKey(name: "custom_discount_rate")
      required final double customDiscountRate,
      @JsonKey(name: "is_discount") required final bool isDiscount,
      @JsonKey(name: "order_no") required final String orderNo,
      @JsonKey(name: "product_list") required final List<Product> productList,
      @JsonKey(name: "product_num") required final int productNum,
      @JsonKey(name: "status") required final int status,
      @JsonKey(name: "uuid") required final int uuid,
      @JsonKey(name: "zero_rule") required final int zeroRule,
      @JsonKey(name: "amount_info") final SentKitchenAmountInfo? amountInfo,
      @JsonKey(name: "auto_discount_message")
      final String? autoDiscountMessage}) = _$ResponseSaleOrderImpl;

  factory _ResponseSaleOrder.fromJson(Map<String, dynamic> json) =
      _$ResponseSaleOrderImpl.fromJson;

// 订单改价折扣率
  @override
  @JsonKey(name: "custom_discount_rate")
  double get customDiscountRate; // 是否存在折扣 true:存在 false:不存在
  @override
  @JsonKey(name: "is_discount")
  bool get isDiscount; // 订单号
  @override
  @JsonKey(name: "order_no")
  String get orderNo; // 商品列表
  @override
  @JsonKey(name: "product_list")
  List<Product> get productList; // 商品数量
  @override
  @JsonKey(name: "product_num")
  int get productNum; // 订单状态, 0-未结账 1-已结账
  @override
  @JsonKey(name: "status")
  int get status; // uuid
  @override
  @JsonKey(name: "uuid")
  int get uuid; // 订单抹零规则
  @override
  @JsonKey(name: "zero_rule")
  int get zeroRule; // 金额信息
  @override
  @JsonKey(name: "amount_info")
  SentKitchenAmountInfo? get amountInfo; // 优惠弹窗-自动抹零提示
  @override
  @JsonKey(name: "auto_discount_message")
  String? get autoDiscountMessage;

  /// Create a copy of ResponseSaleOrder
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ResponseSaleOrderImplCopyWith<_$ResponseSaleOrderImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

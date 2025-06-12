// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cart.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ResponseCart _$ResponseCartFromJson(Map<String, dynamic> json) {
  return _ResponseCart.fromJson(json);
}

/// @nodoc
mixin _$ResponseCart {
// 销售单据Uuid
  @JsonKey(name: 'sale_bill_uuid')
  int? get saleBillUuid => throw _privateConstructorUsedError; // 是否桌台订单
  @JsonKey(name: 'is_desk_order')
  bool get isDeskOrder => throw _privateConstructorUsedError; // 是否锁定
  @JsonKey(name: 'is_lock')
  bool? get isLock => throw _privateConstructorUsedError; // 用餐方式 0:堂食 1:打包
  @JsonKey(name: 'dining_method')
  int get diningMethod => throw _privateConstructorUsedError; // 订单列表
  @JsonKey(name: 'sale_order_list')
  List<ResponseCartSaleOrder> get saleOrderList =>
      throw _privateConstructorUsedError; // 自助餐信息
  @JsonKey(name: 'buffet')
  ResponseCartBuffet? get buffet => throw _privateConstructorUsedError; // 桌台信息
  @JsonKey(name: 'desk')
  ResponseCartDesk? get desk => throw _privateConstructorUsedError; // 必点商品列表
  @JsonKey(name: 'must_plans')
  BaseList<MustGoodsItem>? get mustPlans =>
      throw _privateConstructorUsedError; // 是否打包
  @JsonKey(name: 'takeout')
  bool? get takeout => throw _privateConstructorUsedError;

  /// NOTE: 更新时间
  @JsonKey(name: 'update_time')
  int? get updateTime => throw _privateConstructorUsedError;

  /// Serializes this ResponseCart to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ResponseCart
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ResponseCartCopyWith<ResponseCart> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResponseCartCopyWith<$Res> {
  factory $ResponseCartCopyWith(
          ResponseCart value, $Res Function(ResponseCart) then) =
      _$ResponseCartCopyWithImpl<$Res, ResponseCart>;
  @useResult
  $Res call(
      {@JsonKey(name: 'sale_bill_uuid') int? saleBillUuid,
      @JsonKey(name: 'is_desk_order') bool isDeskOrder,
      @JsonKey(name: 'is_lock') bool? isLock,
      @JsonKey(name: 'dining_method') int diningMethod,
      @JsonKey(name: 'sale_order_list')
      List<ResponseCartSaleOrder> saleOrderList,
      @JsonKey(name: 'buffet') ResponseCartBuffet? buffet,
      @JsonKey(name: 'desk') ResponseCartDesk? desk,
      @JsonKey(name: 'must_plans') BaseList<MustGoodsItem>? mustPlans,
      @JsonKey(name: 'takeout') bool? takeout,
      @JsonKey(name: 'update_time') int? updateTime});

  $ResponseCartBuffetCopyWith<$Res>? get buffet;
  $ResponseCartDeskCopyWith<$Res>? get desk;
  $BaseListCopyWith<MustGoodsItem, $Res>? get mustPlans;
}

/// @nodoc
class _$ResponseCartCopyWithImpl<$Res, $Val extends ResponseCart>
    implements $ResponseCartCopyWith<$Res> {
  _$ResponseCartCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ResponseCart
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? saleBillUuid = freezed,
    Object? isDeskOrder = null,
    Object? isLock = freezed,
    Object? diningMethod = null,
    Object? saleOrderList = null,
    Object? buffet = freezed,
    Object? desk = freezed,
    Object? mustPlans = freezed,
    Object? takeout = freezed,
    Object? updateTime = freezed,
  }) {
    return _then(_value.copyWith(
      saleBillUuid: freezed == saleBillUuid
          ? _value.saleBillUuid
          : saleBillUuid // ignore: cast_nullable_to_non_nullable
              as int?,
      isDeskOrder: null == isDeskOrder
          ? _value.isDeskOrder
          : isDeskOrder // ignore: cast_nullable_to_non_nullable
              as bool,
      isLock: freezed == isLock
          ? _value.isLock
          : isLock // ignore: cast_nullable_to_non_nullable
              as bool?,
      diningMethod: null == diningMethod
          ? _value.diningMethod
          : diningMethod // ignore: cast_nullable_to_non_nullable
              as int,
      saleOrderList: null == saleOrderList
          ? _value.saleOrderList
          : saleOrderList // ignore: cast_nullable_to_non_nullable
              as List<ResponseCartSaleOrder>,
      buffet: freezed == buffet
          ? _value.buffet
          : buffet // ignore: cast_nullable_to_non_nullable
              as ResponseCartBuffet?,
      desk: freezed == desk
          ? _value.desk
          : desk // ignore: cast_nullable_to_non_nullable
              as ResponseCartDesk?,
      mustPlans: freezed == mustPlans
          ? _value.mustPlans
          : mustPlans // ignore: cast_nullable_to_non_nullable
              as BaseList<MustGoodsItem>?,
      takeout: freezed == takeout
          ? _value.takeout
          : takeout // ignore: cast_nullable_to_non_nullable
              as bool?,
      updateTime: freezed == updateTime
          ? _value.updateTime
          : updateTime // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }

  /// Create a copy of ResponseCart
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ResponseCartBuffetCopyWith<$Res>? get buffet {
    if (_value.buffet == null) {
      return null;
    }

    return $ResponseCartBuffetCopyWith<$Res>(_value.buffet!, (value) {
      return _then(_value.copyWith(buffet: value) as $Val);
    });
  }

  /// Create a copy of ResponseCart
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ResponseCartDeskCopyWith<$Res>? get desk {
    if (_value.desk == null) {
      return null;
    }

    return $ResponseCartDeskCopyWith<$Res>(_value.desk!, (value) {
      return _then(_value.copyWith(desk: value) as $Val);
    });
  }

  /// Create a copy of ResponseCart
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BaseListCopyWith<MustGoodsItem, $Res>? get mustPlans {
    if (_value.mustPlans == null) {
      return null;
    }

    return $BaseListCopyWith<MustGoodsItem, $Res>(_value.mustPlans!, (value) {
      return _then(_value.copyWith(mustPlans: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ResponseCartImplCopyWith<$Res>
    implements $ResponseCartCopyWith<$Res> {
  factory _$$ResponseCartImplCopyWith(
          _$ResponseCartImpl value, $Res Function(_$ResponseCartImpl) then) =
      __$$ResponseCartImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'sale_bill_uuid') int? saleBillUuid,
      @JsonKey(name: 'is_desk_order') bool isDeskOrder,
      @JsonKey(name: 'is_lock') bool? isLock,
      @JsonKey(name: 'dining_method') int diningMethod,
      @JsonKey(name: 'sale_order_list')
      List<ResponseCartSaleOrder> saleOrderList,
      @JsonKey(name: 'buffet') ResponseCartBuffet? buffet,
      @JsonKey(name: 'desk') ResponseCartDesk? desk,
      @JsonKey(name: 'must_plans') BaseList<MustGoodsItem>? mustPlans,
      @JsonKey(name: 'takeout') bool? takeout,
      @JsonKey(name: 'update_time') int? updateTime});

  @override
  $ResponseCartBuffetCopyWith<$Res>? get buffet;
  @override
  $ResponseCartDeskCopyWith<$Res>? get desk;
  @override
  $BaseListCopyWith<MustGoodsItem, $Res>? get mustPlans;
}

/// @nodoc
class __$$ResponseCartImplCopyWithImpl<$Res>
    extends _$ResponseCartCopyWithImpl<$Res, _$ResponseCartImpl>
    implements _$$ResponseCartImplCopyWith<$Res> {
  __$$ResponseCartImplCopyWithImpl(
      _$ResponseCartImpl _value, $Res Function(_$ResponseCartImpl) _then)
      : super(_value, _then);

  /// Create a copy of ResponseCart
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? saleBillUuid = freezed,
    Object? isDeskOrder = null,
    Object? isLock = freezed,
    Object? diningMethod = null,
    Object? saleOrderList = null,
    Object? buffet = freezed,
    Object? desk = freezed,
    Object? mustPlans = freezed,
    Object? takeout = freezed,
    Object? updateTime = freezed,
  }) {
    return _then(_$ResponseCartImpl(
      saleBillUuid: freezed == saleBillUuid
          ? _value.saleBillUuid
          : saleBillUuid // ignore: cast_nullable_to_non_nullable
              as int?,
      isDeskOrder: null == isDeskOrder
          ? _value.isDeskOrder
          : isDeskOrder // ignore: cast_nullable_to_non_nullable
              as bool,
      isLock: freezed == isLock
          ? _value.isLock
          : isLock // ignore: cast_nullable_to_non_nullable
              as bool?,
      diningMethod: null == diningMethod
          ? _value.diningMethod
          : diningMethod // ignore: cast_nullable_to_non_nullable
              as int,
      saleOrderList: null == saleOrderList
          ? _value._saleOrderList
          : saleOrderList // ignore: cast_nullable_to_non_nullable
              as List<ResponseCartSaleOrder>,
      buffet: freezed == buffet
          ? _value.buffet
          : buffet // ignore: cast_nullable_to_non_nullable
              as ResponseCartBuffet?,
      desk: freezed == desk
          ? _value.desk
          : desk // ignore: cast_nullable_to_non_nullable
              as ResponseCartDesk?,
      mustPlans: freezed == mustPlans
          ? _value.mustPlans
          : mustPlans // ignore: cast_nullable_to_non_nullable
              as BaseList<MustGoodsItem>?,
      takeout: freezed == takeout
          ? _value.takeout
          : takeout // ignore: cast_nullable_to_non_nullable
              as bool?,
      updateTime: freezed == updateTime
          ? _value.updateTime
          : updateTime // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ResponseCartImpl implements _ResponseCart {
  _$ResponseCartImpl(
      {@JsonKey(name: 'sale_bill_uuid') this.saleBillUuid,
      @JsonKey(name: 'is_desk_order') required this.isDeskOrder,
      @JsonKey(name: 'is_lock') this.isLock = false,
      @JsonKey(name: 'dining_method') required this.diningMethod,
      @JsonKey(name: 'sale_order_list')
      required final List<ResponseCartSaleOrder> saleOrderList,
      @JsonKey(name: 'buffet') this.buffet,
      @JsonKey(name: 'desk') this.desk,
      @JsonKey(name: 'must_plans') this.mustPlans,
      @JsonKey(name: 'takeout') this.takeout = false,
      @JsonKey(name: 'update_time') this.updateTime = 0})
      : _saleOrderList = saleOrderList;

  factory _$ResponseCartImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResponseCartImplFromJson(json);

// 销售单据Uuid
  @override
  @JsonKey(name: 'sale_bill_uuid')
  final int? saleBillUuid;
// 是否桌台订单
  @override
  @JsonKey(name: 'is_desk_order')
  final bool isDeskOrder;
// 是否锁定
  @override
  @JsonKey(name: 'is_lock')
  final bool? isLock;
// 用餐方式 0:堂食 1:打包
  @override
  @JsonKey(name: 'dining_method')
  final int diningMethod;
// 订单列表
  final List<ResponseCartSaleOrder> _saleOrderList;
// 订单列表
  @override
  @JsonKey(name: 'sale_order_list')
  List<ResponseCartSaleOrder> get saleOrderList {
    if (_saleOrderList is EqualUnmodifiableListView) return _saleOrderList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_saleOrderList);
  }

// 自助餐信息
  @override
  @JsonKey(name: 'buffet')
  final ResponseCartBuffet? buffet;
// 桌台信息
  @override
  @JsonKey(name: 'desk')
  final ResponseCartDesk? desk;
// 必点商品列表
  @override
  @JsonKey(name: 'must_plans')
  final BaseList<MustGoodsItem>? mustPlans;
// 是否打包
  @override
  @JsonKey(name: 'takeout')
  final bool? takeout;

  /// NOTE: 更新时间
  @override
  @JsonKey(name: 'update_time')
  final int? updateTime;

  @override
  String toString() {
    return 'ResponseCart(saleBillUuid: $saleBillUuid, isDeskOrder: $isDeskOrder, isLock: $isLock, diningMethod: $diningMethod, saleOrderList: $saleOrderList, buffet: $buffet, desk: $desk, mustPlans: $mustPlans, takeout: $takeout, updateTime: $updateTime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResponseCartImpl &&
            (identical(other.saleBillUuid, saleBillUuid) ||
                other.saleBillUuid == saleBillUuid) &&
            (identical(other.isDeskOrder, isDeskOrder) ||
                other.isDeskOrder == isDeskOrder) &&
            (identical(other.isLock, isLock) || other.isLock == isLock) &&
            (identical(other.diningMethod, diningMethod) ||
                other.diningMethod == diningMethod) &&
            const DeepCollectionEquality()
                .equals(other._saleOrderList, _saleOrderList) &&
            (identical(other.buffet, buffet) || other.buffet == buffet) &&
            (identical(other.desk, desk) || other.desk == desk) &&
            (identical(other.mustPlans, mustPlans) ||
                other.mustPlans == mustPlans) &&
            (identical(other.takeout, takeout) || other.takeout == takeout) &&
            (identical(other.updateTime, updateTime) ||
                other.updateTime == updateTime));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      saleBillUuid,
      isDeskOrder,
      isLock,
      diningMethod,
      const DeepCollectionEquality().hash(_saleOrderList),
      buffet,
      desk,
      mustPlans,
      takeout,
      updateTime);

  /// Create a copy of ResponseCart
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ResponseCartImplCopyWith<_$ResponseCartImpl> get copyWith =>
      __$$ResponseCartImplCopyWithImpl<_$ResponseCartImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResponseCartImplToJson(
      this,
    );
  }
}

abstract class _ResponseCart implements ResponseCart {
  factory _ResponseCart(
          {@JsonKey(name: 'sale_bill_uuid') final int? saleBillUuid,
          @JsonKey(name: 'is_desk_order') required final bool isDeskOrder,
          @JsonKey(name: 'is_lock') final bool? isLock,
          @JsonKey(name: 'dining_method') required final int diningMethod,
          @JsonKey(name: 'sale_order_list')
          required final List<ResponseCartSaleOrder> saleOrderList,
          @JsonKey(name: 'buffet') final ResponseCartBuffet? buffet,
          @JsonKey(name: 'desk') final ResponseCartDesk? desk,
          @JsonKey(name: 'must_plans') final BaseList<MustGoodsItem>? mustPlans,
          @JsonKey(name: 'takeout') final bool? takeout,
          @JsonKey(name: 'update_time') final int? updateTime}) =
      _$ResponseCartImpl;

  factory _ResponseCart.fromJson(Map<String, dynamic> json) =
      _$ResponseCartImpl.fromJson;

// 销售单据Uuid
  @override
  @JsonKey(name: 'sale_bill_uuid')
  int? get saleBillUuid; // 是否桌台订单
  @override
  @JsonKey(name: 'is_desk_order')
  bool get isDeskOrder; // 是否锁定
  @override
  @JsonKey(name: 'is_lock')
  bool? get isLock; // 用餐方式 0:堂食 1:打包
  @override
  @JsonKey(name: 'dining_method')
  int get diningMethod; // 订单列表
  @override
  @JsonKey(name: 'sale_order_list')
  List<ResponseCartSaleOrder> get saleOrderList; // 自助餐信息
  @override
  @JsonKey(name: 'buffet')
  ResponseCartBuffet? get buffet; // 桌台信息
  @override
  @JsonKey(name: 'desk')
  ResponseCartDesk? get desk; // 必点商品列表
  @override
  @JsonKey(name: 'must_plans')
  BaseList<MustGoodsItem>? get mustPlans; // 是否打包
  @override
  @JsonKey(name: 'takeout')
  bool? get takeout;

  /// NOTE: 更新时间
  @override
  @JsonKey(name: 'update_time')
  int? get updateTime;

  /// Create a copy of ResponseCart
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ResponseCartImplCopyWith<_$ResponseCartImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

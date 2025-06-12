// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'must_order_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GoodsMustOrderInfo _$GoodsMustOrderInfoFromJson(Map<String, dynamic> json) {
  return _GoodsMustOrderInfo.fromJson(json);
}

/// @nodoc
mixin _$GoodsMustOrderInfo {
// 用餐方式 0:堂食 1:打包
  @JsonKey(name: "dining_method")
  int get diningMethod => throw _privateConstructorUsedError; // 销售账单ID
  @JsonKey(name: "sale_bill_uuid")
  int get saleBillUuid => throw _privateConstructorUsedError; // 销售订单列表
  @JsonKey(name: "sale_order_list")
  List<GoodsMustOrderList> get saleOrderList =>
      throw _privateConstructorUsedError;

  /// Serializes this GoodsMustOrderInfo to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GoodsMustOrderInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GoodsMustOrderInfoCopyWith<GoodsMustOrderInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GoodsMustOrderInfoCopyWith<$Res> {
  factory $GoodsMustOrderInfoCopyWith(
          GoodsMustOrderInfo value, $Res Function(GoodsMustOrderInfo) then) =
      _$GoodsMustOrderInfoCopyWithImpl<$Res, GoodsMustOrderInfo>;
  @useResult
  $Res call(
      {@JsonKey(name: "dining_method") int diningMethod,
      @JsonKey(name: "sale_bill_uuid") int saleBillUuid,
      @JsonKey(name: "sale_order_list")
      List<GoodsMustOrderList> saleOrderList});
}

/// @nodoc
class _$GoodsMustOrderInfoCopyWithImpl<$Res, $Val extends GoodsMustOrderInfo>
    implements $GoodsMustOrderInfoCopyWith<$Res> {
  _$GoodsMustOrderInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GoodsMustOrderInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? diningMethod = null,
    Object? saleBillUuid = null,
    Object? saleOrderList = null,
  }) {
    return _then(_value.copyWith(
      diningMethod: null == diningMethod
          ? _value.diningMethod
          : diningMethod // ignore: cast_nullable_to_non_nullable
              as int,
      saleBillUuid: null == saleBillUuid
          ? _value.saleBillUuid
          : saleBillUuid // ignore: cast_nullable_to_non_nullable
              as int,
      saleOrderList: null == saleOrderList
          ? _value.saleOrderList
          : saleOrderList // ignore: cast_nullable_to_non_nullable
              as List<GoodsMustOrderList>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GoodsMustOrderInfoImplCopyWith<$Res>
    implements $GoodsMustOrderInfoCopyWith<$Res> {
  factory _$$GoodsMustOrderInfoImplCopyWith(_$GoodsMustOrderInfoImpl value,
          $Res Function(_$GoodsMustOrderInfoImpl) then) =
      __$$GoodsMustOrderInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "dining_method") int diningMethod,
      @JsonKey(name: "sale_bill_uuid") int saleBillUuid,
      @JsonKey(name: "sale_order_list")
      List<GoodsMustOrderList> saleOrderList});
}

/// @nodoc
class __$$GoodsMustOrderInfoImplCopyWithImpl<$Res>
    extends _$GoodsMustOrderInfoCopyWithImpl<$Res, _$GoodsMustOrderInfoImpl>
    implements _$$GoodsMustOrderInfoImplCopyWith<$Res> {
  __$$GoodsMustOrderInfoImplCopyWithImpl(_$GoodsMustOrderInfoImpl _value,
      $Res Function(_$GoodsMustOrderInfoImpl) _then)
      : super(_value, _then);

  /// Create a copy of GoodsMustOrderInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? diningMethod = null,
    Object? saleBillUuid = null,
    Object? saleOrderList = null,
  }) {
    return _then(_$GoodsMustOrderInfoImpl(
      diningMethod: null == diningMethod
          ? _value.diningMethod
          : diningMethod // ignore: cast_nullable_to_non_nullable
              as int,
      saleBillUuid: null == saleBillUuid
          ? _value.saleBillUuid
          : saleBillUuid // ignore: cast_nullable_to_non_nullable
              as int,
      saleOrderList: null == saleOrderList
          ? _value._saleOrderList
          : saleOrderList // ignore: cast_nullable_to_non_nullable
              as List<GoodsMustOrderList>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GoodsMustOrderInfoImpl implements _GoodsMustOrderInfo {
  _$GoodsMustOrderInfoImpl(
      {@JsonKey(name: "dining_method") required this.diningMethod,
      @JsonKey(name: "sale_bill_uuid") required this.saleBillUuid,
      @JsonKey(name: "sale_order_list")
      required final List<GoodsMustOrderList> saleOrderList})
      : _saleOrderList = saleOrderList;

  factory _$GoodsMustOrderInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$GoodsMustOrderInfoImplFromJson(json);

// 用餐方式 0:堂食 1:打包
  @override
  @JsonKey(name: "dining_method")
  final int diningMethod;
// 销售账单ID
  @override
  @JsonKey(name: "sale_bill_uuid")
  final int saleBillUuid;
// 销售订单列表
  final List<GoodsMustOrderList> _saleOrderList;
// 销售订单列表
  @override
  @JsonKey(name: "sale_order_list")
  List<GoodsMustOrderList> get saleOrderList {
    if (_saleOrderList is EqualUnmodifiableListView) return _saleOrderList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_saleOrderList);
  }

  @override
  String toString() {
    return 'GoodsMustOrderInfo(diningMethod: $diningMethod, saleBillUuid: $saleBillUuid, saleOrderList: $saleOrderList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GoodsMustOrderInfoImpl &&
            (identical(other.diningMethod, diningMethod) ||
                other.diningMethod == diningMethod) &&
            (identical(other.saleBillUuid, saleBillUuid) ||
                other.saleBillUuid == saleBillUuid) &&
            const DeepCollectionEquality()
                .equals(other._saleOrderList, _saleOrderList));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, diningMethod, saleBillUuid,
      const DeepCollectionEquality().hash(_saleOrderList));

  /// Create a copy of GoodsMustOrderInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GoodsMustOrderInfoImplCopyWith<_$GoodsMustOrderInfoImpl> get copyWith =>
      __$$GoodsMustOrderInfoImplCopyWithImpl<_$GoodsMustOrderInfoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GoodsMustOrderInfoImplToJson(
      this,
    );
  }
}

abstract class _GoodsMustOrderInfo implements GoodsMustOrderInfo {
  factory _GoodsMustOrderInfo(
          {@JsonKey(name: "dining_method") required final int diningMethod,
          @JsonKey(name: "sale_bill_uuid") required final int saleBillUuid,
          @JsonKey(name: "sale_order_list")
          required final List<GoodsMustOrderList> saleOrderList}) =
      _$GoodsMustOrderInfoImpl;

  factory _GoodsMustOrderInfo.fromJson(Map<String, dynamic> json) =
      _$GoodsMustOrderInfoImpl.fromJson;

// 用餐方式 0:堂食 1:打包
  @override
  @JsonKey(name: "dining_method")
  int get diningMethod; // 销售账单ID
  @override
  @JsonKey(name: "sale_bill_uuid")
  int get saleBillUuid; // 销售订单列表
  @override
  @JsonKey(name: "sale_order_list")
  List<GoodsMustOrderList> get saleOrderList;

  /// Create a copy of GoodsMustOrderInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GoodsMustOrderInfoImplCopyWith<_$GoodsMustOrderInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

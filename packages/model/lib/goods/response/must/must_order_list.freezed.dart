// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'must_order_list.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GoodsMustOrderList _$GoodsMustOrderListFromJson(Map<String, dynamic> json) {
  return _GoodsMustOrderList.fromJson(json);
}

/// @nodoc
mixin _$GoodsMustOrderList {
// 统计信息
  @JsonKey(name: "amount_info")
  GoodsMustOrderAmountInfo get amountInfo =>
      throw _privateConstructorUsedError; // 订单号
  @JsonKey(name: "order_no")
  String get orderNo => throw _privateConstructorUsedError; // 商品列表
  @JsonKey(name: "product_list")
  List<GoodsMustOrderProductList> get productList =>
      throw _privateConstructorUsedError; // 商品数量
  @JsonKey(name: "product_num")
  int get productNum => throw _privateConstructorUsedError; // 订单ID
  @JsonKey(name: "uuid")
  int get uuid => throw _privateConstructorUsedError;

  /// Serializes this GoodsMustOrderList to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GoodsMustOrderList
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GoodsMustOrderListCopyWith<GoodsMustOrderList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GoodsMustOrderListCopyWith<$Res> {
  factory $GoodsMustOrderListCopyWith(
          GoodsMustOrderList value, $Res Function(GoodsMustOrderList) then) =
      _$GoodsMustOrderListCopyWithImpl<$Res, GoodsMustOrderList>;
  @useResult
  $Res call(
      {@JsonKey(name: "amount_info") GoodsMustOrderAmountInfo amountInfo,
      @JsonKey(name: "order_no") String orderNo,
      @JsonKey(name: "product_list")
      List<GoodsMustOrderProductList> productList,
      @JsonKey(name: "product_num") int productNum,
      @JsonKey(name: "uuid") int uuid});

  $GoodsMustOrderAmountInfoCopyWith<$Res> get amountInfo;
}

/// @nodoc
class _$GoodsMustOrderListCopyWithImpl<$Res, $Val extends GoodsMustOrderList>
    implements $GoodsMustOrderListCopyWith<$Res> {
  _$GoodsMustOrderListCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GoodsMustOrderList
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? amountInfo = null,
    Object? orderNo = null,
    Object? productList = null,
    Object? productNum = null,
    Object? uuid = null,
  }) {
    return _then(_value.copyWith(
      amountInfo: null == amountInfo
          ? _value.amountInfo
          : amountInfo // ignore: cast_nullable_to_non_nullable
              as GoodsMustOrderAmountInfo,
      orderNo: null == orderNo
          ? _value.orderNo
          : orderNo // ignore: cast_nullable_to_non_nullable
              as String,
      productList: null == productList
          ? _value.productList
          : productList // ignore: cast_nullable_to_non_nullable
              as List<GoodsMustOrderProductList>,
      productNum: null == productNum
          ? _value.productNum
          : productNum // ignore: cast_nullable_to_non_nullable
              as int,
      uuid: null == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }

  /// Create a copy of GoodsMustOrderList
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $GoodsMustOrderAmountInfoCopyWith<$Res> get amountInfo {
    return $GoodsMustOrderAmountInfoCopyWith<$Res>(_value.amountInfo, (value) {
      return _then(_value.copyWith(amountInfo: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$GoodsMustOrderListImplCopyWith<$Res>
    implements $GoodsMustOrderListCopyWith<$Res> {
  factory _$$GoodsMustOrderListImplCopyWith(_$GoodsMustOrderListImpl value,
          $Res Function(_$GoodsMustOrderListImpl) then) =
      __$$GoodsMustOrderListImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "amount_info") GoodsMustOrderAmountInfo amountInfo,
      @JsonKey(name: "order_no") String orderNo,
      @JsonKey(name: "product_list")
      List<GoodsMustOrderProductList> productList,
      @JsonKey(name: "product_num") int productNum,
      @JsonKey(name: "uuid") int uuid});

  @override
  $GoodsMustOrderAmountInfoCopyWith<$Res> get amountInfo;
}

/// @nodoc
class __$$GoodsMustOrderListImplCopyWithImpl<$Res>
    extends _$GoodsMustOrderListCopyWithImpl<$Res, _$GoodsMustOrderListImpl>
    implements _$$GoodsMustOrderListImplCopyWith<$Res> {
  __$$GoodsMustOrderListImplCopyWithImpl(_$GoodsMustOrderListImpl _value,
      $Res Function(_$GoodsMustOrderListImpl) _then)
      : super(_value, _then);

  /// Create a copy of GoodsMustOrderList
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? amountInfo = null,
    Object? orderNo = null,
    Object? productList = null,
    Object? productNum = null,
    Object? uuid = null,
  }) {
    return _then(_$GoodsMustOrderListImpl(
      amountInfo: null == amountInfo
          ? _value.amountInfo
          : amountInfo // ignore: cast_nullable_to_non_nullable
              as GoodsMustOrderAmountInfo,
      orderNo: null == orderNo
          ? _value.orderNo
          : orderNo // ignore: cast_nullable_to_non_nullable
              as String,
      productList: null == productList
          ? _value._productList
          : productList // ignore: cast_nullable_to_non_nullable
              as List<GoodsMustOrderProductList>,
      productNum: null == productNum
          ? _value.productNum
          : productNum // ignore: cast_nullable_to_non_nullable
              as int,
      uuid: null == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GoodsMustOrderListImpl implements _GoodsMustOrderList {
  _$GoodsMustOrderListImpl(
      {@JsonKey(name: "amount_info") required this.amountInfo,
      @JsonKey(name: "order_no") required this.orderNo,
      @JsonKey(name: "product_list")
      required final List<GoodsMustOrderProductList> productList,
      @JsonKey(name: "product_num") required this.productNum,
      @JsonKey(name: "uuid") required this.uuid})
      : _productList = productList;

  factory _$GoodsMustOrderListImpl.fromJson(Map<String, dynamic> json) =>
      _$$GoodsMustOrderListImplFromJson(json);

// 统计信息
  @override
  @JsonKey(name: "amount_info")
  final GoodsMustOrderAmountInfo amountInfo;
// 订单号
  @override
  @JsonKey(name: "order_no")
  final String orderNo;
// 商品列表
  final List<GoodsMustOrderProductList> _productList;
// 商品列表
  @override
  @JsonKey(name: "product_list")
  List<GoodsMustOrderProductList> get productList {
    if (_productList is EqualUnmodifiableListView) return _productList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_productList);
  }

// 商品数量
  @override
  @JsonKey(name: "product_num")
  final int productNum;
// 订单ID
  @override
  @JsonKey(name: "uuid")
  final int uuid;

  @override
  String toString() {
    return 'GoodsMustOrderList(amountInfo: $amountInfo, orderNo: $orderNo, productList: $productList, productNum: $productNum, uuid: $uuid)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GoodsMustOrderListImpl &&
            (identical(other.amountInfo, amountInfo) ||
                other.amountInfo == amountInfo) &&
            (identical(other.orderNo, orderNo) || other.orderNo == orderNo) &&
            const DeepCollectionEquality()
                .equals(other._productList, _productList) &&
            (identical(other.productNum, productNum) ||
                other.productNum == productNum) &&
            (identical(other.uuid, uuid) || other.uuid == uuid));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, amountInfo, orderNo,
      const DeepCollectionEquality().hash(_productList), productNum, uuid);

  /// Create a copy of GoodsMustOrderList
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GoodsMustOrderListImplCopyWith<_$GoodsMustOrderListImpl> get copyWith =>
      __$$GoodsMustOrderListImplCopyWithImpl<_$GoodsMustOrderListImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GoodsMustOrderListImplToJson(
      this,
    );
  }
}

abstract class _GoodsMustOrderList implements GoodsMustOrderList {
  factory _GoodsMustOrderList(
          {@JsonKey(name: "amount_info")
          required final GoodsMustOrderAmountInfo amountInfo,
          @JsonKey(name: "order_no") required final String orderNo,
          @JsonKey(name: "product_list")
          required final List<GoodsMustOrderProductList> productList,
          @JsonKey(name: "product_num") required final int productNum,
          @JsonKey(name: "uuid") required final int uuid}) =
      _$GoodsMustOrderListImpl;

  factory _GoodsMustOrderList.fromJson(Map<String, dynamic> json) =
      _$GoodsMustOrderListImpl.fromJson;

// 统计信息
  @override
  @JsonKey(name: "amount_info")
  GoodsMustOrderAmountInfo get amountInfo; // 订单号
  @override
  @JsonKey(name: "order_no")
  String get orderNo; // 商品列表
  @override
  @JsonKey(name: "product_list")
  List<GoodsMustOrderProductList> get productList; // 商品数量
  @override
  @JsonKey(name: "product_num")
  int get productNum; // 订单ID
  @override
  @JsonKey(name: "uuid")
  int get uuid;

  /// Create a copy of GoodsMustOrderList
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GoodsMustOrderListImplCopyWith<_$GoodsMustOrderListImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

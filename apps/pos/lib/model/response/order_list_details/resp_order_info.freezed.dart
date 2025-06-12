// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'resp_order_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RespOrderInfo _$RespOrderInfoFromJson(Map<String, dynamic> json) {
  return _RespOrderInfo.fromJson(json);
}

/// @nodoc
mixin _$RespOrderInfo {
  @JsonKey(name: "bill_type")
  int get billType => throw _privateConstructorUsedError;
  @JsonKey(name: "bill_type")
  set billType(int value) => throw _privateConstructorUsedError;
  @JsonKey(name: "dining_method")
  int get diningMethod => throw _privateConstructorUsedError;
  @JsonKey(name: "dining_method")
  set diningMethod(int value) => throw _privateConstructorUsedError;
  @JsonKey(name: "finish_time")
  int get finishTime => throw _privateConstructorUsedError;
  @JsonKey(name: "finish_time")
  set finishTime(int value) => throw _privateConstructorUsedError;
  @JsonKey(name: "free_reason")
  LocaleName get freeReason => throw _privateConstructorUsedError;
  @JsonKey(name: "free_reason")
  set freeReason(LocaleName value) => throw _privateConstructorUsedError;
  @JsonKey(name: "is_free")
  bool get isFree => throw _privateConstructorUsedError;
  @JsonKey(name: "is_free")
  set isFree(bool value) => throw _privateConstructorUsedError;
  @JsonKey(name: "member_name")
  String get memberName => throw _privateConstructorUsedError;
  @JsonKey(name: "member_name")
  set memberName(String value) => throw _privateConstructorUsedError;
  @JsonKey(name: "member_uuid")
  int get memberUuid => throw _privateConstructorUsedError;
  @JsonKey(name: "member_uuid")
  set memberUuid(int value) => throw _privateConstructorUsedError;
  @JsonKey(name: "order_amount")
  double get orderAmount => throw _privateConstructorUsedError;
  @JsonKey(name: "order_amount")
  set orderAmount(double value) => throw _privateConstructorUsedError;
  @JsonKey(name: "order_no")
  String get orderNo => throw _privateConstructorUsedError;
  @JsonKey(name: "order_no")
  set orderNo(String value) => throw _privateConstructorUsedError;
  @JsonKey(name: "pay_type_name")
  String get payTypeName => throw _privateConstructorUsedError;
  @JsonKey(name: "pay_type_name")
  set payTypeName(String value) => throw _privateConstructorUsedError;
  @JsonKey(name: "payment_amount")
  double get paymentAmount => throw _privateConstructorUsedError;
  @JsonKey(name: "payment_amount")
  set paymentAmount(double value) => throw _privateConstructorUsedError;
  @JsonKey(name: "products")
  List<RespOrderProduct> get products => throw _privateConstructorUsedError;
  @JsonKey(name: "products")
  set products(List<RespOrderProduct> value) =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "refund_amount")
  double get refundAmount => throw _privateConstructorUsedError;
  @JsonKey(name: "refund_amount")
  set refundAmount(double value) => throw _privateConstructorUsedError;
  @JsonKey(name: "sale_order_uuid")
  int get saleOrderUuid => throw _privateConstructorUsedError;
  @JsonKey(name: "sale_order_uuid")
  set saleOrderUuid(int value) => throw _privateConstructorUsedError;
  @JsonKey(name: "serial_no")
  String get serialNo => throw _privateConstructorUsedError;
  @JsonKey(name: "serial_no")
  set serialNo(String value) => throw _privateConstructorUsedError;
  @JsonKey(name: "status")
  int get status => throw _privateConstructorUsedError;
  @JsonKey(name: "status")
  set status(int value) => throw _privateConstructorUsedError;

  /// Serializes this RespOrderInfo to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RespOrderInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RespOrderInfoCopyWith<RespOrderInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RespOrderInfoCopyWith<$Res> {
  factory $RespOrderInfoCopyWith(
          RespOrderInfo value, $Res Function(RespOrderInfo) then) =
      _$RespOrderInfoCopyWithImpl<$Res, RespOrderInfo>;
  @useResult
  $Res call(
      {@JsonKey(name: "bill_type") int billType,
      @JsonKey(name: "dining_method") int diningMethod,
      @JsonKey(name: "finish_time") int finishTime,
      @JsonKey(name: "free_reason") LocaleName freeReason,
      @JsonKey(name: "is_free") bool isFree,
      @JsonKey(name: "member_name") String memberName,
      @JsonKey(name: "member_uuid") int memberUuid,
      @JsonKey(name: "order_amount") double orderAmount,
      @JsonKey(name: "order_no") String orderNo,
      @JsonKey(name: "pay_type_name") String payTypeName,
      @JsonKey(name: "payment_amount") double paymentAmount,
      @JsonKey(name: "products") List<RespOrderProduct> products,
      @JsonKey(name: "refund_amount") double refundAmount,
      @JsonKey(name: "sale_order_uuid") int saleOrderUuid,
      @JsonKey(name: "serial_no") String serialNo,
      @JsonKey(name: "status") int status});

  $LocaleNameCopyWith<$Res> get freeReason;
}

/// @nodoc
class _$RespOrderInfoCopyWithImpl<$Res, $Val extends RespOrderInfo>
    implements $RespOrderInfoCopyWith<$Res> {
  _$RespOrderInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RespOrderInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? billType = null,
    Object? diningMethod = null,
    Object? finishTime = null,
    Object? freeReason = null,
    Object? isFree = null,
    Object? memberName = null,
    Object? memberUuid = null,
    Object? orderAmount = null,
    Object? orderNo = null,
    Object? payTypeName = null,
    Object? paymentAmount = null,
    Object? products = null,
    Object? refundAmount = null,
    Object? saleOrderUuid = null,
    Object? serialNo = null,
    Object? status = null,
  }) {
    return _then(_value.copyWith(
      billType: null == billType
          ? _value.billType
          : billType // ignore: cast_nullable_to_non_nullable
              as int,
      diningMethod: null == diningMethod
          ? _value.diningMethod
          : diningMethod // ignore: cast_nullable_to_non_nullable
              as int,
      finishTime: null == finishTime
          ? _value.finishTime
          : finishTime // ignore: cast_nullable_to_non_nullable
              as int,
      freeReason: null == freeReason
          ? _value.freeReason
          : freeReason // ignore: cast_nullable_to_non_nullable
              as LocaleName,
      isFree: null == isFree
          ? _value.isFree
          : isFree // ignore: cast_nullable_to_non_nullable
              as bool,
      memberName: null == memberName
          ? _value.memberName
          : memberName // ignore: cast_nullable_to_non_nullable
              as String,
      memberUuid: null == memberUuid
          ? _value.memberUuid
          : memberUuid // ignore: cast_nullable_to_non_nullable
              as int,
      orderAmount: null == orderAmount
          ? _value.orderAmount
          : orderAmount // ignore: cast_nullable_to_non_nullable
              as double,
      orderNo: null == orderNo
          ? _value.orderNo
          : orderNo // ignore: cast_nullable_to_non_nullable
              as String,
      payTypeName: null == payTypeName
          ? _value.payTypeName
          : payTypeName // ignore: cast_nullable_to_non_nullable
              as String,
      paymentAmount: null == paymentAmount
          ? _value.paymentAmount
          : paymentAmount // ignore: cast_nullable_to_non_nullable
              as double,
      products: null == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<RespOrderProduct>,
      refundAmount: null == refundAmount
          ? _value.refundAmount
          : refundAmount // ignore: cast_nullable_to_non_nullable
              as double,
      saleOrderUuid: null == saleOrderUuid
          ? _value.saleOrderUuid
          : saleOrderUuid // ignore: cast_nullable_to_non_nullable
              as int,
      serialNo: null == serialNo
          ? _value.serialNo
          : serialNo // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }

  /// Create a copy of RespOrderInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LocaleNameCopyWith<$Res> get freeReason {
    return $LocaleNameCopyWith<$Res>(_value.freeReason, (value) {
      return _then(_value.copyWith(freeReason: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$RespOrderInfoImplCopyWith<$Res>
    implements $RespOrderInfoCopyWith<$Res> {
  factory _$$RespOrderInfoImplCopyWith(
          _$RespOrderInfoImpl value, $Res Function(_$RespOrderInfoImpl) then) =
      __$$RespOrderInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "bill_type") int billType,
      @JsonKey(name: "dining_method") int diningMethod,
      @JsonKey(name: "finish_time") int finishTime,
      @JsonKey(name: "free_reason") LocaleName freeReason,
      @JsonKey(name: "is_free") bool isFree,
      @JsonKey(name: "member_name") String memberName,
      @JsonKey(name: "member_uuid") int memberUuid,
      @JsonKey(name: "order_amount") double orderAmount,
      @JsonKey(name: "order_no") String orderNo,
      @JsonKey(name: "pay_type_name") String payTypeName,
      @JsonKey(name: "payment_amount") double paymentAmount,
      @JsonKey(name: "products") List<RespOrderProduct> products,
      @JsonKey(name: "refund_amount") double refundAmount,
      @JsonKey(name: "sale_order_uuid") int saleOrderUuid,
      @JsonKey(name: "serial_no") String serialNo,
      @JsonKey(name: "status") int status});

  @override
  $LocaleNameCopyWith<$Res> get freeReason;
}

/// @nodoc
class __$$RespOrderInfoImplCopyWithImpl<$Res>
    extends _$RespOrderInfoCopyWithImpl<$Res, _$RespOrderInfoImpl>
    implements _$$RespOrderInfoImplCopyWith<$Res> {
  __$$RespOrderInfoImplCopyWithImpl(
      _$RespOrderInfoImpl _value, $Res Function(_$RespOrderInfoImpl) _then)
      : super(_value, _then);

  /// Create a copy of RespOrderInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? billType = null,
    Object? diningMethod = null,
    Object? finishTime = null,
    Object? freeReason = null,
    Object? isFree = null,
    Object? memberName = null,
    Object? memberUuid = null,
    Object? orderAmount = null,
    Object? orderNo = null,
    Object? payTypeName = null,
    Object? paymentAmount = null,
    Object? products = null,
    Object? refundAmount = null,
    Object? saleOrderUuid = null,
    Object? serialNo = null,
    Object? status = null,
  }) {
    return _then(_$RespOrderInfoImpl(
      billType: null == billType
          ? _value.billType
          : billType // ignore: cast_nullable_to_non_nullable
              as int,
      diningMethod: null == diningMethod
          ? _value.diningMethod
          : diningMethod // ignore: cast_nullable_to_non_nullable
              as int,
      finishTime: null == finishTime
          ? _value.finishTime
          : finishTime // ignore: cast_nullable_to_non_nullable
              as int,
      freeReason: null == freeReason
          ? _value.freeReason
          : freeReason // ignore: cast_nullable_to_non_nullable
              as LocaleName,
      isFree: null == isFree
          ? _value.isFree
          : isFree // ignore: cast_nullable_to_non_nullable
              as bool,
      memberName: null == memberName
          ? _value.memberName
          : memberName // ignore: cast_nullable_to_non_nullable
              as String,
      memberUuid: null == memberUuid
          ? _value.memberUuid
          : memberUuid // ignore: cast_nullable_to_non_nullable
              as int,
      orderAmount: null == orderAmount
          ? _value.orderAmount
          : orderAmount // ignore: cast_nullable_to_non_nullable
              as double,
      orderNo: null == orderNo
          ? _value.orderNo
          : orderNo // ignore: cast_nullable_to_non_nullable
              as String,
      payTypeName: null == payTypeName
          ? _value.payTypeName
          : payTypeName // ignore: cast_nullable_to_non_nullable
              as String,
      paymentAmount: null == paymentAmount
          ? _value.paymentAmount
          : paymentAmount // ignore: cast_nullable_to_non_nullable
              as double,
      products: null == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<RespOrderProduct>,
      refundAmount: null == refundAmount
          ? _value.refundAmount
          : refundAmount // ignore: cast_nullable_to_non_nullable
              as double,
      saleOrderUuid: null == saleOrderUuid
          ? _value.saleOrderUuid
          : saleOrderUuid // ignore: cast_nullable_to_non_nullable
              as int,
      serialNo: null == serialNo
          ? _value.serialNo
          : serialNo // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RespOrderInfoImpl implements _RespOrderInfo {
  _$RespOrderInfoImpl(
      {@JsonKey(name: "bill_type") required this.billType,
      @JsonKey(name: "dining_method") required this.diningMethod,
      @JsonKey(name: "finish_time") required this.finishTime,
      @JsonKey(name: "free_reason") required this.freeReason,
      @JsonKey(name: "is_free") required this.isFree,
      @JsonKey(name: "member_name") required this.memberName,
      @JsonKey(name: "member_uuid") required this.memberUuid,
      @JsonKey(name: "order_amount") required this.orderAmount,
      @JsonKey(name: "order_no") required this.orderNo,
      @JsonKey(name: "pay_type_name") required this.payTypeName,
      @JsonKey(name: "payment_amount") required this.paymentAmount,
      @JsonKey(name: "products") required this.products,
      @JsonKey(name: "refund_amount") required this.refundAmount,
      @JsonKey(name: "sale_order_uuid") required this.saleOrderUuid,
      @JsonKey(name: "serial_no") required this.serialNo,
      @JsonKey(name: "status") required this.status});

  factory _$RespOrderInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$RespOrderInfoImplFromJson(json);

  @override
  @JsonKey(name: "bill_type")
  int billType;
  @override
  @JsonKey(name: "dining_method")
  int diningMethod;
  @override
  @JsonKey(name: "finish_time")
  int finishTime;
  @override
  @JsonKey(name: "free_reason")
  LocaleName freeReason;
  @override
  @JsonKey(name: "is_free")
  bool isFree;
  @override
  @JsonKey(name: "member_name")
  String memberName;
  @override
  @JsonKey(name: "member_uuid")
  int memberUuid;
  @override
  @JsonKey(name: "order_amount")
  double orderAmount;
  @override
  @JsonKey(name: "order_no")
  String orderNo;
  @override
  @JsonKey(name: "pay_type_name")
  String payTypeName;
  @override
  @JsonKey(name: "payment_amount")
  double paymentAmount;
  @override
  @JsonKey(name: "products")
  List<RespOrderProduct> products;
  @override
  @JsonKey(name: "refund_amount")
  double refundAmount;
  @override
  @JsonKey(name: "sale_order_uuid")
  int saleOrderUuid;
  @override
  @JsonKey(name: "serial_no")
  String serialNo;
  @override
  @JsonKey(name: "status")
  int status;

  @override
  String toString() {
    return 'RespOrderInfo(billType: $billType, diningMethod: $diningMethod, finishTime: $finishTime, freeReason: $freeReason, isFree: $isFree, memberName: $memberName, memberUuid: $memberUuid, orderAmount: $orderAmount, orderNo: $orderNo, payTypeName: $payTypeName, paymentAmount: $paymentAmount, products: $products, refundAmount: $refundAmount, saleOrderUuid: $saleOrderUuid, serialNo: $serialNo, status: $status)';
  }

  /// Create a copy of RespOrderInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RespOrderInfoImplCopyWith<_$RespOrderInfoImpl> get copyWith =>
      __$$RespOrderInfoImplCopyWithImpl<_$RespOrderInfoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RespOrderInfoImplToJson(
      this,
    );
  }
}

abstract class _RespOrderInfo implements RespOrderInfo {
  factory _RespOrderInfo(
      {@JsonKey(name: "bill_type") required int billType,
      @JsonKey(name: "dining_method") required int diningMethod,
      @JsonKey(name: "finish_time") required int finishTime,
      @JsonKey(name: "free_reason") required LocaleName freeReason,
      @JsonKey(name: "is_free") required bool isFree,
      @JsonKey(name: "member_name") required String memberName,
      @JsonKey(name: "member_uuid") required int memberUuid,
      @JsonKey(name: "order_amount") required double orderAmount,
      @JsonKey(name: "order_no") required String orderNo,
      @JsonKey(name: "pay_type_name") required String payTypeName,
      @JsonKey(name: "payment_amount") required double paymentAmount,
      @JsonKey(name: "products") required List<RespOrderProduct> products,
      @JsonKey(name: "refund_amount") required double refundAmount,
      @JsonKey(name: "sale_order_uuid") required int saleOrderUuid,
      @JsonKey(name: "serial_no") required String serialNo,
      @JsonKey(name: "status") required int status}) = _$RespOrderInfoImpl;

  factory _RespOrderInfo.fromJson(Map<String, dynamic> json) =
      _$RespOrderInfoImpl.fromJson;

  @override
  @JsonKey(name: "bill_type")
  int get billType;
  @JsonKey(name: "bill_type")
  set billType(int value);
  @override
  @JsonKey(name: "dining_method")
  int get diningMethod;
  @JsonKey(name: "dining_method")
  set diningMethod(int value);
  @override
  @JsonKey(name: "finish_time")
  int get finishTime;
  @JsonKey(name: "finish_time")
  set finishTime(int value);
  @override
  @JsonKey(name: "free_reason")
  LocaleName get freeReason;
  @JsonKey(name: "free_reason")
  set freeReason(LocaleName value);
  @override
  @JsonKey(name: "is_free")
  bool get isFree;
  @JsonKey(name: "is_free")
  set isFree(bool value);
  @override
  @JsonKey(name: "member_name")
  String get memberName;
  @JsonKey(name: "member_name")
  set memberName(String value);
  @override
  @JsonKey(name: "member_uuid")
  int get memberUuid;
  @JsonKey(name: "member_uuid")
  set memberUuid(int value);
  @override
  @JsonKey(name: "order_amount")
  double get orderAmount;
  @JsonKey(name: "order_amount")
  set orderAmount(double value);
  @override
  @JsonKey(name: "order_no")
  String get orderNo;
  @JsonKey(name: "order_no")
  set orderNo(String value);
  @override
  @JsonKey(name: "pay_type_name")
  String get payTypeName;
  @JsonKey(name: "pay_type_name")
  set payTypeName(String value);
  @override
  @JsonKey(name: "payment_amount")
  double get paymentAmount;
  @JsonKey(name: "payment_amount")
  set paymentAmount(double value);
  @override
  @JsonKey(name: "products")
  List<RespOrderProduct> get products;
  @JsonKey(name: "products")
  set products(List<RespOrderProduct> value);
  @override
  @JsonKey(name: "refund_amount")
  double get refundAmount;
  @JsonKey(name: "refund_amount")
  set refundAmount(double value);
  @override
  @JsonKey(name: "sale_order_uuid")
  int get saleOrderUuid;
  @JsonKey(name: "sale_order_uuid")
  set saleOrderUuid(int value);
  @override
  @JsonKey(name: "serial_no")
  String get serialNo;
  @JsonKey(name: "serial_no")
  set serialNo(String value);
  @override
  @JsonKey(name: "status")
  int get status;
  @JsonKey(name: "status")
  set status(int value);

  /// Create a copy of RespOrderInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RespOrderInfoImplCopyWith<_$RespOrderInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

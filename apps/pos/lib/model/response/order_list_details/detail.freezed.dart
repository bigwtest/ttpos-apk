// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'detail.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Detail _$DetailFromJson(Map<String, dynamic> json) {
  return _Detail.fromJson(json);
}

/// @nodoc
mixin _$Detail {
  @JsonKey(name: "bill_type")
  int get billType => throw _privateConstructorUsedError;
  @JsonKey(name: "buffet_names")
  String get buffetNames => throw _privateConstructorUsedError;
  @JsonKey(name: "cancel_reason")
  String get cancelReason => throw _privateConstructorUsedError;
  @JsonKey(name: "cashier_name")
  String get cashierName => throw _privateConstructorUsedError;
  @JsonKey(name: "create_time")
  int get createTime => throw _privateConstructorUsedError;
  @JsonKey(name: "dining_method")
  int get diningMethod => throw _privateConstructorUsedError;
  @JsonKey(name: "finish_time")
  int get finishTime => throw _privateConstructorUsedError;
  @JsonKey(name: "is_buffet")
  bool get isBuffet => throw _privateConstructorUsedError;
  @JsonKey(name: "is_split")
  bool get isSplit => throw _privateConstructorUsedError;
  @JsonKey(name: "member_names")
  String get memberNames => throw _privateConstructorUsedError;
  @JsonKey(name: "member_uuids")
  String get memberUuids => throw _privateConstructorUsedError;
  @JsonKey(name: "order_amount")
  double get orderAmount => throw _privateConstructorUsedError;
  @JsonKey(name: "order_no")
  String get orderNo => throw _privateConstructorUsedError;
  @JsonKey(name: "pay_types")
  List<RespOrderInfoPayTypes> get payTypes =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "payment_amount")
  double get paymentAmount => throw _privateConstructorUsedError;
  @JsonKey(name: "refund_amount")
  double get refundAmount => throw _privateConstructorUsedError;
  @JsonKey(name: "remark")
  String get remark => throw _privateConstructorUsedError;
  @JsonKey(name: "sale_bill_uuid")
  int get saleBillUuid => throw _privateConstructorUsedError;
  @JsonKey(name: "sale_orders")
  List<RespOrderInfo> get saleOrders => throw _privateConstructorUsedError;
  @JsonKey(name: "serial_no")
  String get serialNo => throw _privateConstructorUsedError;
  @JsonKey(name: "status")
  int get status => throw _privateConstructorUsedError;

  /// Serializes this Detail to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Detail
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DetailCopyWith<Detail> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailCopyWith<$Res> {
  factory $DetailCopyWith(Detail value, $Res Function(Detail) then) =
      _$DetailCopyWithImpl<$Res, Detail>;
  @useResult
  $Res call(
      {@JsonKey(name: "bill_type") int billType,
      @JsonKey(name: "buffet_names") String buffetNames,
      @JsonKey(name: "cancel_reason") String cancelReason,
      @JsonKey(name: "cashier_name") String cashierName,
      @JsonKey(name: "create_time") int createTime,
      @JsonKey(name: "dining_method") int diningMethod,
      @JsonKey(name: "finish_time") int finishTime,
      @JsonKey(name: "is_buffet") bool isBuffet,
      @JsonKey(name: "is_split") bool isSplit,
      @JsonKey(name: "member_names") String memberNames,
      @JsonKey(name: "member_uuids") String memberUuids,
      @JsonKey(name: "order_amount") double orderAmount,
      @JsonKey(name: "order_no") String orderNo,
      @JsonKey(name: "pay_types") List<RespOrderInfoPayTypes> payTypes,
      @JsonKey(name: "payment_amount") double paymentAmount,
      @JsonKey(name: "refund_amount") double refundAmount,
      @JsonKey(name: "remark") String remark,
      @JsonKey(name: "sale_bill_uuid") int saleBillUuid,
      @JsonKey(name: "sale_orders") List<RespOrderInfo> saleOrders,
      @JsonKey(name: "serial_no") String serialNo,
      @JsonKey(name: "status") int status});
}

/// @nodoc
class _$DetailCopyWithImpl<$Res, $Val extends Detail>
    implements $DetailCopyWith<$Res> {
  _$DetailCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Detail
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? billType = null,
    Object? buffetNames = null,
    Object? cancelReason = null,
    Object? cashierName = null,
    Object? createTime = null,
    Object? diningMethod = null,
    Object? finishTime = null,
    Object? isBuffet = null,
    Object? isSplit = null,
    Object? memberNames = null,
    Object? memberUuids = null,
    Object? orderAmount = null,
    Object? orderNo = null,
    Object? payTypes = null,
    Object? paymentAmount = null,
    Object? refundAmount = null,
    Object? remark = null,
    Object? saleBillUuid = null,
    Object? saleOrders = null,
    Object? serialNo = null,
    Object? status = null,
  }) {
    return _then(_value.copyWith(
      billType: null == billType
          ? _value.billType
          : billType // ignore: cast_nullable_to_non_nullable
              as int,
      buffetNames: null == buffetNames
          ? _value.buffetNames
          : buffetNames // ignore: cast_nullable_to_non_nullable
              as String,
      cancelReason: null == cancelReason
          ? _value.cancelReason
          : cancelReason // ignore: cast_nullable_to_non_nullable
              as String,
      cashierName: null == cashierName
          ? _value.cashierName
          : cashierName // ignore: cast_nullable_to_non_nullable
              as String,
      createTime: null == createTime
          ? _value.createTime
          : createTime // ignore: cast_nullable_to_non_nullable
              as int,
      diningMethod: null == diningMethod
          ? _value.diningMethod
          : diningMethod // ignore: cast_nullable_to_non_nullable
              as int,
      finishTime: null == finishTime
          ? _value.finishTime
          : finishTime // ignore: cast_nullable_to_non_nullable
              as int,
      isBuffet: null == isBuffet
          ? _value.isBuffet
          : isBuffet // ignore: cast_nullable_to_non_nullable
              as bool,
      isSplit: null == isSplit
          ? _value.isSplit
          : isSplit // ignore: cast_nullable_to_non_nullable
              as bool,
      memberNames: null == memberNames
          ? _value.memberNames
          : memberNames // ignore: cast_nullable_to_non_nullable
              as String,
      memberUuids: null == memberUuids
          ? _value.memberUuids
          : memberUuids // ignore: cast_nullable_to_non_nullable
              as String,
      orderAmount: null == orderAmount
          ? _value.orderAmount
          : orderAmount // ignore: cast_nullable_to_non_nullable
              as double,
      orderNo: null == orderNo
          ? _value.orderNo
          : orderNo // ignore: cast_nullable_to_non_nullable
              as String,
      payTypes: null == payTypes
          ? _value.payTypes
          : payTypes // ignore: cast_nullable_to_non_nullable
              as List<RespOrderInfoPayTypes>,
      paymentAmount: null == paymentAmount
          ? _value.paymentAmount
          : paymentAmount // ignore: cast_nullable_to_non_nullable
              as double,
      refundAmount: null == refundAmount
          ? _value.refundAmount
          : refundAmount // ignore: cast_nullable_to_non_nullable
              as double,
      remark: null == remark
          ? _value.remark
          : remark // ignore: cast_nullable_to_non_nullable
              as String,
      saleBillUuid: null == saleBillUuid
          ? _value.saleBillUuid
          : saleBillUuid // ignore: cast_nullable_to_non_nullable
              as int,
      saleOrders: null == saleOrders
          ? _value.saleOrders
          : saleOrders // ignore: cast_nullable_to_non_nullable
              as List<RespOrderInfo>,
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
}

/// @nodoc
abstract class _$$DetailImplCopyWith<$Res> implements $DetailCopyWith<$Res> {
  factory _$$DetailImplCopyWith(
          _$DetailImpl value, $Res Function(_$DetailImpl) then) =
      __$$DetailImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "bill_type") int billType,
      @JsonKey(name: "buffet_names") String buffetNames,
      @JsonKey(name: "cancel_reason") String cancelReason,
      @JsonKey(name: "cashier_name") String cashierName,
      @JsonKey(name: "create_time") int createTime,
      @JsonKey(name: "dining_method") int diningMethod,
      @JsonKey(name: "finish_time") int finishTime,
      @JsonKey(name: "is_buffet") bool isBuffet,
      @JsonKey(name: "is_split") bool isSplit,
      @JsonKey(name: "member_names") String memberNames,
      @JsonKey(name: "member_uuids") String memberUuids,
      @JsonKey(name: "order_amount") double orderAmount,
      @JsonKey(name: "order_no") String orderNo,
      @JsonKey(name: "pay_types") List<RespOrderInfoPayTypes> payTypes,
      @JsonKey(name: "payment_amount") double paymentAmount,
      @JsonKey(name: "refund_amount") double refundAmount,
      @JsonKey(name: "remark") String remark,
      @JsonKey(name: "sale_bill_uuid") int saleBillUuid,
      @JsonKey(name: "sale_orders") List<RespOrderInfo> saleOrders,
      @JsonKey(name: "serial_no") String serialNo,
      @JsonKey(name: "status") int status});
}

/// @nodoc
class __$$DetailImplCopyWithImpl<$Res>
    extends _$DetailCopyWithImpl<$Res, _$DetailImpl>
    implements _$$DetailImplCopyWith<$Res> {
  __$$DetailImplCopyWithImpl(
      _$DetailImpl _value, $Res Function(_$DetailImpl) _then)
      : super(_value, _then);

  /// Create a copy of Detail
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? billType = null,
    Object? buffetNames = null,
    Object? cancelReason = null,
    Object? cashierName = null,
    Object? createTime = null,
    Object? diningMethod = null,
    Object? finishTime = null,
    Object? isBuffet = null,
    Object? isSplit = null,
    Object? memberNames = null,
    Object? memberUuids = null,
    Object? orderAmount = null,
    Object? orderNo = null,
    Object? payTypes = null,
    Object? paymentAmount = null,
    Object? refundAmount = null,
    Object? remark = null,
    Object? saleBillUuid = null,
    Object? saleOrders = null,
    Object? serialNo = null,
    Object? status = null,
  }) {
    return _then(_$DetailImpl(
      billType: null == billType
          ? _value.billType
          : billType // ignore: cast_nullable_to_non_nullable
              as int,
      buffetNames: null == buffetNames
          ? _value.buffetNames
          : buffetNames // ignore: cast_nullable_to_non_nullable
              as String,
      cancelReason: null == cancelReason
          ? _value.cancelReason
          : cancelReason // ignore: cast_nullable_to_non_nullable
              as String,
      cashierName: null == cashierName
          ? _value.cashierName
          : cashierName // ignore: cast_nullable_to_non_nullable
              as String,
      createTime: null == createTime
          ? _value.createTime
          : createTime // ignore: cast_nullable_to_non_nullable
              as int,
      diningMethod: null == diningMethod
          ? _value.diningMethod
          : diningMethod // ignore: cast_nullable_to_non_nullable
              as int,
      finishTime: null == finishTime
          ? _value.finishTime
          : finishTime // ignore: cast_nullable_to_non_nullable
              as int,
      isBuffet: null == isBuffet
          ? _value.isBuffet
          : isBuffet // ignore: cast_nullable_to_non_nullable
              as bool,
      isSplit: null == isSplit
          ? _value.isSplit
          : isSplit // ignore: cast_nullable_to_non_nullable
              as bool,
      memberNames: null == memberNames
          ? _value.memberNames
          : memberNames // ignore: cast_nullable_to_non_nullable
              as String,
      memberUuids: null == memberUuids
          ? _value.memberUuids
          : memberUuids // ignore: cast_nullable_to_non_nullable
              as String,
      orderAmount: null == orderAmount
          ? _value.orderAmount
          : orderAmount // ignore: cast_nullable_to_non_nullable
              as double,
      orderNo: null == orderNo
          ? _value.orderNo
          : orderNo // ignore: cast_nullable_to_non_nullable
              as String,
      payTypes: null == payTypes
          ? _value._payTypes
          : payTypes // ignore: cast_nullable_to_non_nullable
              as List<RespOrderInfoPayTypes>,
      paymentAmount: null == paymentAmount
          ? _value.paymentAmount
          : paymentAmount // ignore: cast_nullable_to_non_nullable
              as double,
      refundAmount: null == refundAmount
          ? _value.refundAmount
          : refundAmount // ignore: cast_nullable_to_non_nullable
              as double,
      remark: null == remark
          ? _value.remark
          : remark // ignore: cast_nullable_to_non_nullable
              as String,
      saleBillUuid: null == saleBillUuid
          ? _value.saleBillUuid
          : saleBillUuid // ignore: cast_nullable_to_non_nullable
              as int,
      saleOrders: null == saleOrders
          ? _value._saleOrders
          : saleOrders // ignore: cast_nullable_to_non_nullable
              as List<RespOrderInfo>,
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
class _$DetailImpl implements _Detail {
  _$DetailImpl(
      {@JsonKey(name: "bill_type") required this.billType,
      @JsonKey(name: "buffet_names") required this.buffetNames,
      @JsonKey(name: "cancel_reason") required this.cancelReason,
      @JsonKey(name: "cashier_name") required this.cashierName,
      @JsonKey(name: "create_time") required this.createTime,
      @JsonKey(name: "dining_method") required this.diningMethod,
      @JsonKey(name: "finish_time") required this.finishTime,
      @JsonKey(name: "is_buffet") required this.isBuffet,
      @JsonKey(name: "is_split") required this.isSplit,
      @JsonKey(name: "member_names") required this.memberNames,
      @JsonKey(name: "member_uuids") required this.memberUuids,
      @JsonKey(name: "order_amount") required this.orderAmount,
      @JsonKey(name: "order_no") required this.orderNo,
      @JsonKey(name: "pay_types")
      required final List<RespOrderInfoPayTypes> payTypes,
      @JsonKey(name: "payment_amount") required this.paymentAmount,
      @JsonKey(name: "refund_amount") required this.refundAmount,
      @JsonKey(name: "remark") required this.remark,
      @JsonKey(name: "sale_bill_uuid") required this.saleBillUuid,
      @JsonKey(name: "sale_orders")
      required final List<RespOrderInfo> saleOrders,
      @JsonKey(name: "serial_no") required this.serialNo,
      @JsonKey(name: "status") required this.status})
      : _payTypes = payTypes,
        _saleOrders = saleOrders;

  factory _$DetailImpl.fromJson(Map<String, dynamic> json) =>
      _$$DetailImplFromJson(json);

  @override
  @JsonKey(name: "bill_type")
  final int billType;
  @override
  @JsonKey(name: "buffet_names")
  final String buffetNames;
  @override
  @JsonKey(name: "cancel_reason")
  final String cancelReason;
  @override
  @JsonKey(name: "cashier_name")
  final String cashierName;
  @override
  @JsonKey(name: "create_time")
  final int createTime;
  @override
  @JsonKey(name: "dining_method")
  final int diningMethod;
  @override
  @JsonKey(name: "finish_time")
  final int finishTime;
  @override
  @JsonKey(name: "is_buffet")
  final bool isBuffet;
  @override
  @JsonKey(name: "is_split")
  final bool isSplit;
  @override
  @JsonKey(name: "member_names")
  final String memberNames;
  @override
  @JsonKey(name: "member_uuids")
  final String memberUuids;
  @override
  @JsonKey(name: "order_amount")
  final double orderAmount;
  @override
  @JsonKey(name: "order_no")
  final String orderNo;
  final List<RespOrderInfoPayTypes> _payTypes;
  @override
  @JsonKey(name: "pay_types")
  List<RespOrderInfoPayTypes> get payTypes {
    if (_payTypes is EqualUnmodifiableListView) return _payTypes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_payTypes);
  }

  @override
  @JsonKey(name: "payment_amount")
  final double paymentAmount;
  @override
  @JsonKey(name: "refund_amount")
  final double refundAmount;
  @override
  @JsonKey(name: "remark")
  final String remark;
  @override
  @JsonKey(name: "sale_bill_uuid")
  final int saleBillUuid;
  final List<RespOrderInfo> _saleOrders;
  @override
  @JsonKey(name: "sale_orders")
  List<RespOrderInfo> get saleOrders {
    if (_saleOrders is EqualUnmodifiableListView) return _saleOrders;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_saleOrders);
  }

  @override
  @JsonKey(name: "serial_no")
  final String serialNo;
  @override
  @JsonKey(name: "status")
  final int status;

  @override
  String toString() {
    return 'Detail(billType: $billType, buffetNames: $buffetNames, cancelReason: $cancelReason, cashierName: $cashierName, createTime: $createTime, diningMethod: $diningMethod, finishTime: $finishTime, isBuffet: $isBuffet, isSplit: $isSplit, memberNames: $memberNames, memberUuids: $memberUuids, orderAmount: $orderAmount, orderNo: $orderNo, payTypes: $payTypes, paymentAmount: $paymentAmount, refundAmount: $refundAmount, remark: $remark, saleBillUuid: $saleBillUuid, saleOrders: $saleOrders, serialNo: $serialNo, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DetailImpl &&
            (identical(other.billType, billType) ||
                other.billType == billType) &&
            (identical(other.buffetNames, buffetNames) ||
                other.buffetNames == buffetNames) &&
            (identical(other.cancelReason, cancelReason) ||
                other.cancelReason == cancelReason) &&
            (identical(other.cashierName, cashierName) ||
                other.cashierName == cashierName) &&
            (identical(other.createTime, createTime) ||
                other.createTime == createTime) &&
            (identical(other.diningMethod, diningMethod) ||
                other.diningMethod == diningMethod) &&
            (identical(other.finishTime, finishTime) ||
                other.finishTime == finishTime) &&
            (identical(other.isBuffet, isBuffet) ||
                other.isBuffet == isBuffet) &&
            (identical(other.isSplit, isSplit) || other.isSplit == isSplit) &&
            (identical(other.memberNames, memberNames) ||
                other.memberNames == memberNames) &&
            (identical(other.memberUuids, memberUuids) ||
                other.memberUuids == memberUuids) &&
            (identical(other.orderAmount, orderAmount) ||
                other.orderAmount == orderAmount) &&
            (identical(other.orderNo, orderNo) || other.orderNo == orderNo) &&
            const DeepCollectionEquality().equals(other._payTypes, _payTypes) &&
            (identical(other.paymentAmount, paymentAmount) ||
                other.paymentAmount == paymentAmount) &&
            (identical(other.refundAmount, refundAmount) ||
                other.refundAmount == refundAmount) &&
            (identical(other.remark, remark) || other.remark == remark) &&
            (identical(other.saleBillUuid, saleBillUuid) ||
                other.saleBillUuid == saleBillUuid) &&
            const DeepCollectionEquality()
                .equals(other._saleOrders, _saleOrders) &&
            (identical(other.serialNo, serialNo) ||
                other.serialNo == serialNo) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        billType,
        buffetNames,
        cancelReason,
        cashierName,
        createTime,
        diningMethod,
        finishTime,
        isBuffet,
        isSplit,
        memberNames,
        memberUuids,
        orderAmount,
        orderNo,
        const DeepCollectionEquality().hash(_payTypes),
        paymentAmount,
        refundAmount,
        remark,
        saleBillUuid,
        const DeepCollectionEquality().hash(_saleOrders),
        serialNo,
        status
      ]);

  /// Create a copy of Detail
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DetailImplCopyWith<_$DetailImpl> get copyWith =>
      __$$DetailImplCopyWithImpl<_$DetailImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DetailImplToJson(
      this,
    );
  }
}

abstract class _Detail implements Detail {
  factory _Detail(
      {@JsonKey(name: "bill_type") required final int billType,
      @JsonKey(name: "buffet_names") required final String buffetNames,
      @JsonKey(name: "cancel_reason") required final String cancelReason,
      @JsonKey(name: "cashier_name") required final String cashierName,
      @JsonKey(name: "create_time") required final int createTime,
      @JsonKey(name: "dining_method") required final int diningMethod,
      @JsonKey(name: "finish_time") required final int finishTime,
      @JsonKey(name: "is_buffet") required final bool isBuffet,
      @JsonKey(name: "is_split") required final bool isSplit,
      @JsonKey(name: "member_names") required final String memberNames,
      @JsonKey(name: "member_uuids") required final String memberUuids,
      @JsonKey(name: "order_amount") required final double orderAmount,
      @JsonKey(name: "order_no") required final String orderNo,
      @JsonKey(name: "pay_types")
      required final List<RespOrderInfoPayTypes> payTypes,
      @JsonKey(name: "payment_amount") required final double paymentAmount,
      @JsonKey(name: "refund_amount") required final double refundAmount,
      @JsonKey(name: "remark") required final String remark,
      @JsonKey(name: "sale_bill_uuid") required final int saleBillUuid,
      @JsonKey(name: "sale_orders")
      required final List<RespOrderInfo> saleOrders,
      @JsonKey(name: "serial_no") required final String serialNo,
      @JsonKey(name: "status") required final int status}) = _$DetailImpl;

  factory _Detail.fromJson(Map<String, dynamic> json) = _$DetailImpl.fromJson;

  @override
  @JsonKey(name: "bill_type")
  int get billType;
  @override
  @JsonKey(name: "buffet_names")
  String get buffetNames;
  @override
  @JsonKey(name: "cancel_reason")
  String get cancelReason;
  @override
  @JsonKey(name: "cashier_name")
  String get cashierName;
  @override
  @JsonKey(name: "create_time")
  int get createTime;
  @override
  @JsonKey(name: "dining_method")
  int get diningMethod;
  @override
  @JsonKey(name: "finish_time")
  int get finishTime;
  @override
  @JsonKey(name: "is_buffet")
  bool get isBuffet;
  @override
  @JsonKey(name: "is_split")
  bool get isSplit;
  @override
  @JsonKey(name: "member_names")
  String get memberNames;
  @override
  @JsonKey(name: "member_uuids")
  String get memberUuids;
  @override
  @JsonKey(name: "order_amount")
  double get orderAmount;
  @override
  @JsonKey(name: "order_no")
  String get orderNo;
  @override
  @JsonKey(name: "pay_types")
  List<RespOrderInfoPayTypes> get payTypes;
  @override
  @JsonKey(name: "payment_amount")
  double get paymentAmount;
  @override
  @JsonKey(name: "refund_amount")
  double get refundAmount;
  @override
  @JsonKey(name: "remark")
  String get remark;
  @override
  @JsonKey(name: "sale_bill_uuid")
  int get saleBillUuid;
  @override
  @JsonKey(name: "sale_orders")
  List<RespOrderInfo> get saleOrders;
  @override
  @JsonKey(name: "serial_no")
  String get serialNo;
  @override
  @JsonKey(name: "status")
  int get status;

  /// Create a copy of Detail
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DetailImplCopyWith<_$DetailImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

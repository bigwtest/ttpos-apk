// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'table_list.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TableList _$TableListFromJson(Map<String, dynamic> json) {
  return _TableList.fromJson(json);
}

/// @nodoc
mixin _$TableList {
  @JsonKey(name: "bill_type")
  int get billType => throw _privateConstructorUsedError;
  @JsonKey(name: "consumer_uuids")
  String get consumerUuids => throw _privateConstructorUsedError;
  @JsonKey(name: "extra")
  Extra get extra => throw _privateConstructorUsedError;
  @JsonKey(name: "finish_time")
  int get finishTime => throw _privateConstructorUsedError;
  @JsonKey(name: "is_split")
  bool get isSplit => throw _privateConstructorUsedError;
  @JsonKey(name: "order_amount")
  SafetyNumber get orderAmount => throw _privateConstructorUsedError;
  @JsonKey(name: "order_no")
  String get orderNo => throw _privateConstructorUsedError;
  @JsonKey(name: "pay_type_name")
  String get payTypeName => throw _privateConstructorUsedError;
  @JsonKey(name: "payment_amount")
  SafetyNumber get paymentAmount => throw _privateConstructorUsedError;
  @JsonKey(name: "sale_bill_uuid")
  int get saleBillUuid => throw _privateConstructorUsedError;
  @JsonKey(name: "sale_order_uuid")
  int get saleOrderUuid => throw _privateConstructorUsedError;
  @JsonKey(name: "sale_orders")
  List<RespBillListsOrder> get saleOrders => throw _privateConstructorUsedError;
  @JsonKey(name: "children_list")
  List<RespBillListsOrder> get childrenList =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "serial_no")
  String get serialNo => throw _privateConstructorUsedError;
  @JsonKey(name: "status")
  int get status => throw _privateConstructorUsedError;

  /// Serializes this TableList to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TableList
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TableListCopyWith<TableList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TableListCopyWith<$Res> {
  factory $TableListCopyWith(TableList value, $Res Function(TableList) then) =
      _$TableListCopyWithImpl<$Res, TableList>;
  @useResult
  $Res call(
      {@JsonKey(name: "bill_type") int billType,
      @JsonKey(name: "consumer_uuids") String consumerUuids,
      @JsonKey(name: "extra") Extra extra,
      @JsonKey(name: "finish_time") int finishTime,
      @JsonKey(name: "is_split") bool isSplit,
      @JsonKey(name: "order_amount") SafetyNumber orderAmount,
      @JsonKey(name: "order_no") String orderNo,
      @JsonKey(name: "pay_type_name") String payTypeName,
      @JsonKey(name: "payment_amount") SafetyNumber paymentAmount,
      @JsonKey(name: "sale_bill_uuid") int saleBillUuid,
      @JsonKey(name: "sale_order_uuid") int saleOrderUuid,
      @JsonKey(name: "sale_orders") List<RespBillListsOrder> saleOrders,
      @JsonKey(name: "children_list") List<RespBillListsOrder> childrenList,
      @JsonKey(name: "serial_no") String serialNo,
      @JsonKey(name: "status") int status});

  $ExtraCopyWith<$Res> get extra;
  $SafetyNumberCopyWith<$Res> get orderAmount;
  $SafetyNumberCopyWith<$Res> get paymentAmount;
}

/// @nodoc
class _$TableListCopyWithImpl<$Res, $Val extends TableList>
    implements $TableListCopyWith<$Res> {
  _$TableListCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TableList
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? billType = null,
    Object? consumerUuids = null,
    Object? extra = null,
    Object? finishTime = null,
    Object? isSplit = null,
    Object? orderAmount = null,
    Object? orderNo = null,
    Object? payTypeName = null,
    Object? paymentAmount = null,
    Object? saleBillUuid = null,
    Object? saleOrderUuid = null,
    Object? saleOrders = null,
    Object? childrenList = null,
    Object? serialNo = null,
    Object? status = null,
  }) {
    return _then(_value.copyWith(
      billType: null == billType
          ? _value.billType
          : billType // ignore: cast_nullable_to_non_nullable
              as int,
      consumerUuids: null == consumerUuids
          ? _value.consumerUuids
          : consumerUuids // ignore: cast_nullable_to_non_nullable
              as String,
      extra: null == extra
          ? _value.extra
          : extra // ignore: cast_nullable_to_non_nullable
              as Extra,
      finishTime: null == finishTime
          ? _value.finishTime
          : finishTime // ignore: cast_nullable_to_non_nullable
              as int,
      isSplit: null == isSplit
          ? _value.isSplit
          : isSplit // ignore: cast_nullable_to_non_nullable
              as bool,
      orderAmount: null == orderAmount
          ? _value.orderAmount
          : orderAmount // ignore: cast_nullable_to_non_nullable
              as SafetyNumber,
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
              as SafetyNumber,
      saleBillUuid: null == saleBillUuid
          ? _value.saleBillUuid
          : saleBillUuid // ignore: cast_nullable_to_non_nullable
              as int,
      saleOrderUuid: null == saleOrderUuid
          ? _value.saleOrderUuid
          : saleOrderUuid // ignore: cast_nullable_to_non_nullable
              as int,
      saleOrders: null == saleOrders
          ? _value.saleOrders
          : saleOrders // ignore: cast_nullable_to_non_nullable
              as List<RespBillListsOrder>,
      childrenList: null == childrenList
          ? _value.childrenList
          : childrenList // ignore: cast_nullable_to_non_nullable
              as List<RespBillListsOrder>,
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

  /// Create a copy of TableList
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ExtraCopyWith<$Res> get extra {
    return $ExtraCopyWith<$Res>(_value.extra, (value) {
      return _then(_value.copyWith(extra: value) as $Val);
    });
  }

  /// Create a copy of TableList
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SafetyNumberCopyWith<$Res> get orderAmount {
    return $SafetyNumberCopyWith<$Res>(_value.orderAmount, (value) {
      return _then(_value.copyWith(orderAmount: value) as $Val);
    });
  }

  /// Create a copy of TableList
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SafetyNumberCopyWith<$Res> get paymentAmount {
    return $SafetyNumberCopyWith<$Res>(_value.paymentAmount, (value) {
      return _then(_value.copyWith(paymentAmount: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TableListImplCopyWith<$Res>
    implements $TableListCopyWith<$Res> {
  factory _$$TableListImplCopyWith(
          _$TableListImpl value, $Res Function(_$TableListImpl) then) =
      __$$TableListImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "bill_type") int billType,
      @JsonKey(name: "consumer_uuids") String consumerUuids,
      @JsonKey(name: "extra") Extra extra,
      @JsonKey(name: "finish_time") int finishTime,
      @JsonKey(name: "is_split") bool isSplit,
      @JsonKey(name: "order_amount") SafetyNumber orderAmount,
      @JsonKey(name: "order_no") String orderNo,
      @JsonKey(name: "pay_type_name") String payTypeName,
      @JsonKey(name: "payment_amount") SafetyNumber paymentAmount,
      @JsonKey(name: "sale_bill_uuid") int saleBillUuid,
      @JsonKey(name: "sale_order_uuid") int saleOrderUuid,
      @JsonKey(name: "sale_orders") List<RespBillListsOrder> saleOrders,
      @JsonKey(name: "children_list") List<RespBillListsOrder> childrenList,
      @JsonKey(name: "serial_no") String serialNo,
      @JsonKey(name: "status") int status});

  @override
  $ExtraCopyWith<$Res> get extra;
  @override
  $SafetyNumberCopyWith<$Res> get orderAmount;
  @override
  $SafetyNumberCopyWith<$Res> get paymentAmount;
}

/// @nodoc
class __$$TableListImplCopyWithImpl<$Res>
    extends _$TableListCopyWithImpl<$Res, _$TableListImpl>
    implements _$$TableListImplCopyWith<$Res> {
  __$$TableListImplCopyWithImpl(
      _$TableListImpl _value, $Res Function(_$TableListImpl) _then)
      : super(_value, _then);

  /// Create a copy of TableList
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? billType = null,
    Object? consumerUuids = null,
    Object? extra = null,
    Object? finishTime = null,
    Object? isSplit = null,
    Object? orderAmount = null,
    Object? orderNo = null,
    Object? payTypeName = null,
    Object? paymentAmount = null,
    Object? saleBillUuid = null,
    Object? saleOrderUuid = null,
    Object? saleOrders = null,
    Object? childrenList = null,
    Object? serialNo = null,
    Object? status = null,
  }) {
    return _then(_$TableListImpl(
      billType: null == billType
          ? _value.billType
          : billType // ignore: cast_nullable_to_non_nullable
              as int,
      consumerUuids: null == consumerUuids
          ? _value.consumerUuids
          : consumerUuids // ignore: cast_nullable_to_non_nullable
              as String,
      extra: null == extra
          ? _value.extra
          : extra // ignore: cast_nullable_to_non_nullable
              as Extra,
      finishTime: null == finishTime
          ? _value.finishTime
          : finishTime // ignore: cast_nullable_to_non_nullable
              as int,
      isSplit: null == isSplit
          ? _value.isSplit
          : isSplit // ignore: cast_nullable_to_non_nullable
              as bool,
      orderAmount: null == orderAmount
          ? _value.orderAmount
          : orderAmount // ignore: cast_nullable_to_non_nullable
              as SafetyNumber,
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
              as SafetyNumber,
      saleBillUuid: null == saleBillUuid
          ? _value.saleBillUuid
          : saleBillUuid // ignore: cast_nullable_to_non_nullable
              as int,
      saleOrderUuid: null == saleOrderUuid
          ? _value.saleOrderUuid
          : saleOrderUuid // ignore: cast_nullable_to_non_nullable
              as int,
      saleOrders: null == saleOrders
          ? _value._saleOrders
          : saleOrders // ignore: cast_nullable_to_non_nullable
              as List<RespBillListsOrder>,
      childrenList: null == childrenList
          ? _value._childrenList
          : childrenList // ignore: cast_nullable_to_non_nullable
              as List<RespBillListsOrder>,
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
class _$TableListImpl implements _TableList {
  _$TableListImpl(
      {@JsonKey(name: "bill_type") required this.billType,
      @JsonKey(name: "consumer_uuids") required this.consumerUuids,
      @JsonKey(name: "extra") required this.extra,
      @JsonKey(name: "finish_time") required this.finishTime,
      @JsonKey(name: "is_split") required this.isSplit,
      @JsonKey(name: "order_amount") required this.orderAmount,
      @JsonKey(name: "order_no") required this.orderNo,
      @JsonKey(name: "pay_type_name") required this.payTypeName,
      @JsonKey(name: "payment_amount") required this.paymentAmount,
      @JsonKey(name: "sale_bill_uuid") required this.saleBillUuid,
      @JsonKey(name: "sale_order_uuid") required this.saleOrderUuid,
      @JsonKey(name: "sale_orders")
      required final List<RespBillListsOrder> saleOrders,
      @JsonKey(name: "children_list")
      required final List<RespBillListsOrder> childrenList,
      @JsonKey(name: "serial_no") required this.serialNo,
      @JsonKey(name: "status") required this.status})
      : _saleOrders = saleOrders,
        _childrenList = childrenList;

  factory _$TableListImpl.fromJson(Map<String, dynamic> json) =>
      _$$TableListImplFromJson(json);

  @override
  @JsonKey(name: "bill_type")
  final int billType;
  @override
  @JsonKey(name: "consumer_uuids")
  final String consumerUuids;
  @override
  @JsonKey(name: "extra")
  final Extra extra;
  @override
  @JsonKey(name: "finish_time")
  final int finishTime;
  @override
  @JsonKey(name: "is_split")
  final bool isSplit;
  @override
  @JsonKey(name: "order_amount")
  final SafetyNumber orderAmount;
  @override
  @JsonKey(name: "order_no")
  final String orderNo;
  @override
  @JsonKey(name: "pay_type_name")
  final String payTypeName;
  @override
  @JsonKey(name: "payment_amount")
  final SafetyNumber paymentAmount;
  @override
  @JsonKey(name: "sale_bill_uuid")
  final int saleBillUuid;
  @override
  @JsonKey(name: "sale_order_uuid")
  final int saleOrderUuid;
  final List<RespBillListsOrder> _saleOrders;
  @override
  @JsonKey(name: "sale_orders")
  List<RespBillListsOrder> get saleOrders {
    if (_saleOrders is EqualUnmodifiableListView) return _saleOrders;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_saleOrders);
  }

  final List<RespBillListsOrder> _childrenList;
  @override
  @JsonKey(name: "children_list")
  List<RespBillListsOrder> get childrenList {
    if (_childrenList is EqualUnmodifiableListView) return _childrenList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_childrenList);
  }

  @override
  @JsonKey(name: "serial_no")
  final String serialNo;
  @override
  @JsonKey(name: "status")
  final int status;

  @override
  String toString() {
    return 'TableList(billType: $billType, consumerUuids: $consumerUuids, extra: $extra, finishTime: $finishTime, isSplit: $isSplit, orderAmount: $orderAmount, orderNo: $orderNo, payTypeName: $payTypeName, paymentAmount: $paymentAmount, saleBillUuid: $saleBillUuid, saleOrderUuid: $saleOrderUuid, saleOrders: $saleOrders, childrenList: $childrenList, serialNo: $serialNo, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TableListImpl &&
            (identical(other.billType, billType) ||
                other.billType == billType) &&
            (identical(other.consumerUuids, consumerUuids) ||
                other.consumerUuids == consumerUuids) &&
            (identical(other.extra, extra) || other.extra == extra) &&
            (identical(other.finishTime, finishTime) ||
                other.finishTime == finishTime) &&
            (identical(other.isSplit, isSplit) || other.isSplit == isSplit) &&
            (identical(other.orderAmount, orderAmount) ||
                other.orderAmount == orderAmount) &&
            (identical(other.orderNo, orderNo) || other.orderNo == orderNo) &&
            (identical(other.payTypeName, payTypeName) ||
                other.payTypeName == payTypeName) &&
            (identical(other.paymentAmount, paymentAmount) ||
                other.paymentAmount == paymentAmount) &&
            (identical(other.saleBillUuid, saleBillUuid) ||
                other.saleBillUuid == saleBillUuid) &&
            (identical(other.saleOrderUuid, saleOrderUuid) ||
                other.saleOrderUuid == saleOrderUuid) &&
            const DeepCollectionEquality()
                .equals(other._saleOrders, _saleOrders) &&
            const DeepCollectionEquality()
                .equals(other._childrenList, _childrenList) &&
            (identical(other.serialNo, serialNo) ||
                other.serialNo == serialNo) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      billType,
      consumerUuids,
      extra,
      finishTime,
      isSplit,
      orderAmount,
      orderNo,
      payTypeName,
      paymentAmount,
      saleBillUuid,
      saleOrderUuid,
      const DeepCollectionEquality().hash(_saleOrders),
      const DeepCollectionEquality().hash(_childrenList),
      serialNo,
      status);

  /// Create a copy of TableList
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TableListImplCopyWith<_$TableListImpl> get copyWith =>
      __$$TableListImplCopyWithImpl<_$TableListImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TableListImplToJson(
      this,
    );
  }
}

abstract class _TableList implements TableList {
  factory _TableList(
      {@JsonKey(name: "bill_type") required final int billType,
      @JsonKey(name: "consumer_uuids") required final String consumerUuids,
      @JsonKey(name: "extra") required final Extra extra,
      @JsonKey(name: "finish_time") required final int finishTime,
      @JsonKey(name: "is_split") required final bool isSplit,
      @JsonKey(name: "order_amount") required final SafetyNumber orderAmount,
      @JsonKey(name: "order_no") required final String orderNo,
      @JsonKey(name: "pay_type_name") required final String payTypeName,
      @JsonKey(name: "payment_amount")
      required final SafetyNumber paymentAmount,
      @JsonKey(name: "sale_bill_uuid") required final int saleBillUuid,
      @JsonKey(name: "sale_order_uuid") required final int saleOrderUuid,
      @JsonKey(name: "sale_orders")
      required final List<RespBillListsOrder> saleOrders,
      @JsonKey(name: "children_list")
      required final List<RespBillListsOrder> childrenList,
      @JsonKey(name: "serial_no") required final String serialNo,
      @JsonKey(name: "status") required final int status}) = _$TableListImpl;

  factory _TableList.fromJson(Map<String, dynamic> json) =
      _$TableListImpl.fromJson;

  @override
  @JsonKey(name: "bill_type")
  int get billType;
  @override
  @JsonKey(name: "consumer_uuids")
  String get consumerUuids;
  @override
  @JsonKey(name: "extra")
  Extra get extra;
  @override
  @JsonKey(name: "finish_time")
  int get finishTime;
  @override
  @JsonKey(name: "is_split")
  bool get isSplit;
  @override
  @JsonKey(name: "order_amount")
  SafetyNumber get orderAmount;
  @override
  @JsonKey(name: "order_no")
  String get orderNo;
  @override
  @JsonKey(name: "pay_type_name")
  String get payTypeName;
  @override
  @JsonKey(name: "payment_amount")
  SafetyNumber get paymentAmount;
  @override
  @JsonKey(name: "sale_bill_uuid")
  int get saleBillUuid;
  @override
  @JsonKey(name: "sale_order_uuid")
  int get saleOrderUuid;
  @override
  @JsonKey(name: "sale_orders")
  List<RespBillListsOrder> get saleOrders;
  @override
  @JsonKey(name: "children_list")
  List<RespBillListsOrder> get childrenList;
  @override
  @JsonKey(name: "serial_no")
  String get serialNo;
  @override
  @JsonKey(name: "status")
  int get status;

  /// Create a copy of TableList
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TableListImplCopyWith<_$TableListImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

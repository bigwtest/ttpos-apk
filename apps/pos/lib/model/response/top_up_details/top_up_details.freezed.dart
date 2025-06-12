// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'top_up_details.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TopUpDetails _$TopUpDetailsFromJson(Map<String, dynamic> json) {
  return _TopUpDetails.fromJson(json);
}

/// @nodoc
mixin _$TopUpDetails {
  @JsonKey(name: "amount")
  SafetyNumber get amount => throw _privateConstructorUsedError;
  @JsonKey(name: "amount")
  set amount(SafetyNumber value) => throw _privateConstructorUsedError;
  @JsonKey(name: "cashier")
  Cashier get cashier => throw _privateConstructorUsedError;
  @JsonKey(name: "cashier")
  set cashier(Cashier value) => throw _privateConstructorUsedError;
  @JsonKey(name: "charge_due")
  SafetyNumber get chargeDue => throw _privateConstructorUsedError;
  @JsonKey(name: "charge_due")
  set chargeDue(SafetyNumber value) => throw _privateConstructorUsedError;
  @JsonKey(name: "create_time")
  int get createTime => throw _privateConstructorUsedError;
  @JsonKey(name: "create_time")
  set createTime(int value) => throw _privateConstructorUsedError;
  @JsonKey(name: "extra")
  Extra get extra => throw _privateConstructorUsedError;
  @JsonKey(name: "extra")
  set extra(Extra value) => throw _privateConstructorUsedError;
  @JsonKey(name: "gift_amount")
  SafetyNumber get giftAmount => throw _privateConstructorUsedError;
  @JsonKey(name: "gift_amount")
  set giftAmount(SafetyNumber value) => throw _privateConstructorUsedError;
  @JsonKey(name: "gift_point")
  SafetyNumber get giftPoint => throw _privateConstructorUsedError;
  @JsonKey(name: "gift_point")
  set giftPoint(SafetyNumber value) => throw _privateConstructorUsedError;
  @JsonKey(name: "member")
  Member get member => throw _privateConstructorUsedError;
  @JsonKey(name: "member")
  set member(Member value) => throw _privateConstructorUsedError;
  @JsonKey(name: "operation_log")
  OperationLog get operationLog => throw _privateConstructorUsedError;
  @JsonKey(name: "operation_log")
  set operationLog(OperationLog value) => throw _privateConstructorUsedError;
  @JsonKey(name: "order_no")
  String get orderNo => throw _privateConstructorUsedError;
  @JsonKey(name: "order_no")
  set orderNo(String value) => throw _privateConstructorUsedError;
  @JsonKey(name: "payment_methods")
  List<RespRechargeOrderPaymentMethod> get paymentMethods =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "payment_methods")
  set paymentMethods(List<RespRechargeOrderPaymentMethod> value) =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "payment_time")
  int get paymentTime => throw _privateConstructorUsedError;
  @JsonKey(name: "payment_time")
  set paymentTime(int value) => throw _privateConstructorUsedError;
  @JsonKey(name: "recharge_amount")
  SafetyNumber get rechargeAmount => throw _privateConstructorUsedError;
  @JsonKey(name: "recharge_amount")
  set rechargeAmount(SafetyNumber value) => throw _privateConstructorUsedError;
  @JsonKey(name: "status")
  int get status => throw _privateConstructorUsedError;
  @JsonKey(name: "status")
  set status(int value) => throw _privateConstructorUsedError;
  @JsonKey(name: "uuid")
  int get uuid => throw _privateConstructorUsedError;
  @JsonKey(name: "uuid")
  set uuid(int value) => throw _privateConstructorUsedError;

  /// Serializes this TopUpDetails to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TopUpDetails
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TopUpDetailsCopyWith<TopUpDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TopUpDetailsCopyWith<$Res> {
  factory $TopUpDetailsCopyWith(
          TopUpDetails value, $Res Function(TopUpDetails) then) =
      _$TopUpDetailsCopyWithImpl<$Res, TopUpDetails>;
  @useResult
  $Res call(
      {@JsonKey(name: "amount") SafetyNumber amount,
      @JsonKey(name: "cashier") Cashier cashier,
      @JsonKey(name: "charge_due") SafetyNumber chargeDue,
      @JsonKey(name: "create_time") int createTime,
      @JsonKey(name: "extra") Extra extra,
      @JsonKey(name: "gift_amount") SafetyNumber giftAmount,
      @JsonKey(name: "gift_point") SafetyNumber giftPoint,
      @JsonKey(name: "member") Member member,
      @JsonKey(name: "operation_log") OperationLog operationLog,
      @JsonKey(name: "order_no") String orderNo,
      @JsonKey(name: "payment_methods")
      List<RespRechargeOrderPaymentMethod> paymentMethods,
      @JsonKey(name: "payment_time") int paymentTime,
      @JsonKey(name: "recharge_amount") SafetyNumber rechargeAmount,
      @JsonKey(name: "status") int status,
      @JsonKey(name: "uuid") int uuid});

  $SafetyNumberCopyWith<$Res> get amount;
  $CashierCopyWith<$Res> get cashier;
  $SafetyNumberCopyWith<$Res> get chargeDue;
  $ExtraCopyWith<$Res> get extra;
  $SafetyNumberCopyWith<$Res> get giftAmount;
  $SafetyNumberCopyWith<$Res> get giftPoint;
  $MemberCopyWith<$Res> get member;
  $OperationLogCopyWith<$Res> get operationLog;
  $SafetyNumberCopyWith<$Res> get rechargeAmount;
}

/// @nodoc
class _$TopUpDetailsCopyWithImpl<$Res, $Val extends TopUpDetails>
    implements $TopUpDetailsCopyWith<$Res> {
  _$TopUpDetailsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TopUpDetails
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? amount = null,
    Object? cashier = null,
    Object? chargeDue = null,
    Object? createTime = null,
    Object? extra = null,
    Object? giftAmount = null,
    Object? giftPoint = null,
    Object? member = null,
    Object? operationLog = null,
    Object? orderNo = null,
    Object? paymentMethods = null,
    Object? paymentTime = null,
    Object? rechargeAmount = null,
    Object? status = null,
    Object? uuid = null,
  }) {
    return _then(_value.copyWith(
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as SafetyNumber,
      cashier: null == cashier
          ? _value.cashier
          : cashier // ignore: cast_nullable_to_non_nullable
              as Cashier,
      chargeDue: null == chargeDue
          ? _value.chargeDue
          : chargeDue // ignore: cast_nullable_to_non_nullable
              as SafetyNumber,
      createTime: null == createTime
          ? _value.createTime
          : createTime // ignore: cast_nullable_to_non_nullable
              as int,
      extra: null == extra
          ? _value.extra
          : extra // ignore: cast_nullable_to_non_nullable
              as Extra,
      giftAmount: null == giftAmount
          ? _value.giftAmount
          : giftAmount // ignore: cast_nullable_to_non_nullable
              as SafetyNumber,
      giftPoint: null == giftPoint
          ? _value.giftPoint
          : giftPoint // ignore: cast_nullable_to_non_nullable
              as SafetyNumber,
      member: null == member
          ? _value.member
          : member // ignore: cast_nullable_to_non_nullable
              as Member,
      operationLog: null == operationLog
          ? _value.operationLog
          : operationLog // ignore: cast_nullable_to_non_nullable
              as OperationLog,
      orderNo: null == orderNo
          ? _value.orderNo
          : orderNo // ignore: cast_nullable_to_non_nullable
              as String,
      paymentMethods: null == paymentMethods
          ? _value.paymentMethods
          : paymentMethods // ignore: cast_nullable_to_non_nullable
              as List<RespRechargeOrderPaymentMethod>,
      paymentTime: null == paymentTime
          ? _value.paymentTime
          : paymentTime // ignore: cast_nullable_to_non_nullable
              as int,
      rechargeAmount: null == rechargeAmount
          ? _value.rechargeAmount
          : rechargeAmount // ignore: cast_nullable_to_non_nullable
              as SafetyNumber,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
      uuid: null == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }

  /// Create a copy of TopUpDetails
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SafetyNumberCopyWith<$Res> get amount {
    return $SafetyNumberCopyWith<$Res>(_value.amount, (value) {
      return _then(_value.copyWith(amount: value) as $Val);
    });
  }

  /// Create a copy of TopUpDetails
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CashierCopyWith<$Res> get cashier {
    return $CashierCopyWith<$Res>(_value.cashier, (value) {
      return _then(_value.copyWith(cashier: value) as $Val);
    });
  }

  /// Create a copy of TopUpDetails
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SafetyNumberCopyWith<$Res> get chargeDue {
    return $SafetyNumberCopyWith<$Res>(_value.chargeDue, (value) {
      return _then(_value.copyWith(chargeDue: value) as $Val);
    });
  }

  /// Create a copy of TopUpDetails
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ExtraCopyWith<$Res> get extra {
    return $ExtraCopyWith<$Res>(_value.extra, (value) {
      return _then(_value.copyWith(extra: value) as $Val);
    });
  }

  /// Create a copy of TopUpDetails
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SafetyNumberCopyWith<$Res> get giftAmount {
    return $SafetyNumberCopyWith<$Res>(_value.giftAmount, (value) {
      return _then(_value.copyWith(giftAmount: value) as $Val);
    });
  }

  /// Create a copy of TopUpDetails
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SafetyNumberCopyWith<$Res> get giftPoint {
    return $SafetyNumberCopyWith<$Res>(_value.giftPoint, (value) {
      return _then(_value.copyWith(giftPoint: value) as $Val);
    });
  }

  /// Create a copy of TopUpDetails
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MemberCopyWith<$Res> get member {
    return $MemberCopyWith<$Res>(_value.member, (value) {
      return _then(_value.copyWith(member: value) as $Val);
    });
  }

  /// Create a copy of TopUpDetails
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $OperationLogCopyWith<$Res> get operationLog {
    return $OperationLogCopyWith<$Res>(_value.operationLog, (value) {
      return _then(_value.copyWith(operationLog: value) as $Val);
    });
  }

  /// Create a copy of TopUpDetails
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SafetyNumberCopyWith<$Res> get rechargeAmount {
    return $SafetyNumberCopyWith<$Res>(_value.rechargeAmount, (value) {
      return _then(_value.copyWith(rechargeAmount: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TopUpDetailsImplCopyWith<$Res>
    implements $TopUpDetailsCopyWith<$Res> {
  factory _$$TopUpDetailsImplCopyWith(
          _$TopUpDetailsImpl value, $Res Function(_$TopUpDetailsImpl) then) =
      __$$TopUpDetailsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "amount") SafetyNumber amount,
      @JsonKey(name: "cashier") Cashier cashier,
      @JsonKey(name: "charge_due") SafetyNumber chargeDue,
      @JsonKey(name: "create_time") int createTime,
      @JsonKey(name: "extra") Extra extra,
      @JsonKey(name: "gift_amount") SafetyNumber giftAmount,
      @JsonKey(name: "gift_point") SafetyNumber giftPoint,
      @JsonKey(name: "member") Member member,
      @JsonKey(name: "operation_log") OperationLog operationLog,
      @JsonKey(name: "order_no") String orderNo,
      @JsonKey(name: "payment_methods")
      List<RespRechargeOrderPaymentMethod> paymentMethods,
      @JsonKey(name: "payment_time") int paymentTime,
      @JsonKey(name: "recharge_amount") SafetyNumber rechargeAmount,
      @JsonKey(name: "status") int status,
      @JsonKey(name: "uuid") int uuid});

  @override
  $SafetyNumberCopyWith<$Res> get amount;
  @override
  $CashierCopyWith<$Res> get cashier;
  @override
  $SafetyNumberCopyWith<$Res> get chargeDue;
  @override
  $ExtraCopyWith<$Res> get extra;
  @override
  $SafetyNumberCopyWith<$Res> get giftAmount;
  @override
  $SafetyNumberCopyWith<$Res> get giftPoint;
  @override
  $MemberCopyWith<$Res> get member;
  @override
  $OperationLogCopyWith<$Res> get operationLog;
  @override
  $SafetyNumberCopyWith<$Res> get rechargeAmount;
}

/// @nodoc
class __$$TopUpDetailsImplCopyWithImpl<$Res>
    extends _$TopUpDetailsCopyWithImpl<$Res, _$TopUpDetailsImpl>
    implements _$$TopUpDetailsImplCopyWith<$Res> {
  __$$TopUpDetailsImplCopyWithImpl(
      _$TopUpDetailsImpl _value, $Res Function(_$TopUpDetailsImpl) _then)
      : super(_value, _then);

  /// Create a copy of TopUpDetails
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? amount = null,
    Object? cashier = null,
    Object? chargeDue = null,
    Object? createTime = null,
    Object? extra = null,
    Object? giftAmount = null,
    Object? giftPoint = null,
    Object? member = null,
    Object? operationLog = null,
    Object? orderNo = null,
    Object? paymentMethods = null,
    Object? paymentTime = null,
    Object? rechargeAmount = null,
    Object? status = null,
    Object? uuid = null,
  }) {
    return _then(_$TopUpDetailsImpl(
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as SafetyNumber,
      cashier: null == cashier
          ? _value.cashier
          : cashier // ignore: cast_nullable_to_non_nullable
              as Cashier,
      chargeDue: null == chargeDue
          ? _value.chargeDue
          : chargeDue // ignore: cast_nullable_to_non_nullable
              as SafetyNumber,
      createTime: null == createTime
          ? _value.createTime
          : createTime // ignore: cast_nullable_to_non_nullable
              as int,
      extra: null == extra
          ? _value.extra
          : extra // ignore: cast_nullable_to_non_nullable
              as Extra,
      giftAmount: null == giftAmount
          ? _value.giftAmount
          : giftAmount // ignore: cast_nullable_to_non_nullable
              as SafetyNumber,
      giftPoint: null == giftPoint
          ? _value.giftPoint
          : giftPoint // ignore: cast_nullable_to_non_nullable
              as SafetyNumber,
      member: null == member
          ? _value.member
          : member // ignore: cast_nullable_to_non_nullable
              as Member,
      operationLog: null == operationLog
          ? _value.operationLog
          : operationLog // ignore: cast_nullable_to_non_nullable
              as OperationLog,
      orderNo: null == orderNo
          ? _value.orderNo
          : orderNo // ignore: cast_nullable_to_non_nullable
              as String,
      paymentMethods: null == paymentMethods
          ? _value.paymentMethods
          : paymentMethods // ignore: cast_nullable_to_non_nullable
              as List<RespRechargeOrderPaymentMethod>,
      paymentTime: null == paymentTime
          ? _value.paymentTime
          : paymentTime // ignore: cast_nullable_to_non_nullable
              as int,
      rechargeAmount: null == rechargeAmount
          ? _value.rechargeAmount
          : rechargeAmount // ignore: cast_nullable_to_non_nullable
              as SafetyNumber,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
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
class _$TopUpDetailsImpl implements _TopUpDetails {
  _$TopUpDetailsImpl(
      {@JsonKey(name: "amount") required this.amount,
      @JsonKey(name: "cashier") required this.cashier,
      @JsonKey(name: "charge_due") required this.chargeDue,
      @JsonKey(name: "create_time") required this.createTime,
      @JsonKey(name: "extra") required this.extra,
      @JsonKey(name: "gift_amount") required this.giftAmount,
      @JsonKey(name: "gift_point") required this.giftPoint,
      @JsonKey(name: "member") required this.member,
      @JsonKey(name: "operation_log") required this.operationLog,
      @JsonKey(name: "order_no") required this.orderNo,
      @JsonKey(name: "payment_methods") required this.paymentMethods,
      @JsonKey(name: "payment_time") required this.paymentTime,
      @JsonKey(name: "recharge_amount") required this.rechargeAmount,
      @JsonKey(name: "status") required this.status,
      @JsonKey(name: "uuid") required this.uuid});

  factory _$TopUpDetailsImpl.fromJson(Map<String, dynamic> json) =>
      _$$TopUpDetailsImplFromJson(json);

  @override
  @JsonKey(name: "amount")
  SafetyNumber amount;
  @override
  @JsonKey(name: "cashier")
  Cashier cashier;
  @override
  @JsonKey(name: "charge_due")
  SafetyNumber chargeDue;
  @override
  @JsonKey(name: "create_time")
  int createTime;
  @override
  @JsonKey(name: "extra")
  Extra extra;
  @override
  @JsonKey(name: "gift_amount")
  SafetyNumber giftAmount;
  @override
  @JsonKey(name: "gift_point")
  SafetyNumber giftPoint;
  @override
  @JsonKey(name: "member")
  Member member;
  @override
  @JsonKey(name: "operation_log")
  OperationLog operationLog;
  @override
  @JsonKey(name: "order_no")
  String orderNo;
  @override
  @JsonKey(name: "payment_methods")
  List<RespRechargeOrderPaymentMethod> paymentMethods;
  @override
  @JsonKey(name: "payment_time")
  int paymentTime;
  @override
  @JsonKey(name: "recharge_amount")
  SafetyNumber rechargeAmount;
  @override
  @JsonKey(name: "status")
  int status;
  @override
  @JsonKey(name: "uuid")
  int uuid;

  @override
  String toString() {
    return 'TopUpDetails(amount: $amount, cashier: $cashier, chargeDue: $chargeDue, createTime: $createTime, extra: $extra, giftAmount: $giftAmount, giftPoint: $giftPoint, member: $member, operationLog: $operationLog, orderNo: $orderNo, paymentMethods: $paymentMethods, paymentTime: $paymentTime, rechargeAmount: $rechargeAmount, status: $status, uuid: $uuid)';
  }

  /// Create a copy of TopUpDetails
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TopUpDetailsImplCopyWith<_$TopUpDetailsImpl> get copyWith =>
      __$$TopUpDetailsImplCopyWithImpl<_$TopUpDetailsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TopUpDetailsImplToJson(
      this,
    );
  }
}

abstract class _TopUpDetails implements TopUpDetails {
  factory _TopUpDetails(
      {@JsonKey(name: "amount") required SafetyNumber amount,
      @JsonKey(name: "cashier") required Cashier cashier,
      @JsonKey(name: "charge_due") required SafetyNumber chargeDue,
      @JsonKey(name: "create_time") required int createTime,
      @JsonKey(name: "extra") required Extra extra,
      @JsonKey(name: "gift_amount") required SafetyNumber giftAmount,
      @JsonKey(name: "gift_point") required SafetyNumber giftPoint,
      @JsonKey(name: "member") required Member member,
      @JsonKey(name: "operation_log") required OperationLog operationLog,
      @JsonKey(name: "order_no") required String orderNo,
      @JsonKey(name: "payment_methods")
      required List<RespRechargeOrderPaymentMethod> paymentMethods,
      @JsonKey(name: "payment_time") required int paymentTime,
      @JsonKey(name: "recharge_amount") required SafetyNumber rechargeAmount,
      @JsonKey(name: "status") required int status,
      @JsonKey(name: "uuid") required int uuid}) = _$TopUpDetailsImpl;

  factory _TopUpDetails.fromJson(Map<String, dynamic> json) =
      _$TopUpDetailsImpl.fromJson;

  @override
  @JsonKey(name: "amount")
  SafetyNumber get amount;
  @JsonKey(name: "amount")
  set amount(SafetyNumber value);
  @override
  @JsonKey(name: "cashier")
  Cashier get cashier;
  @JsonKey(name: "cashier")
  set cashier(Cashier value);
  @override
  @JsonKey(name: "charge_due")
  SafetyNumber get chargeDue;
  @JsonKey(name: "charge_due")
  set chargeDue(SafetyNumber value);
  @override
  @JsonKey(name: "create_time")
  int get createTime;
  @JsonKey(name: "create_time")
  set createTime(int value);
  @override
  @JsonKey(name: "extra")
  Extra get extra;
  @JsonKey(name: "extra")
  set extra(Extra value);
  @override
  @JsonKey(name: "gift_amount")
  SafetyNumber get giftAmount;
  @JsonKey(name: "gift_amount")
  set giftAmount(SafetyNumber value);
  @override
  @JsonKey(name: "gift_point")
  SafetyNumber get giftPoint;
  @JsonKey(name: "gift_point")
  set giftPoint(SafetyNumber value);
  @override
  @JsonKey(name: "member")
  Member get member;
  @JsonKey(name: "member")
  set member(Member value);
  @override
  @JsonKey(name: "operation_log")
  OperationLog get operationLog;
  @JsonKey(name: "operation_log")
  set operationLog(OperationLog value);
  @override
  @JsonKey(name: "order_no")
  String get orderNo;
  @JsonKey(name: "order_no")
  set orderNo(String value);
  @override
  @JsonKey(name: "payment_methods")
  List<RespRechargeOrderPaymentMethod> get paymentMethods;
  @JsonKey(name: "payment_methods")
  set paymentMethods(List<RespRechargeOrderPaymentMethod> value);
  @override
  @JsonKey(name: "payment_time")
  int get paymentTime;
  @JsonKey(name: "payment_time")
  set paymentTime(int value);
  @override
  @JsonKey(name: "recharge_amount")
  SafetyNumber get rechargeAmount;
  @JsonKey(name: "recharge_amount")
  set rechargeAmount(SafetyNumber value);
  @override
  @JsonKey(name: "status")
  int get status;
  @JsonKey(name: "status")
  set status(int value);
  @override
  @JsonKey(name: "uuid")
  int get uuid;
  @JsonKey(name: "uuid")
  set uuid(int value);

  /// Create a copy of TopUpDetails
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TopUpDetailsImplCopyWith<_$TopUpDetailsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

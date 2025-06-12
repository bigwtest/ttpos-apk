// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'log.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AcceptOperationLog _$AcceptOperationLogFromJson(Map<String, dynamic> json) {
  return _AcceptOperationLog.fromJson(json);
}

/// @nodoc
mixin _$AcceptOperationLog {
  @JsonKey(name: "create_time")
  int get createTime => throw _privateConstructorUsedError;
  @JsonKey(name: "description")
  String get description => throw _privateConstructorUsedError;
  @JsonKey(name: "pay_type")
  List<RespOrderOperationLogPaymentMethod> get payType =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "source")
  String get source => throw _privateConstructorUsedError;
  @JsonKey(name: "user_email")
  String get userEmail => throw _privateConstructorUsedError;
  @JsonKey(name: "user_name")
  String get userName => throw _privateConstructorUsedError;
  @JsonKey(name: "uuid")
  int get uuid => throw _privateConstructorUsedError;

  /// Serializes this AcceptOperationLog to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AcceptOperationLog
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AcceptOperationLogCopyWith<AcceptOperationLog> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AcceptOperationLogCopyWith<$Res> {
  factory $AcceptOperationLogCopyWith(
          AcceptOperationLog value, $Res Function(AcceptOperationLog) then) =
      _$AcceptOperationLogCopyWithImpl<$Res, AcceptOperationLog>;
  @useResult
  $Res call(
      {@JsonKey(name: "create_time") int createTime,
      @JsonKey(name: "description") String description,
      @JsonKey(name: "pay_type")
      List<RespOrderOperationLogPaymentMethod> payType,
      @JsonKey(name: "source") String source,
      @JsonKey(name: "user_email") String userEmail,
      @JsonKey(name: "user_name") String userName,
      @JsonKey(name: "uuid") int uuid});
}

/// @nodoc
class _$AcceptOperationLogCopyWithImpl<$Res, $Val extends AcceptOperationLog>
    implements $AcceptOperationLogCopyWith<$Res> {
  _$AcceptOperationLogCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AcceptOperationLog
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? createTime = null,
    Object? description = null,
    Object? payType = null,
    Object? source = null,
    Object? userEmail = null,
    Object? userName = null,
    Object? uuid = null,
  }) {
    return _then(_value.copyWith(
      createTime: null == createTime
          ? _value.createTime
          : createTime // ignore: cast_nullable_to_non_nullable
              as int,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      payType: null == payType
          ? _value.payType
          : payType // ignore: cast_nullable_to_non_nullable
              as List<RespOrderOperationLogPaymentMethod>,
      source: null == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as String,
      userEmail: null == userEmail
          ? _value.userEmail
          : userEmail // ignore: cast_nullable_to_non_nullable
              as String,
      userName: null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      uuid: null == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AcceptOperationLogImplCopyWith<$Res>
    implements $AcceptOperationLogCopyWith<$Res> {
  factory _$$AcceptOperationLogImplCopyWith(_$AcceptOperationLogImpl value,
          $Res Function(_$AcceptOperationLogImpl) then) =
      __$$AcceptOperationLogImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "create_time") int createTime,
      @JsonKey(name: "description") String description,
      @JsonKey(name: "pay_type")
      List<RespOrderOperationLogPaymentMethod> payType,
      @JsonKey(name: "source") String source,
      @JsonKey(name: "user_email") String userEmail,
      @JsonKey(name: "user_name") String userName,
      @JsonKey(name: "uuid") int uuid});
}

/// @nodoc
class __$$AcceptOperationLogImplCopyWithImpl<$Res>
    extends _$AcceptOperationLogCopyWithImpl<$Res, _$AcceptOperationLogImpl>
    implements _$$AcceptOperationLogImplCopyWith<$Res> {
  __$$AcceptOperationLogImplCopyWithImpl(_$AcceptOperationLogImpl _value,
      $Res Function(_$AcceptOperationLogImpl) _then)
      : super(_value, _then);

  /// Create a copy of AcceptOperationLog
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? createTime = null,
    Object? description = null,
    Object? payType = null,
    Object? source = null,
    Object? userEmail = null,
    Object? userName = null,
    Object? uuid = null,
  }) {
    return _then(_$AcceptOperationLogImpl(
      createTime: null == createTime
          ? _value.createTime
          : createTime // ignore: cast_nullable_to_non_nullable
              as int,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      payType: null == payType
          ? _value._payType
          : payType // ignore: cast_nullable_to_non_nullable
              as List<RespOrderOperationLogPaymentMethod>,
      source: null == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as String,
      userEmail: null == userEmail
          ? _value.userEmail
          : userEmail // ignore: cast_nullable_to_non_nullable
              as String,
      userName: null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      uuid: null == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AcceptOperationLogImpl implements _AcceptOperationLog {
  const _$AcceptOperationLogImpl(
      {@JsonKey(name: "create_time") required this.createTime,
      @JsonKey(name: "description") required this.description,
      @JsonKey(name: "pay_type")
      required final List<RespOrderOperationLogPaymentMethod> payType,
      @JsonKey(name: "source") required this.source,
      @JsonKey(name: "user_email") required this.userEmail,
      @JsonKey(name: "user_name") required this.userName,
      @JsonKey(name: "uuid") required this.uuid})
      : _payType = payType;

  factory _$AcceptOperationLogImpl.fromJson(Map<String, dynamic> json) =>
      _$$AcceptOperationLogImplFromJson(json);

  @override
  @JsonKey(name: "create_time")
  final int createTime;
  @override
  @JsonKey(name: "description")
  final String description;
  final List<RespOrderOperationLogPaymentMethod> _payType;
  @override
  @JsonKey(name: "pay_type")
  List<RespOrderOperationLogPaymentMethod> get payType {
    if (_payType is EqualUnmodifiableListView) return _payType;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_payType);
  }

  @override
  @JsonKey(name: "source")
  final String source;
  @override
  @JsonKey(name: "user_email")
  final String userEmail;
  @override
  @JsonKey(name: "user_name")
  final String userName;
  @override
  @JsonKey(name: "uuid")
  final int uuid;

  @override
  String toString() {
    return 'AcceptOperationLog(createTime: $createTime, description: $description, payType: $payType, source: $source, userEmail: $userEmail, userName: $userName, uuid: $uuid)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AcceptOperationLogImpl &&
            (identical(other.createTime, createTime) ||
                other.createTime == createTime) &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality().equals(other._payType, _payType) &&
            (identical(other.source, source) || other.source == source) &&
            (identical(other.userEmail, userEmail) ||
                other.userEmail == userEmail) &&
            (identical(other.userName, userName) ||
                other.userName == userName) &&
            (identical(other.uuid, uuid) || other.uuid == uuid));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      createTime,
      description,
      const DeepCollectionEquality().hash(_payType),
      source,
      userEmail,
      userName,
      uuid);

  /// Create a copy of AcceptOperationLog
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AcceptOperationLogImplCopyWith<_$AcceptOperationLogImpl> get copyWith =>
      __$$AcceptOperationLogImplCopyWithImpl<_$AcceptOperationLogImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AcceptOperationLogImplToJson(
      this,
    );
  }
}

abstract class _AcceptOperationLog implements AcceptOperationLog {
  const factory _AcceptOperationLog(
          {@JsonKey(name: "create_time") required final int createTime,
          @JsonKey(name: "description") required final String description,
          @JsonKey(name: "pay_type")
          required final List<RespOrderOperationLogPaymentMethod> payType,
          @JsonKey(name: "source") required final String source,
          @JsonKey(name: "user_email") required final String userEmail,
          @JsonKey(name: "user_name") required final String userName,
          @JsonKey(name: "uuid") required final int uuid}) =
      _$AcceptOperationLogImpl;

  factory _AcceptOperationLog.fromJson(Map<String, dynamic> json) =
      _$AcceptOperationLogImpl.fromJson;

  @override
  @JsonKey(name: "create_time")
  int get createTime;
  @override
  @JsonKey(name: "description")
  String get description;
  @override
  @JsonKey(name: "pay_type")
  List<RespOrderOperationLogPaymentMethod> get payType;
  @override
  @JsonKey(name: "source")
  String get source;
  @override
  @JsonKey(name: "user_email")
  String get userEmail;
  @override
  @JsonKey(name: "user_name")
  String get userName;
  @override
  @JsonKey(name: "uuid")
  int get uuid;

  /// Create a copy of AcceptOperationLog
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AcceptOperationLogImplCopyWith<_$AcceptOperationLogImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

RespOrderOperationLogPaymentMethod _$RespOrderOperationLogPaymentMethodFromJson(
    Map<String, dynamic> json) {
  return _RespOrderOperationLogPaymentMethod.fromJson(json);
}

/// @nodoc
mixin _$RespOrderOperationLogPaymentMethod {
  @JsonKey(name: "account_name")
  String get accountName => throw _privateConstructorUsedError;
  @JsonKey(name: "account_no")
  String get accountNo => throw _privateConstructorUsedError;
  @JsonKey(name: "bank_code")
  String get bankCode => throw _privateConstructorUsedError;
  @JsonKey(name: "name")
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: "payment_order_id")
  int get paymentOrderId => throw _privateConstructorUsedError;
  @JsonKey(name: "price")
  String get price => throw _privateConstructorUsedError;
  @JsonKey(name: "refund_money")
  String get refundMoney => throw _privateConstructorUsedError;
  @JsonKey(name: "refund_status")
  int get refundStatus => throw _privateConstructorUsedError;
  @JsonKey(name: "remark")
  String get remark => throw _privateConstructorUsedError;
  @JsonKey(name: "return_order_uuid")
  int get returnOrderUuid => throw _privateConstructorUsedError;
  @JsonKey(name: "unit")
  String get unit => throw _privateConstructorUsedError;
  @JsonKey(name: "value")
  int get value => throw _privateConstructorUsedError;

  /// Serializes this RespOrderOperationLogPaymentMethod to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RespOrderOperationLogPaymentMethod
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RespOrderOperationLogPaymentMethodCopyWith<
          RespOrderOperationLogPaymentMethod>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RespOrderOperationLogPaymentMethodCopyWith<$Res> {
  factory $RespOrderOperationLogPaymentMethodCopyWith(
          RespOrderOperationLogPaymentMethod value,
          $Res Function(RespOrderOperationLogPaymentMethod) then) =
      _$RespOrderOperationLogPaymentMethodCopyWithImpl<$Res,
          RespOrderOperationLogPaymentMethod>;
  @useResult
  $Res call(
      {@JsonKey(name: "account_name") String accountName,
      @JsonKey(name: "account_no") String accountNo,
      @JsonKey(name: "bank_code") String bankCode,
      @JsonKey(name: "name") String name,
      @JsonKey(name: "payment_order_id") int paymentOrderId,
      @JsonKey(name: "price") String price,
      @JsonKey(name: "refund_money") String refundMoney,
      @JsonKey(name: "refund_status") int refundStatus,
      @JsonKey(name: "remark") String remark,
      @JsonKey(name: "return_order_uuid") int returnOrderUuid,
      @JsonKey(name: "unit") String unit,
      @JsonKey(name: "value") int value});
}

/// @nodoc
class _$RespOrderOperationLogPaymentMethodCopyWithImpl<$Res,
        $Val extends RespOrderOperationLogPaymentMethod>
    implements $RespOrderOperationLogPaymentMethodCopyWith<$Res> {
  _$RespOrderOperationLogPaymentMethodCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RespOrderOperationLogPaymentMethod
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accountName = null,
    Object? accountNo = null,
    Object? bankCode = null,
    Object? name = null,
    Object? paymentOrderId = null,
    Object? price = null,
    Object? refundMoney = null,
    Object? refundStatus = null,
    Object? remark = null,
    Object? returnOrderUuid = null,
    Object? unit = null,
    Object? value = null,
  }) {
    return _then(_value.copyWith(
      accountName: null == accountName
          ? _value.accountName
          : accountName // ignore: cast_nullable_to_non_nullable
              as String,
      accountNo: null == accountNo
          ? _value.accountNo
          : accountNo // ignore: cast_nullable_to_non_nullable
              as String,
      bankCode: null == bankCode
          ? _value.bankCode
          : bankCode // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      paymentOrderId: null == paymentOrderId
          ? _value.paymentOrderId
          : paymentOrderId // ignore: cast_nullable_to_non_nullable
              as int,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String,
      refundMoney: null == refundMoney
          ? _value.refundMoney
          : refundMoney // ignore: cast_nullable_to_non_nullable
              as String,
      refundStatus: null == refundStatus
          ? _value.refundStatus
          : refundStatus // ignore: cast_nullable_to_non_nullable
              as int,
      remark: null == remark
          ? _value.remark
          : remark // ignore: cast_nullable_to_non_nullable
              as String,
      returnOrderUuid: null == returnOrderUuid
          ? _value.returnOrderUuid
          : returnOrderUuid // ignore: cast_nullable_to_non_nullable
              as int,
      unit: null == unit
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RespOrderOperationLogPaymentMethodImplCopyWith<$Res>
    implements $RespOrderOperationLogPaymentMethodCopyWith<$Res> {
  factory _$$RespOrderOperationLogPaymentMethodImplCopyWith(
          _$RespOrderOperationLogPaymentMethodImpl value,
          $Res Function(_$RespOrderOperationLogPaymentMethodImpl) then) =
      __$$RespOrderOperationLogPaymentMethodImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "account_name") String accountName,
      @JsonKey(name: "account_no") String accountNo,
      @JsonKey(name: "bank_code") String bankCode,
      @JsonKey(name: "name") String name,
      @JsonKey(name: "payment_order_id") int paymentOrderId,
      @JsonKey(name: "price") String price,
      @JsonKey(name: "refund_money") String refundMoney,
      @JsonKey(name: "refund_status") int refundStatus,
      @JsonKey(name: "remark") String remark,
      @JsonKey(name: "return_order_uuid") int returnOrderUuid,
      @JsonKey(name: "unit") String unit,
      @JsonKey(name: "value") int value});
}

/// @nodoc
class __$$RespOrderOperationLogPaymentMethodImplCopyWithImpl<$Res>
    extends _$RespOrderOperationLogPaymentMethodCopyWithImpl<$Res,
        _$RespOrderOperationLogPaymentMethodImpl>
    implements _$$RespOrderOperationLogPaymentMethodImplCopyWith<$Res> {
  __$$RespOrderOperationLogPaymentMethodImplCopyWithImpl(
      _$RespOrderOperationLogPaymentMethodImpl _value,
      $Res Function(_$RespOrderOperationLogPaymentMethodImpl) _then)
      : super(_value, _then);

  /// Create a copy of RespOrderOperationLogPaymentMethod
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accountName = null,
    Object? accountNo = null,
    Object? bankCode = null,
    Object? name = null,
    Object? paymentOrderId = null,
    Object? price = null,
    Object? refundMoney = null,
    Object? refundStatus = null,
    Object? remark = null,
    Object? returnOrderUuid = null,
    Object? unit = null,
    Object? value = null,
  }) {
    return _then(_$RespOrderOperationLogPaymentMethodImpl(
      accountName: null == accountName
          ? _value.accountName
          : accountName // ignore: cast_nullable_to_non_nullable
              as String,
      accountNo: null == accountNo
          ? _value.accountNo
          : accountNo // ignore: cast_nullable_to_non_nullable
              as String,
      bankCode: null == bankCode
          ? _value.bankCode
          : bankCode // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      paymentOrderId: null == paymentOrderId
          ? _value.paymentOrderId
          : paymentOrderId // ignore: cast_nullable_to_non_nullable
              as int,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String,
      refundMoney: null == refundMoney
          ? _value.refundMoney
          : refundMoney // ignore: cast_nullable_to_non_nullable
              as String,
      refundStatus: null == refundStatus
          ? _value.refundStatus
          : refundStatus // ignore: cast_nullable_to_non_nullable
              as int,
      remark: null == remark
          ? _value.remark
          : remark // ignore: cast_nullable_to_non_nullable
              as String,
      returnOrderUuid: null == returnOrderUuid
          ? _value.returnOrderUuid
          : returnOrderUuid // ignore: cast_nullable_to_non_nullable
              as int,
      unit: null == unit
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RespOrderOperationLogPaymentMethodImpl
    implements _RespOrderOperationLogPaymentMethod {
  const _$RespOrderOperationLogPaymentMethodImpl(
      {@JsonKey(name: "account_name") required this.accountName,
      @JsonKey(name: "account_no") required this.accountNo,
      @JsonKey(name: "bank_code") required this.bankCode,
      @JsonKey(name: "name") required this.name,
      @JsonKey(name: "payment_order_id") required this.paymentOrderId,
      @JsonKey(name: "price") required this.price,
      @JsonKey(name: "refund_money") required this.refundMoney,
      @JsonKey(name: "refund_status") required this.refundStatus,
      @JsonKey(name: "remark") required this.remark,
      @JsonKey(name: "return_order_uuid") required this.returnOrderUuid,
      @JsonKey(name: "unit") required this.unit,
      @JsonKey(name: "value") required this.value});

  factory _$RespOrderOperationLogPaymentMethodImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$RespOrderOperationLogPaymentMethodImplFromJson(json);

  @override
  @JsonKey(name: "account_name")
  final String accountName;
  @override
  @JsonKey(name: "account_no")
  final String accountNo;
  @override
  @JsonKey(name: "bank_code")
  final String bankCode;
  @override
  @JsonKey(name: "name")
  final String name;
  @override
  @JsonKey(name: "payment_order_id")
  final int paymentOrderId;
  @override
  @JsonKey(name: "price")
  final String price;
  @override
  @JsonKey(name: "refund_money")
  final String refundMoney;
  @override
  @JsonKey(name: "refund_status")
  final int refundStatus;
  @override
  @JsonKey(name: "remark")
  final String remark;
  @override
  @JsonKey(name: "return_order_uuid")
  final int returnOrderUuid;
  @override
  @JsonKey(name: "unit")
  final String unit;
  @override
  @JsonKey(name: "value")
  final int value;

  @override
  String toString() {
    return 'RespOrderOperationLogPaymentMethod(accountName: $accountName, accountNo: $accountNo, bankCode: $bankCode, name: $name, paymentOrderId: $paymentOrderId, price: $price, refundMoney: $refundMoney, refundStatus: $refundStatus, remark: $remark, returnOrderUuid: $returnOrderUuid, unit: $unit, value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RespOrderOperationLogPaymentMethodImpl &&
            (identical(other.accountName, accountName) ||
                other.accountName == accountName) &&
            (identical(other.accountNo, accountNo) ||
                other.accountNo == accountNo) &&
            (identical(other.bankCode, bankCode) ||
                other.bankCode == bankCode) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.paymentOrderId, paymentOrderId) ||
                other.paymentOrderId == paymentOrderId) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.refundMoney, refundMoney) ||
                other.refundMoney == refundMoney) &&
            (identical(other.refundStatus, refundStatus) ||
                other.refundStatus == refundStatus) &&
            (identical(other.remark, remark) || other.remark == remark) &&
            (identical(other.returnOrderUuid, returnOrderUuid) ||
                other.returnOrderUuid == returnOrderUuid) &&
            (identical(other.unit, unit) || other.unit == unit) &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      accountName,
      accountNo,
      bankCode,
      name,
      paymentOrderId,
      price,
      refundMoney,
      refundStatus,
      remark,
      returnOrderUuid,
      unit,
      value);

  /// Create a copy of RespOrderOperationLogPaymentMethod
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RespOrderOperationLogPaymentMethodImplCopyWith<
          _$RespOrderOperationLogPaymentMethodImpl>
      get copyWith => __$$RespOrderOperationLogPaymentMethodImplCopyWithImpl<
          _$RespOrderOperationLogPaymentMethodImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RespOrderOperationLogPaymentMethodImplToJson(
      this,
    );
  }
}

abstract class _RespOrderOperationLogPaymentMethod
    implements RespOrderOperationLogPaymentMethod {
  const factory _RespOrderOperationLogPaymentMethod(
      {@JsonKey(name: "account_name") required final String accountName,
      @JsonKey(name: "account_no") required final String accountNo,
      @JsonKey(name: "bank_code") required final String bankCode,
      @JsonKey(name: "name") required final String name,
      @JsonKey(name: "payment_order_id") required final int paymentOrderId,
      @JsonKey(name: "price") required final String price,
      @JsonKey(name: "refund_money") required final String refundMoney,
      @JsonKey(name: "refund_status") required final int refundStatus,
      @JsonKey(name: "remark") required final String remark,
      @JsonKey(name: "return_order_uuid") required final int returnOrderUuid,
      @JsonKey(name: "unit") required final String unit,
      @JsonKey(name: "value")
      required final int value}) = _$RespOrderOperationLogPaymentMethodImpl;

  factory _RespOrderOperationLogPaymentMethod.fromJson(
          Map<String, dynamic> json) =
      _$RespOrderOperationLogPaymentMethodImpl.fromJson;

  @override
  @JsonKey(name: "account_name")
  String get accountName;
  @override
  @JsonKey(name: "account_no")
  String get accountNo;
  @override
  @JsonKey(name: "bank_code")
  String get bankCode;
  @override
  @JsonKey(name: "name")
  String get name;
  @override
  @JsonKey(name: "payment_order_id")
  int get paymentOrderId;
  @override
  @JsonKey(name: "price")
  String get price;
  @override
  @JsonKey(name: "refund_money")
  String get refundMoney;
  @override
  @JsonKey(name: "refund_status")
  int get refundStatus;
  @override
  @JsonKey(name: "remark")
  String get remark;
  @override
  @JsonKey(name: "return_order_uuid")
  int get returnOrderUuid;
  @override
  @JsonKey(name: "unit")
  String get unit;
  @override
  @JsonKey(name: "value")
  int get value;

  /// Create a copy of RespOrderOperationLogPaymentMethod
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RespOrderOperationLogPaymentMethodImplCopyWith<
          _$RespOrderOperationLogPaymentMethodImpl>
      get copyWith => throw _privateConstructorUsedError;
}

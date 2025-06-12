// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'resp_recharge_order_refund_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RechargeOrderRefundInfo _$RechargeOrderRefundInfoFromJson(
    Map<String, dynamic> json) {
  return _RechargeOrderRefundInfo.fromJson(json);
}

/// @nodoc
mixin _$RechargeOrderRefundInfo {
  @JsonKey(name: "gift_amount")
  double get giftAmount => throw _privateConstructorUsedError;
  @JsonKey(name: "gift_amount")
  set giftAmount(double value) => throw _privateConstructorUsedError;
  @JsonKey(name: "gift_point")
  double get giftPoint => throw _privateConstructorUsedError;
  @JsonKey(name: "gift_point")
  set giftPoint(double value) => throw _privateConstructorUsedError;
  @JsonKey(name: "payment_records")
  List<RespRefundRechargeOrderPaymentRecord> get paymentRecords =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "payment_records")
  set paymentRecords(List<RespRefundRechargeOrderPaymentRecord> value) =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "recharge_amount")
  double get rechargeAmount => throw _privateConstructorUsedError;
  @JsonKey(name: "recharge_amount")
  set rechargeAmount(double value) => throw _privateConstructorUsedError;
  @JsonKey(name: "recharge_member_info")
  MemberInfo get rechargeMemberInfo => throw _privateConstructorUsedError;
  @JsonKey(name: "recharge_member_info")
  set rechargeMemberInfo(MemberInfo value) =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "refundable_amount")
  double get refundableAmount => throw _privateConstructorUsedError;
  @JsonKey(name: "refundable_amount")
  set refundableAmount(double value) => throw _privateConstructorUsedError;
  @JsonKey(name: "uuid")
  int get uuid => throw _privateConstructorUsedError;
  @JsonKey(name: "uuid")
  set uuid(int value) => throw _privateConstructorUsedError;

  /// Serializes this RechargeOrderRefundInfo to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RechargeOrderRefundInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RechargeOrderRefundInfoCopyWith<RechargeOrderRefundInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RechargeOrderRefundInfoCopyWith<$Res> {
  factory $RechargeOrderRefundInfoCopyWith(RechargeOrderRefundInfo value,
          $Res Function(RechargeOrderRefundInfo) then) =
      _$RechargeOrderRefundInfoCopyWithImpl<$Res, RechargeOrderRefundInfo>;
  @useResult
  $Res call(
      {@JsonKey(name: "gift_amount") double giftAmount,
      @JsonKey(name: "gift_point") double giftPoint,
      @JsonKey(name: "payment_records")
      List<RespRefundRechargeOrderPaymentRecord> paymentRecords,
      @JsonKey(name: "recharge_amount") double rechargeAmount,
      @JsonKey(name: "recharge_member_info") MemberInfo rechargeMemberInfo,
      @JsonKey(name: "refundable_amount") double refundableAmount,
      @JsonKey(name: "uuid") int uuid});

  $MemberInfoCopyWith<$Res> get rechargeMemberInfo;
}

/// @nodoc
class _$RechargeOrderRefundInfoCopyWithImpl<$Res,
        $Val extends RechargeOrderRefundInfo>
    implements $RechargeOrderRefundInfoCopyWith<$Res> {
  _$RechargeOrderRefundInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RechargeOrderRefundInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? giftAmount = null,
    Object? giftPoint = null,
    Object? paymentRecords = null,
    Object? rechargeAmount = null,
    Object? rechargeMemberInfo = null,
    Object? refundableAmount = null,
    Object? uuid = null,
  }) {
    return _then(_value.copyWith(
      giftAmount: null == giftAmount
          ? _value.giftAmount
          : giftAmount // ignore: cast_nullable_to_non_nullable
              as double,
      giftPoint: null == giftPoint
          ? _value.giftPoint
          : giftPoint // ignore: cast_nullable_to_non_nullable
              as double,
      paymentRecords: null == paymentRecords
          ? _value.paymentRecords
          : paymentRecords // ignore: cast_nullable_to_non_nullable
              as List<RespRefundRechargeOrderPaymentRecord>,
      rechargeAmount: null == rechargeAmount
          ? _value.rechargeAmount
          : rechargeAmount // ignore: cast_nullable_to_non_nullable
              as double,
      rechargeMemberInfo: null == rechargeMemberInfo
          ? _value.rechargeMemberInfo
          : rechargeMemberInfo // ignore: cast_nullable_to_non_nullable
              as MemberInfo,
      refundableAmount: null == refundableAmount
          ? _value.refundableAmount
          : refundableAmount // ignore: cast_nullable_to_non_nullable
              as double,
      uuid: null == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }

  /// Create a copy of RechargeOrderRefundInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MemberInfoCopyWith<$Res> get rechargeMemberInfo {
    return $MemberInfoCopyWith<$Res>(_value.rechargeMemberInfo, (value) {
      return _then(_value.copyWith(rechargeMemberInfo: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$RechargeOrderRefundInfoImplCopyWith<$Res>
    implements $RechargeOrderRefundInfoCopyWith<$Res> {
  factory _$$RechargeOrderRefundInfoImplCopyWith(
          _$RechargeOrderRefundInfoImpl value,
          $Res Function(_$RechargeOrderRefundInfoImpl) then) =
      __$$RechargeOrderRefundInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "gift_amount") double giftAmount,
      @JsonKey(name: "gift_point") double giftPoint,
      @JsonKey(name: "payment_records")
      List<RespRefundRechargeOrderPaymentRecord> paymentRecords,
      @JsonKey(name: "recharge_amount") double rechargeAmount,
      @JsonKey(name: "recharge_member_info") MemberInfo rechargeMemberInfo,
      @JsonKey(name: "refundable_amount") double refundableAmount,
      @JsonKey(name: "uuid") int uuid});

  @override
  $MemberInfoCopyWith<$Res> get rechargeMemberInfo;
}

/// @nodoc
class __$$RechargeOrderRefundInfoImplCopyWithImpl<$Res>
    extends _$RechargeOrderRefundInfoCopyWithImpl<$Res,
        _$RechargeOrderRefundInfoImpl>
    implements _$$RechargeOrderRefundInfoImplCopyWith<$Res> {
  __$$RechargeOrderRefundInfoImplCopyWithImpl(
      _$RechargeOrderRefundInfoImpl _value,
      $Res Function(_$RechargeOrderRefundInfoImpl) _then)
      : super(_value, _then);

  /// Create a copy of RechargeOrderRefundInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? giftAmount = null,
    Object? giftPoint = null,
    Object? paymentRecords = null,
    Object? rechargeAmount = null,
    Object? rechargeMemberInfo = null,
    Object? refundableAmount = null,
    Object? uuid = null,
  }) {
    return _then(_$RechargeOrderRefundInfoImpl(
      giftAmount: null == giftAmount
          ? _value.giftAmount
          : giftAmount // ignore: cast_nullable_to_non_nullable
              as double,
      giftPoint: null == giftPoint
          ? _value.giftPoint
          : giftPoint // ignore: cast_nullable_to_non_nullable
              as double,
      paymentRecords: null == paymentRecords
          ? _value.paymentRecords
          : paymentRecords // ignore: cast_nullable_to_non_nullable
              as List<RespRefundRechargeOrderPaymentRecord>,
      rechargeAmount: null == rechargeAmount
          ? _value.rechargeAmount
          : rechargeAmount // ignore: cast_nullable_to_non_nullable
              as double,
      rechargeMemberInfo: null == rechargeMemberInfo
          ? _value.rechargeMemberInfo
          : rechargeMemberInfo // ignore: cast_nullable_to_non_nullable
              as MemberInfo,
      refundableAmount: null == refundableAmount
          ? _value.refundableAmount
          : refundableAmount // ignore: cast_nullable_to_non_nullable
              as double,
      uuid: null == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RechargeOrderRefundInfoImpl implements _RechargeOrderRefundInfo {
  _$RechargeOrderRefundInfoImpl(
      {@JsonKey(name: "gift_amount") required this.giftAmount,
      @JsonKey(name: "gift_point") required this.giftPoint,
      @JsonKey(name: "payment_records") required this.paymentRecords,
      @JsonKey(name: "recharge_amount") required this.rechargeAmount,
      @JsonKey(name: "recharge_member_info") required this.rechargeMemberInfo,
      @JsonKey(name: "refundable_amount") required this.refundableAmount,
      @JsonKey(name: "uuid") required this.uuid});

  factory _$RechargeOrderRefundInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$RechargeOrderRefundInfoImplFromJson(json);

  @override
  @JsonKey(name: "gift_amount")
  double giftAmount;
  @override
  @JsonKey(name: "gift_point")
  double giftPoint;
  @override
  @JsonKey(name: "payment_records")
  List<RespRefundRechargeOrderPaymentRecord> paymentRecords;
  @override
  @JsonKey(name: "recharge_amount")
  double rechargeAmount;
  @override
  @JsonKey(name: "recharge_member_info")
  MemberInfo rechargeMemberInfo;
  @override
  @JsonKey(name: "refundable_amount")
  double refundableAmount;
  @override
  @JsonKey(name: "uuid")
  int uuid;

  @override
  String toString() {
    return 'RechargeOrderRefundInfo(giftAmount: $giftAmount, giftPoint: $giftPoint, paymentRecords: $paymentRecords, rechargeAmount: $rechargeAmount, rechargeMemberInfo: $rechargeMemberInfo, refundableAmount: $refundableAmount, uuid: $uuid)';
  }

  /// Create a copy of RechargeOrderRefundInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RechargeOrderRefundInfoImplCopyWith<_$RechargeOrderRefundInfoImpl>
      get copyWith => __$$RechargeOrderRefundInfoImplCopyWithImpl<
          _$RechargeOrderRefundInfoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RechargeOrderRefundInfoImplToJson(
      this,
    );
  }
}

abstract class _RechargeOrderRefundInfo implements RechargeOrderRefundInfo {
  factory _RechargeOrderRefundInfo(
          {@JsonKey(name: "gift_amount") required double giftAmount,
          @JsonKey(name: "gift_point") required double giftPoint,
          @JsonKey(name: "payment_records")
          required List<RespRefundRechargeOrderPaymentRecord> paymentRecords,
          @JsonKey(name: "recharge_amount") required double rechargeAmount,
          @JsonKey(name: "recharge_member_info")
          required MemberInfo rechargeMemberInfo,
          @JsonKey(name: "refundable_amount") required double refundableAmount,
          @JsonKey(name: "uuid") required int uuid}) =
      _$RechargeOrderRefundInfoImpl;

  factory _RechargeOrderRefundInfo.fromJson(Map<String, dynamic> json) =
      _$RechargeOrderRefundInfoImpl.fromJson;

  @override
  @JsonKey(name: "gift_amount")
  double get giftAmount;
  @JsonKey(name: "gift_amount")
  set giftAmount(double value);
  @override
  @JsonKey(name: "gift_point")
  double get giftPoint;
  @JsonKey(name: "gift_point")
  set giftPoint(double value);
  @override
  @JsonKey(name: "payment_records")
  List<RespRefundRechargeOrderPaymentRecord> get paymentRecords;
  @JsonKey(name: "payment_records")
  set paymentRecords(List<RespRefundRechargeOrderPaymentRecord> value);
  @override
  @JsonKey(name: "recharge_amount")
  double get rechargeAmount;
  @JsonKey(name: "recharge_amount")
  set rechargeAmount(double value);
  @override
  @JsonKey(name: "recharge_member_info")
  MemberInfo get rechargeMemberInfo;
  @JsonKey(name: "recharge_member_info")
  set rechargeMemberInfo(MemberInfo value);
  @override
  @JsonKey(name: "refundable_amount")
  double get refundableAmount;
  @JsonKey(name: "refundable_amount")
  set refundableAmount(double value);
  @override
  @JsonKey(name: "uuid")
  int get uuid;
  @JsonKey(name: "uuid")
  set uuid(int value);

  /// Create a copy of RechargeOrderRefundInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RechargeOrderRefundInfoImplCopyWith<_$RechargeOrderRefundInfoImpl>
      get copyWith => throw _privateConstructorUsedError;
}

RespRefundRechargeOrderPaymentRecord
    _$RespRefundRechargeOrderPaymentRecordFromJson(Map<String, dynamic> json) {
  return _RespRefundRechargeOrderPaymentRecord.fromJson(json);
}

/// @nodoc
mixin _$RespRefundRechargeOrderPaymentRecord {
  @JsonKey(name: "payment_amount")
  double get paymentAmount => throw _privateConstructorUsedError;
  @JsonKey(name: "payment_name")
  String get paymentName => throw _privateConstructorUsedError;
  @JsonKey(name: "refundable_amount")
  double get refundableAmount => throw _privateConstructorUsedError;

  /// Serializes this RespRefundRechargeOrderPaymentRecord to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RespRefundRechargeOrderPaymentRecord
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RespRefundRechargeOrderPaymentRecordCopyWith<
          RespRefundRechargeOrderPaymentRecord>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RespRefundRechargeOrderPaymentRecordCopyWith<$Res> {
  factory $RespRefundRechargeOrderPaymentRecordCopyWith(
          RespRefundRechargeOrderPaymentRecord value,
          $Res Function(RespRefundRechargeOrderPaymentRecord) then) =
      _$RespRefundRechargeOrderPaymentRecordCopyWithImpl<$Res,
          RespRefundRechargeOrderPaymentRecord>;
  @useResult
  $Res call(
      {@JsonKey(name: "payment_amount") double paymentAmount,
      @JsonKey(name: "payment_name") String paymentName,
      @JsonKey(name: "refundable_amount") double refundableAmount});
}

/// @nodoc
class _$RespRefundRechargeOrderPaymentRecordCopyWithImpl<$Res,
        $Val extends RespRefundRechargeOrderPaymentRecord>
    implements $RespRefundRechargeOrderPaymentRecordCopyWith<$Res> {
  _$RespRefundRechargeOrderPaymentRecordCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RespRefundRechargeOrderPaymentRecord
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? paymentAmount = null,
    Object? paymentName = null,
    Object? refundableAmount = null,
  }) {
    return _then(_value.copyWith(
      paymentAmount: null == paymentAmount
          ? _value.paymentAmount
          : paymentAmount // ignore: cast_nullable_to_non_nullable
              as double,
      paymentName: null == paymentName
          ? _value.paymentName
          : paymentName // ignore: cast_nullable_to_non_nullable
              as String,
      refundableAmount: null == refundableAmount
          ? _value.refundableAmount
          : refundableAmount // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RespRefundRechargeOrderPaymentRecordImplCopyWith<$Res>
    implements $RespRefundRechargeOrderPaymentRecordCopyWith<$Res> {
  factory _$$RespRefundRechargeOrderPaymentRecordImplCopyWith(
          _$RespRefundRechargeOrderPaymentRecordImpl value,
          $Res Function(_$RespRefundRechargeOrderPaymentRecordImpl) then) =
      __$$RespRefundRechargeOrderPaymentRecordImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "payment_amount") double paymentAmount,
      @JsonKey(name: "payment_name") String paymentName,
      @JsonKey(name: "refundable_amount") double refundableAmount});
}

/// @nodoc
class __$$RespRefundRechargeOrderPaymentRecordImplCopyWithImpl<$Res>
    extends _$RespRefundRechargeOrderPaymentRecordCopyWithImpl<$Res,
        _$RespRefundRechargeOrderPaymentRecordImpl>
    implements _$$RespRefundRechargeOrderPaymentRecordImplCopyWith<$Res> {
  __$$RespRefundRechargeOrderPaymentRecordImplCopyWithImpl(
      _$RespRefundRechargeOrderPaymentRecordImpl _value,
      $Res Function(_$RespRefundRechargeOrderPaymentRecordImpl) _then)
      : super(_value, _then);

  /// Create a copy of RespRefundRechargeOrderPaymentRecord
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? paymentAmount = null,
    Object? paymentName = null,
    Object? refundableAmount = null,
  }) {
    return _then(_$RespRefundRechargeOrderPaymentRecordImpl(
      paymentAmount: null == paymentAmount
          ? _value.paymentAmount
          : paymentAmount // ignore: cast_nullable_to_non_nullable
              as double,
      paymentName: null == paymentName
          ? _value.paymentName
          : paymentName // ignore: cast_nullable_to_non_nullable
              as String,
      refundableAmount: null == refundableAmount
          ? _value.refundableAmount
          : refundableAmount // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RespRefundRechargeOrderPaymentRecordImpl
    implements _RespRefundRechargeOrderPaymentRecord {
  const _$RespRefundRechargeOrderPaymentRecordImpl(
      {@JsonKey(name: "payment_amount") required this.paymentAmount,
      @JsonKey(name: "payment_name") required this.paymentName,
      @JsonKey(name: "refundable_amount") required this.refundableAmount});

  factory _$RespRefundRechargeOrderPaymentRecordImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$RespRefundRechargeOrderPaymentRecordImplFromJson(json);

  @override
  @JsonKey(name: "payment_amount")
  final double paymentAmount;
  @override
  @JsonKey(name: "payment_name")
  final String paymentName;
  @override
  @JsonKey(name: "refundable_amount")
  final double refundableAmount;

  @override
  String toString() {
    return 'RespRefundRechargeOrderPaymentRecord(paymentAmount: $paymentAmount, paymentName: $paymentName, refundableAmount: $refundableAmount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RespRefundRechargeOrderPaymentRecordImpl &&
            (identical(other.paymentAmount, paymentAmount) ||
                other.paymentAmount == paymentAmount) &&
            (identical(other.paymentName, paymentName) ||
                other.paymentName == paymentName) &&
            (identical(other.refundableAmount, refundableAmount) ||
                other.refundableAmount == refundableAmount));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, paymentAmount, paymentName, refundableAmount);

  /// Create a copy of RespRefundRechargeOrderPaymentRecord
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RespRefundRechargeOrderPaymentRecordImplCopyWith<
          _$RespRefundRechargeOrderPaymentRecordImpl>
      get copyWith => __$$RespRefundRechargeOrderPaymentRecordImplCopyWithImpl<
          _$RespRefundRechargeOrderPaymentRecordImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RespRefundRechargeOrderPaymentRecordImplToJson(
      this,
    );
  }
}

abstract class _RespRefundRechargeOrderPaymentRecord
    implements RespRefundRechargeOrderPaymentRecord {
  const factory _RespRefundRechargeOrderPaymentRecord(
          {@JsonKey(name: "payment_amount") required final double paymentAmount,
          @JsonKey(name: "payment_name") required final String paymentName,
          @JsonKey(name: "refundable_amount")
          required final double refundableAmount}) =
      _$RespRefundRechargeOrderPaymentRecordImpl;

  factory _RespRefundRechargeOrderPaymentRecord.fromJson(
          Map<String, dynamic> json) =
      _$RespRefundRechargeOrderPaymentRecordImpl.fromJson;

  @override
  @JsonKey(name: "payment_amount")
  double get paymentAmount;
  @override
  @JsonKey(name: "payment_name")
  String get paymentName;
  @override
  @JsonKey(name: "refundable_amount")
  double get refundableAmount;

  /// Create a copy of RespRefundRechargeOrderPaymentRecord
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RespRefundRechargeOrderPaymentRecordImplCopyWith<
          _$RespRefundRechargeOrderPaymentRecordImpl>
      get copyWith => throw _privateConstructorUsedError;
}

MemberInfo _$MemberInfoFromJson(Map<String, dynamic> json) {
  return _MemberInfo.fromJson(json);
}

/// @nodoc
mixin _$MemberInfo {
  @JsonKey(name: "balance")
  double get balance => throw _privateConstructorUsedError;
  @JsonKey(name: "gift_balance")
  double get giftBalance => throw _privateConstructorUsedError;
  @JsonKey(name: "points")
  double get points => throw _privateConstructorUsedError;

  /// Serializes this MemberInfo to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MemberInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MemberInfoCopyWith<MemberInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MemberInfoCopyWith<$Res> {
  factory $MemberInfoCopyWith(
          MemberInfo value, $Res Function(MemberInfo) then) =
      _$MemberInfoCopyWithImpl<$Res, MemberInfo>;
  @useResult
  $Res call(
      {@JsonKey(name: "balance") double balance,
      @JsonKey(name: "gift_balance") double giftBalance,
      @JsonKey(name: "points") double points});
}

/// @nodoc
class _$MemberInfoCopyWithImpl<$Res, $Val extends MemberInfo>
    implements $MemberInfoCopyWith<$Res> {
  _$MemberInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MemberInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? balance = null,
    Object? giftBalance = null,
    Object? points = null,
  }) {
    return _then(_value.copyWith(
      balance: null == balance
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as double,
      giftBalance: null == giftBalance
          ? _value.giftBalance
          : giftBalance // ignore: cast_nullable_to_non_nullable
              as double,
      points: null == points
          ? _value.points
          : points // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MemberInfoImplCopyWith<$Res>
    implements $MemberInfoCopyWith<$Res> {
  factory _$$MemberInfoImplCopyWith(
          _$MemberInfoImpl value, $Res Function(_$MemberInfoImpl) then) =
      __$$MemberInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "balance") double balance,
      @JsonKey(name: "gift_balance") double giftBalance,
      @JsonKey(name: "points") double points});
}

/// @nodoc
class __$$MemberInfoImplCopyWithImpl<$Res>
    extends _$MemberInfoCopyWithImpl<$Res, _$MemberInfoImpl>
    implements _$$MemberInfoImplCopyWith<$Res> {
  __$$MemberInfoImplCopyWithImpl(
      _$MemberInfoImpl _value, $Res Function(_$MemberInfoImpl) _then)
      : super(_value, _then);

  /// Create a copy of MemberInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? balance = null,
    Object? giftBalance = null,
    Object? points = null,
  }) {
    return _then(_$MemberInfoImpl(
      balance: null == balance
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as double,
      giftBalance: null == giftBalance
          ? _value.giftBalance
          : giftBalance // ignore: cast_nullable_to_non_nullable
              as double,
      points: null == points
          ? _value.points
          : points // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MemberInfoImpl implements _MemberInfo {
  const _$MemberInfoImpl(
      {@JsonKey(name: "balance") required this.balance,
      @JsonKey(name: "gift_balance") required this.giftBalance,
      @JsonKey(name: "points") required this.points});

  factory _$MemberInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$MemberInfoImplFromJson(json);

  @override
  @JsonKey(name: "balance")
  final double balance;
  @override
  @JsonKey(name: "gift_balance")
  final double giftBalance;
  @override
  @JsonKey(name: "points")
  final double points;

  @override
  String toString() {
    return 'MemberInfo(balance: $balance, giftBalance: $giftBalance, points: $points)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MemberInfoImpl &&
            (identical(other.balance, balance) || other.balance == balance) &&
            (identical(other.giftBalance, giftBalance) ||
                other.giftBalance == giftBalance) &&
            (identical(other.points, points) || other.points == points));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, balance, giftBalance, points);

  /// Create a copy of MemberInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MemberInfoImplCopyWith<_$MemberInfoImpl> get copyWith =>
      __$$MemberInfoImplCopyWithImpl<_$MemberInfoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MemberInfoImplToJson(
      this,
    );
  }
}

abstract class _MemberInfo implements MemberInfo {
  const factory _MemberInfo(
          {@JsonKey(name: "balance") required final double balance,
          @JsonKey(name: "gift_balance") required final double giftBalance,
          @JsonKey(name: "points") required final double points}) =
      _$MemberInfoImpl;

  factory _MemberInfo.fromJson(Map<String, dynamic> json) =
      _$MemberInfoImpl.fromJson;

  @override
  @JsonKey(name: "balance")
  double get balance;
  @override
  @JsonKey(name: "gift_balance")
  double get giftBalance;
  @override
  @JsonKey(name: "points")
  double get points;

  /// Create a copy of MemberInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MemberInfoImplCopyWith<_$MemberInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

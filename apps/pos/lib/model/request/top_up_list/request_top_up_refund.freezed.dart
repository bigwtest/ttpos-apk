// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'request_top_up_refund.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RequestTopUpRefund _$RequestTopUpRefundFromJson(Map<String, dynamic> json) {
  return _RequestTopUpRefund.fromJson(json);
}

/// @nodoc
mixin _$RequestTopUpRefund {
  @JsonKey(name: "account_name")
  String? get accountName => throw _privateConstructorUsedError;
  @JsonKey(name: "account_name")
  set accountName(String? value) => throw _privateConstructorUsedError;
  @JsonKey(name: "account_no")
  String? get accountNo => throw _privateConstructorUsedError;
  @JsonKey(name: "account_no")
  set accountNo(String? value) => throw _privateConstructorUsedError;
  @JsonKey(name: "bank_code")
  String? get bankCode => throw _privateConstructorUsedError;
  @JsonKey(name: "bank_code")
  set bankCode(String? value) => throw _privateConstructorUsedError;
  @JsonKey(name: "refund_money")
  double get refundMoney => throw _privateConstructorUsedError;
  @JsonKey(name: "refund_money")
  set refundMoney(double value) => throw _privateConstructorUsedError;
  @JsonKey(name: "refund_type")
  int get refundType => throw _privateConstructorUsedError;
  @JsonKey(name: "refund_type")
  set refundType(int value) => throw _privateConstructorUsedError;
  @JsonKey(name: "uuid")
  int get uuid => throw _privateConstructorUsedError;
  @JsonKey(name: "uuid")
  set uuid(int value) => throw _privateConstructorUsedError;

  /// Serializes this RequestTopUpRefund to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RequestTopUpRefund
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RequestTopUpRefundCopyWith<RequestTopUpRefund> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RequestTopUpRefundCopyWith<$Res> {
  factory $RequestTopUpRefundCopyWith(
          RequestTopUpRefund value, $Res Function(RequestTopUpRefund) then) =
      _$RequestTopUpRefundCopyWithImpl<$Res, RequestTopUpRefund>;
  @useResult
  $Res call(
      {@JsonKey(name: "account_name") String? accountName,
      @JsonKey(name: "account_no") String? accountNo,
      @JsonKey(name: "bank_code") String? bankCode,
      @JsonKey(name: "refund_money") double refundMoney,
      @JsonKey(name: "refund_type") int refundType,
      @JsonKey(name: "uuid") int uuid});
}

/// @nodoc
class _$RequestTopUpRefundCopyWithImpl<$Res, $Val extends RequestTopUpRefund>
    implements $RequestTopUpRefundCopyWith<$Res> {
  _$RequestTopUpRefundCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RequestTopUpRefund
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accountName = freezed,
    Object? accountNo = freezed,
    Object? bankCode = freezed,
    Object? refundMoney = null,
    Object? refundType = null,
    Object? uuid = null,
  }) {
    return _then(_value.copyWith(
      accountName: freezed == accountName
          ? _value.accountName
          : accountName // ignore: cast_nullable_to_non_nullable
              as String?,
      accountNo: freezed == accountNo
          ? _value.accountNo
          : accountNo // ignore: cast_nullable_to_non_nullable
              as String?,
      bankCode: freezed == bankCode
          ? _value.bankCode
          : bankCode // ignore: cast_nullable_to_non_nullable
              as String?,
      refundMoney: null == refundMoney
          ? _value.refundMoney
          : refundMoney // ignore: cast_nullable_to_non_nullable
              as double,
      refundType: null == refundType
          ? _value.refundType
          : refundType // ignore: cast_nullable_to_non_nullable
              as int,
      uuid: null == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RequestTopUpRefundImplCopyWith<$Res>
    implements $RequestTopUpRefundCopyWith<$Res> {
  factory _$$RequestTopUpRefundImplCopyWith(_$RequestTopUpRefundImpl value,
          $Res Function(_$RequestTopUpRefundImpl) then) =
      __$$RequestTopUpRefundImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "account_name") String? accountName,
      @JsonKey(name: "account_no") String? accountNo,
      @JsonKey(name: "bank_code") String? bankCode,
      @JsonKey(name: "refund_money") double refundMoney,
      @JsonKey(name: "refund_type") int refundType,
      @JsonKey(name: "uuid") int uuid});
}

/// @nodoc
class __$$RequestTopUpRefundImplCopyWithImpl<$Res>
    extends _$RequestTopUpRefundCopyWithImpl<$Res, _$RequestTopUpRefundImpl>
    implements _$$RequestTopUpRefundImplCopyWith<$Res> {
  __$$RequestTopUpRefundImplCopyWithImpl(_$RequestTopUpRefundImpl _value,
      $Res Function(_$RequestTopUpRefundImpl) _then)
      : super(_value, _then);

  /// Create a copy of RequestTopUpRefund
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accountName = freezed,
    Object? accountNo = freezed,
    Object? bankCode = freezed,
    Object? refundMoney = null,
    Object? refundType = null,
    Object? uuid = null,
  }) {
    return _then(_$RequestTopUpRefundImpl(
      accountName: freezed == accountName
          ? _value.accountName
          : accountName // ignore: cast_nullable_to_non_nullable
              as String?,
      accountNo: freezed == accountNo
          ? _value.accountNo
          : accountNo // ignore: cast_nullable_to_non_nullable
              as String?,
      bankCode: freezed == bankCode
          ? _value.bankCode
          : bankCode // ignore: cast_nullable_to_non_nullable
              as String?,
      refundMoney: null == refundMoney
          ? _value.refundMoney
          : refundMoney // ignore: cast_nullable_to_non_nullable
              as double,
      refundType: null == refundType
          ? _value.refundType
          : refundType // ignore: cast_nullable_to_non_nullable
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
class _$RequestTopUpRefundImpl implements _RequestTopUpRefund {
  _$RequestTopUpRefundImpl(
      {@JsonKey(name: "account_name") this.accountName,
      @JsonKey(name: "account_no") this.accountNo,
      @JsonKey(name: "bank_code") this.bankCode,
      @JsonKey(name: "refund_money") required this.refundMoney,
      @JsonKey(name: "refund_type") required this.refundType,
      @JsonKey(name: "uuid") required this.uuid});

  factory _$RequestTopUpRefundImpl.fromJson(Map<String, dynamic> json) =>
      _$$RequestTopUpRefundImplFromJson(json);

  @override
  @JsonKey(name: "account_name")
  String? accountName;
  @override
  @JsonKey(name: "account_no")
  String? accountNo;
  @override
  @JsonKey(name: "bank_code")
  String? bankCode;
  @override
  @JsonKey(name: "refund_money")
  double refundMoney;
  @override
  @JsonKey(name: "refund_type")
  int refundType;
  @override
  @JsonKey(name: "uuid")
  int uuid;

  @override
  String toString() {
    return 'RequestTopUpRefund(accountName: $accountName, accountNo: $accountNo, bankCode: $bankCode, refundMoney: $refundMoney, refundType: $refundType, uuid: $uuid)';
  }

  /// Create a copy of RequestTopUpRefund
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RequestTopUpRefundImplCopyWith<_$RequestTopUpRefundImpl> get copyWith =>
      __$$RequestTopUpRefundImplCopyWithImpl<_$RequestTopUpRefundImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RequestTopUpRefundImplToJson(
      this,
    );
  }
}

abstract class _RequestTopUpRefund implements RequestTopUpRefund {
  factory _RequestTopUpRefund(
      {@JsonKey(name: "account_name") String? accountName,
      @JsonKey(name: "account_no") String? accountNo,
      @JsonKey(name: "bank_code") String? bankCode,
      @JsonKey(name: "refund_money") required double refundMoney,
      @JsonKey(name: "refund_type") required int refundType,
      @JsonKey(name: "uuid") required int uuid}) = _$RequestTopUpRefundImpl;

  factory _RequestTopUpRefund.fromJson(Map<String, dynamic> json) =
      _$RequestTopUpRefundImpl.fromJson;

  @override
  @JsonKey(name: "account_name")
  String? get accountName;
  @JsonKey(name: "account_name")
  set accountName(String? value);
  @override
  @JsonKey(name: "account_no")
  String? get accountNo;
  @JsonKey(name: "account_no")
  set accountNo(String? value);
  @override
  @JsonKey(name: "bank_code")
  String? get bankCode;
  @JsonKey(name: "bank_code")
  set bankCode(String? value);
  @override
  @JsonKey(name: "refund_money")
  double get refundMoney;
  @JsonKey(name: "refund_money")
  set refundMoney(double value);
  @override
  @JsonKey(name: "refund_type")
  int get refundType;
  @JsonKey(name: "refund_type")
  set refundType(int value);
  @override
  @JsonKey(name: "uuid")
  int get uuid;
  @JsonKey(name: "uuid")
  set uuid(int value);

  /// Create a copy of RequestTopUpRefund
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RequestTopUpRefundImplCopyWith<_$RequestTopUpRefundImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'request_order_re_return.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RequestOrderReReturn _$RequestOrderReReturnFromJson(Map<String, dynamic> json) {
  return _RequestOrderReReturn.fromJson(json);
}

/// @nodoc
mixin _$RequestOrderReReturn {
  @JsonKey(name: "account_name")
  String? get accountName => throw _privateConstructorUsedError;
  @JsonKey(name: "account_no")
  String? get accountNo => throw _privateConstructorUsedError;
  @JsonKey(name: "bank_code")
  String? get bankCode => throw _privateConstructorUsedError;
  @JsonKey(name: "return_amount_uuid")
  int get returnAmountUuid => throw _privateConstructorUsedError;
  @JsonKey(name: "return_order_uuid")
  int get returnOrderUuid => throw _privateConstructorUsedError;

  /// Serializes this RequestOrderReReturn to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RequestOrderReReturn
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RequestOrderReReturnCopyWith<RequestOrderReReturn> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RequestOrderReReturnCopyWith<$Res> {
  factory $RequestOrderReReturnCopyWith(RequestOrderReReturn value,
          $Res Function(RequestOrderReReturn) then) =
      _$RequestOrderReReturnCopyWithImpl<$Res, RequestOrderReReturn>;
  @useResult
  $Res call(
      {@JsonKey(name: "account_name") String? accountName,
      @JsonKey(name: "account_no") String? accountNo,
      @JsonKey(name: "bank_code") String? bankCode,
      @JsonKey(name: "return_amount_uuid") int returnAmountUuid,
      @JsonKey(name: "return_order_uuid") int returnOrderUuid});
}

/// @nodoc
class _$RequestOrderReReturnCopyWithImpl<$Res,
        $Val extends RequestOrderReReturn>
    implements $RequestOrderReReturnCopyWith<$Res> {
  _$RequestOrderReReturnCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RequestOrderReReturn
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accountName = freezed,
    Object? accountNo = freezed,
    Object? bankCode = freezed,
    Object? returnAmountUuid = null,
    Object? returnOrderUuid = null,
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
      returnAmountUuid: null == returnAmountUuid
          ? _value.returnAmountUuid
          : returnAmountUuid // ignore: cast_nullable_to_non_nullable
              as int,
      returnOrderUuid: null == returnOrderUuid
          ? _value.returnOrderUuid
          : returnOrderUuid // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RequestOrderReReturnImplCopyWith<$Res>
    implements $RequestOrderReReturnCopyWith<$Res> {
  factory _$$RequestOrderReReturnImplCopyWith(_$RequestOrderReReturnImpl value,
          $Res Function(_$RequestOrderReReturnImpl) then) =
      __$$RequestOrderReReturnImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "account_name") String? accountName,
      @JsonKey(name: "account_no") String? accountNo,
      @JsonKey(name: "bank_code") String? bankCode,
      @JsonKey(name: "return_amount_uuid") int returnAmountUuid,
      @JsonKey(name: "return_order_uuid") int returnOrderUuid});
}

/// @nodoc
class __$$RequestOrderReReturnImplCopyWithImpl<$Res>
    extends _$RequestOrderReReturnCopyWithImpl<$Res, _$RequestOrderReReturnImpl>
    implements _$$RequestOrderReReturnImplCopyWith<$Res> {
  __$$RequestOrderReReturnImplCopyWithImpl(_$RequestOrderReReturnImpl _value,
      $Res Function(_$RequestOrderReReturnImpl) _then)
      : super(_value, _then);

  /// Create a copy of RequestOrderReReturn
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accountName = freezed,
    Object? accountNo = freezed,
    Object? bankCode = freezed,
    Object? returnAmountUuid = null,
    Object? returnOrderUuid = null,
  }) {
    return _then(_$RequestOrderReReturnImpl(
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
      returnAmountUuid: null == returnAmountUuid
          ? _value.returnAmountUuid
          : returnAmountUuid // ignore: cast_nullable_to_non_nullable
              as int,
      returnOrderUuid: null == returnOrderUuid
          ? _value.returnOrderUuid
          : returnOrderUuid // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RequestOrderReReturnImpl implements _RequestOrderReReturn {
  _$RequestOrderReReturnImpl(
      {@JsonKey(name: "account_name") this.accountName,
      @JsonKey(name: "account_no") this.accountNo,
      @JsonKey(name: "bank_code") this.bankCode,
      @JsonKey(name: "return_amount_uuid") required this.returnAmountUuid,
      @JsonKey(name: "return_order_uuid") required this.returnOrderUuid});

  factory _$RequestOrderReReturnImpl.fromJson(Map<String, dynamic> json) =>
      _$$RequestOrderReReturnImplFromJson(json);

  @override
  @JsonKey(name: "account_name")
  final String? accountName;
  @override
  @JsonKey(name: "account_no")
  final String? accountNo;
  @override
  @JsonKey(name: "bank_code")
  final String? bankCode;
  @override
  @JsonKey(name: "return_amount_uuid")
  final int returnAmountUuid;
  @override
  @JsonKey(name: "return_order_uuid")
  final int returnOrderUuid;

  @override
  String toString() {
    return 'RequestOrderReReturn(accountName: $accountName, accountNo: $accountNo, bankCode: $bankCode, returnAmountUuid: $returnAmountUuid, returnOrderUuid: $returnOrderUuid)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RequestOrderReReturnImpl &&
            (identical(other.accountName, accountName) ||
                other.accountName == accountName) &&
            (identical(other.accountNo, accountNo) ||
                other.accountNo == accountNo) &&
            (identical(other.bankCode, bankCode) ||
                other.bankCode == bankCode) &&
            (identical(other.returnAmountUuid, returnAmountUuid) ||
                other.returnAmountUuid == returnAmountUuid) &&
            (identical(other.returnOrderUuid, returnOrderUuid) ||
                other.returnOrderUuid == returnOrderUuid));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, accountName, accountNo, bankCode,
      returnAmountUuid, returnOrderUuid);

  /// Create a copy of RequestOrderReReturn
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RequestOrderReReturnImplCopyWith<_$RequestOrderReReturnImpl>
      get copyWith =>
          __$$RequestOrderReReturnImplCopyWithImpl<_$RequestOrderReReturnImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RequestOrderReReturnImplToJson(
      this,
    );
  }
}

abstract class _RequestOrderReReturn implements RequestOrderReReturn {
  factory _RequestOrderReReturn(
      {@JsonKey(name: "account_name") final String? accountName,
      @JsonKey(name: "account_no") final String? accountNo,
      @JsonKey(name: "bank_code") final String? bankCode,
      @JsonKey(name: "return_amount_uuid") required final int returnAmountUuid,
      @JsonKey(name: "return_order_uuid")
      required final int returnOrderUuid}) = _$RequestOrderReReturnImpl;

  factory _RequestOrderReReturn.fromJson(Map<String, dynamic> json) =
      _$RequestOrderReReturnImpl.fromJson;

  @override
  @JsonKey(name: "account_name")
  String? get accountName;
  @override
  @JsonKey(name: "account_no")
  String? get accountNo;
  @override
  @JsonKey(name: "bank_code")
  String? get bankCode;
  @override
  @JsonKey(name: "return_amount_uuid")
  int get returnAmountUuid;
  @override
  @JsonKey(name: "return_order_uuid")
  int get returnOrderUuid;

  /// Create a copy of RequestOrderReReturn
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RequestOrderReReturnImplCopyWith<_$RequestOrderReReturnImpl>
      get copyWith => throw _privateConstructorUsedError;
}

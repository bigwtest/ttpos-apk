// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'handover.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RespGetHandoverInfo _$RespGetHandoverInfoFromJson(Map<String, dynamic> json) {
  return _RespGetHandoverInfo.fromJson(json);
}

/// @nodoc
mixin _$RespGetHandoverInfo {
  @JsonKey(name: "current_cash_total")
  SafetyNumber get currentCashTotal => throw _privateConstructorUsedError;
  @JsonKey(name: "deposit_cash")
  SafetyNumber get depositCash => throw _privateConstructorUsedError;
  @JsonKey(name: "payment_method_income")
  PaymentMethodIncome get paymentMethodIncome =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "previous_shift_cash")
  SafetyNumber get previousShiftCash => throw _privateConstructorUsedError;
  @JsonKey(name: "refund_amount")
  SafetyNumber get refundAmount => throw _privateConstructorUsedError;
  @JsonKey(name: "withdraw_cash")
  SafetyNumber get withdrawCash => throw _privateConstructorUsedError;

  /// Serializes this RespGetHandoverInfo to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RespGetHandoverInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RespGetHandoverInfoCopyWith<RespGetHandoverInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RespGetHandoverInfoCopyWith<$Res> {
  factory $RespGetHandoverInfoCopyWith(
          RespGetHandoverInfo value, $Res Function(RespGetHandoverInfo) then) =
      _$RespGetHandoverInfoCopyWithImpl<$Res, RespGetHandoverInfo>;
  @useResult
  $Res call(
      {@JsonKey(name: "current_cash_total") SafetyNumber currentCashTotal,
      @JsonKey(name: "deposit_cash") SafetyNumber depositCash,
      @JsonKey(name: "payment_method_income")
      PaymentMethodIncome paymentMethodIncome,
      @JsonKey(name: "previous_shift_cash") SafetyNumber previousShiftCash,
      @JsonKey(name: "refund_amount") SafetyNumber refundAmount,
      @JsonKey(name: "withdraw_cash") SafetyNumber withdrawCash});

  $SafetyNumberCopyWith<$Res> get currentCashTotal;
  $SafetyNumberCopyWith<$Res> get depositCash;
  $PaymentMethodIncomeCopyWith<$Res> get paymentMethodIncome;
  $SafetyNumberCopyWith<$Res> get previousShiftCash;
  $SafetyNumberCopyWith<$Res> get refundAmount;
  $SafetyNumberCopyWith<$Res> get withdrawCash;
}

/// @nodoc
class _$RespGetHandoverInfoCopyWithImpl<$Res, $Val extends RespGetHandoverInfo>
    implements $RespGetHandoverInfoCopyWith<$Res> {
  _$RespGetHandoverInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RespGetHandoverInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentCashTotal = null,
    Object? depositCash = null,
    Object? paymentMethodIncome = null,
    Object? previousShiftCash = null,
    Object? refundAmount = null,
    Object? withdrawCash = null,
  }) {
    return _then(_value.copyWith(
      currentCashTotal: null == currentCashTotal
          ? _value.currentCashTotal
          : currentCashTotal // ignore: cast_nullable_to_non_nullable
              as SafetyNumber,
      depositCash: null == depositCash
          ? _value.depositCash
          : depositCash // ignore: cast_nullable_to_non_nullable
              as SafetyNumber,
      paymentMethodIncome: null == paymentMethodIncome
          ? _value.paymentMethodIncome
          : paymentMethodIncome // ignore: cast_nullable_to_non_nullable
              as PaymentMethodIncome,
      previousShiftCash: null == previousShiftCash
          ? _value.previousShiftCash
          : previousShiftCash // ignore: cast_nullable_to_non_nullable
              as SafetyNumber,
      refundAmount: null == refundAmount
          ? _value.refundAmount
          : refundAmount // ignore: cast_nullable_to_non_nullable
              as SafetyNumber,
      withdrawCash: null == withdrawCash
          ? _value.withdrawCash
          : withdrawCash // ignore: cast_nullable_to_non_nullable
              as SafetyNumber,
    ) as $Val);
  }

  /// Create a copy of RespGetHandoverInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SafetyNumberCopyWith<$Res> get currentCashTotal {
    return $SafetyNumberCopyWith<$Res>(_value.currentCashTotal, (value) {
      return _then(_value.copyWith(currentCashTotal: value) as $Val);
    });
  }

  /// Create a copy of RespGetHandoverInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SafetyNumberCopyWith<$Res> get depositCash {
    return $SafetyNumberCopyWith<$Res>(_value.depositCash, (value) {
      return _then(_value.copyWith(depositCash: value) as $Val);
    });
  }

  /// Create a copy of RespGetHandoverInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PaymentMethodIncomeCopyWith<$Res> get paymentMethodIncome {
    return $PaymentMethodIncomeCopyWith<$Res>(_value.paymentMethodIncome,
        (value) {
      return _then(_value.copyWith(paymentMethodIncome: value) as $Val);
    });
  }

  /// Create a copy of RespGetHandoverInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SafetyNumberCopyWith<$Res> get previousShiftCash {
    return $SafetyNumberCopyWith<$Res>(_value.previousShiftCash, (value) {
      return _then(_value.copyWith(previousShiftCash: value) as $Val);
    });
  }

  /// Create a copy of RespGetHandoverInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SafetyNumberCopyWith<$Res> get refundAmount {
    return $SafetyNumberCopyWith<$Res>(_value.refundAmount, (value) {
      return _then(_value.copyWith(refundAmount: value) as $Val);
    });
  }

  /// Create a copy of RespGetHandoverInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SafetyNumberCopyWith<$Res> get withdrawCash {
    return $SafetyNumberCopyWith<$Res>(_value.withdrawCash, (value) {
      return _then(_value.copyWith(withdrawCash: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$RespGetHandoverInfoImplCopyWith<$Res>
    implements $RespGetHandoverInfoCopyWith<$Res> {
  factory _$$RespGetHandoverInfoImplCopyWith(_$RespGetHandoverInfoImpl value,
          $Res Function(_$RespGetHandoverInfoImpl) then) =
      __$$RespGetHandoverInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "current_cash_total") SafetyNumber currentCashTotal,
      @JsonKey(name: "deposit_cash") SafetyNumber depositCash,
      @JsonKey(name: "payment_method_income")
      PaymentMethodIncome paymentMethodIncome,
      @JsonKey(name: "previous_shift_cash") SafetyNumber previousShiftCash,
      @JsonKey(name: "refund_amount") SafetyNumber refundAmount,
      @JsonKey(name: "withdraw_cash") SafetyNumber withdrawCash});

  @override
  $SafetyNumberCopyWith<$Res> get currentCashTotal;
  @override
  $SafetyNumberCopyWith<$Res> get depositCash;
  @override
  $PaymentMethodIncomeCopyWith<$Res> get paymentMethodIncome;
  @override
  $SafetyNumberCopyWith<$Res> get previousShiftCash;
  @override
  $SafetyNumberCopyWith<$Res> get refundAmount;
  @override
  $SafetyNumberCopyWith<$Res> get withdrawCash;
}

/// @nodoc
class __$$RespGetHandoverInfoImplCopyWithImpl<$Res>
    extends _$RespGetHandoverInfoCopyWithImpl<$Res, _$RespGetHandoverInfoImpl>
    implements _$$RespGetHandoverInfoImplCopyWith<$Res> {
  __$$RespGetHandoverInfoImplCopyWithImpl(_$RespGetHandoverInfoImpl _value,
      $Res Function(_$RespGetHandoverInfoImpl) _then)
      : super(_value, _then);

  /// Create a copy of RespGetHandoverInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentCashTotal = null,
    Object? depositCash = null,
    Object? paymentMethodIncome = null,
    Object? previousShiftCash = null,
    Object? refundAmount = null,
    Object? withdrawCash = null,
  }) {
    return _then(_$RespGetHandoverInfoImpl(
      currentCashTotal: null == currentCashTotal
          ? _value.currentCashTotal
          : currentCashTotal // ignore: cast_nullable_to_non_nullable
              as SafetyNumber,
      depositCash: null == depositCash
          ? _value.depositCash
          : depositCash // ignore: cast_nullable_to_non_nullable
              as SafetyNumber,
      paymentMethodIncome: null == paymentMethodIncome
          ? _value.paymentMethodIncome
          : paymentMethodIncome // ignore: cast_nullable_to_non_nullable
              as PaymentMethodIncome,
      previousShiftCash: null == previousShiftCash
          ? _value.previousShiftCash
          : previousShiftCash // ignore: cast_nullable_to_non_nullable
              as SafetyNumber,
      refundAmount: null == refundAmount
          ? _value.refundAmount
          : refundAmount // ignore: cast_nullable_to_non_nullable
              as SafetyNumber,
      withdrawCash: null == withdrawCash
          ? _value.withdrawCash
          : withdrawCash // ignore: cast_nullable_to_non_nullable
              as SafetyNumber,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RespGetHandoverInfoImpl implements _RespGetHandoverInfo {
  const _$RespGetHandoverInfoImpl(
      {@JsonKey(name: "current_cash_total") required this.currentCashTotal,
      @JsonKey(name: "deposit_cash") required this.depositCash,
      @JsonKey(name: "payment_method_income") required this.paymentMethodIncome,
      @JsonKey(name: "previous_shift_cash") required this.previousShiftCash,
      @JsonKey(name: "refund_amount") required this.refundAmount,
      @JsonKey(name: "withdraw_cash") required this.withdrawCash});

  factory _$RespGetHandoverInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$RespGetHandoverInfoImplFromJson(json);

  @override
  @JsonKey(name: "current_cash_total")
  final SafetyNumber currentCashTotal;
  @override
  @JsonKey(name: "deposit_cash")
  final SafetyNumber depositCash;
  @override
  @JsonKey(name: "payment_method_income")
  final PaymentMethodIncome paymentMethodIncome;
  @override
  @JsonKey(name: "previous_shift_cash")
  final SafetyNumber previousShiftCash;
  @override
  @JsonKey(name: "refund_amount")
  final SafetyNumber refundAmount;
  @override
  @JsonKey(name: "withdraw_cash")
  final SafetyNumber withdrawCash;

  @override
  String toString() {
    return 'RespGetHandoverInfo(currentCashTotal: $currentCashTotal, depositCash: $depositCash, paymentMethodIncome: $paymentMethodIncome, previousShiftCash: $previousShiftCash, refundAmount: $refundAmount, withdrawCash: $withdrawCash)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RespGetHandoverInfoImpl &&
            (identical(other.currentCashTotal, currentCashTotal) ||
                other.currentCashTotal == currentCashTotal) &&
            (identical(other.depositCash, depositCash) ||
                other.depositCash == depositCash) &&
            (identical(other.paymentMethodIncome, paymentMethodIncome) ||
                other.paymentMethodIncome == paymentMethodIncome) &&
            (identical(other.previousShiftCash, previousShiftCash) ||
                other.previousShiftCash == previousShiftCash) &&
            (identical(other.refundAmount, refundAmount) ||
                other.refundAmount == refundAmount) &&
            (identical(other.withdrawCash, withdrawCash) ||
                other.withdrawCash == withdrawCash));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, currentCashTotal, depositCash,
      paymentMethodIncome, previousShiftCash, refundAmount, withdrawCash);

  /// Create a copy of RespGetHandoverInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RespGetHandoverInfoImplCopyWith<_$RespGetHandoverInfoImpl> get copyWith =>
      __$$RespGetHandoverInfoImplCopyWithImpl<_$RespGetHandoverInfoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RespGetHandoverInfoImplToJson(
      this,
    );
  }
}

abstract class _RespGetHandoverInfo implements RespGetHandoverInfo {
  const factory _RespGetHandoverInfo(
      {@JsonKey(name: "current_cash_total")
      required final SafetyNumber currentCashTotal,
      @JsonKey(name: "deposit_cash") required final SafetyNumber depositCash,
      @JsonKey(name: "payment_method_income")
      required final PaymentMethodIncome paymentMethodIncome,
      @JsonKey(name: "previous_shift_cash")
      required final SafetyNumber previousShiftCash,
      @JsonKey(name: "refund_amount") required final SafetyNumber refundAmount,
      @JsonKey(name: "withdraw_cash")
      required final SafetyNumber withdrawCash}) = _$RespGetHandoverInfoImpl;

  factory _RespGetHandoverInfo.fromJson(Map<String, dynamic> json) =
      _$RespGetHandoverInfoImpl.fromJson;

  @override
  @JsonKey(name: "current_cash_total")
  SafetyNumber get currentCashTotal;
  @override
  @JsonKey(name: "deposit_cash")
  SafetyNumber get depositCash;
  @override
  @JsonKey(name: "payment_method_income")
  PaymentMethodIncome get paymentMethodIncome;
  @override
  @JsonKey(name: "previous_shift_cash")
  SafetyNumber get previousShiftCash;
  @override
  @JsonKey(name: "refund_amount")
  SafetyNumber get refundAmount;
  @override
  @JsonKey(name: "withdraw_cash")
  SafetyNumber get withdrawCash;

  /// Create a copy of RespGetHandoverInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RespGetHandoverInfoImplCopyWith<_$RespGetHandoverInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

RespPostHandoverInfo _$RespPostHandoverInfoFromJson(Map<String, dynamic> json) {
  return _RespPostHandoverInfo.fromJson(json);
}

/// @nodoc
mixin _$RespPostHandoverInfo {
  @JsonKey(name: "cash_income")
  SafetyNumber get cashIncome => throw _privateConstructorUsedError;
  @JsonKey(name: "cash_left")
  SafetyNumber get cashLeft => throw _privateConstructorUsedError;
  @JsonKey(name: "cash_taken_out")
  SafetyNumber get cashTakenOut => throw _privateConstructorUsedError;
  @JsonKey(name: "duty_no")
  String get dutyNo => throw _privateConstructorUsedError;
  @JsonKey(name: "printer_data")
  RespPrinterData get printerData => throw _privateConstructorUsedError;

  /// Serializes this RespPostHandoverInfo to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RespPostHandoverInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RespPostHandoverInfoCopyWith<RespPostHandoverInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RespPostHandoverInfoCopyWith<$Res> {
  factory $RespPostHandoverInfoCopyWith(RespPostHandoverInfo value,
          $Res Function(RespPostHandoverInfo) then) =
      _$RespPostHandoverInfoCopyWithImpl<$Res, RespPostHandoverInfo>;
  @useResult
  $Res call(
      {@JsonKey(name: "cash_income") SafetyNumber cashIncome,
      @JsonKey(name: "cash_left") SafetyNumber cashLeft,
      @JsonKey(name: "cash_taken_out") SafetyNumber cashTakenOut,
      @JsonKey(name: "duty_no") String dutyNo,
      @JsonKey(name: "printer_data") RespPrinterData printerData});

  $SafetyNumberCopyWith<$Res> get cashIncome;
  $SafetyNumberCopyWith<$Res> get cashLeft;
  $SafetyNumberCopyWith<$Res> get cashTakenOut;
  $RespPrinterDataCopyWith<$Res> get printerData;
}

/// @nodoc
class _$RespPostHandoverInfoCopyWithImpl<$Res,
        $Val extends RespPostHandoverInfo>
    implements $RespPostHandoverInfoCopyWith<$Res> {
  _$RespPostHandoverInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RespPostHandoverInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cashIncome = null,
    Object? cashLeft = null,
    Object? cashTakenOut = null,
    Object? dutyNo = null,
    Object? printerData = null,
  }) {
    return _then(_value.copyWith(
      cashIncome: null == cashIncome
          ? _value.cashIncome
          : cashIncome // ignore: cast_nullable_to_non_nullable
              as SafetyNumber,
      cashLeft: null == cashLeft
          ? _value.cashLeft
          : cashLeft // ignore: cast_nullable_to_non_nullable
              as SafetyNumber,
      cashTakenOut: null == cashTakenOut
          ? _value.cashTakenOut
          : cashTakenOut // ignore: cast_nullable_to_non_nullable
              as SafetyNumber,
      dutyNo: null == dutyNo
          ? _value.dutyNo
          : dutyNo // ignore: cast_nullable_to_non_nullable
              as String,
      printerData: null == printerData
          ? _value.printerData
          : printerData // ignore: cast_nullable_to_non_nullable
              as RespPrinterData,
    ) as $Val);
  }

  /// Create a copy of RespPostHandoverInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SafetyNumberCopyWith<$Res> get cashIncome {
    return $SafetyNumberCopyWith<$Res>(_value.cashIncome, (value) {
      return _then(_value.copyWith(cashIncome: value) as $Val);
    });
  }

  /// Create a copy of RespPostHandoverInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SafetyNumberCopyWith<$Res> get cashLeft {
    return $SafetyNumberCopyWith<$Res>(_value.cashLeft, (value) {
      return _then(_value.copyWith(cashLeft: value) as $Val);
    });
  }

  /// Create a copy of RespPostHandoverInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SafetyNumberCopyWith<$Res> get cashTakenOut {
    return $SafetyNumberCopyWith<$Res>(_value.cashTakenOut, (value) {
      return _then(_value.copyWith(cashTakenOut: value) as $Val);
    });
  }

  /// Create a copy of RespPostHandoverInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RespPrinterDataCopyWith<$Res> get printerData {
    return $RespPrinterDataCopyWith<$Res>(_value.printerData, (value) {
      return _then(_value.copyWith(printerData: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$RespPostHandoverInfoImplCopyWith<$Res>
    implements $RespPostHandoverInfoCopyWith<$Res> {
  factory _$$RespPostHandoverInfoImplCopyWith(_$RespPostHandoverInfoImpl value,
          $Res Function(_$RespPostHandoverInfoImpl) then) =
      __$$RespPostHandoverInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "cash_income") SafetyNumber cashIncome,
      @JsonKey(name: "cash_left") SafetyNumber cashLeft,
      @JsonKey(name: "cash_taken_out") SafetyNumber cashTakenOut,
      @JsonKey(name: "duty_no") String dutyNo,
      @JsonKey(name: "printer_data") RespPrinterData printerData});

  @override
  $SafetyNumberCopyWith<$Res> get cashIncome;
  @override
  $SafetyNumberCopyWith<$Res> get cashLeft;
  @override
  $SafetyNumberCopyWith<$Res> get cashTakenOut;
  @override
  $RespPrinterDataCopyWith<$Res> get printerData;
}

/// @nodoc
class __$$RespPostHandoverInfoImplCopyWithImpl<$Res>
    extends _$RespPostHandoverInfoCopyWithImpl<$Res, _$RespPostHandoverInfoImpl>
    implements _$$RespPostHandoverInfoImplCopyWith<$Res> {
  __$$RespPostHandoverInfoImplCopyWithImpl(_$RespPostHandoverInfoImpl _value,
      $Res Function(_$RespPostHandoverInfoImpl) _then)
      : super(_value, _then);

  /// Create a copy of RespPostHandoverInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cashIncome = null,
    Object? cashLeft = null,
    Object? cashTakenOut = null,
    Object? dutyNo = null,
    Object? printerData = null,
  }) {
    return _then(_$RespPostHandoverInfoImpl(
      cashIncome: null == cashIncome
          ? _value.cashIncome
          : cashIncome // ignore: cast_nullable_to_non_nullable
              as SafetyNumber,
      cashLeft: null == cashLeft
          ? _value.cashLeft
          : cashLeft // ignore: cast_nullable_to_non_nullable
              as SafetyNumber,
      cashTakenOut: null == cashTakenOut
          ? _value.cashTakenOut
          : cashTakenOut // ignore: cast_nullable_to_non_nullable
              as SafetyNumber,
      dutyNo: null == dutyNo
          ? _value.dutyNo
          : dutyNo // ignore: cast_nullable_to_non_nullable
              as String,
      printerData: null == printerData
          ? _value.printerData
          : printerData // ignore: cast_nullable_to_non_nullable
              as RespPrinterData,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RespPostHandoverInfoImpl implements _RespPostHandoverInfo {
  const _$RespPostHandoverInfoImpl(
      {@JsonKey(name: "cash_income") required this.cashIncome,
      @JsonKey(name: "cash_left") required this.cashLeft,
      @JsonKey(name: "cash_taken_out") required this.cashTakenOut,
      @JsonKey(name: "duty_no") required this.dutyNo,
      @JsonKey(name: "printer_data") required this.printerData});

  factory _$RespPostHandoverInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$RespPostHandoverInfoImplFromJson(json);

  @override
  @JsonKey(name: "cash_income")
  final SafetyNumber cashIncome;
  @override
  @JsonKey(name: "cash_left")
  final SafetyNumber cashLeft;
  @override
  @JsonKey(name: "cash_taken_out")
  final SafetyNumber cashTakenOut;
  @override
  @JsonKey(name: "duty_no")
  final String dutyNo;
  @override
  @JsonKey(name: "printer_data")
  final RespPrinterData printerData;

  @override
  String toString() {
    return 'RespPostHandoverInfo(cashIncome: $cashIncome, cashLeft: $cashLeft, cashTakenOut: $cashTakenOut, dutyNo: $dutyNo, printerData: $printerData)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RespPostHandoverInfoImpl &&
            (identical(other.cashIncome, cashIncome) ||
                other.cashIncome == cashIncome) &&
            (identical(other.cashLeft, cashLeft) ||
                other.cashLeft == cashLeft) &&
            (identical(other.cashTakenOut, cashTakenOut) ||
                other.cashTakenOut == cashTakenOut) &&
            (identical(other.dutyNo, dutyNo) || other.dutyNo == dutyNo) &&
            (identical(other.printerData, printerData) ||
                other.printerData == printerData));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, cashIncome, cashLeft, cashTakenOut, dutyNo, printerData);

  /// Create a copy of RespPostHandoverInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RespPostHandoverInfoImplCopyWith<_$RespPostHandoverInfoImpl>
      get copyWith =>
          __$$RespPostHandoverInfoImplCopyWithImpl<_$RespPostHandoverInfoImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RespPostHandoverInfoImplToJson(
      this,
    );
  }
}

abstract class _RespPostHandoverInfo implements RespPostHandoverInfo {
  const factory _RespPostHandoverInfo(
      {@JsonKey(name: "cash_income") required final SafetyNumber cashIncome,
      @JsonKey(name: "cash_left") required final SafetyNumber cashLeft,
      @JsonKey(name: "cash_taken_out") required final SafetyNumber cashTakenOut,
      @JsonKey(name: "duty_no") required final String dutyNo,
      @JsonKey(name: "printer_data")
      required final RespPrinterData printerData}) = _$RespPostHandoverInfoImpl;

  factory _RespPostHandoverInfo.fromJson(Map<String, dynamic> json) =
      _$RespPostHandoverInfoImpl.fromJson;

  @override
  @JsonKey(name: "cash_income")
  SafetyNumber get cashIncome;
  @override
  @JsonKey(name: "cash_left")
  SafetyNumber get cashLeft;
  @override
  @JsonKey(name: "cash_taken_out")
  SafetyNumber get cashTakenOut;
  @override
  @JsonKey(name: "duty_no")
  String get dutyNo;
  @override
  @JsonKey(name: "printer_data")
  RespPrinterData get printerData;

  /// Create a copy of RespPostHandoverInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RespPostHandoverInfoImplCopyWith<_$RespPostHandoverInfoImpl>
      get copyWith => throw _privateConstructorUsedError;
}

PaymentMethodIncome _$PaymentMethodIncomeFromJson(Map<String, dynamic> json) {
  return _PaymentMethodIncome.fromJson(json);
}

/// @nodoc
mixin _$PaymentMethodIncome {
  @JsonKey(name: "list")
  List<RespPaymentMethodIncome> get list => throw _privateConstructorUsedError;

  /// Serializes this PaymentMethodIncome to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PaymentMethodIncome
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PaymentMethodIncomeCopyWith<PaymentMethodIncome> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentMethodIncomeCopyWith<$Res> {
  factory $PaymentMethodIncomeCopyWith(
          PaymentMethodIncome value, $Res Function(PaymentMethodIncome) then) =
      _$PaymentMethodIncomeCopyWithImpl<$Res, PaymentMethodIncome>;
  @useResult
  $Res call({@JsonKey(name: "list") List<RespPaymentMethodIncome> list});
}

/// @nodoc
class _$PaymentMethodIncomeCopyWithImpl<$Res, $Val extends PaymentMethodIncome>
    implements $PaymentMethodIncomeCopyWith<$Res> {
  _$PaymentMethodIncomeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PaymentMethodIncome
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? list = null,
  }) {
    return _then(_value.copyWith(
      list: null == list
          ? _value.list
          : list // ignore: cast_nullable_to_non_nullable
              as List<RespPaymentMethodIncome>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PaymentMethodIncomeImplCopyWith<$Res>
    implements $PaymentMethodIncomeCopyWith<$Res> {
  factory _$$PaymentMethodIncomeImplCopyWith(_$PaymentMethodIncomeImpl value,
          $Res Function(_$PaymentMethodIncomeImpl) then) =
      __$$PaymentMethodIncomeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: "list") List<RespPaymentMethodIncome> list});
}

/// @nodoc
class __$$PaymentMethodIncomeImplCopyWithImpl<$Res>
    extends _$PaymentMethodIncomeCopyWithImpl<$Res, _$PaymentMethodIncomeImpl>
    implements _$$PaymentMethodIncomeImplCopyWith<$Res> {
  __$$PaymentMethodIncomeImplCopyWithImpl(_$PaymentMethodIncomeImpl _value,
      $Res Function(_$PaymentMethodIncomeImpl) _then)
      : super(_value, _then);

  /// Create a copy of PaymentMethodIncome
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? list = null,
  }) {
    return _then(_$PaymentMethodIncomeImpl(
      list: null == list
          ? _value._list
          : list // ignore: cast_nullable_to_non_nullable
              as List<RespPaymentMethodIncome>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PaymentMethodIncomeImpl implements _PaymentMethodIncome {
  const _$PaymentMethodIncomeImpl(
      {@JsonKey(name: "list")
      required final List<RespPaymentMethodIncome> list})
      : _list = list;

  factory _$PaymentMethodIncomeImpl.fromJson(Map<String, dynamic> json) =>
      _$$PaymentMethodIncomeImplFromJson(json);

  final List<RespPaymentMethodIncome> _list;
  @override
  @JsonKey(name: "list")
  List<RespPaymentMethodIncome> get list {
    if (_list is EqualUnmodifiableListView) return _list;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_list);
  }

  @override
  String toString() {
    return 'PaymentMethodIncome(list: $list)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaymentMethodIncomeImpl &&
            const DeepCollectionEquality().equals(other._list, _list));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_list));

  /// Create a copy of PaymentMethodIncome
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PaymentMethodIncomeImplCopyWith<_$PaymentMethodIncomeImpl> get copyWith =>
      __$$PaymentMethodIncomeImplCopyWithImpl<_$PaymentMethodIncomeImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PaymentMethodIncomeImplToJson(
      this,
    );
  }
}

abstract class _PaymentMethodIncome implements PaymentMethodIncome {
  const factory _PaymentMethodIncome(
          {@JsonKey(name: "list")
          required final List<RespPaymentMethodIncome> list}) =
      _$PaymentMethodIncomeImpl;

  factory _PaymentMethodIncome.fromJson(Map<String, dynamic> json) =
      _$PaymentMethodIncomeImpl.fromJson;

  @override
  @JsonKey(name: "list")
  List<RespPaymentMethodIncome> get list;

  /// Create a copy of PaymentMethodIncome
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PaymentMethodIncomeImplCopyWith<_$PaymentMethodIncomeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

RespPaymentMethodIncome _$RespPaymentMethodIncomeFromJson(
    Map<String, dynamic> json) {
  return _RespPaymentMethodIncome.fromJson(json);
}

/// @nodoc
mixin _$RespPaymentMethodIncome {
  @JsonKey(name: "amount")
  SafetyNumber get amount => throw _privateConstructorUsedError;
  @JsonKey(name: "name")
  String get name => throw _privateConstructorUsedError;

  /// Serializes this RespPaymentMethodIncome to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RespPaymentMethodIncome
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RespPaymentMethodIncomeCopyWith<RespPaymentMethodIncome> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RespPaymentMethodIncomeCopyWith<$Res> {
  factory $RespPaymentMethodIncomeCopyWith(RespPaymentMethodIncome value,
          $Res Function(RespPaymentMethodIncome) then) =
      _$RespPaymentMethodIncomeCopyWithImpl<$Res, RespPaymentMethodIncome>;
  @useResult
  $Res call(
      {@JsonKey(name: "amount") SafetyNumber amount,
      @JsonKey(name: "name") String name});

  $SafetyNumberCopyWith<$Res> get amount;
}

/// @nodoc
class _$RespPaymentMethodIncomeCopyWithImpl<$Res,
        $Val extends RespPaymentMethodIncome>
    implements $RespPaymentMethodIncomeCopyWith<$Res> {
  _$RespPaymentMethodIncomeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RespPaymentMethodIncome
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? amount = null,
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as SafetyNumber,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  /// Create a copy of RespPaymentMethodIncome
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SafetyNumberCopyWith<$Res> get amount {
    return $SafetyNumberCopyWith<$Res>(_value.amount, (value) {
      return _then(_value.copyWith(amount: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$RespPaymentMethodIncomeImplCopyWith<$Res>
    implements $RespPaymentMethodIncomeCopyWith<$Res> {
  factory _$$RespPaymentMethodIncomeImplCopyWith(
          _$RespPaymentMethodIncomeImpl value,
          $Res Function(_$RespPaymentMethodIncomeImpl) then) =
      __$$RespPaymentMethodIncomeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "amount") SafetyNumber amount,
      @JsonKey(name: "name") String name});

  @override
  $SafetyNumberCopyWith<$Res> get amount;
}

/// @nodoc
class __$$RespPaymentMethodIncomeImplCopyWithImpl<$Res>
    extends _$RespPaymentMethodIncomeCopyWithImpl<$Res,
        _$RespPaymentMethodIncomeImpl>
    implements _$$RespPaymentMethodIncomeImplCopyWith<$Res> {
  __$$RespPaymentMethodIncomeImplCopyWithImpl(
      _$RespPaymentMethodIncomeImpl _value,
      $Res Function(_$RespPaymentMethodIncomeImpl) _then)
      : super(_value, _then);

  /// Create a copy of RespPaymentMethodIncome
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? amount = null,
    Object? name = null,
  }) {
    return _then(_$RespPaymentMethodIncomeImpl(
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as SafetyNumber,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RespPaymentMethodIncomeImpl implements _RespPaymentMethodIncome {
  const _$RespPaymentMethodIncomeImpl(
      {@JsonKey(name: "amount") required this.amount,
      @JsonKey(name: "name") required this.name});

  factory _$RespPaymentMethodIncomeImpl.fromJson(Map<String, dynamic> json) =>
      _$$RespPaymentMethodIncomeImplFromJson(json);

  @override
  @JsonKey(name: "amount")
  final SafetyNumber amount;
  @override
  @JsonKey(name: "name")
  final String name;

  @override
  String toString() {
    return 'RespPaymentMethodIncome(amount: $amount, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RespPaymentMethodIncomeImpl &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, amount, name);

  /// Create a copy of RespPaymentMethodIncome
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RespPaymentMethodIncomeImplCopyWith<_$RespPaymentMethodIncomeImpl>
      get copyWith => __$$RespPaymentMethodIncomeImplCopyWithImpl<
          _$RespPaymentMethodIncomeImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RespPaymentMethodIncomeImplToJson(
      this,
    );
  }
}

abstract class _RespPaymentMethodIncome implements RespPaymentMethodIncome {
  const factory _RespPaymentMethodIncome(
          {@JsonKey(name: "amount") required final SafetyNumber amount,
          @JsonKey(name: "name") required final String name}) =
      _$RespPaymentMethodIncomeImpl;

  factory _RespPaymentMethodIncome.fromJson(Map<String, dynamic> json) =
      _$RespPaymentMethodIncomeImpl.fromJson;

  @override
  @JsonKey(name: "amount")
  SafetyNumber get amount;
  @override
  @JsonKey(name: "name")
  String get name;

  /// Create a copy of RespPaymentMethodIncome
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RespPaymentMethodIncomeImplCopyWith<_$RespPaymentMethodIncomeImpl>
      get copyWith => throw _privateConstructorUsedError;
}

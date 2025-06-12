// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'form.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RequestHandoverForm _$RequestHandoverFormFromJson(Map<String, dynamic> json) {
  return _RequestHandoverForm.fromJson(json);
}

/// @nodoc
mixin _$RequestHandoverForm {
  @JsonKey(name: "leave_cash")
  double get leaveCash => throw _privateConstructorUsedError;
  @JsonKey(name: "leave_cash")
  set leaveCash(double value) => throw _privateConstructorUsedError;
  @JsonKey(name: "withdraw_cash")
  double get withdrawCash => throw _privateConstructorUsedError;
  @JsonKey(name: "withdraw_cash")
  set withdrawCash(double value) => throw _privateConstructorUsedError;

  /// Serializes this RequestHandoverForm to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RequestHandoverForm
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RequestHandoverFormCopyWith<RequestHandoverForm> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RequestHandoverFormCopyWith<$Res> {
  factory $RequestHandoverFormCopyWith(
          RequestHandoverForm value, $Res Function(RequestHandoverForm) then) =
      _$RequestHandoverFormCopyWithImpl<$Res, RequestHandoverForm>;
  @useResult
  $Res call(
      {@JsonKey(name: "leave_cash") double leaveCash,
      @JsonKey(name: "withdraw_cash") double withdrawCash});
}

/// @nodoc
class _$RequestHandoverFormCopyWithImpl<$Res, $Val extends RequestHandoverForm>
    implements $RequestHandoverFormCopyWith<$Res> {
  _$RequestHandoverFormCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RequestHandoverForm
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? leaveCash = null,
    Object? withdrawCash = null,
  }) {
    return _then(_value.copyWith(
      leaveCash: null == leaveCash
          ? _value.leaveCash
          : leaveCash // ignore: cast_nullable_to_non_nullable
              as double,
      withdrawCash: null == withdrawCash
          ? _value.withdrawCash
          : withdrawCash // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RequestHandoverFormImplCopyWith<$Res>
    implements $RequestHandoverFormCopyWith<$Res> {
  factory _$$RequestHandoverFormImplCopyWith(_$RequestHandoverFormImpl value,
          $Res Function(_$RequestHandoverFormImpl) then) =
      __$$RequestHandoverFormImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "leave_cash") double leaveCash,
      @JsonKey(name: "withdraw_cash") double withdrawCash});
}

/// @nodoc
class __$$RequestHandoverFormImplCopyWithImpl<$Res>
    extends _$RequestHandoverFormCopyWithImpl<$Res, _$RequestHandoverFormImpl>
    implements _$$RequestHandoverFormImplCopyWith<$Res> {
  __$$RequestHandoverFormImplCopyWithImpl(_$RequestHandoverFormImpl _value,
      $Res Function(_$RequestHandoverFormImpl) _then)
      : super(_value, _then);

  /// Create a copy of RequestHandoverForm
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? leaveCash = null,
    Object? withdrawCash = null,
  }) {
    return _then(_$RequestHandoverFormImpl(
      leaveCash: null == leaveCash
          ? _value.leaveCash
          : leaveCash // ignore: cast_nullable_to_non_nullable
              as double,
      withdrawCash: null == withdrawCash
          ? _value.withdrawCash
          : withdrawCash // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RequestHandoverFormImpl implements _RequestHandoverForm {
  _$RequestHandoverFormImpl(
      {@JsonKey(name: "leave_cash") required this.leaveCash,
      @JsonKey(name: "withdraw_cash") required this.withdrawCash});

  factory _$RequestHandoverFormImpl.fromJson(Map<String, dynamic> json) =>
      _$$RequestHandoverFormImplFromJson(json);

  @override
  @JsonKey(name: "leave_cash")
  double leaveCash;
  @override
  @JsonKey(name: "withdraw_cash")
  double withdrawCash;

  @override
  String toString() {
    return 'RequestHandoverForm(leaveCash: $leaveCash, withdrawCash: $withdrawCash)';
  }

  /// Create a copy of RequestHandoverForm
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RequestHandoverFormImplCopyWith<_$RequestHandoverFormImpl> get copyWith =>
      __$$RequestHandoverFormImplCopyWithImpl<_$RequestHandoverFormImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RequestHandoverFormImplToJson(
      this,
    );
  }
}

abstract class _RequestHandoverForm implements RequestHandoverForm {
  factory _RequestHandoverForm(
          {@JsonKey(name: "leave_cash") required double leaveCash,
          @JsonKey(name: "withdraw_cash") required double withdrawCash}) =
      _$RequestHandoverFormImpl;

  factory _RequestHandoverForm.fromJson(Map<String, dynamic> json) =
      _$RequestHandoverFormImpl.fromJson;

  @override
  @JsonKey(name: "leave_cash")
  double get leaveCash;
  @JsonKey(name: "leave_cash")
  set leaveCash(double value);
  @override
  @JsonKey(name: "withdraw_cash")
  double get withdrawCash;
  @JsonKey(name: "withdraw_cash")
  set withdrawCash(double value);

  /// Create a copy of RequestHandoverForm
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RequestHandoverFormImplCopyWith<_$RequestHandoverFormImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

RequestHandoverPrintForm _$RequestHandoverPrintFormFromJson(
    Map<String, dynamic> json) {
  return _RequestHandoverPrintForm.fromJson(json);
}

/// @nodoc
mixin _$RequestHandoverPrintForm {
  @JsonKey(name: "leave_cash")
  double get leaveCash => throw _privateConstructorUsedError;
  @JsonKey(name: "leave_cash")
  set leaveCash(double value) => throw _privateConstructorUsedError;
  @JsonKey(name: "withdraw_cash")
  double get withdrawCash => throw _privateConstructorUsedError;
  @JsonKey(name: "withdraw_cash")
  set withdrawCash(double value) => throw _privateConstructorUsedError;
  @JsonKey(name: "duty_no")
  String get dutyNo => throw _privateConstructorUsedError;
  @JsonKey(name: "duty_no")
  set dutyNo(String value) => throw _privateConstructorUsedError;

  /// Serializes this RequestHandoverPrintForm to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RequestHandoverPrintForm
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RequestHandoverPrintFormCopyWith<RequestHandoverPrintForm> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RequestHandoverPrintFormCopyWith<$Res> {
  factory $RequestHandoverPrintFormCopyWith(RequestHandoverPrintForm value,
          $Res Function(RequestHandoverPrintForm) then) =
      _$RequestHandoverPrintFormCopyWithImpl<$Res, RequestHandoverPrintForm>;
  @useResult
  $Res call(
      {@JsonKey(name: "leave_cash") double leaveCash,
      @JsonKey(name: "withdraw_cash") double withdrawCash,
      @JsonKey(name: "duty_no") String dutyNo});
}

/// @nodoc
class _$RequestHandoverPrintFormCopyWithImpl<$Res,
        $Val extends RequestHandoverPrintForm>
    implements $RequestHandoverPrintFormCopyWith<$Res> {
  _$RequestHandoverPrintFormCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RequestHandoverPrintForm
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? leaveCash = null,
    Object? withdrawCash = null,
    Object? dutyNo = null,
  }) {
    return _then(_value.copyWith(
      leaveCash: null == leaveCash
          ? _value.leaveCash
          : leaveCash // ignore: cast_nullable_to_non_nullable
              as double,
      withdrawCash: null == withdrawCash
          ? _value.withdrawCash
          : withdrawCash // ignore: cast_nullable_to_non_nullable
              as double,
      dutyNo: null == dutyNo
          ? _value.dutyNo
          : dutyNo // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RequestHandoverPrintFormImplCopyWith<$Res>
    implements $RequestHandoverPrintFormCopyWith<$Res> {
  factory _$$RequestHandoverPrintFormImplCopyWith(
          _$RequestHandoverPrintFormImpl value,
          $Res Function(_$RequestHandoverPrintFormImpl) then) =
      __$$RequestHandoverPrintFormImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "leave_cash") double leaveCash,
      @JsonKey(name: "withdraw_cash") double withdrawCash,
      @JsonKey(name: "duty_no") String dutyNo});
}

/// @nodoc
class __$$RequestHandoverPrintFormImplCopyWithImpl<$Res>
    extends _$RequestHandoverPrintFormCopyWithImpl<$Res,
        _$RequestHandoverPrintFormImpl>
    implements _$$RequestHandoverPrintFormImplCopyWith<$Res> {
  __$$RequestHandoverPrintFormImplCopyWithImpl(
      _$RequestHandoverPrintFormImpl _value,
      $Res Function(_$RequestHandoverPrintFormImpl) _then)
      : super(_value, _then);

  /// Create a copy of RequestHandoverPrintForm
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? leaveCash = null,
    Object? withdrawCash = null,
    Object? dutyNo = null,
  }) {
    return _then(_$RequestHandoverPrintFormImpl(
      leaveCash: null == leaveCash
          ? _value.leaveCash
          : leaveCash // ignore: cast_nullable_to_non_nullable
              as double,
      withdrawCash: null == withdrawCash
          ? _value.withdrawCash
          : withdrawCash // ignore: cast_nullable_to_non_nullable
              as double,
      dutyNo: null == dutyNo
          ? _value.dutyNo
          : dutyNo // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RequestHandoverPrintFormImpl implements _RequestHandoverPrintForm {
  _$RequestHandoverPrintFormImpl(
      {@JsonKey(name: "leave_cash") required this.leaveCash,
      @JsonKey(name: "withdraw_cash") required this.withdrawCash,
      @JsonKey(name: "duty_no") required this.dutyNo});

  factory _$RequestHandoverPrintFormImpl.fromJson(Map<String, dynamic> json) =>
      _$$RequestHandoverPrintFormImplFromJson(json);

  @override
  @JsonKey(name: "leave_cash")
  double leaveCash;
  @override
  @JsonKey(name: "withdraw_cash")
  double withdrawCash;
  @override
  @JsonKey(name: "duty_no")
  String dutyNo;

  @override
  String toString() {
    return 'RequestHandoverPrintForm(leaveCash: $leaveCash, withdrawCash: $withdrawCash, dutyNo: $dutyNo)';
  }

  /// Create a copy of RequestHandoverPrintForm
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RequestHandoverPrintFormImplCopyWith<_$RequestHandoverPrintFormImpl>
      get copyWith => __$$RequestHandoverPrintFormImplCopyWithImpl<
          _$RequestHandoverPrintFormImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RequestHandoverPrintFormImplToJson(
      this,
    );
  }
}

abstract class _RequestHandoverPrintForm implements RequestHandoverPrintForm {
  factory _RequestHandoverPrintForm(
          {@JsonKey(name: "leave_cash") required double leaveCash,
          @JsonKey(name: "withdraw_cash") required double withdrawCash,
          @JsonKey(name: "duty_no") required String dutyNo}) =
      _$RequestHandoverPrintFormImpl;

  factory _RequestHandoverPrintForm.fromJson(Map<String, dynamic> json) =
      _$RequestHandoverPrintFormImpl.fromJson;

  @override
  @JsonKey(name: "leave_cash")
  double get leaveCash;
  @JsonKey(name: "leave_cash")
  set leaveCash(double value);
  @override
  @JsonKey(name: "withdraw_cash")
  double get withdrawCash;
  @JsonKey(name: "withdraw_cash")
  set withdrawCash(double value);
  @override
  @JsonKey(name: "duty_no")
  String get dutyNo;
  @JsonKey(name: "duty_no")
  set dutyNo(String value);

  /// Create a copy of RequestHandoverPrintForm
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RequestHandoverPrintFormImplCopyWith<_$RequestHandoverPrintFormImpl>
      get copyWith => throw _privateConstructorUsedError;
}

RequestDepositCashForm _$RequestDepositCashFormFromJson(
    Map<String, dynamic> json) {
  return _RequestDepositCashForm.fromJson(json);
}

/// @nodoc
mixin _$RequestDepositCashForm {
  @JsonKey(name: "deposit_cash")
  double get depositCash => throw _privateConstructorUsedError;
  @JsonKey(name: "deposit_cash")
  set depositCash(double value) => throw _privateConstructorUsedError;

  /// Serializes this RequestDepositCashForm to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RequestDepositCashForm
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RequestDepositCashFormCopyWith<RequestDepositCashForm> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RequestDepositCashFormCopyWith<$Res> {
  factory $RequestDepositCashFormCopyWith(RequestDepositCashForm value,
          $Res Function(RequestDepositCashForm) then) =
      _$RequestDepositCashFormCopyWithImpl<$Res, RequestDepositCashForm>;
  @useResult
  $Res call({@JsonKey(name: "deposit_cash") double depositCash});
}

/// @nodoc
class _$RequestDepositCashFormCopyWithImpl<$Res,
        $Val extends RequestDepositCashForm>
    implements $RequestDepositCashFormCopyWith<$Res> {
  _$RequestDepositCashFormCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RequestDepositCashForm
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? depositCash = null,
  }) {
    return _then(_value.copyWith(
      depositCash: null == depositCash
          ? _value.depositCash
          : depositCash // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RequestDepositCashFormImplCopyWith<$Res>
    implements $RequestDepositCashFormCopyWith<$Res> {
  factory _$$RequestDepositCashFormImplCopyWith(
          _$RequestDepositCashFormImpl value,
          $Res Function(_$RequestDepositCashFormImpl) then) =
      __$$RequestDepositCashFormImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: "deposit_cash") double depositCash});
}

/// @nodoc
class __$$RequestDepositCashFormImplCopyWithImpl<$Res>
    extends _$RequestDepositCashFormCopyWithImpl<$Res,
        _$RequestDepositCashFormImpl>
    implements _$$RequestDepositCashFormImplCopyWith<$Res> {
  __$$RequestDepositCashFormImplCopyWithImpl(
      _$RequestDepositCashFormImpl _value,
      $Res Function(_$RequestDepositCashFormImpl) _then)
      : super(_value, _then);

  /// Create a copy of RequestDepositCashForm
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? depositCash = null,
  }) {
    return _then(_$RequestDepositCashFormImpl(
      depositCash: null == depositCash
          ? _value.depositCash
          : depositCash // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RequestDepositCashFormImpl implements _RequestDepositCashForm {
  _$RequestDepositCashFormImpl(
      {@JsonKey(name: "deposit_cash") required this.depositCash});

  factory _$RequestDepositCashFormImpl.fromJson(Map<String, dynamic> json) =>
      _$$RequestDepositCashFormImplFromJson(json);

  @override
  @JsonKey(name: "deposit_cash")
  double depositCash;

  @override
  String toString() {
    return 'RequestDepositCashForm(depositCash: $depositCash)';
  }

  /// Create a copy of RequestDepositCashForm
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RequestDepositCashFormImplCopyWith<_$RequestDepositCashFormImpl>
      get copyWith => __$$RequestDepositCashFormImplCopyWithImpl<
          _$RequestDepositCashFormImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RequestDepositCashFormImplToJson(
      this,
    );
  }
}

abstract class _RequestDepositCashForm implements RequestDepositCashForm {
  factory _RequestDepositCashForm(
          {@JsonKey(name: "deposit_cash") required double depositCash}) =
      _$RequestDepositCashFormImpl;

  factory _RequestDepositCashForm.fromJson(Map<String, dynamic> json) =
      _$RequestDepositCashFormImpl.fromJson;

  @override
  @JsonKey(name: "deposit_cash")
  double get depositCash;
  @JsonKey(name: "deposit_cash")
  set depositCash(double value);

  /// Create a copy of RequestDepositCashForm
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RequestDepositCashFormImplCopyWith<_$RequestDepositCashFormImpl>
      get copyWith => throw _privateConstructorUsedError;
}

RequestWithdrawCashForm _$RequestWithdrawCashFormFromJson(
    Map<String, dynamic> json) {
  return _RequestWithdrawCashForm.fromJson(json);
}

/// @nodoc
mixin _$RequestWithdrawCashForm {
  @JsonKey(name: "withdraw_cash")
  double get withdrawCash => throw _privateConstructorUsedError;
  @JsonKey(name: "withdraw_cash")
  set withdrawCash(double value) => throw _privateConstructorUsedError;

  /// Serializes this RequestWithdrawCashForm to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RequestWithdrawCashForm
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RequestWithdrawCashFormCopyWith<RequestWithdrawCashForm> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RequestWithdrawCashFormCopyWith<$Res> {
  factory $RequestWithdrawCashFormCopyWith(RequestWithdrawCashForm value,
          $Res Function(RequestWithdrawCashForm) then) =
      _$RequestWithdrawCashFormCopyWithImpl<$Res, RequestWithdrawCashForm>;
  @useResult
  $Res call({@JsonKey(name: "withdraw_cash") double withdrawCash});
}

/// @nodoc
class _$RequestWithdrawCashFormCopyWithImpl<$Res,
        $Val extends RequestWithdrawCashForm>
    implements $RequestWithdrawCashFormCopyWith<$Res> {
  _$RequestWithdrawCashFormCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RequestWithdrawCashForm
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? withdrawCash = null,
  }) {
    return _then(_value.copyWith(
      withdrawCash: null == withdrawCash
          ? _value.withdrawCash
          : withdrawCash // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RequestWithdrawCashFormImplCopyWith<$Res>
    implements $RequestWithdrawCashFormCopyWith<$Res> {
  factory _$$RequestWithdrawCashFormImplCopyWith(
          _$RequestWithdrawCashFormImpl value,
          $Res Function(_$RequestWithdrawCashFormImpl) then) =
      __$$RequestWithdrawCashFormImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: "withdraw_cash") double withdrawCash});
}

/// @nodoc
class __$$RequestWithdrawCashFormImplCopyWithImpl<$Res>
    extends _$RequestWithdrawCashFormCopyWithImpl<$Res,
        _$RequestWithdrawCashFormImpl>
    implements _$$RequestWithdrawCashFormImplCopyWith<$Res> {
  __$$RequestWithdrawCashFormImplCopyWithImpl(
      _$RequestWithdrawCashFormImpl _value,
      $Res Function(_$RequestWithdrawCashFormImpl) _then)
      : super(_value, _then);

  /// Create a copy of RequestWithdrawCashForm
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? withdrawCash = null,
  }) {
    return _then(_$RequestWithdrawCashFormImpl(
      withdrawCash: null == withdrawCash
          ? _value.withdrawCash
          : withdrawCash // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RequestWithdrawCashFormImpl implements _RequestWithdrawCashForm {
  _$RequestWithdrawCashFormImpl(
      {@JsonKey(name: "withdraw_cash") required this.withdrawCash});

  factory _$RequestWithdrawCashFormImpl.fromJson(Map<String, dynamic> json) =>
      _$$RequestWithdrawCashFormImplFromJson(json);

  @override
  @JsonKey(name: "withdraw_cash")
  double withdrawCash;

  @override
  String toString() {
    return 'RequestWithdrawCashForm(withdrawCash: $withdrawCash)';
  }

  /// Create a copy of RequestWithdrawCashForm
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RequestWithdrawCashFormImplCopyWith<_$RequestWithdrawCashFormImpl>
      get copyWith => __$$RequestWithdrawCashFormImplCopyWithImpl<
          _$RequestWithdrawCashFormImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RequestWithdrawCashFormImplToJson(
      this,
    );
  }
}

abstract class _RequestWithdrawCashForm implements RequestWithdrawCashForm {
  factory _RequestWithdrawCashForm(
          {@JsonKey(name: "withdraw_cash") required double withdrawCash}) =
      _$RequestWithdrawCashFormImpl;

  factory _RequestWithdrawCashForm.fromJson(Map<String, dynamic> json) =
      _$RequestWithdrawCashFormImpl.fromJson;

  @override
  @JsonKey(name: "withdraw_cash")
  double get withdrawCash;
  @JsonKey(name: "withdraw_cash")
  set withdrawCash(double value);

  /// Create a copy of RequestWithdrawCashForm
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RequestWithdrawCashFormImplCopyWith<_$RequestWithdrawCashFormImpl>
      get copyWith => throw _privateConstructorUsedError;
}

RequestReportExceptionRemarkForm _$RequestReportExceptionRemarkFormFromJson(
    Map<String, dynamic> json) {
  return _RequestReportExceptionRemarkForm.fromJson(json);
}

/// @nodoc
mixin _$RequestReportExceptionRemarkForm {
  String get remark => throw _privateConstructorUsedError;
  set remark(String value) => throw _privateConstructorUsedError;

  /// Serializes this RequestReportExceptionRemarkForm to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RequestReportExceptionRemarkForm
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RequestReportExceptionRemarkFormCopyWith<RequestReportExceptionRemarkForm>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RequestReportExceptionRemarkFormCopyWith<$Res> {
  factory $RequestReportExceptionRemarkFormCopyWith(
          RequestReportExceptionRemarkForm value,
          $Res Function(RequestReportExceptionRemarkForm) then) =
      _$RequestReportExceptionRemarkFormCopyWithImpl<$Res,
          RequestReportExceptionRemarkForm>;
  @useResult
  $Res call({String remark});
}

/// @nodoc
class _$RequestReportExceptionRemarkFormCopyWithImpl<$Res,
        $Val extends RequestReportExceptionRemarkForm>
    implements $RequestReportExceptionRemarkFormCopyWith<$Res> {
  _$RequestReportExceptionRemarkFormCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RequestReportExceptionRemarkForm
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? remark = null,
  }) {
    return _then(_value.copyWith(
      remark: null == remark
          ? _value.remark
          : remark // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RequestReportExceptionRemarkFormImplCopyWith<$Res>
    implements $RequestReportExceptionRemarkFormCopyWith<$Res> {
  factory _$$RequestReportExceptionRemarkFormImplCopyWith(
          _$RequestReportExceptionRemarkFormImpl value,
          $Res Function(_$RequestReportExceptionRemarkFormImpl) then) =
      __$$RequestReportExceptionRemarkFormImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String remark});
}

/// @nodoc
class __$$RequestReportExceptionRemarkFormImplCopyWithImpl<$Res>
    extends _$RequestReportExceptionRemarkFormCopyWithImpl<$Res,
        _$RequestReportExceptionRemarkFormImpl>
    implements _$$RequestReportExceptionRemarkFormImplCopyWith<$Res> {
  __$$RequestReportExceptionRemarkFormImplCopyWithImpl(
      _$RequestReportExceptionRemarkFormImpl _value,
      $Res Function(_$RequestReportExceptionRemarkFormImpl) _then)
      : super(_value, _then);

  /// Create a copy of RequestReportExceptionRemarkForm
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? remark = null,
  }) {
    return _then(_$RequestReportExceptionRemarkFormImpl(
      remark: null == remark
          ? _value.remark
          : remark // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RequestReportExceptionRemarkFormImpl
    implements _RequestReportExceptionRemarkForm {
  _$RequestReportExceptionRemarkFormImpl({required this.remark});

  factory _$RequestReportExceptionRemarkFormImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$RequestReportExceptionRemarkFormImplFromJson(json);

  @override
  String remark;

  @override
  String toString() {
    return 'RequestReportExceptionRemarkForm(remark: $remark)';
  }

  /// Create a copy of RequestReportExceptionRemarkForm
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RequestReportExceptionRemarkFormImplCopyWith<
          _$RequestReportExceptionRemarkFormImpl>
      get copyWith => __$$RequestReportExceptionRemarkFormImplCopyWithImpl<
          _$RequestReportExceptionRemarkFormImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RequestReportExceptionRemarkFormImplToJson(
      this,
    );
  }
}

abstract class _RequestReportExceptionRemarkForm
    implements RequestReportExceptionRemarkForm {
  factory _RequestReportExceptionRemarkForm({required String remark}) =
      _$RequestReportExceptionRemarkFormImpl;

  factory _RequestReportExceptionRemarkForm.fromJson(
          Map<String, dynamic> json) =
      _$RequestReportExceptionRemarkFormImpl.fromJson;

  @override
  String get remark;
  set remark(String value);

  /// Create a copy of RequestReportExceptionRemarkForm
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RequestReportExceptionRemarkFormImplCopyWith<
          _$RequestReportExceptionRemarkFormImpl>
      get copyWith => throw _privateConstructorUsedError;
}

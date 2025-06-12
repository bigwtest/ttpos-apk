// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'resp_payment_statistics.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RespPaymentStatistics _$RespPaymentStatisticsFromJson(
    Map<String, dynamic> json) {
  return _RespPaymentStatistics.fromJson(json);
}

/// @nodoc
mixin _$RespPaymentStatistics {
  @JsonKey(name: "payment_method_incomes")
  List<BusinessDataRespPaymentMethodIncome> get paymentMethodIncomes =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "total_received_price")
  double get totalReceivedPrice => throw _privateConstructorUsedError;

  /// Serializes this RespPaymentStatistics to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RespPaymentStatistics
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RespPaymentStatisticsCopyWith<RespPaymentStatistics> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RespPaymentStatisticsCopyWith<$Res> {
  factory $RespPaymentStatisticsCopyWith(RespPaymentStatistics value,
          $Res Function(RespPaymentStatistics) then) =
      _$RespPaymentStatisticsCopyWithImpl<$Res, RespPaymentStatistics>;
  @useResult
  $Res call(
      {@JsonKey(name: "payment_method_incomes")
      List<BusinessDataRespPaymentMethodIncome> paymentMethodIncomes,
      @JsonKey(name: "total_received_price") double totalReceivedPrice});
}

/// @nodoc
class _$RespPaymentStatisticsCopyWithImpl<$Res,
        $Val extends RespPaymentStatistics>
    implements $RespPaymentStatisticsCopyWith<$Res> {
  _$RespPaymentStatisticsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RespPaymentStatistics
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? paymentMethodIncomes = null,
    Object? totalReceivedPrice = null,
  }) {
    return _then(_value.copyWith(
      paymentMethodIncomes: null == paymentMethodIncomes
          ? _value.paymentMethodIncomes
          : paymentMethodIncomes // ignore: cast_nullable_to_non_nullable
              as List<BusinessDataRespPaymentMethodIncome>,
      totalReceivedPrice: null == totalReceivedPrice
          ? _value.totalReceivedPrice
          : totalReceivedPrice // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RespPaymentStatisticsImplCopyWith<$Res>
    implements $RespPaymentStatisticsCopyWith<$Res> {
  factory _$$RespPaymentStatisticsImplCopyWith(
          _$RespPaymentStatisticsImpl value,
          $Res Function(_$RespPaymentStatisticsImpl) then) =
      __$$RespPaymentStatisticsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "payment_method_incomes")
      List<BusinessDataRespPaymentMethodIncome> paymentMethodIncomes,
      @JsonKey(name: "total_received_price") double totalReceivedPrice});
}

/// @nodoc
class __$$RespPaymentStatisticsImplCopyWithImpl<$Res>
    extends _$RespPaymentStatisticsCopyWithImpl<$Res,
        _$RespPaymentStatisticsImpl>
    implements _$$RespPaymentStatisticsImplCopyWith<$Res> {
  __$$RespPaymentStatisticsImplCopyWithImpl(_$RespPaymentStatisticsImpl _value,
      $Res Function(_$RespPaymentStatisticsImpl) _then)
      : super(_value, _then);

  /// Create a copy of RespPaymentStatistics
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? paymentMethodIncomes = null,
    Object? totalReceivedPrice = null,
  }) {
    return _then(_$RespPaymentStatisticsImpl(
      paymentMethodIncomes: null == paymentMethodIncomes
          ? _value._paymentMethodIncomes
          : paymentMethodIncomes // ignore: cast_nullable_to_non_nullable
              as List<BusinessDataRespPaymentMethodIncome>,
      totalReceivedPrice: null == totalReceivedPrice
          ? _value.totalReceivedPrice
          : totalReceivedPrice // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RespPaymentStatisticsImpl implements _RespPaymentStatistics {
  _$RespPaymentStatisticsImpl(
      {@JsonKey(name: "payment_method_incomes")
      required final List<BusinessDataRespPaymentMethodIncome>
          paymentMethodIncomes,
      @JsonKey(name: "total_received_price") required this.totalReceivedPrice})
      : _paymentMethodIncomes = paymentMethodIncomes;

  factory _$RespPaymentStatisticsImpl.fromJson(Map<String, dynamic> json) =>
      _$$RespPaymentStatisticsImplFromJson(json);

  final List<BusinessDataRespPaymentMethodIncome> _paymentMethodIncomes;
  @override
  @JsonKey(name: "payment_method_incomes")
  List<BusinessDataRespPaymentMethodIncome> get paymentMethodIncomes {
    if (_paymentMethodIncomes is EqualUnmodifiableListView)
      return _paymentMethodIncomes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_paymentMethodIncomes);
  }

  @override
  @JsonKey(name: "total_received_price")
  final double totalReceivedPrice;

  @override
  String toString() {
    return 'RespPaymentStatistics(paymentMethodIncomes: $paymentMethodIncomes, totalReceivedPrice: $totalReceivedPrice)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RespPaymentStatisticsImpl &&
            const DeepCollectionEquality()
                .equals(other._paymentMethodIncomes, _paymentMethodIncomes) &&
            (identical(other.totalReceivedPrice, totalReceivedPrice) ||
                other.totalReceivedPrice == totalReceivedPrice));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_paymentMethodIncomes),
      totalReceivedPrice);

  /// Create a copy of RespPaymentStatistics
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RespPaymentStatisticsImplCopyWith<_$RespPaymentStatisticsImpl>
      get copyWith => __$$RespPaymentStatisticsImplCopyWithImpl<
          _$RespPaymentStatisticsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RespPaymentStatisticsImplToJson(
      this,
    );
  }
}

abstract class _RespPaymentStatistics implements RespPaymentStatistics {
  factory _RespPaymentStatistics(
      {@JsonKey(name: "payment_method_incomes")
      required final List<BusinessDataRespPaymentMethodIncome>
          paymentMethodIncomes,
      @JsonKey(name: "total_received_price")
      required final double totalReceivedPrice}) = _$RespPaymentStatisticsImpl;

  factory _RespPaymentStatistics.fromJson(Map<String, dynamic> json) =
      _$RespPaymentStatisticsImpl.fromJson;

  @override
  @JsonKey(name: "payment_method_incomes")
  List<BusinessDataRespPaymentMethodIncome> get paymentMethodIncomes;
  @override
  @JsonKey(name: "total_received_price")
  double get totalReceivedPrice;

  /// Create a copy of RespPaymentStatistics
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RespPaymentStatisticsImplCopyWith<_$RespPaymentStatisticsImpl>
      get copyWith => throw _privateConstructorUsedError;
}

BusinessDataRespPaymentMethodIncome
    _$BusinessDataRespPaymentMethodIncomeFromJson(Map<String, dynamic> json) {
  return _BusinessDataRespPaymentMethodIncome.fromJson(json);
}

/// @nodoc
mixin _$BusinessDataRespPaymentMethodIncome {
  @JsonKey(name: "amount")
  double get amount => throw _privateConstructorUsedError;
  @JsonKey(name: "code")
  int get code => throw _privateConstructorUsedError;
  @JsonKey(name: "name")
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: "order_num")
  int get orderNum => throw _privateConstructorUsedError;

  /// Serializes this BusinessDataRespPaymentMethodIncome to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BusinessDataRespPaymentMethodIncome
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BusinessDataRespPaymentMethodIncomeCopyWith<
          BusinessDataRespPaymentMethodIncome>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BusinessDataRespPaymentMethodIncomeCopyWith<$Res> {
  factory $BusinessDataRespPaymentMethodIncomeCopyWith(
          BusinessDataRespPaymentMethodIncome value,
          $Res Function(BusinessDataRespPaymentMethodIncome) then) =
      _$BusinessDataRespPaymentMethodIncomeCopyWithImpl<$Res,
          BusinessDataRespPaymentMethodIncome>;
  @useResult
  $Res call(
      {@JsonKey(name: "amount") double amount,
      @JsonKey(name: "code") int code,
      @JsonKey(name: "name") String name,
      @JsonKey(name: "order_num") int orderNum});
}

/// @nodoc
class _$BusinessDataRespPaymentMethodIncomeCopyWithImpl<$Res,
        $Val extends BusinessDataRespPaymentMethodIncome>
    implements $BusinessDataRespPaymentMethodIncomeCopyWith<$Res> {
  _$BusinessDataRespPaymentMethodIncomeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BusinessDataRespPaymentMethodIncome
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? amount = null,
    Object? code = null,
    Object? name = null,
    Object? orderNum = null,
  }) {
    return _then(_value.copyWith(
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      orderNum: null == orderNum
          ? _value.orderNum
          : orderNum // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BusinessDataRespPaymentMethodIncomeImplCopyWith<$Res>
    implements $BusinessDataRespPaymentMethodIncomeCopyWith<$Res> {
  factory _$$BusinessDataRespPaymentMethodIncomeImplCopyWith(
          _$BusinessDataRespPaymentMethodIncomeImpl value,
          $Res Function(_$BusinessDataRespPaymentMethodIncomeImpl) then) =
      __$$BusinessDataRespPaymentMethodIncomeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "amount") double amount,
      @JsonKey(name: "code") int code,
      @JsonKey(name: "name") String name,
      @JsonKey(name: "order_num") int orderNum});
}

/// @nodoc
class __$$BusinessDataRespPaymentMethodIncomeImplCopyWithImpl<$Res>
    extends _$BusinessDataRespPaymentMethodIncomeCopyWithImpl<$Res,
        _$BusinessDataRespPaymentMethodIncomeImpl>
    implements _$$BusinessDataRespPaymentMethodIncomeImplCopyWith<$Res> {
  __$$BusinessDataRespPaymentMethodIncomeImplCopyWithImpl(
      _$BusinessDataRespPaymentMethodIncomeImpl _value,
      $Res Function(_$BusinessDataRespPaymentMethodIncomeImpl) _then)
      : super(_value, _then);

  /// Create a copy of BusinessDataRespPaymentMethodIncome
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? amount = null,
    Object? code = null,
    Object? name = null,
    Object? orderNum = null,
  }) {
    return _then(_$BusinessDataRespPaymentMethodIncomeImpl(
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      orderNum: null == orderNum
          ? _value.orderNum
          : orderNum // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BusinessDataRespPaymentMethodIncomeImpl
    implements _BusinessDataRespPaymentMethodIncome {
  const _$BusinessDataRespPaymentMethodIncomeImpl(
      {@JsonKey(name: "amount") required this.amount,
      @JsonKey(name: "code") required this.code,
      @JsonKey(name: "name") required this.name,
      @JsonKey(name: "order_num") required this.orderNum});

  factory _$BusinessDataRespPaymentMethodIncomeImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$BusinessDataRespPaymentMethodIncomeImplFromJson(json);

  @override
  @JsonKey(name: "amount")
  final double amount;
  @override
  @JsonKey(name: "code")
  final int code;
  @override
  @JsonKey(name: "name")
  final String name;
  @override
  @JsonKey(name: "order_num")
  final int orderNum;

  @override
  String toString() {
    return 'BusinessDataRespPaymentMethodIncome(amount: $amount, code: $code, name: $name, orderNum: $orderNum)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BusinessDataRespPaymentMethodIncomeImpl &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.orderNum, orderNum) ||
                other.orderNum == orderNum));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, amount, code, name, orderNum);

  /// Create a copy of BusinessDataRespPaymentMethodIncome
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BusinessDataRespPaymentMethodIncomeImplCopyWith<
          _$BusinessDataRespPaymentMethodIncomeImpl>
      get copyWith => __$$BusinessDataRespPaymentMethodIncomeImplCopyWithImpl<
          _$BusinessDataRespPaymentMethodIncomeImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BusinessDataRespPaymentMethodIncomeImplToJson(
      this,
    );
  }
}

abstract class _BusinessDataRespPaymentMethodIncome
    implements BusinessDataRespPaymentMethodIncome {
  const factory _BusinessDataRespPaymentMethodIncome(
          {@JsonKey(name: "amount") required final double amount,
          @JsonKey(name: "code") required final int code,
          @JsonKey(name: "name") required final String name,
          @JsonKey(name: "order_num") required final int orderNum}) =
      _$BusinessDataRespPaymentMethodIncomeImpl;

  factory _BusinessDataRespPaymentMethodIncome.fromJson(
          Map<String, dynamic> json) =
      _$BusinessDataRespPaymentMethodIncomeImpl.fromJson;

  @override
  @JsonKey(name: "amount")
  double get amount;
  @override
  @JsonKey(name: "code")
  int get code;
  @override
  @JsonKey(name: "name")
  String get name;
  @override
  @JsonKey(name: "order_num")
  int get orderNum;

  /// Create a copy of BusinessDataRespPaymentMethodIncome
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BusinessDataRespPaymentMethodIncomeImplCopyWith<
          _$BusinessDataRespPaymentMethodIncomeImpl>
      get copyWith => throw _privateConstructorUsedError;
}

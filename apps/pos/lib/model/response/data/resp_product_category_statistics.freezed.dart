// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'resp_product_category_statistics.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RespProductCategoryStatistics _$RespProductCategoryStatisticsFromJson(
    Map<String, dynamic> json) {
  return _RespProductCategoryStatistics.fromJson(json);
}

/// @nodoc
mixin _$RespProductCategoryStatistics {
  @JsonKey(name: "category_list")
  List<BusinessDataRespCategory> get categoryList =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "payment_method_incomes")
  List<BusinessDataRespPaymentMethodIncome> get paymentMethodIncomes =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "sales_num")
  int get salesNum => throw _privateConstructorUsedError;
  @JsonKey(name: "total_received_price")
  double get totalReceivedPrice => throw _privateConstructorUsedError;
  @JsonKey(name: "total_refund_money")
  double get totalRefundMoney => throw _privateConstructorUsedError;

  /// Serializes this RespProductCategoryStatistics to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RespProductCategoryStatistics
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RespProductCategoryStatisticsCopyWith<RespProductCategoryStatistics>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RespProductCategoryStatisticsCopyWith<$Res> {
  factory $RespProductCategoryStatisticsCopyWith(
          RespProductCategoryStatistics value,
          $Res Function(RespProductCategoryStatistics) then) =
      _$RespProductCategoryStatisticsCopyWithImpl<$Res,
          RespProductCategoryStatistics>;
  @useResult
  $Res call(
      {@JsonKey(name: "category_list")
      List<BusinessDataRespCategory> categoryList,
      @JsonKey(name: "payment_method_incomes")
      List<BusinessDataRespPaymentMethodIncome> paymentMethodIncomes,
      @JsonKey(name: "sales_num") int salesNum,
      @JsonKey(name: "total_received_price") double totalReceivedPrice,
      @JsonKey(name: "total_refund_money") double totalRefundMoney});
}

/// @nodoc
class _$RespProductCategoryStatisticsCopyWithImpl<$Res,
        $Val extends RespProductCategoryStatistics>
    implements $RespProductCategoryStatisticsCopyWith<$Res> {
  _$RespProductCategoryStatisticsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RespProductCategoryStatistics
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categoryList = null,
    Object? paymentMethodIncomes = null,
    Object? salesNum = null,
    Object? totalReceivedPrice = null,
    Object? totalRefundMoney = null,
  }) {
    return _then(_value.copyWith(
      categoryList: null == categoryList
          ? _value.categoryList
          : categoryList // ignore: cast_nullable_to_non_nullable
              as List<BusinessDataRespCategory>,
      paymentMethodIncomes: null == paymentMethodIncomes
          ? _value.paymentMethodIncomes
          : paymentMethodIncomes // ignore: cast_nullable_to_non_nullable
              as List<BusinessDataRespPaymentMethodIncome>,
      salesNum: null == salesNum
          ? _value.salesNum
          : salesNum // ignore: cast_nullable_to_non_nullable
              as int,
      totalReceivedPrice: null == totalReceivedPrice
          ? _value.totalReceivedPrice
          : totalReceivedPrice // ignore: cast_nullable_to_non_nullable
              as double,
      totalRefundMoney: null == totalRefundMoney
          ? _value.totalRefundMoney
          : totalRefundMoney // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RespProductCategoryStatisticsImplCopyWith<$Res>
    implements $RespProductCategoryStatisticsCopyWith<$Res> {
  factory _$$RespProductCategoryStatisticsImplCopyWith(
          _$RespProductCategoryStatisticsImpl value,
          $Res Function(_$RespProductCategoryStatisticsImpl) then) =
      __$$RespProductCategoryStatisticsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "category_list")
      List<BusinessDataRespCategory> categoryList,
      @JsonKey(name: "payment_method_incomes")
      List<BusinessDataRespPaymentMethodIncome> paymentMethodIncomes,
      @JsonKey(name: "sales_num") int salesNum,
      @JsonKey(name: "total_received_price") double totalReceivedPrice,
      @JsonKey(name: "total_refund_money") double totalRefundMoney});
}

/// @nodoc
class __$$RespProductCategoryStatisticsImplCopyWithImpl<$Res>
    extends _$RespProductCategoryStatisticsCopyWithImpl<$Res,
        _$RespProductCategoryStatisticsImpl>
    implements _$$RespProductCategoryStatisticsImplCopyWith<$Res> {
  __$$RespProductCategoryStatisticsImplCopyWithImpl(
      _$RespProductCategoryStatisticsImpl _value,
      $Res Function(_$RespProductCategoryStatisticsImpl) _then)
      : super(_value, _then);

  /// Create a copy of RespProductCategoryStatistics
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categoryList = null,
    Object? paymentMethodIncomes = null,
    Object? salesNum = null,
    Object? totalReceivedPrice = null,
    Object? totalRefundMoney = null,
  }) {
    return _then(_$RespProductCategoryStatisticsImpl(
      categoryList: null == categoryList
          ? _value._categoryList
          : categoryList // ignore: cast_nullable_to_non_nullable
              as List<BusinessDataRespCategory>,
      paymentMethodIncomes: null == paymentMethodIncomes
          ? _value._paymentMethodIncomes
          : paymentMethodIncomes // ignore: cast_nullable_to_non_nullable
              as List<BusinessDataRespPaymentMethodIncome>,
      salesNum: null == salesNum
          ? _value.salesNum
          : salesNum // ignore: cast_nullable_to_non_nullable
              as int,
      totalReceivedPrice: null == totalReceivedPrice
          ? _value.totalReceivedPrice
          : totalReceivedPrice // ignore: cast_nullable_to_non_nullable
              as double,
      totalRefundMoney: null == totalRefundMoney
          ? _value.totalRefundMoney
          : totalRefundMoney // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RespProductCategoryStatisticsImpl
    implements _RespProductCategoryStatistics {
  _$RespProductCategoryStatisticsImpl(
      {@JsonKey(name: "category_list")
      required final List<BusinessDataRespCategory> categoryList,
      @JsonKey(name: "payment_method_incomes")
      required final List<BusinessDataRespPaymentMethodIncome>
          paymentMethodIncomes,
      @JsonKey(name: "sales_num") required this.salesNum,
      @JsonKey(name: "total_received_price") required this.totalReceivedPrice,
      @JsonKey(name: "total_refund_money") required this.totalRefundMoney})
      : _categoryList = categoryList,
        _paymentMethodIncomes = paymentMethodIncomes;

  factory _$RespProductCategoryStatisticsImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$RespProductCategoryStatisticsImplFromJson(json);

  final List<BusinessDataRespCategory> _categoryList;
  @override
  @JsonKey(name: "category_list")
  List<BusinessDataRespCategory> get categoryList {
    if (_categoryList is EqualUnmodifiableListView) return _categoryList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_categoryList);
  }

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
  @JsonKey(name: "sales_num")
  final int salesNum;
  @override
  @JsonKey(name: "total_received_price")
  final double totalReceivedPrice;
  @override
  @JsonKey(name: "total_refund_money")
  final double totalRefundMoney;

  @override
  String toString() {
    return 'RespProductCategoryStatistics(categoryList: $categoryList, paymentMethodIncomes: $paymentMethodIncomes, salesNum: $salesNum, totalReceivedPrice: $totalReceivedPrice, totalRefundMoney: $totalRefundMoney)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RespProductCategoryStatisticsImpl &&
            const DeepCollectionEquality()
                .equals(other._categoryList, _categoryList) &&
            const DeepCollectionEquality()
                .equals(other._paymentMethodIncomes, _paymentMethodIncomes) &&
            (identical(other.salesNum, salesNum) ||
                other.salesNum == salesNum) &&
            (identical(other.totalReceivedPrice, totalReceivedPrice) ||
                other.totalReceivedPrice == totalReceivedPrice) &&
            (identical(other.totalRefundMoney, totalRefundMoney) ||
                other.totalRefundMoney == totalRefundMoney));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_categoryList),
      const DeepCollectionEquality().hash(_paymentMethodIncomes),
      salesNum,
      totalReceivedPrice,
      totalRefundMoney);

  /// Create a copy of RespProductCategoryStatistics
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RespProductCategoryStatisticsImplCopyWith<
          _$RespProductCategoryStatisticsImpl>
      get copyWith => __$$RespProductCategoryStatisticsImplCopyWithImpl<
          _$RespProductCategoryStatisticsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RespProductCategoryStatisticsImplToJson(
      this,
    );
  }
}

abstract class _RespProductCategoryStatistics
    implements RespProductCategoryStatistics {
  factory _RespProductCategoryStatistics(
          {@JsonKey(name: "category_list")
          required final List<BusinessDataRespCategory> categoryList,
          @JsonKey(name: "payment_method_incomes")
          required final List<BusinessDataRespPaymentMethodIncome>
              paymentMethodIncomes,
          @JsonKey(name: "sales_num") required final int salesNum,
          @JsonKey(name: "total_received_price")
          required final double totalReceivedPrice,
          @JsonKey(name: "total_refund_money")
          required final double totalRefundMoney}) =
      _$RespProductCategoryStatisticsImpl;

  factory _RespProductCategoryStatistics.fromJson(Map<String, dynamic> json) =
      _$RespProductCategoryStatisticsImpl.fromJson;

  @override
  @JsonKey(name: "category_list")
  List<BusinessDataRespCategory> get categoryList;
  @override
  @JsonKey(name: "payment_method_incomes")
  List<BusinessDataRespPaymentMethodIncome> get paymentMethodIncomes;
  @override
  @JsonKey(name: "sales_num")
  int get salesNum;
  @override
  @JsonKey(name: "total_received_price")
  double get totalReceivedPrice;
  @override
  @JsonKey(name: "total_refund_money")
  double get totalRefundMoney;

  /// Create a copy of RespProductCategoryStatistics
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RespProductCategoryStatisticsImplCopyWith<
          _$RespProductCategoryStatisticsImpl>
      get copyWith => throw _privateConstructorUsedError;
}

BusinessDataRespCategory _$BusinessDataRespCategoryFromJson(
    Map<String, dynamic> json) {
  return _BusinessDataRespCategory.fromJson(json);
}

/// @nodoc
mixin _$BusinessDataRespCategory {
  @JsonKey(name: "name")
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: "prices")
  double get prices => throw _privateConstructorUsedError;
  @JsonKey(name: "sales_num")
  int get salesNum => throw _privateConstructorUsedError;

  /// Serializes this BusinessDataRespCategory to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BusinessDataRespCategory
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BusinessDataRespCategoryCopyWith<BusinessDataRespCategory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BusinessDataRespCategoryCopyWith<$Res> {
  factory $BusinessDataRespCategoryCopyWith(BusinessDataRespCategory value,
          $Res Function(BusinessDataRespCategory) then) =
      _$BusinessDataRespCategoryCopyWithImpl<$Res, BusinessDataRespCategory>;
  @useResult
  $Res call(
      {@JsonKey(name: "name") String name,
      @JsonKey(name: "prices") double prices,
      @JsonKey(name: "sales_num") int salesNum});
}

/// @nodoc
class _$BusinessDataRespCategoryCopyWithImpl<$Res,
        $Val extends BusinessDataRespCategory>
    implements $BusinessDataRespCategoryCopyWith<$Res> {
  _$BusinessDataRespCategoryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BusinessDataRespCategory
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? prices = null,
    Object? salesNum = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      prices: null == prices
          ? _value.prices
          : prices // ignore: cast_nullable_to_non_nullable
              as double,
      salesNum: null == salesNum
          ? _value.salesNum
          : salesNum // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BusinessDataRespCategoryImplCopyWith<$Res>
    implements $BusinessDataRespCategoryCopyWith<$Res> {
  factory _$$BusinessDataRespCategoryImplCopyWith(
          _$BusinessDataRespCategoryImpl value,
          $Res Function(_$BusinessDataRespCategoryImpl) then) =
      __$$BusinessDataRespCategoryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "name") String name,
      @JsonKey(name: "prices") double prices,
      @JsonKey(name: "sales_num") int salesNum});
}

/// @nodoc
class __$$BusinessDataRespCategoryImplCopyWithImpl<$Res>
    extends _$BusinessDataRespCategoryCopyWithImpl<$Res,
        _$BusinessDataRespCategoryImpl>
    implements _$$BusinessDataRespCategoryImplCopyWith<$Res> {
  __$$BusinessDataRespCategoryImplCopyWithImpl(
      _$BusinessDataRespCategoryImpl _value,
      $Res Function(_$BusinessDataRespCategoryImpl) _then)
      : super(_value, _then);

  /// Create a copy of BusinessDataRespCategory
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? prices = null,
    Object? salesNum = null,
  }) {
    return _then(_$BusinessDataRespCategoryImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      prices: null == prices
          ? _value.prices
          : prices // ignore: cast_nullable_to_non_nullable
              as double,
      salesNum: null == salesNum
          ? _value.salesNum
          : salesNum // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BusinessDataRespCategoryImpl implements _BusinessDataRespCategory {
  const _$BusinessDataRespCategoryImpl(
      {@JsonKey(name: "name") required this.name,
      @JsonKey(name: "prices") required this.prices,
      @JsonKey(name: "sales_num") required this.salesNum});

  factory _$BusinessDataRespCategoryImpl.fromJson(Map<String, dynamic> json) =>
      _$$BusinessDataRespCategoryImplFromJson(json);

  @override
  @JsonKey(name: "name")
  final String name;
  @override
  @JsonKey(name: "prices")
  final double prices;
  @override
  @JsonKey(name: "sales_num")
  final int salesNum;

  @override
  String toString() {
    return 'BusinessDataRespCategory(name: $name, prices: $prices, salesNum: $salesNum)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BusinessDataRespCategoryImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.prices, prices) || other.prices == prices) &&
            (identical(other.salesNum, salesNum) ||
                other.salesNum == salesNum));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, prices, salesNum);

  /// Create a copy of BusinessDataRespCategory
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BusinessDataRespCategoryImplCopyWith<_$BusinessDataRespCategoryImpl>
      get copyWith => __$$BusinessDataRespCategoryImplCopyWithImpl<
          _$BusinessDataRespCategoryImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BusinessDataRespCategoryImplToJson(
      this,
    );
  }
}

abstract class _BusinessDataRespCategory implements BusinessDataRespCategory {
  const factory _BusinessDataRespCategory(
          {@JsonKey(name: "name") required final String name,
          @JsonKey(name: "prices") required final double prices,
          @JsonKey(name: "sales_num") required final int salesNum}) =
      _$BusinessDataRespCategoryImpl;

  factory _BusinessDataRespCategory.fromJson(Map<String, dynamic> json) =
      _$BusinessDataRespCategoryImpl.fromJson;

  @override
  @JsonKey(name: "name")
  String get name;
  @override
  @JsonKey(name: "prices")
  double get prices;
  @override
  @JsonKey(name: "sales_num")
  int get salesNum;

  /// Create a copy of BusinessDataRespCategory
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BusinessDataRespCategoryImplCopyWith<_$BusinessDataRespCategoryImpl>
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

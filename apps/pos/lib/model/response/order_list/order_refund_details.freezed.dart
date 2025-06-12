// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_refund_details.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

OrderRefundDetails _$OrderRefundDetailsFromJson(Map<String, dynamic> json) {
  return _OrderRefundDetails.fromJson(json);
}

/// @nodoc
mixin _$OrderRefundDetails {
  @JsonKey(name: "can_return_amount")
  double get canReturnAmount => throw _privateConstructorUsedError;
  @JsonKey(name: "payment_records")
  List<RespOrderReturnPaymentRecord> get paymentRecords =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "products")
  List<RespOrderReturnProduct> get products =>
      throw _privateConstructorUsedError;

  /// Serializes this OrderRefundDetails to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OrderRefundDetails
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OrderRefundDetailsCopyWith<OrderRefundDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderRefundDetailsCopyWith<$Res> {
  factory $OrderRefundDetailsCopyWith(
          OrderRefundDetails value, $Res Function(OrderRefundDetails) then) =
      _$OrderRefundDetailsCopyWithImpl<$Res, OrderRefundDetails>;
  @useResult
  $Res call(
      {@JsonKey(name: "can_return_amount") double canReturnAmount,
      @JsonKey(name: "payment_records")
      List<RespOrderReturnPaymentRecord> paymentRecords,
      @JsonKey(name: "products") List<RespOrderReturnProduct> products});
}

/// @nodoc
class _$OrderRefundDetailsCopyWithImpl<$Res, $Val extends OrderRefundDetails>
    implements $OrderRefundDetailsCopyWith<$Res> {
  _$OrderRefundDetailsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OrderRefundDetails
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? canReturnAmount = null,
    Object? paymentRecords = null,
    Object? products = null,
  }) {
    return _then(_value.copyWith(
      canReturnAmount: null == canReturnAmount
          ? _value.canReturnAmount
          : canReturnAmount // ignore: cast_nullable_to_non_nullable
              as double,
      paymentRecords: null == paymentRecords
          ? _value.paymentRecords
          : paymentRecords // ignore: cast_nullable_to_non_nullable
              as List<RespOrderReturnPaymentRecord>,
      products: null == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<RespOrderReturnProduct>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OrderRefundDetailsImplCopyWith<$Res>
    implements $OrderRefundDetailsCopyWith<$Res> {
  factory _$$OrderRefundDetailsImplCopyWith(_$OrderRefundDetailsImpl value,
          $Res Function(_$OrderRefundDetailsImpl) then) =
      __$$OrderRefundDetailsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "can_return_amount") double canReturnAmount,
      @JsonKey(name: "payment_records")
      List<RespOrderReturnPaymentRecord> paymentRecords,
      @JsonKey(name: "products") List<RespOrderReturnProduct> products});
}

/// @nodoc
class __$$OrderRefundDetailsImplCopyWithImpl<$Res>
    extends _$OrderRefundDetailsCopyWithImpl<$Res, _$OrderRefundDetailsImpl>
    implements _$$OrderRefundDetailsImplCopyWith<$Res> {
  __$$OrderRefundDetailsImplCopyWithImpl(_$OrderRefundDetailsImpl _value,
      $Res Function(_$OrderRefundDetailsImpl) _then)
      : super(_value, _then);

  /// Create a copy of OrderRefundDetails
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? canReturnAmount = null,
    Object? paymentRecords = null,
    Object? products = null,
  }) {
    return _then(_$OrderRefundDetailsImpl(
      canReturnAmount: null == canReturnAmount
          ? _value.canReturnAmount
          : canReturnAmount // ignore: cast_nullable_to_non_nullable
              as double,
      paymentRecords: null == paymentRecords
          ? _value._paymentRecords
          : paymentRecords // ignore: cast_nullable_to_non_nullable
              as List<RespOrderReturnPaymentRecord>,
      products: null == products
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<RespOrderReturnProduct>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OrderRefundDetailsImpl implements _OrderRefundDetails {
  _$OrderRefundDetailsImpl(
      {@JsonKey(name: "can_return_amount") required this.canReturnAmount,
      @JsonKey(name: "payment_records")
      required final List<RespOrderReturnPaymentRecord> paymentRecords,
      @JsonKey(name: "products")
      required final List<RespOrderReturnProduct> products})
      : _paymentRecords = paymentRecords,
        _products = products;

  factory _$OrderRefundDetailsImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrderRefundDetailsImplFromJson(json);

  @override
  @JsonKey(name: "can_return_amount")
  final double canReturnAmount;
  final List<RespOrderReturnPaymentRecord> _paymentRecords;
  @override
  @JsonKey(name: "payment_records")
  List<RespOrderReturnPaymentRecord> get paymentRecords {
    if (_paymentRecords is EqualUnmodifiableListView) return _paymentRecords;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_paymentRecords);
  }

  final List<RespOrderReturnProduct> _products;
  @override
  @JsonKey(name: "products")
  List<RespOrderReturnProduct> get products {
    if (_products is EqualUnmodifiableListView) return _products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_products);
  }

  @override
  String toString() {
    return 'OrderRefundDetails(canReturnAmount: $canReturnAmount, paymentRecords: $paymentRecords, products: $products)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderRefundDetailsImpl &&
            (identical(other.canReturnAmount, canReturnAmount) ||
                other.canReturnAmount == canReturnAmount) &&
            const DeepCollectionEquality()
                .equals(other._paymentRecords, _paymentRecords) &&
            const DeepCollectionEquality().equals(other._products, _products));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      canReturnAmount,
      const DeepCollectionEquality().hash(_paymentRecords),
      const DeepCollectionEquality().hash(_products));

  /// Create a copy of OrderRefundDetails
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderRefundDetailsImplCopyWith<_$OrderRefundDetailsImpl> get copyWith =>
      __$$OrderRefundDetailsImplCopyWithImpl<_$OrderRefundDetailsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OrderRefundDetailsImplToJson(
      this,
    );
  }
}

abstract class _OrderRefundDetails implements OrderRefundDetails {
  factory _OrderRefundDetails(
          {@JsonKey(name: "can_return_amount")
          required final double canReturnAmount,
          @JsonKey(name: "payment_records")
          required final List<RespOrderReturnPaymentRecord> paymentRecords,
          @JsonKey(name: "products")
          required final List<RespOrderReturnProduct> products}) =
      _$OrderRefundDetailsImpl;

  factory _OrderRefundDetails.fromJson(Map<String, dynamic> json) =
      _$OrderRefundDetailsImpl.fromJson;

  @override
  @JsonKey(name: "can_return_amount")
  double get canReturnAmount;
  @override
  @JsonKey(name: "payment_records")
  List<RespOrderReturnPaymentRecord> get paymentRecords;
  @override
  @JsonKey(name: "products")
  List<RespOrderReturnProduct> get products;

  /// Create a copy of OrderRefundDetails
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OrderRefundDetailsImplCopyWith<_$OrderRefundDetailsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

RespOrderReturnPaymentRecord _$RespOrderReturnPaymentRecordFromJson(
    Map<String, dynamic> json) {
  return _RespOrderReturnPaymentRecord.fromJson(json);
}

/// @nodoc
mixin _$RespOrderReturnPaymentRecord {
  @JsonKey(name: "can_return_amount")
  double get canReturnAmount => throw _privateConstructorUsedError;
  @JsonKey(name: "currency_unit")
  String get currencyUnit => throw _privateConstructorUsedError;
  @JsonKey(name: "payment_amount")
  double get paymentAmount => throw _privateConstructorUsedError;
  @JsonKey(name: "payment_method_name")
  String get paymentMethodName => throw _privateConstructorUsedError;
  @JsonKey(name: "payment_order_uuid")
  int get paymentOrderUuid => throw _privateConstructorUsedError;

  /// Serializes this RespOrderReturnPaymentRecord to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RespOrderReturnPaymentRecord
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RespOrderReturnPaymentRecordCopyWith<RespOrderReturnPaymentRecord>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RespOrderReturnPaymentRecordCopyWith<$Res> {
  factory $RespOrderReturnPaymentRecordCopyWith(
          RespOrderReturnPaymentRecord value,
          $Res Function(RespOrderReturnPaymentRecord) then) =
      _$RespOrderReturnPaymentRecordCopyWithImpl<$Res,
          RespOrderReturnPaymentRecord>;
  @useResult
  $Res call(
      {@JsonKey(name: "can_return_amount") double canReturnAmount,
      @JsonKey(name: "currency_unit") String currencyUnit,
      @JsonKey(name: "payment_amount") double paymentAmount,
      @JsonKey(name: "payment_method_name") String paymentMethodName,
      @JsonKey(name: "payment_order_uuid") int paymentOrderUuid});
}

/// @nodoc
class _$RespOrderReturnPaymentRecordCopyWithImpl<$Res,
        $Val extends RespOrderReturnPaymentRecord>
    implements $RespOrderReturnPaymentRecordCopyWith<$Res> {
  _$RespOrderReturnPaymentRecordCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RespOrderReturnPaymentRecord
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? canReturnAmount = null,
    Object? currencyUnit = null,
    Object? paymentAmount = null,
    Object? paymentMethodName = null,
    Object? paymentOrderUuid = null,
  }) {
    return _then(_value.copyWith(
      canReturnAmount: null == canReturnAmount
          ? _value.canReturnAmount
          : canReturnAmount // ignore: cast_nullable_to_non_nullable
              as double,
      currencyUnit: null == currencyUnit
          ? _value.currencyUnit
          : currencyUnit // ignore: cast_nullable_to_non_nullable
              as String,
      paymentAmount: null == paymentAmount
          ? _value.paymentAmount
          : paymentAmount // ignore: cast_nullable_to_non_nullable
              as double,
      paymentMethodName: null == paymentMethodName
          ? _value.paymentMethodName
          : paymentMethodName // ignore: cast_nullable_to_non_nullable
              as String,
      paymentOrderUuid: null == paymentOrderUuid
          ? _value.paymentOrderUuid
          : paymentOrderUuid // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RespOrderReturnPaymentRecordImplCopyWith<$Res>
    implements $RespOrderReturnPaymentRecordCopyWith<$Res> {
  factory _$$RespOrderReturnPaymentRecordImplCopyWith(
          _$RespOrderReturnPaymentRecordImpl value,
          $Res Function(_$RespOrderReturnPaymentRecordImpl) then) =
      __$$RespOrderReturnPaymentRecordImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "can_return_amount") double canReturnAmount,
      @JsonKey(name: "currency_unit") String currencyUnit,
      @JsonKey(name: "payment_amount") double paymentAmount,
      @JsonKey(name: "payment_method_name") String paymentMethodName,
      @JsonKey(name: "payment_order_uuid") int paymentOrderUuid});
}

/// @nodoc
class __$$RespOrderReturnPaymentRecordImplCopyWithImpl<$Res>
    extends _$RespOrderReturnPaymentRecordCopyWithImpl<$Res,
        _$RespOrderReturnPaymentRecordImpl>
    implements _$$RespOrderReturnPaymentRecordImplCopyWith<$Res> {
  __$$RespOrderReturnPaymentRecordImplCopyWithImpl(
      _$RespOrderReturnPaymentRecordImpl _value,
      $Res Function(_$RespOrderReturnPaymentRecordImpl) _then)
      : super(_value, _then);

  /// Create a copy of RespOrderReturnPaymentRecord
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? canReturnAmount = null,
    Object? currencyUnit = null,
    Object? paymentAmount = null,
    Object? paymentMethodName = null,
    Object? paymentOrderUuid = null,
  }) {
    return _then(_$RespOrderReturnPaymentRecordImpl(
      canReturnAmount: null == canReturnAmount
          ? _value.canReturnAmount
          : canReturnAmount // ignore: cast_nullable_to_non_nullable
              as double,
      currencyUnit: null == currencyUnit
          ? _value.currencyUnit
          : currencyUnit // ignore: cast_nullable_to_non_nullable
              as String,
      paymentAmount: null == paymentAmount
          ? _value.paymentAmount
          : paymentAmount // ignore: cast_nullable_to_non_nullable
              as double,
      paymentMethodName: null == paymentMethodName
          ? _value.paymentMethodName
          : paymentMethodName // ignore: cast_nullable_to_non_nullable
              as String,
      paymentOrderUuid: null == paymentOrderUuid
          ? _value.paymentOrderUuid
          : paymentOrderUuid // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RespOrderReturnPaymentRecordImpl
    implements _RespOrderReturnPaymentRecord {
  const _$RespOrderReturnPaymentRecordImpl(
      {@JsonKey(name: "can_return_amount") required this.canReturnAmount,
      @JsonKey(name: "currency_unit") required this.currencyUnit,
      @JsonKey(name: "payment_amount") required this.paymentAmount,
      @JsonKey(name: "payment_method_name") required this.paymentMethodName,
      @JsonKey(name: "payment_order_uuid") required this.paymentOrderUuid});

  factory _$RespOrderReturnPaymentRecordImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$RespOrderReturnPaymentRecordImplFromJson(json);

  @override
  @JsonKey(name: "can_return_amount")
  final double canReturnAmount;
  @override
  @JsonKey(name: "currency_unit")
  final String currencyUnit;
  @override
  @JsonKey(name: "payment_amount")
  final double paymentAmount;
  @override
  @JsonKey(name: "payment_method_name")
  final String paymentMethodName;
  @override
  @JsonKey(name: "payment_order_uuid")
  final int paymentOrderUuid;

  @override
  String toString() {
    return 'RespOrderReturnPaymentRecord(canReturnAmount: $canReturnAmount, currencyUnit: $currencyUnit, paymentAmount: $paymentAmount, paymentMethodName: $paymentMethodName, paymentOrderUuid: $paymentOrderUuid)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RespOrderReturnPaymentRecordImpl &&
            (identical(other.canReturnAmount, canReturnAmount) ||
                other.canReturnAmount == canReturnAmount) &&
            (identical(other.currencyUnit, currencyUnit) ||
                other.currencyUnit == currencyUnit) &&
            (identical(other.paymentAmount, paymentAmount) ||
                other.paymentAmount == paymentAmount) &&
            (identical(other.paymentMethodName, paymentMethodName) ||
                other.paymentMethodName == paymentMethodName) &&
            (identical(other.paymentOrderUuid, paymentOrderUuid) ||
                other.paymentOrderUuid == paymentOrderUuid));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, canReturnAmount, currencyUnit,
      paymentAmount, paymentMethodName, paymentOrderUuid);

  /// Create a copy of RespOrderReturnPaymentRecord
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RespOrderReturnPaymentRecordImplCopyWith<
          _$RespOrderReturnPaymentRecordImpl>
      get copyWith => __$$RespOrderReturnPaymentRecordImplCopyWithImpl<
          _$RespOrderReturnPaymentRecordImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RespOrderReturnPaymentRecordImplToJson(
      this,
    );
  }
}

abstract class _RespOrderReturnPaymentRecord
    implements RespOrderReturnPaymentRecord {
  const factory _RespOrderReturnPaymentRecord(
          {@JsonKey(name: "can_return_amount")
          required final double canReturnAmount,
          @JsonKey(name: "currency_unit") required final String currencyUnit,
          @JsonKey(name: "payment_amount") required final double paymentAmount,
          @JsonKey(name: "payment_method_name")
          required final String paymentMethodName,
          @JsonKey(name: "payment_order_uuid")
          required final int paymentOrderUuid}) =
      _$RespOrderReturnPaymentRecordImpl;

  factory _RespOrderReturnPaymentRecord.fromJson(Map<String, dynamic> json) =
      _$RespOrderReturnPaymentRecordImpl.fromJson;

  @override
  @JsonKey(name: "can_return_amount")
  double get canReturnAmount;
  @override
  @JsonKey(name: "currency_unit")
  String get currencyUnit;
  @override
  @JsonKey(name: "payment_amount")
  double get paymentAmount;
  @override
  @JsonKey(name: "payment_method_name")
  String get paymentMethodName;
  @override
  @JsonKey(name: "payment_order_uuid")
  int get paymentOrderUuid;

  /// Create a copy of RespOrderReturnPaymentRecord
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RespOrderReturnPaymentRecordImplCopyWith<
          _$RespOrderReturnPaymentRecordImpl>
      get copyWith => throw _privateConstructorUsedError;
}

RespOrderReturnProduct _$RespOrderReturnProductFromJson(
    Map<String, dynamic> json) {
  return _RespOrderReturnProduct.fromJson(json);
}

/// @nodoc
mixin _$RespOrderReturnProduct {
  @JsonKey(name: "can_return_amount")
  double get canReturnAmount => throw _privateConstructorUsedError;
  @JsonKey(name: "currency_unit")
  String get currencyUnit => throw _privateConstructorUsedError;
  @JsonKey(name: "locale_attribute_name")
  LocaleName get localeAttributeName => throw _privateConstructorUsedError;
  @JsonKey(name: "locale_name")
  LocaleName get localeName => throw _privateConstructorUsedError;
  @JsonKey(name: "num")
  int get num => throw _privateConstructorUsedError;
  @JsonKey(name: "price")
  double get price => throw _privateConstructorUsedError;
  @JsonKey(name: "sale_order_product_uuid")
  int get saleOrderProductUuid => throw _privateConstructorUsedError;

  /// Serializes this RespOrderReturnProduct to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RespOrderReturnProduct
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RespOrderReturnProductCopyWith<RespOrderReturnProduct> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RespOrderReturnProductCopyWith<$Res> {
  factory $RespOrderReturnProductCopyWith(RespOrderReturnProduct value,
          $Res Function(RespOrderReturnProduct) then) =
      _$RespOrderReturnProductCopyWithImpl<$Res, RespOrderReturnProduct>;
  @useResult
  $Res call(
      {@JsonKey(name: "can_return_amount") double canReturnAmount,
      @JsonKey(name: "currency_unit") String currencyUnit,
      @JsonKey(name: "locale_attribute_name") LocaleName localeAttributeName,
      @JsonKey(name: "locale_name") LocaleName localeName,
      @JsonKey(name: "num") int num,
      @JsonKey(name: "price") double price,
      @JsonKey(name: "sale_order_product_uuid") int saleOrderProductUuid});

  $LocaleNameCopyWith<$Res> get localeAttributeName;
  $LocaleNameCopyWith<$Res> get localeName;
}

/// @nodoc
class _$RespOrderReturnProductCopyWithImpl<$Res,
        $Val extends RespOrderReturnProduct>
    implements $RespOrderReturnProductCopyWith<$Res> {
  _$RespOrderReturnProductCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RespOrderReturnProduct
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? canReturnAmount = null,
    Object? currencyUnit = null,
    Object? localeAttributeName = null,
    Object? localeName = null,
    Object? num = null,
    Object? price = null,
    Object? saleOrderProductUuid = null,
  }) {
    return _then(_value.copyWith(
      canReturnAmount: null == canReturnAmount
          ? _value.canReturnAmount
          : canReturnAmount // ignore: cast_nullable_to_non_nullable
              as double,
      currencyUnit: null == currencyUnit
          ? _value.currencyUnit
          : currencyUnit // ignore: cast_nullable_to_non_nullable
              as String,
      localeAttributeName: null == localeAttributeName
          ? _value.localeAttributeName
          : localeAttributeName // ignore: cast_nullable_to_non_nullable
              as LocaleName,
      localeName: null == localeName
          ? _value.localeName
          : localeName // ignore: cast_nullable_to_non_nullable
              as LocaleName,
      num: null == num
          ? _value.num
          : num // ignore: cast_nullable_to_non_nullable
              as int,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      saleOrderProductUuid: null == saleOrderProductUuid
          ? _value.saleOrderProductUuid
          : saleOrderProductUuid // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }

  /// Create a copy of RespOrderReturnProduct
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LocaleNameCopyWith<$Res> get localeAttributeName {
    return $LocaleNameCopyWith<$Res>(_value.localeAttributeName, (value) {
      return _then(_value.copyWith(localeAttributeName: value) as $Val);
    });
  }

  /// Create a copy of RespOrderReturnProduct
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LocaleNameCopyWith<$Res> get localeName {
    return $LocaleNameCopyWith<$Res>(_value.localeName, (value) {
      return _then(_value.copyWith(localeName: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$RespOrderReturnProductImplCopyWith<$Res>
    implements $RespOrderReturnProductCopyWith<$Res> {
  factory _$$RespOrderReturnProductImplCopyWith(
          _$RespOrderReturnProductImpl value,
          $Res Function(_$RespOrderReturnProductImpl) then) =
      __$$RespOrderReturnProductImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "can_return_amount") double canReturnAmount,
      @JsonKey(name: "currency_unit") String currencyUnit,
      @JsonKey(name: "locale_attribute_name") LocaleName localeAttributeName,
      @JsonKey(name: "locale_name") LocaleName localeName,
      @JsonKey(name: "num") int num,
      @JsonKey(name: "price") double price,
      @JsonKey(name: "sale_order_product_uuid") int saleOrderProductUuid});

  @override
  $LocaleNameCopyWith<$Res> get localeAttributeName;
  @override
  $LocaleNameCopyWith<$Res> get localeName;
}

/// @nodoc
class __$$RespOrderReturnProductImplCopyWithImpl<$Res>
    extends _$RespOrderReturnProductCopyWithImpl<$Res,
        _$RespOrderReturnProductImpl>
    implements _$$RespOrderReturnProductImplCopyWith<$Res> {
  __$$RespOrderReturnProductImplCopyWithImpl(
      _$RespOrderReturnProductImpl _value,
      $Res Function(_$RespOrderReturnProductImpl) _then)
      : super(_value, _then);

  /// Create a copy of RespOrderReturnProduct
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? canReturnAmount = null,
    Object? currencyUnit = null,
    Object? localeAttributeName = null,
    Object? localeName = null,
    Object? num = null,
    Object? price = null,
    Object? saleOrderProductUuid = null,
  }) {
    return _then(_$RespOrderReturnProductImpl(
      canReturnAmount: null == canReturnAmount
          ? _value.canReturnAmount
          : canReturnAmount // ignore: cast_nullable_to_non_nullable
              as double,
      currencyUnit: null == currencyUnit
          ? _value.currencyUnit
          : currencyUnit // ignore: cast_nullable_to_non_nullable
              as String,
      localeAttributeName: null == localeAttributeName
          ? _value.localeAttributeName
          : localeAttributeName // ignore: cast_nullable_to_non_nullable
              as LocaleName,
      localeName: null == localeName
          ? _value.localeName
          : localeName // ignore: cast_nullable_to_non_nullable
              as LocaleName,
      num: null == num
          ? _value.num
          : num // ignore: cast_nullable_to_non_nullable
              as int,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      saleOrderProductUuid: null == saleOrderProductUuid
          ? _value.saleOrderProductUuid
          : saleOrderProductUuid // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RespOrderReturnProductImpl implements _RespOrderReturnProduct {
  const _$RespOrderReturnProductImpl(
      {@JsonKey(name: "can_return_amount") required this.canReturnAmount,
      @JsonKey(name: "currency_unit") required this.currencyUnit,
      @JsonKey(name: "locale_attribute_name") required this.localeAttributeName,
      @JsonKey(name: "locale_name") required this.localeName,
      @JsonKey(name: "num") required this.num,
      @JsonKey(name: "price") required this.price,
      @JsonKey(name: "sale_order_product_uuid")
      required this.saleOrderProductUuid});

  factory _$RespOrderReturnProductImpl.fromJson(Map<String, dynamic> json) =>
      _$$RespOrderReturnProductImplFromJson(json);

  @override
  @JsonKey(name: "can_return_amount")
  final double canReturnAmount;
  @override
  @JsonKey(name: "currency_unit")
  final String currencyUnit;
  @override
  @JsonKey(name: "locale_attribute_name")
  final LocaleName localeAttributeName;
  @override
  @JsonKey(name: "locale_name")
  final LocaleName localeName;
  @override
  @JsonKey(name: "num")
  final int num;
  @override
  @JsonKey(name: "price")
  final double price;
  @override
  @JsonKey(name: "sale_order_product_uuid")
  final int saleOrderProductUuid;

  @override
  String toString() {
    return 'RespOrderReturnProduct(canReturnAmount: $canReturnAmount, currencyUnit: $currencyUnit, localeAttributeName: $localeAttributeName, localeName: $localeName, num: $num, price: $price, saleOrderProductUuid: $saleOrderProductUuid)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RespOrderReturnProductImpl &&
            (identical(other.canReturnAmount, canReturnAmount) ||
                other.canReturnAmount == canReturnAmount) &&
            (identical(other.currencyUnit, currencyUnit) ||
                other.currencyUnit == currencyUnit) &&
            (identical(other.localeAttributeName, localeAttributeName) ||
                other.localeAttributeName == localeAttributeName) &&
            (identical(other.localeName, localeName) ||
                other.localeName == localeName) &&
            (identical(other.num, num) || other.num == num) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.saleOrderProductUuid, saleOrderProductUuid) ||
                other.saleOrderProductUuid == saleOrderProductUuid));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, canReturnAmount, currencyUnit,
      localeAttributeName, localeName, num, price, saleOrderProductUuid);

  /// Create a copy of RespOrderReturnProduct
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RespOrderReturnProductImplCopyWith<_$RespOrderReturnProductImpl>
      get copyWith => __$$RespOrderReturnProductImplCopyWithImpl<
          _$RespOrderReturnProductImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RespOrderReturnProductImplToJson(
      this,
    );
  }
}

abstract class _RespOrderReturnProduct implements RespOrderReturnProduct {
  const factory _RespOrderReturnProduct(
      {@JsonKey(name: "can_return_amount")
      required final double canReturnAmount,
      @JsonKey(name: "currency_unit") required final String currencyUnit,
      @JsonKey(name: "locale_attribute_name")
      required final LocaleName localeAttributeName,
      @JsonKey(name: "locale_name") required final LocaleName localeName,
      @JsonKey(name: "num") required final int num,
      @JsonKey(name: "price") required final double price,
      @JsonKey(name: "sale_order_product_uuid")
      required final int saleOrderProductUuid}) = _$RespOrderReturnProductImpl;

  factory _RespOrderReturnProduct.fromJson(Map<String, dynamic> json) =
      _$RespOrderReturnProductImpl.fromJson;

  @override
  @JsonKey(name: "can_return_amount")
  double get canReturnAmount;
  @override
  @JsonKey(name: "currency_unit")
  String get currencyUnit;
  @override
  @JsonKey(name: "locale_attribute_name")
  LocaleName get localeAttributeName;
  @override
  @JsonKey(name: "locale_name")
  LocaleName get localeName;
  @override
  @JsonKey(name: "num")
  int get num;
  @override
  @JsonKey(name: "price")
  double get price;
  @override
  @JsonKey(name: "sale_order_product_uuid")
  int get saleOrderProductUuid;

  /// Create a copy of RespOrderReturnProduct
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RespOrderReturnProductImplCopyWith<_$RespOrderReturnProductImpl>
      get copyWith => throw _privateConstructorUsedError;
}

OrderReturnProductList _$OrderReturnProductListFromJson(
    Map<String, dynamic> json) {
  return _OrderReturnProductList.fromJson(json);
}

/// @nodoc
mixin _$OrderReturnProductList {
  @JsonKey(name: "can_return_amount")
  double get canReturnAmount => throw _privateConstructorUsedError;
  @JsonKey(name: "can_return_amount")
  set canReturnAmount(double value) => throw _privateConstructorUsedError;
  @JsonKey(name: "currency_unit")
  String get currencyUnit => throw _privateConstructorUsedError;
  @JsonKey(name: "currency_unit")
  set currencyUnit(String value) => throw _privateConstructorUsedError;
  @JsonKey(name: "locale_attribute_name")
  LocaleName get localeAttributeName => throw _privateConstructorUsedError;
  @JsonKey(name: "locale_attribute_name")
  set localeAttributeName(LocaleName value) =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "locale_name")
  LocaleName get localeName => throw _privateConstructorUsedError;
  @JsonKey(name: "locale_name")
  set localeName(LocaleName value) => throw _privateConstructorUsedError;
  @JsonKey(name: "num")
  int get num => throw _privateConstructorUsedError;
  @JsonKey(name: "num")
  set num(int value) => throw _privateConstructorUsedError;
  @JsonKey(name: "price")
  double get price => throw _privateConstructorUsedError;
  @JsonKey(name: "price")
  set price(double value) => throw _privateConstructorUsedError;
  @JsonKey(name: "sale_order_product_uuid")
  int get saleOrderProductUuid => throw _privateConstructorUsedError;
  @JsonKey(name: "sale_order_product_uuid")
  set saleOrderProductUuid(int value) => throw _privateConstructorUsedError;
  @JsonKey(name: "refund_num")
  int get refundNum => throw _privateConstructorUsedError;
  @JsonKey(name: "refund_num")
  set refundNum(int value) => throw _privateConstructorUsedError;

  /// Serializes this OrderReturnProductList to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OrderReturnProductList
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OrderReturnProductListCopyWith<OrderReturnProductList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderReturnProductListCopyWith<$Res> {
  factory $OrderReturnProductListCopyWith(OrderReturnProductList value,
          $Res Function(OrderReturnProductList) then) =
      _$OrderReturnProductListCopyWithImpl<$Res, OrderReturnProductList>;
  @useResult
  $Res call(
      {@JsonKey(name: "can_return_amount") double canReturnAmount,
      @JsonKey(name: "currency_unit") String currencyUnit,
      @JsonKey(name: "locale_attribute_name") LocaleName localeAttributeName,
      @JsonKey(name: "locale_name") LocaleName localeName,
      @JsonKey(name: "num") int num,
      @JsonKey(name: "price") double price,
      @JsonKey(name: "sale_order_product_uuid") int saleOrderProductUuid,
      @JsonKey(name: "refund_num") int refundNum});

  $LocaleNameCopyWith<$Res> get localeAttributeName;
  $LocaleNameCopyWith<$Res> get localeName;
}

/// @nodoc
class _$OrderReturnProductListCopyWithImpl<$Res,
        $Val extends OrderReturnProductList>
    implements $OrderReturnProductListCopyWith<$Res> {
  _$OrderReturnProductListCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OrderReturnProductList
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? canReturnAmount = null,
    Object? currencyUnit = null,
    Object? localeAttributeName = null,
    Object? localeName = null,
    Object? num = null,
    Object? price = null,
    Object? saleOrderProductUuid = null,
    Object? refundNum = null,
  }) {
    return _then(_value.copyWith(
      canReturnAmount: null == canReturnAmount
          ? _value.canReturnAmount
          : canReturnAmount // ignore: cast_nullable_to_non_nullable
              as double,
      currencyUnit: null == currencyUnit
          ? _value.currencyUnit
          : currencyUnit // ignore: cast_nullable_to_non_nullable
              as String,
      localeAttributeName: null == localeAttributeName
          ? _value.localeAttributeName
          : localeAttributeName // ignore: cast_nullable_to_non_nullable
              as LocaleName,
      localeName: null == localeName
          ? _value.localeName
          : localeName // ignore: cast_nullable_to_non_nullable
              as LocaleName,
      num: null == num
          ? _value.num
          : num // ignore: cast_nullable_to_non_nullable
              as int,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      saleOrderProductUuid: null == saleOrderProductUuid
          ? _value.saleOrderProductUuid
          : saleOrderProductUuid // ignore: cast_nullable_to_non_nullable
              as int,
      refundNum: null == refundNum
          ? _value.refundNum
          : refundNum // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }

  /// Create a copy of OrderReturnProductList
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LocaleNameCopyWith<$Res> get localeAttributeName {
    return $LocaleNameCopyWith<$Res>(_value.localeAttributeName, (value) {
      return _then(_value.copyWith(localeAttributeName: value) as $Val);
    });
  }

  /// Create a copy of OrderReturnProductList
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LocaleNameCopyWith<$Res> get localeName {
    return $LocaleNameCopyWith<$Res>(_value.localeName, (value) {
      return _then(_value.copyWith(localeName: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$OrderReturnProductListImplCopyWith<$Res>
    implements $OrderReturnProductListCopyWith<$Res> {
  factory _$$OrderReturnProductListImplCopyWith(
          _$OrderReturnProductListImpl value,
          $Res Function(_$OrderReturnProductListImpl) then) =
      __$$OrderReturnProductListImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "can_return_amount") double canReturnAmount,
      @JsonKey(name: "currency_unit") String currencyUnit,
      @JsonKey(name: "locale_attribute_name") LocaleName localeAttributeName,
      @JsonKey(name: "locale_name") LocaleName localeName,
      @JsonKey(name: "num") int num,
      @JsonKey(name: "price") double price,
      @JsonKey(name: "sale_order_product_uuid") int saleOrderProductUuid,
      @JsonKey(name: "refund_num") int refundNum});

  @override
  $LocaleNameCopyWith<$Res> get localeAttributeName;
  @override
  $LocaleNameCopyWith<$Res> get localeName;
}

/// @nodoc
class __$$OrderReturnProductListImplCopyWithImpl<$Res>
    extends _$OrderReturnProductListCopyWithImpl<$Res,
        _$OrderReturnProductListImpl>
    implements _$$OrderReturnProductListImplCopyWith<$Res> {
  __$$OrderReturnProductListImplCopyWithImpl(
      _$OrderReturnProductListImpl _value,
      $Res Function(_$OrderReturnProductListImpl) _then)
      : super(_value, _then);

  /// Create a copy of OrderReturnProductList
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? canReturnAmount = null,
    Object? currencyUnit = null,
    Object? localeAttributeName = null,
    Object? localeName = null,
    Object? num = null,
    Object? price = null,
    Object? saleOrderProductUuid = null,
    Object? refundNum = null,
  }) {
    return _then(_$OrderReturnProductListImpl(
      canReturnAmount: null == canReturnAmount
          ? _value.canReturnAmount
          : canReturnAmount // ignore: cast_nullable_to_non_nullable
              as double,
      currencyUnit: null == currencyUnit
          ? _value.currencyUnit
          : currencyUnit // ignore: cast_nullable_to_non_nullable
              as String,
      localeAttributeName: null == localeAttributeName
          ? _value.localeAttributeName
          : localeAttributeName // ignore: cast_nullable_to_non_nullable
              as LocaleName,
      localeName: null == localeName
          ? _value.localeName
          : localeName // ignore: cast_nullable_to_non_nullable
              as LocaleName,
      num: null == num
          ? _value.num
          : num // ignore: cast_nullable_to_non_nullable
              as int,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      saleOrderProductUuid: null == saleOrderProductUuid
          ? _value.saleOrderProductUuid
          : saleOrderProductUuid // ignore: cast_nullable_to_non_nullable
              as int,
      refundNum: null == refundNum
          ? _value.refundNum
          : refundNum // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OrderReturnProductListImpl implements _OrderReturnProductList {
  _$OrderReturnProductListImpl(
      {@JsonKey(name: "can_return_amount") required this.canReturnAmount,
      @JsonKey(name: "currency_unit") required this.currencyUnit,
      @JsonKey(name: "locale_attribute_name") required this.localeAttributeName,
      @JsonKey(name: "locale_name") required this.localeName,
      @JsonKey(name: "num") required this.num,
      @JsonKey(name: "price") required this.price,
      @JsonKey(name: "sale_order_product_uuid")
      required this.saleOrderProductUuid,
      @JsonKey(name: "refund_num") required this.refundNum});

  factory _$OrderReturnProductListImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrderReturnProductListImplFromJson(json);

  @override
  @JsonKey(name: "can_return_amount")
  double canReturnAmount;
  @override
  @JsonKey(name: "currency_unit")
  String currencyUnit;
  @override
  @JsonKey(name: "locale_attribute_name")
  LocaleName localeAttributeName;
  @override
  @JsonKey(name: "locale_name")
  LocaleName localeName;
  @override
  @JsonKey(name: "num")
  int num;
  @override
  @JsonKey(name: "price")
  double price;
  @override
  @JsonKey(name: "sale_order_product_uuid")
  int saleOrderProductUuid;
  @override
  @JsonKey(name: "refund_num")
  int refundNum;

  @override
  String toString() {
    return 'OrderReturnProductList(canReturnAmount: $canReturnAmount, currencyUnit: $currencyUnit, localeAttributeName: $localeAttributeName, localeName: $localeName, num: $num, price: $price, saleOrderProductUuid: $saleOrderProductUuid, refundNum: $refundNum)';
  }

  /// Create a copy of OrderReturnProductList
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderReturnProductListImplCopyWith<_$OrderReturnProductListImpl>
      get copyWith => __$$OrderReturnProductListImplCopyWithImpl<
          _$OrderReturnProductListImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OrderReturnProductListImplToJson(
      this,
    );
  }
}

abstract class _OrderReturnProductList implements OrderReturnProductList {
  factory _OrderReturnProductList(
          {@JsonKey(name: "can_return_amount") required double canReturnAmount,
          @JsonKey(name: "currency_unit") required String currencyUnit,
          @JsonKey(name: "locale_attribute_name")
          required LocaleName localeAttributeName,
          @JsonKey(name: "locale_name") required LocaleName localeName,
          @JsonKey(name: "num") required int num,
          @JsonKey(name: "price") required double price,
          @JsonKey(name: "sale_order_product_uuid")
          required int saleOrderProductUuid,
          @JsonKey(name: "refund_num") required int refundNum}) =
      _$OrderReturnProductListImpl;

  factory _OrderReturnProductList.fromJson(Map<String, dynamic> json) =
      _$OrderReturnProductListImpl.fromJson;

  @override
  @JsonKey(name: "can_return_amount")
  double get canReturnAmount;
  @JsonKey(name: "can_return_amount")
  set canReturnAmount(double value);
  @override
  @JsonKey(name: "currency_unit")
  String get currencyUnit;
  @JsonKey(name: "currency_unit")
  set currencyUnit(String value);
  @override
  @JsonKey(name: "locale_attribute_name")
  LocaleName get localeAttributeName;
  @JsonKey(name: "locale_attribute_name")
  set localeAttributeName(LocaleName value);
  @override
  @JsonKey(name: "locale_name")
  LocaleName get localeName;
  @JsonKey(name: "locale_name")
  set localeName(LocaleName value);
  @override
  @JsonKey(name: "num")
  int get num;
  @JsonKey(name: "num")
  set num(int value);
  @override
  @JsonKey(name: "price")
  double get price;
  @JsonKey(name: "price")
  set price(double value);
  @override
  @JsonKey(name: "sale_order_product_uuid")
  int get saleOrderProductUuid;
  @JsonKey(name: "sale_order_product_uuid")
  set saleOrderProductUuid(int value);
  @override
  @JsonKey(name: "refund_num")
  int get refundNum;
  @JsonKey(name: "refund_num")
  set refundNum(int value);

  /// Create a copy of OrderReturnProductList
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OrderReturnProductListImplCopyWith<_$OrderReturnProductListImpl>
      get copyWith => throw _privateConstructorUsedError;
}

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pick_order.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ResponsePickOrder _$ResponsePickOrderFromJson(Map<String, dynamic> json) {
  return _ResponsePickOrder.fromJson(json);
}

/// @nodoc
mixin _$ResponsePickOrder {
  @JsonKey(name: "amount")
  double get amount => throw _privateConstructorUsedError;
  @JsonKey(name: "hide_bill_time")
  int get hideBillTime => throw _privateConstructorUsedError;
  @JsonKey(name: "products")
  BaseList<ResponseCartProduct> get products =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "sale_bill_uuid")
  int get saleBillUuid => throw _privateConstructorUsedError;
  @JsonKey(name: "serial_no")
  String get serialNo => throw _privateConstructorUsedError;

  /// Serializes this ResponsePickOrder to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ResponsePickOrder
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ResponsePickOrderCopyWith<ResponsePickOrder> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResponsePickOrderCopyWith<$Res> {
  factory $ResponsePickOrderCopyWith(
          ResponsePickOrder value, $Res Function(ResponsePickOrder) then) =
      _$ResponsePickOrderCopyWithImpl<$Res, ResponsePickOrder>;
  @useResult
  $Res call(
      {@JsonKey(name: "amount") double amount,
      @JsonKey(name: "hide_bill_time") int hideBillTime,
      @JsonKey(name: "products") BaseList<ResponseCartProduct> products,
      @JsonKey(name: "sale_bill_uuid") int saleBillUuid,
      @JsonKey(name: "serial_no") String serialNo});

  $BaseListCopyWith<ResponseCartProduct, $Res> get products;
}

/// @nodoc
class _$ResponsePickOrderCopyWithImpl<$Res, $Val extends ResponsePickOrder>
    implements $ResponsePickOrderCopyWith<$Res> {
  _$ResponsePickOrderCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ResponsePickOrder
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? amount = null,
    Object? hideBillTime = null,
    Object? products = null,
    Object? saleBillUuid = null,
    Object? serialNo = null,
  }) {
    return _then(_value.copyWith(
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      hideBillTime: null == hideBillTime
          ? _value.hideBillTime
          : hideBillTime // ignore: cast_nullable_to_non_nullable
              as int,
      products: null == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as BaseList<ResponseCartProduct>,
      saleBillUuid: null == saleBillUuid
          ? _value.saleBillUuid
          : saleBillUuid // ignore: cast_nullable_to_non_nullable
              as int,
      serialNo: null == serialNo
          ? _value.serialNo
          : serialNo // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  /// Create a copy of ResponsePickOrder
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BaseListCopyWith<ResponseCartProduct, $Res> get products {
    return $BaseListCopyWith<ResponseCartProduct, $Res>(_value.products,
        (value) {
      return _then(_value.copyWith(products: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ResponsePickOrderImplCopyWith<$Res>
    implements $ResponsePickOrderCopyWith<$Res> {
  factory _$$ResponsePickOrderImplCopyWith(_$ResponsePickOrderImpl value,
          $Res Function(_$ResponsePickOrderImpl) then) =
      __$$ResponsePickOrderImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "amount") double amount,
      @JsonKey(name: "hide_bill_time") int hideBillTime,
      @JsonKey(name: "products") BaseList<ResponseCartProduct> products,
      @JsonKey(name: "sale_bill_uuid") int saleBillUuid,
      @JsonKey(name: "serial_no") String serialNo});

  @override
  $BaseListCopyWith<ResponseCartProduct, $Res> get products;
}

/// @nodoc
class __$$ResponsePickOrderImplCopyWithImpl<$Res>
    extends _$ResponsePickOrderCopyWithImpl<$Res, _$ResponsePickOrderImpl>
    implements _$$ResponsePickOrderImplCopyWith<$Res> {
  __$$ResponsePickOrderImplCopyWithImpl(_$ResponsePickOrderImpl _value,
      $Res Function(_$ResponsePickOrderImpl) _then)
      : super(_value, _then);

  /// Create a copy of ResponsePickOrder
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? amount = null,
    Object? hideBillTime = null,
    Object? products = null,
    Object? saleBillUuid = null,
    Object? serialNo = null,
  }) {
    return _then(_$ResponsePickOrderImpl(
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      hideBillTime: null == hideBillTime
          ? _value.hideBillTime
          : hideBillTime // ignore: cast_nullable_to_non_nullable
              as int,
      products: null == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as BaseList<ResponseCartProduct>,
      saleBillUuid: null == saleBillUuid
          ? _value.saleBillUuid
          : saleBillUuid // ignore: cast_nullable_to_non_nullable
              as int,
      serialNo: null == serialNo
          ? _value.serialNo
          : serialNo // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ResponsePickOrderImpl implements _ResponsePickOrder {
  const _$ResponsePickOrderImpl(
      {@JsonKey(name: "amount") required this.amount,
      @JsonKey(name: "hide_bill_time") required this.hideBillTime,
      @JsonKey(name: "products") required this.products,
      @JsonKey(name: "sale_bill_uuid") required this.saleBillUuid,
      @JsonKey(name: "serial_no") required this.serialNo});

  factory _$ResponsePickOrderImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResponsePickOrderImplFromJson(json);

  @override
  @JsonKey(name: "amount")
  final double amount;
  @override
  @JsonKey(name: "hide_bill_time")
  final int hideBillTime;
  @override
  @JsonKey(name: "products")
  final BaseList<ResponseCartProduct> products;
  @override
  @JsonKey(name: "sale_bill_uuid")
  final int saleBillUuid;
  @override
  @JsonKey(name: "serial_no")
  final String serialNo;

  @override
  String toString() {
    return 'ResponsePickOrder(amount: $amount, hideBillTime: $hideBillTime, products: $products, saleBillUuid: $saleBillUuid, serialNo: $serialNo)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResponsePickOrderImpl &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.hideBillTime, hideBillTime) ||
                other.hideBillTime == hideBillTime) &&
            (identical(other.products, products) ||
                other.products == products) &&
            (identical(other.saleBillUuid, saleBillUuid) ||
                other.saleBillUuid == saleBillUuid) &&
            (identical(other.serialNo, serialNo) ||
                other.serialNo == serialNo));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, amount, hideBillTime, products, saleBillUuid, serialNo);

  /// Create a copy of ResponsePickOrder
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ResponsePickOrderImplCopyWith<_$ResponsePickOrderImpl> get copyWith =>
      __$$ResponsePickOrderImplCopyWithImpl<_$ResponsePickOrderImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResponsePickOrderImplToJson(
      this,
    );
  }
}

abstract class _ResponsePickOrder implements ResponsePickOrder {
  const factory _ResponsePickOrder(
          {@JsonKey(name: "amount") required final double amount,
          @JsonKey(name: "hide_bill_time") required final int hideBillTime,
          @JsonKey(name: "products")
          required final BaseList<ResponseCartProduct> products,
          @JsonKey(name: "sale_bill_uuid") required final int saleBillUuid,
          @JsonKey(name: "serial_no") required final String serialNo}) =
      _$ResponsePickOrderImpl;

  factory _ResponsePickOrder.fromJson(Map<String, dynamic> json) =
      _$ResponsePickOrderImpl.fromJson;

  @override
  @JsonKey(name: "amount")
  double get amount;
  @override
  @JsonKey(name: "hide_bill_time")
  int get hideBillTime;
  @override
  @JsonKey(name: "products")
  BaseList<ResponseCartProduct> get products;
  @override
  @JsonKey(name: "sale_bill_uuid")
  int get saleBillUuid;
  @override
  @JsonKey(name: "serial_no")
  String get serialNo;

  /// Create a copy of ResponsePickOrder
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ResponsePickOrderImplCopyWith<_$ResponsePickOrderImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

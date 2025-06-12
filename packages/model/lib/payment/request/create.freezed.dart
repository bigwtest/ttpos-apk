// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RequestCreatePaymentOrder _$RequestCreatePaymentOrderFromJson(
    Map<String, dynamic> json) {
  return _RequestCreatePaymentOrder.fromJson(json);
}

/// @nodoc
mixin _$RequestCreatePaymentOrder {
  @JsonKey(name: "sale_bill_uuid")
  int get saleBillUuid => throw _privateConstructorUsedError;
  @JsonKey(name: "sale_bill_uuid")
  set saleBillUuid(int value) => throw _privateConstructorUsedError;
  @JsonKey(name: "sale_order_uuid")
  int get saleOrderUuid => throw _privateConstructorUsedError;
  @JsonKey(name: "sale_order_uuid")
  set saleOrderUuid(int value) => throw _privateConstructorUsedError;
  @JsonKey(name: "payment_method_uuid")
  int get paymentMethodUuid => throw _privateConstructorUsedError;
  @JsonKey(name: "payment_method_uuid")
  set paymentMethodUuid(int value) => throw _privateConstructorUsedError;
  @JsonKey(name: "payment_amount")
  double get paymentAmount => throw _privateConstructorUsedError;
  @JsonKey(name: "payment_amount")
  set paymentAmount(double value) => throw _privateConstructorUsedError;
  @JsonKey(name: "payment_order_uuid")
  int? get paymentOrderUuid => throw _privateConstructorUsedError;
  @JsonKey(name: "payment_order_uuid")
  set paymentOrderUuid(int? value) => throw _privateConstructorUsedError;

  /// Serializes this RequestCreatePaymentOrder to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RequestCreatePaymentOrder
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RequestCreatePaymentOrderCopyWith<RequestCreatePaymentOrder> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RequestCreatePaymentOrderCopyWith<$Res> {
  factory $RequestCreatePaymentOrderCopyWith(RequestCreatePaymentOrder value,
          $Res Function(RequestCreatePaymentOrder) then) =
      _$RequestCreatePaymentOrderCopyWithImpl<$Res, RequestCreatePaymentOrder>;
  @useResult
  $Res call(
      {@JsonKey(name: "sale_bill_uuid") int saleBillUuid,
      @JsonKey(name: "sale_order_uuid") int saleOrderUuid,
      @JsonKey(name: "payment_method_uuid") int paymentMethodUuid,
      @JsonKey(name: "payment_amount") double paymentAmount,
      @JsonKey(name: "payment_order_uuid") int? paymentOrderUuid});
}

/// @nodoc
class _$RequestCreatePaymentOrderCopyWithImpl<$Res,
        $Val extends RequestCreatePaymentOrder>
    implements $RequestCreatePaymentOrderCopyWith<$Res> {
  _$RequestCreatePaymentOrderCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RequestCreatePaymentOrder
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? saleBillUuid = null,
    Object? saleOrderUuid = null,
    Object? paymentMethodUuid = null,
    Object? paymentAmount = null,
    Object? paymentOrderUuid = freezed,
  }) {
    return _then(_value.copyWith(
      saleBillUuid: null == saleBillUuid
          ? _value.saleBillUuid
          : saleBillUuid // ignore: cast_nullable_to_non_nullable
              as int,
      saleOrderUuid: null == saleOrderUuid
          ? _value.saleOrderUuid
          : saleOrderUuid // ignore: cast_nullable_to_non_nullable
              as int,
      paymentMethodUuid: null == paymentMethodUuid
          ? _value.paymentMethodUuid
          : paymentMethodUuid // ignore: cast_nullable_to_non_nullable
              as int,
      paymentAmount: null == paymentAmount
          ? _value.paymentAmount
          : paymentAmount // ignore: cast_nullable_to_non_nullable
              as double,
      paymentOrderUuid: freezed == paymentOrderUuid
          ? _value.paymentOrderUuid
          : paymentOrderUuid // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RequestCreatePaymentOrderImplCopyWith<$Res>
    implements $RequestCreatePaymentOrderCopyWith<$Res> {
  factory _$$RequestCreatePaymentOrderImplCopyWith(
          _$RequestCreatePaymentOrderImpl value,
          $Res Function(_$RequestCreatePaymentOrderImpl) then) =
      __$$RequestCreatePaymentOrderImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "sale_bill_uuid") int saleBillUuid,
      @JsonKey(name: "sale_order_uuid") int saleOrderUuid,
      @JsonKey(name: "payment_method_uuid") int paymentMethodUuid,
      @JsonKey(name: "payment_amount") double paymentAmount,
      @JsonKey(name: "payment_order_uuid") int? paymentOrderUuid});
}

/// @nodoc
class __$$RequestCreatePaymentOrderImplCopyWithImpl<$Res>
    extends _$RequestCreatePaymentOrderCopyWithImpl<$Res,
        _$RequestCreatePaymentOrderImpl>
    implements _$$RequestCreatePaymentOrderImplCopyWith<$Res> {
  __$$RequestCreatePaymentOrderImplCopyWithImpl(
      _$RequestCreatePaymentOrderImpl _value,
      $Res Function(_$RequestCreatePaymentOrderImpl) _then)
      : super(_value, _then);

  /// Create a copy of RequestCreatePaymentOrder
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? saleBillUuid = null,
    Object? saleOrderUuid = null,
    Object? paymentMethodUuid = null,
    Object? paymentAmount = null,
    Object? paymentOrderUuid = freezed,
  }) {
    return _then(_$RequestCreatePaymentOrderImpl(
      saleBillUuid: null == saleBillUuid
          ? _value.saleBillUuid
          : saleBillUuid // ignore: cast_nullable_to_non_nullable
              as int,
      saleOrderUuid: null == saleOrderUuid
          ? _value.saleOrderUuid
          : saleOrderUuid // ignore: cast_nullable_to_non_nullable
              as int,
      paymentMethodUuid: null == paymentMethodUuid
          ? _value.paymentMethodUuid
          : paymentMethodUuid // ignore: cast_nullable_to_non_nullable
              as int,
      paymentAmount: null == paymentAmount
          ? _value.paymentAmount
          : paymentAmount // ignore: cast_nullable_to_non_nullable
              as double,
      paymentOrderUuid: freezed == paymentOrderUuid
          ? _value.paymentOrderUuid
          : paymentOrderUuid // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RequestCreatePaymentOrderImpl implements _RequestCreatePaymentOrder {
  _$RequestCreatePaymentOrderImpl(
      {@JsonKey(name: "sale_bill_uuid") required this.saleBillUuid,
      @JsonKey(name: "sale_order_uuid") required this.saleOrderUuid,
      @JsonKey(name: "payment_method_uuid") required this.paymentMethodUuid,
      @JsonKey(name: "payment_amount") required this.paymentAmount,
      @JsonKey(name: "payment_order_uuid") this.paymentOrderUuid});

  factory _$RequestCreatePaymentOrderImpl.fromJson(Map<String, dynamic> json) =>
      _$$RequestCreatePaymentOrderImplFromJson(json);

  @override
  @JsonKey(name: "sale_bill_uuid")
  int saleBillUuid;
  @override
  @JsonKey(name: "sale_order_uuid")
  int saleOrderUuid;
  @override
  @JsonKey(name: "payment_method_uuid")
  int paymentMethodUuid;
  @override
  @JsonKey(name: "payment_amount")
  double paymentAmount;
  @override
  @JsonKey(name: "payment_order_uuid")
  int? paymentOrderUuid;

  @override
  String toString() {
    return 'RequestCreatePaymentOrder(saleBillUuid: $saleBillUuid, saleOrderUuid: $saleOrderUuid, paymentMethodUuid: $paymentMethodUuid, paymentAmount: $paymentAmount, paymentOrderUuid: $paymentOrderUuid)';
  }

  /// Create a copy of RequestCreatePaymentOrder
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RequestCreatePaymentOrderImplCopyWith<_$RequestCreatePaymentOrderImpl>
      get copyWith => __$$RequestCreatePaymentOrderImplCopyWithImpl<
          _$RequestCreatePaymentOrderImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RequestCreatePaymentOrderImplToJson(
      this,
    );
  }
}

abstract class _RequestCreatePaymentOrder implements RequestCreatePaymentOrder {
  factory _RequestCreatePaymentOrder(
          {@JsonKey(name: "sale_bill_uuid") required int saleBillUuid,
          @JsonKey(name: "sale_order_uuid") required int saleOrderUuid,
          @JsonKey(name: "payment_method_uuid") required int paymentMethodUuid,
          @JsonKey(name: "payment_amount") required double paymentAmount,
          @JsonKey(name: "payment_order_uuid") int? paymentOrderUuid}) =
      _$RequestCreatePaymentOrderImpl;

  factory _RequestCreatePaymentOrder.fromJson(Map<String, dynamic> json) =
      _$RequestCreatePaymentOrderImpl.fromJson;

  @override
  @JsonKey(name: "sale_bill_uuid")
  int get saleBillUuid;
  @JsonKey(name: "sale_bill_uuid")
  set saleBillUuid(int value);
  @override
  @JsonKey(name: "sale_order_uuid")
  int get saleOrderUuid;
  @JsonKey(name: "sale_order_uuid")
  set saleOrderUuid(int value);
  @override
  @JsonKey(name: "payment_method_uuid")
  int get paymentMethodUuid;
  @JsonKey(name: "payment_method_uuid")
  set paymentMethodUuid(int value);
  @override
  @JsonKey(name: "payment_amount")
  double get paymentAmount;
  @JsonKey(name: "payment_amount")
  set paymentAmount(double value);
  @override
  @JsonKey(name: "payment_order_uuid")
  int? get paymentOrderUuid;
  @JsonKey(name: "payment_order_uuid")
  set paymentOrderUuid(int? value);

  /// Create a copy of RequestCreatePaymentOrder
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RequestCreatePaymentOrderImplCopyWith<_$RequestCreatePaymentOrderImpl>
      get copyWith => throw _privateConstructorUsedError;
}

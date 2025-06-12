// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cancel.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RequestCancelPaymentOrder _$RequestCancelPaymentOrderFromJson(
    Map<String, dynamic> json) {
  return _RequestCancelPaymentOrder.fromJson(json);
}

/// @nodoc
mixin _$RequestCancelPaymentOrder {
  @JsonKey(name: "sale_bill_uuid")
  int get saleBillUuid => throw _privateConstructorUsedError;
  @JsonKey(name: "sale_bill_uuid")
  set saleBillUuid(int value) => throw _privateConstructorUsedError;
  @JsonKey(name: "sale_order_uuid")
  int get saleOrderUuid => throw _privateConstructorUsedError;
  @JsonKey(name: "sale_order_uuid")
  set saleOrderUuid(int value) => throw _privateConstructorUsedError;
  @JsonKey(name: "payment_order_uuid")
  int get paymentOrderUuid => throw _privateConstructorUsedError;
  @JsonKey(name: "payment_order_uuid")
  set paymentOrderUuid(int value) => throw _privateConstructorUsedError;

  /// Serializes this RequestCancelPaymentOrder to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RequestCancelPaymentOrder
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RequestCancelPaymentOrderCopyWith<RequestCancelPaymentOrder> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RequestCancelPaymentOrderCopyWith<$Res> {
  factory $RequestCancelPaymentOrderCopyWith(RequestCancelPaymentOrder value,
          $Res Function(RequestCancelPaymentOrder) then) =
      _$RequestCancelPaymentOrderCopyWithImpl<$Res, RequestCancelPaymentOrder>;
  @useResult
  $Res call(
      {@JsonKey(name: "sale_bill_uuid") int saleBillUuid,
      @JsonKey(name: "sale_order_uuid") int saleOrderUuid,
      @JsonKey(name: "payment_order_uuid") int paymentOrderUuid});
}

/// @nodoc
class _$RequestCancelPaymentOrderCopyWithImpl<$Res,
        $Val extends RequestCancelPaymentOrder>
    implements $RequestCancelPaymentOrderCopyWith<$Res> {
  _$RequestCancelPaymentOrderCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RequestCancelPaymentOrder
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? saleBillUuid = null,
    Object? saleOrderUuid = null,
    Object? paymentOrderUuid = null,
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
      paymentOrderUuid: null == paymentOrderUuid
          ? _value.paymentOrderUuid
          : paymentOrderUuid // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RequestCancelPaymentOrderImplCopyWith<$Res>
    implements $RequestCancelPaymentOrderCopyWith<$Res> {
  factory _$$RequestCancelPaymentOrderImplCopyWith(
          _$RequestCancelPaymentOrderImpl value,
          $Res Function(_$RequestCancelPaymentOrderImpl) then) =
      __$$RequestCancelPaymentOrderImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "sale_bill_uuid") int saleBillUuid,
      @JsonKey(name: "sale_order_uuid") int saleOrderUuid,
      @JsonKey(name: "payment_order_uuid") int paymentOrderUuid});
}

/// @nodoc
class __$$RequestCancelPaymentOrderImplCopyWithImpl<$Res>
    extends _$RequestCancelPaymentOrderCopyWithImpl<$Res,
        _$RequestCancelPaymentOrderImpl>
    implements _$$RequestCancelPaymentOrderImplCopyWith<$Res> {
  __$$RequestCancelPaymentOrderImplCopyWithImpl(
      _$RequestCancelPaymentOrderImpl _value,
      $Res Function(_$RequestCancelPaymentOrderImpl) _then)
      : super(_value, _then);

  /// Create a copy of RequestCancelPaymentOrder
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? saleBillUuid = null,
    Object? saleOrderUuid = null,
    Object? paymentOrderUuid = null,
  }) {
    return _then(_$RequestCancelPaymentOrderImpl(
      saleBillUuid: null == saleBillUuid
          ? _value.saleBillUuid
          : saleBillUuid // ignore: cast_nullable_to_non_nullable
              as int,
      saleOrderUuid: null == saleOrderUuid
          ? _value.saleOrderUuid
          : saleOrderUuid // ignore: cast_nullable_to_non_nullable
              as int,
      paymentOrderUuid: null == paymentOrderUuid
          ? _value.paymentOrderUuid
          : paymentOrderUuid // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RequestCancelPaymentOrderImpl implements _RequestCancelPaymentOrder {
  _$RequestCancelPaymentOrderImpl(
      {@JsonKey(name: "sale_bill_uuid") required this.saleBillUuid,
      @JsonKey(name: "sale_order_uuid") required this.saleOrderUuid,
      @JsonKey(name: "payment_order_uuid") required this.paymentOrderUuid});

  factory _$RequestCancelPaymentOrderImpl.fromJson(Map<String, dynamic> json) =>
      _$$RequestCancelPaymentOrderImplFromJson(json);

  @override
  @JsonKey(name: "sale_bill_uuid")
  int saleBillUuid;
  @override
  @JsonKey(name: "sale_order_uuid")
  int saleOrderUuid;
  @override
  @JsonKey(name: "payment_order_uuid")
  int paymentOrderUuid;

  @override
  String toString() {
    return 'RequestCancelPaymentOrder(saleBillUuid: $saleBillUuid, saleOrderUuid: $saleOrderUuid, paymentOrderUuid: $paymentOrderUuid)';
  }

  /// Create a copy of RequestCancelPaymentOrder
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RequestCancelPaymentOrderImplCopyWith<_$RequestCancelPaymentOrderImpl>
      get copyWith => __$$RequestCancelPaymentOrderImplCopyWithImpl<
          _$RequestCancelPaymentOrderImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RequestCancelPaymentOrderImplToJson(
      this,
    );
  }
}

abstract class _RequestCancelPaymentOrder implements RequestCancelPaymentOrder {
  factory _RequestCancelPaymentOrder(
          {@JsonKey(name: "sale_bill_uuid") required int saleBillUuid,
          @JsonKey(name: "sale_order_uuid") required int saleOrderUuid,
          @JsonKey(name: "payment_order_uuid") required int paymentOrderUuid}) =
      _$RequestCancelPaymentOrderImpl;

  factory _RequestCancelPaymentOrder.fromJson(Map<String, dynamic> json) =
      _$RequestCancelPaymentOrderImpl.fromJson;

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
  @JsonKey(name: "payment_order_uuid")
  int get paymentOrderUuid;
  @JsonKey(name: "payment_order_uuid")
  set paymentOrderUuid(int value);

  /// Create a copy of RequestCancelPaymentOrder
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RequestCancelPaymentOrderImplCopyWith<_$RequestCancelPaymentOrderImpl>
      get copyWith => throw _privateConstructorUsedError;
}

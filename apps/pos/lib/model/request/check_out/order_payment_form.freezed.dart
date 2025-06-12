// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_payment_form.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RequestOrderPaymentForm _$RequestOrderPaymentFormFromJson(
    Map<String, dynamic> json) {
  return _RequestOrderPaymentForm.fromJson(json);
}

/// @nodoc
mixin _$RequestOrderPaymentForm {
  @JsonKey(name: "payment_amount")
  double get paymentAmount => throw _privateConstructorUsedError;
  @JsonKey(name: "payment_method_uuid")
  int get paymentMethodUuid => throw _privateConstructorUsedError;
  @JsonKey(name: "sale_bill_uuid")
  int get saleBillUuid => throw _privateConstructorUsedError;
  @JsonKey(name: "sale_order_uuid")
  int get saleOrderUuid => throw _privateConstructorUsedError;

  /// Serializes this RequestOrderPaymentForm to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RequestOrderPaymentForm
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RequestOrderPaymentFormCopyWith<RequestOrderPaymentForm> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RequestOrderPaymentFormCopyWith<$Res> {
  factory $RequestOrderPaymentFormCopyWith(RequestOrderPaymentForm value,
          $Res Function(RequestOrderPaymentForm) then) =
      _$RequestOrderPaymentFormCopyWithImpl<$Res, RequestOrderPaymentForm>;
  @useResult
  $Res call(
      {@JsonKey(name: "payment_amount") double paymentAmount,
      @JsonKey(name: "payment_method_uuid") int paymentMethodUuid,
      @JsonKey(name: "sale_bill_uuid") int saleBillUuid,
      @JsonKey(name: "sale_order_uuid") int saleOrderUuid});
}

/// @nodoc
class _$RequestOrderPaymentFormCopyWithImpl<$Res,
        $Val extends RequestOrderPaymentForm>
    implements $RequestOrderPaymentFormCopyWith<$Res> {
  _$RequestOrderPaymentFormCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RequestOrderPaymentForm
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? paymentAmount = null,
    Object? paymentMethodUuid = null,
    Object? saleBillUuid = null,
    Object? saleOrderUuid = null,
  }) {
    return _then(_value.copyWith(
      paymentAmount: null == paymentAmount
          ? _value.paymentAmount
          : paymentAmount // ignore: cast_nullable_to_non_nullable
              as double,
      paymentMethodUuid: null == paymentMethodUuid
          ? _value.paymentMethodUuid
          : paymentMethodUuid // ignore: cast_nullable_to_non_nullable
              as int,
      saleBillUuid: null == saleBillUuid
          ? _value.saleBillUuid
          : saleBillUuid // ignore: cast_nullable_to_non_nullable
              as int,
      saleOrderUuid: null == saleOrderUuid
          ? _value.saleOrderUuid
          : saleOrderUuid // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RequestOrderPaymentFormImplCopyWith<$Res>
    implements $RequestOrderPaymentFormCopyWith<$Res> {
  factory _$$RequestOrderPaymentFormImplCopyWith(
          _$RequestOrderPaymentFormImpl value,
          $Res Function(_$RequestOrderPaymentFormImpl) then) =
      __$$RequestOrderPaymentFormImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "payment_amount") double paymentAmount,
      @JsonKey(name: "payment_method_uuid") int paymentMethodUuid,
      @JsonKey(name: "sale_bill_uuid") int saleBillUuid,
      @JsonKey(name: "sale_order_uuid") int saleOrderUuid});
}

/// @nodoc
class __$$RequestOrderPaymentFormImplCopyWithImpl<$Res>
    extends _$RequestOrderPaymentFormCopyWithImpl<$Res,
        _$RequestOrderPaymentFormImpl>
    implements _$$RequestOrderPaymentFormImplCopyWith<$Res> {
  __$$RequestOrderPaymentFormImplCopyWithImpl(
      _$RequestOrderPaymentFormImpl _value,
      $Res Function(_$RequestOrderPaymentFormImpl) _then)
      : super(_value, _then);

  /// Create a copy of RequestOrderPaymentForm
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? paymentAmount = null,
    Object? paymentMethodUuid = null,
    Object? saleBillUuid = null,
    Object? saleOrderUuid = null,
  }) {
    return _then(_$RequestOrderPaymentFormImpl(
      paymentAmount: null == paymentAmount
          ? _value.paymentAmount
          : paymentAmount // ignore: cast_nullable_to_non_nullable
              as double,
      paymentMethodUuid: null == paymentMethodUuid
          ? _value.paymentMethodUuid
          : paymentMethodUuid // ignore: cast_nullable_to_non_nullable
              as int,
      saleBillUuid: null == saleBillUuid
          ? _value.saleBillUuid
          : saleBillUuid // ignore: cast_nullable_to_non_nullable
              as int,
      saleOrderUuid: null == saleOrderUuid
          ? _value.saleOrderUuid
          : saleOrderUuid // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RequestOrderPaymentFormImpl implements _RequestOrderPaymentForm {
  const _$RequestOrderPaymentFormImpl(
      {@JsonKey(name: "payment_amount") required this.paymentAmount,
      @JsonKey(name: "payment_method_uuid") required this.paymentMethodUuid,
      @JsonKey(name: "sale_bill_uuid") required this.saleBillUuid,
      @JsonKey(name: "sale_order_uuid") required this.saleOrderUuid});

  factory _$RequestOrderPaymentFormImpl.fromJson(Map<String, dynamic> json) =>
      _$$RequestOrderPaymentFormImplFromJson(json);

  @override
  @JsonKey(name: "payment_amount")
  final double paymentAmount;
  @override
  @JsonKey(name: "payment_method_uuid")
  final int paymentMethodUuid;
  @override
  @JsonKey(name: "sale_bill_uuid")
  final int saleBillUuid;
  @override
  @JsonKey(name: "sale_order_uuid")
  final int saleOrderUuid;

  @override
  String toString() {
    return 'RequestOrderPaymentForm(paymentAmount: $paymentAmount, paymentMethodUuid: $paymentMethodUuid, saleBillUuid: $saleBillUuid, saleOrderUuid: $saleOrderUuid)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RequestOrderPaymentFormImpl &&
            (identical(other.paymentAmount, paymentAmount) ||
                other.paymentAmount == paymentAmount) &&
            (identical(other.paymentMethodUuid, paymentMethodUuid) ||
                other.paymentMethodUuid == paymentMethodUuid) &&
            (identical(other.saleBillUuid, saleBillUuid) ||
                other.saleBillUuid == saleBillUuid) &&
            (identical(other.saleOrderUuid, saleOrderUuid) ||
                other.saleOrderUuid == saleOrderUuid));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, paymentAmount, paymentMethodUuid,
      saleBillUuid, saleOrderUuid);

  /// Create a copy of RequestOrderPaymentForm
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RequestOrderPaymentFormImplCopyWith<_$RequestOrderPaymentFormImpl>
      get copyWith => __$$RequestOrderPaymentFormImplCopyWithImpl<
          _$RequestOrderPaymentFormImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RequestOrderPaymentFormImplToJson(
      this,
    );
  }
}

abstract class _RequestOrderPaymentForm implements RequestOrderPaymentForm {
  const factory _RequestOrderPaymentForm(
          {@JsonKey(name: "payment_amount") required final double paymentAmount,
          @JsonKey(name: "payment_method_uuid")
          required final int paymentMethodUuid,
          @JsonKey(name: "sale_bill_uuid") required final int saleBillUuid,
          @JsonKey(name: "sale_order_uuid") required final int saleOrderUuid}) =
      _$RequestOrderPaymentFormImpl;

  factory _RequestOrderPaymentForm.fromJson(Map<String, dynamic> json) =
      _$RequestOrderPaymentFormImpl.fromJson;

  @override
  @JsonKey(name: "payment_amount")
  double get paymentAmount;
  @override
  @JsonKey(name: "payment_method_uuid")
  int get paymentMethodUuid;
  @override
  @JsonKey(name: "sale_bill_uuid")
  int get saleBillUuid;
  @override
  @JsonKey(name: "sale_order_uuid")
  int get saleOrderUuid;

  /// Create a copy of RequestOrderPaymentForm
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RequestOrderPaymentFormImplCopyWith<_$RequestOrderPaymentFormImpl>
      get copyWith => throw _privateConstructorUsedError;
}

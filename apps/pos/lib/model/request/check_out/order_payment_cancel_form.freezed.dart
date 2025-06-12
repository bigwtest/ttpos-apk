// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_payment_cancel_form.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RequestOrderPaymentCancelForm _$RequestOrderPaymentCancelFormFromJson(
    Map<String, dynamic> json) {
  return _RequestOrderPaymentCancelForm.fromJson(json);
}

/// @nodoc
mixin _$RequestOrderPaymentCancelForm {
  @JsonKey(name: "payment_order_uuid")
  int get paymentOrderUuid => throw _privateConstructorUsedError;
  @JsonKey(name: "sale_bill_uuid")
  int get saleBillUuid => throw _privateConstructorUsedError;
  @JsonKey(name: "sale_order_uuid")
  int get saleOrderUuid => throw _privateConstructorUsedError;

  /// Serializes this RequestOrderPaymentCancelForm to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RequestOrderPaymentCancelForm
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RequestOrderPaymentCancelFormCopyWith<RequestOrderPaymentCancelForm>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RequestOrderPaymentCancelFormCopyWith<$Res> {
  factory $RequestOrderPaymentCancelFormCopyWith(
          RequestOrderPaymentCancelForm value,
          $Res Function(RequestOrderPaymentCancelForm) then) =
      _$RequestOrderPaymentCancelFormCopyWithImpl<$Res,
          RequestOrderPaymentCancelForm>;
  @useResult
  $Res call(
      {@JsonKey(name: "payment_order_uuid") int paymentOrderUuid,
      @JsonKey(name: "sale_bill_uuid") int saleBillUuid,
      @JsonKey(name: "sale_order_uuid") int saleOrderUuid});
}

/// @nodoc
class _$RequestOrderPaymentCancelFormCopyWithImpl<$Res,
        $Val extends RequestOrderPaymentCancelForm>
    implements $RequestOrderPaymentCancelFormCopyWith<$Res> {
  _$RequestOrderPaymentCancelFormCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RequestOrderPaymentCancelForm
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? paymentOrderUuid = null,
    Object? saleBillUuid = null,
    Object? saleOrderUuid = null,
  }) {
    return _then(_value.copyWith(
      paymentOrderUuid: null == paymentOrderUuid
          ? _value.paymentOrderUuid
          : paymentOrderUuid // ignore: cast_nullable_to_non_nullable
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
abstract class _$$RequestOrderPaymentCancelFormImplCopyWith<$Res>
    implements $RequestOrderPaymentCancelFormCopyWith<$Res> {
  factory _$$RequestOrderPaymentCancelFormImplCopyWith(
          _$RequestOrderPaymentCancelFormImpl value,
          $Res Function(_$RequestOrderPaymentCancelFormImpl) then) =
      __$$RequestOrderPaymentCancelFormImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "payment_order_uuid") int paymentOrderUuid,
      @JsonKey(name: "sale_bill_uuid") int saleBillUuid,
      @JsonKey(name: "sale_order_uuid") int saleOrderUuid});
}

/// @nodoc
class __$$RequestOrderPaymentCancelFormImplCopyWithImpl<$Res>
    extends _$RequestOrderPaymentCancelFormCopyWithImpl<$Res,
        _$RequestOrderPaymentCancelFormImpl>
    implements _$$RequestOrderPaymentCancelFormImplCopyWith<$Res> {
  __$$RequestOrderPaymentCancelFormImplCopyWithImpl(
      _$RequestOrderPaymentCancelFormImpl _value,
      $Res Function(_$RequestOrderPaymentCancelFormImpl) _then)
      : super(_value, _then);

  /// Create a copy of RequestOrderPaymentCancelForm
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? paymentOrderUuid = null,
    Object? saleBillUuid = null,
    Object? saleOrderUuid = null,
  }) {
    return _then(_$RequestOrderPaymentCancelFormImpl(
      paymentOrderUuid: null == paymentOrderUuid
          ? _value.paymentOrderUuid
          : paymentOrderUuid // ignore: cast_nullable_to_non_nullable
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
class _$RequestOrderPaymentCancelFormImpl
    implements _RequestOrderPaymentCancelForm {
  const _$RequestOrderPaymentCancelFormImpl(
      {@JsonKey(name: "payment_order_uuid") required this.paymentOrderUuid,
      @JsonKey(name: "sale_bill_uuid") required this.saleBillUuid,
      @JsonKey(name: "sale_order_uuid") required this.saleOrderUuid});

  factory _$RequestOrderPaymentCancelFormImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$RequestOrderPaymentCancelFormImplFromJson(json);

  @override
  @JsonKey(name: "payment_order_uuid")
  final int paymentOrderUuid;
  @override
  @JsonKey(name: "sale_bill_uuid")
  final int saleBillUuid;
  @override
  @JsonKey(name: "sale_order_uuid")
  final int saleOrderUuid;

  @override
  String toString() {
    return 'RequestOrderPaymentCancelForm(paymentOrderUuid: $paymentOrderUuid, saleBillUuid: $saleBillUuid, saleOrderUuid: $saleOrderUuid)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RequestOrderPaymentCancelFormImpl &&
            (identical(other.paymentOrderUuid, paymentOrderUuid) ||
                other.paymentOrderUuid == paymentOrderUuid) &&
            (identical(other.saleBillUuid, saleBillUuid) ||
                other.saleBillUuid == saleBillUuid) &&
            (identical(other.saleOrderUuid, saleOrderUuid) ||
                other.saleOrderUuid == saleOrderUuid));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, paymentOrderUuid, saleBillUuid, saleOrderUuid);

  /// Create a copy of RequestOrderPaymentCancelForm
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RequestOrderPaymentCancelFormImplCopyWith<
          _$RequestOrderPaymentCancelFormImpl>
      get copyWith => __$$RequestOrderPaymentCancelFormImplCopyWithImpl<
          _$RequestOrderPaymentCancelFormImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RequestOrderPaymentCancelFormImplToJson(
      this,
    );
  }
}

abstract class _RequestOrderPaymentCancelForm
    implements RequestOrderPaymentCancelForm {
  const factory _RequestOrderPaymentCancelForm(
      {@JsonKey(name: "payment_order_uuid") required final int paymentOrderUuid,
      @JsonKey(name: "sale_bill_uuid") required final int saleBillUuid,
      @JsonKey(name: "sale_order_uuid")
      required final int saleOrderUuid}) = _$RequestOrderPaymentCancelFormImpl;

  factory _RequestOrderPaymentCancelForm.fromJson(Map<String, dynamic> json) =
      _$RequestOrderPaymentCancelFormImpl.fromJson;

  @override
  @JsonKey(name: "payment_order_uuid")
  int get paymentOrderUuid;
  @override
  @JsonKey(name: "sale_bill_uuid")
  int get saleBillUuid;
  @override
  @JsonKey(name: "sale_order_uuid")
  int get saleOrderUuid;

  /// Create a copy of RequestOrderPaymentCancelForm
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RequestOrderPaymentCancelFormImplCopyWith<
          _$RequestOrderPaymentCancelFormImpl>
      get copyWith => throw _privateConstructorUsedError;
}

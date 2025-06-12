// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_payment_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ResponseOrderPaymentInfo _$ResponseOrderPaymentInfoFromJson(
    Map<String, dynamic> json) {
  return _ResponseOrderPaymentInfo.fromJson(json);
}

/// @nodoc
mixin _$ResponseOrderPaymentInfo {
  @JsonKey(name: "amounts")
  BaseList<PaymentMethodAmount> get amounts =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "member_info")
  ResponseMemberInfo? get memberInfo => throw _privateConstructorUsedError;
  @JsonKey(name: "payment_methods")
  BaseList<PaymentMethod> get paymentMethods =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "payment_orders")
  BaseList<ResponsePaymentOrder> get paymentOrders =>
      throw _privateConstructorUsedError;

  /// Serializes this ResponseOrderPaymentInfo to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ResponseOrderPaymentInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ResponseOrderPaymentInfoCopyWith<ResponseOrderPaymentInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResponseOrderPaymentInfoCopyWith<$Res> {
  factory $ResponseOrderPaymentInfoCopyWith(ResponseOrderPaymentInfo value,
          $Res Function(ResponseOrderPaymentInfo) then) =
      _$ResponseOrderPaymentInfoCopyWithImpl<$Res, ResponseOrderPaymentInfo>;
  @useResult
  $Res call(
      {@JsonKey(name: "amounts") BaseList<PaymentMethodAmount> amounts,
      @JsonKey(name: "member_info") ResponseMemberInfo? memberInfo,
      @JsonKey(name: "payment_methods") BaseList<PaymentMethod> paymentMethods,
      @JsonKey(name: "payment_orders")
      BaseList<ResponsePaymentOrder> paymentOrders});

  $BaseListCopyWith<PaymentMethodAmount, $Res> get amounts;
  $ResponseMemberInfoCopyWith<$Res>? get memberInfo;
  $BaseListCopyWith<PaymentMethod, $Res> get paymentMethods;
  $BaseListCopyWith<ResponsePaymentOrder, $Res> get paymentOrders;
}

/// @nodoc
class _$ResponseOrderPaymentInfoCopyWithImpl<$Res,
        $Val extends ResponseOrderPaymentInfo>
    implements $ResponseOrderPaymentInfoCopyWith<$Res> {
  _$ResponseOrderPaymentInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ResponseOrderPaymentInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? amounts = null,
    Object? memberInfo = freezed,
    Object? paymentMethods = null,
    Object? paymentOrders = null,
  }) {
    return _then(_value.copyWith(
      amounts: null == amounts
          ? _value.amounts
          : amounts // ignore: cast_nullable_to_non_nullable
              as BaseList<PaymentMethodAmount>,
      memberInfo: freezed == memberInfo
          ? _value.memberInfo
          : memberInfo // ignore: cast_nullable_to_non_nullable
              as ResponseMemberInfo?,
      paymentMethods: null == paymentMethods
          ? _value.paymentMethods
          : paymentMethods // ignore: cast_nullable_to_non_nullable
              as BaseList<PaymentMethod>,
      paymentOrders: null == paymentOrders
          ? _value.paymentOrders
          : paymentOrders // ignore: cast_nullable_to_non_nullable
              as BaseList<ResponsePaymentOrder>,
    ) as $Val);
  }

  /// Create a copy of ResponseOrderPaymentInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BaseListCopyWith<PaymentMethodAmount, $Res> get amounts {
    return $BaseListCopyWith<PaymentMethodAmount, $Res>(_value.amounts,
        (value) {
      return _then(_value.copyWith(amounts: value) as $Val);
    });
  }

  /// Create a copy of ResponseOrderPaymentInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ResponseMemberInfoCopyWith<$Res>? get memberInfo {
    if (_value.memberInfo == null) {
      return null;
    }

    return $ResponseMemberInfoCopyWith<$Res>(_value.memberInfo!, (value) {
      return _then(_value.copyWith(memberInfo: value) as $Val);
    });
  }

  /// Create a copy of ResponseOrderPaymentInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BaseListCopyWith<PaymentMethod, $Res> get paymentMethods {
    return $BaseListCopyWith<PaymentMethod, $Res>(_value.paymentMethods,
        (value) {
      return _then(_value.copyWith(paymentMethods: value) as $Val);
    });
  }

  /// Create a copy of ResponseOrderPaymentInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BaseListCopyWith<ResponsePaymentOrder, $Res> get paymentOrders {
    return $BaseListCopyWith<ResponsePaymentOrder, $Res>(_value.paymentOrders,
        (value) {
      return _then(_value.copyWith(paymentOrders: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ResponseOrderPaymentInfoImplCopyWith<$Res>
    implements $ResponseOrderPaymentInfoCopyWith<$Res> {
  factory _$$ResponseOrderPaymentInfoImplCopyWith(
          _$ResponseOrderPaymentInfoImpl value,
          $Res Function(_$ResponseOrderPaymentInfoImpl) then) =
      __$$ResponseOrderPaymentInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "amounts") BaseList<PaymentMethodAmount> amounts,
      @JsonKey(name: "member_info") ResponseMemberInfo? memberInfo,
      @JsonKey(name: "payment_methods") BaseList<PaymentMethod> paymentMethods,
      @JsonKey(name: "payment_orders")
      BaseList<ResponsePaymentOrder> paymentOrders});

  @override
  $BaseListCopyWith<PaymentMethodAmount, $Res> get amounts;
  @override
  $ResponseMemberInfoCopyWith<$Res>? get memberInfo;
  @override
  $BaseListCopyWith<PaymentMethod, $Res> get paymentMethods;
  @override
  $BaseListCopyWith<ResponsePaymentOrder, $Res> get paymentOrders;
}

/// @nodoc
class __$$ResponseOrderPaymentInfoImplCopyWithImpl<$Res>
    extends _$ResponseOrderPaymentInfoCopyWithImpl<$Res,
        _$ResponseOrderPaymentInfoImpl>
    implements _$$ResponseOrderPaymentInfoImplCopyWith<$Res> {
  __$$ResponseOrderPaymentInfoImplCopyWithImpl(
      _$ResponseOrderPaymentInfoImpl _value,
      $Res Function(_$ResponseOrderPaymentInfoImpl) _then)
      : super(_value, _then);

  /// Create a copy of ResponseOrderPaymentInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? amounts = null,
    Object? memberInfo = freezed,
    Object? paymentMethods = null,
    Object? paymentOrders = null,
  }) {
    return _then(_$ResponseOrderPaymentInfoImpl(
      amounts: null == amounts
          ? _value.amounts
          : amounts // ignore: cast_nullable_to_non_nullable
              as BaseList<PaymentMethodAmount>,
      memberInfo: freezed == memberInfo
          ? _value.memberInfo
          : memberInfo // ignore: cast_nullable_to_non_nullable
              as ResponseMemberInfo?,
      paymentMethods: null == paymentMethods
          ? _value.paymentMethods
          : paymentMethods // ignore: cast_nullable_to_non_nullable
              as BaseList<PaymentMethod>,
      paymentOrders: null == paymentOrders
          ? _value.paymentOrders
          : paymentOrders // ignore: cast_nullable_to_non_nullable
              as BaseList<ResponsePaymentOrder>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ResponseOrderPaymentInfoImpl implements _ResponseOrderPaymentInfo {
  const _$ResponseOrderPaymentInfoImpl(
      {@JsonKey(name: "amounts") required this.amounts,
      @JsonKey(name: "member_info") this.memberInfo,
      @JsonKey(name: "payment_methods") required this.paymentMethods,
      @JsonKey(name: "payment_orders") required this.paymentOrders});

  factory _$ResponseOrderPaymentInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResponseOrderPaymentInfoImplFromJson(json);

  @override
  @JsonKey(name: "amounts")
  final BaseList<PaymentMethodAmount> amounts;
  @override
  @JsonKey(name: "member_info")
  final ResponseMemberInfo? memberInfo;
  @override
  @JsonKey(name: "payment_methods")
  final BaseList<PaymentMethod> paymentMethods;
  @override
  @JsonKey(name: "payment_orders")
  final BaseList<ResponsePaymentOrder> paymentOrders;

  @override
  String toString() {
    return 'ResponseOrderPaymentInfo(amounts: $amounts, memberInfo: $memberInfo, paymentMethods: $paymentMethods, paymentOrders: $paymentOrders)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResponseOrderPaymentInfoImpl &&
            (identical(other.amounts, amounts) || other.amounts == amounts) &&
            (identical(other.memberInfo, memberInfo) ||
                other.memberInfo == memberInfo) &&
            (identical(other.paymentMethods, paymentMethods) ||
                other.paymentMethods == paymentMethods) &&
            (identical(other.paymentOrders, paymentOrders) ||
                other.paymentOrders == paymentOrders));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, amounts, memberInfo, paymentMethods, paymentOrders);

  /// Create a copy of ResponseOrderPaymentInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ResponseOrderPaymentInfoImplCopyWith<_$ResponseOrderPaymentInfoImpl>
      get copyWith => __$$ResponseOrderPaymentInfoImplCopyWithImpl<
          _$ResponseOrderPaymentInfoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResponseOrderPaymentInfoImplToJson(
      this,
    );
  }
}

abstract class _ResponseOrderPaymentInfo implements ResponseOrderPaymentInfo {
  const factory _ResponseOrderPaymentInfo(
          {@JsonKey(name: "amounts")
          required final BaseList<PaymentMethodAmount> amounts,
          @JsonKey(name: "member_info") final ResponseMemberInfo? memberInfo,
          @JsonKey(name: "payment_methods")
          required final BaseList<PaymentMethod> paymentMethods,
          @JsonKey(name: "payment_orders")
          required final BaseList<ResponsePaymentOrder> paymentOrders}) =
      _$ResponseOrderPaymentInfoImpl;

  factory _ResponseOrderPaymentInfo.fromJson(Map<String, dynamic> json) =
      _$ResponseOrderPaymentInfoImpl.fromJson;

  @override
  @JsonKey(name: "amounts")
  BaseList<PaymentMethodAmount> get amounts;
  @override
  @JsonKey(name: "member_info")
  ResponseMemberInfo? get memberInfo;
  @override
  @JsonKey(name: "payment_methods")
  BaseList<PaymentMethod> get paymentMethods;
  @override
  @JsonKey(name: "payment_orders")
  BaseList<ResponsePaymentOrder> get paymentOrders;

  /// Create a copy of ResponseOrderPaymentInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ResponseOrderPaymentInfoImplCopyWith<_$ResponseOrderPaymentInfoImpl>
      get copyWith => throw _privateConstructorUsedError;
}

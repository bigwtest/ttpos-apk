// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PaymentInfo _$PaymentInfoFromJson(Map<String, dynamic> json) {
  return _PaymentInfo.fromJson(json);
}

/// @nodoc
mixin _$PaymentInfo {
  @JsonKey(name: "amounts")
  BaseList<PaymentAmount> get amounts => throw _privateConstructorUsedError;
  @JsonKey(name: "member_info")
  Member? get memberInfo => throw _privateConstructorUsedError;
  @JsonKey(name: "payment_methods")
  BaseList<PaymentMethod> get paymentMethods =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "payment_orders")
  BaseList<PaymentOrder> get paymentOrders =>
      throw _privateConstructorUsedError;

  /// Serializes this PaymentInfo to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PaymentInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PaymentInfoCopyWith<PaymentInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentInfoCopyWith<$Res> {
  factory $PaymentInfoCopyWith(
          PaymentInfo value, $Res Function(PaymentInfo) then) =
      _$PaymentInfoCopyWithImpl<$Res, PaymentInfo>;
  @useResult
  $Res call(
      {@JsonKey(name: "amounts") BaseList<PaymentAmount> amounts,
      @JsonKey(name: "member_info") Member? memberInfo,
      @JsonKey(name: "payment_methods") BaseList<PaymentMethod> paymentMethods,
      @JsonKey(name: "payment_orders") BaseList<PaymentOrder> paymentOrders});

  $BaseListCopyWith<PaymentAmount, $Res> get amounts;
  $MemberCopyWith<$Res>? get memberInfo;
  $BaseListCopyWith<PaymentMethod, $Res> get paymentMethods;
  $BaseListCopyWith<PaymentOrder, $Res> get paymentOrders;
}

/// @nodoc
class _$PaymentInfoCopyWithImpl<$Res, $Val extends PaymentInfo>
    implements $PaymentInfoCopyWith<$Res> {
  _$PaymentInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PaymentInfo
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
              as BaseList<PaymentAmount>,
      memberInfo: freezed == memberInfo
          ? _value.memberInfo
          : memberInfo // ignore: cast_nullable_to_non_nullable
              as Member?,
      paymentMethods: null == paymentMethods
          ? _value.paymentMethods
          : paymentMethods // ignore: cast_nullable_to_non_nullable
              as BaseList<PaymentMethod>,
      paymentOrders: null == paymentOrders
          ? _value.paymentOrders
          : paymentOrders // ignore: cast_nullable_to_non_nullable
              as BaseList<PaymentOrder>,
    ) as $Val);
  }

  /// Create a copy of PaymentInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BaseListCopyWith<PaymentAmount, $Res> get amounts {
    return $BaseListCopyWith<PaymentAmount, $Res>(_value.amounts, (value) {
      return _then(_value.copyWith(amounts: value) as $Val);
    });
  }

  /// Create a copy of PaymentInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MemberCopyWith<$Res>? get memberInfo {
    if (_value.memberInfo == null) {
      return null;
    }

    return $MemberCopyWith<$Res>(_value.memberInfo!, (value) {
      return _then(_value.copyWith(memberInfo: value) as $Val);
    });
  }

  /// Create a copy of PaymentInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BaseListCopyWith<PaymentMethod, $Res> get paymentMethods {
    return $BaseListCopyWith<PaymentMethod, $Res>(_value.paymentMethods,
        (value) {
      return _then(_value.copyWith(paymentMethods: value) as $Val);
    });
  }

  /// Create a copy of PaymentInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BaseListCopyWith<PaymentOrder, $Res> get paymentOrders {
    return $BaseListCopyWith<PaymentOrder, $Res>(_value.paymentOrders, (value) {
      return _then(_value.copyWith(paymentOrders: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PaymentInfoImplCopyWith<$Res>
    implements $PaymentInfoCopyWith<$Res> {
  factory _$$PaymentInfoImplCopyWith(
          _$PaymentInfoImpl value, $Res Function(_$PaymentInfoImpl) then) =
      __$$PaymentInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "amounts") BaseList<PaymentAmount> amounts,
      @JsonKey(name: "member_info") Member? memberInfo,
      @JsonKey(name: "payment_methods") BaseList<PaymentMethod> paymentMethods,
      @JsonKey(name: "payment_orders") BaseList<PaymentOrder> paymentOrders});

  @override
  $BaseListCopyWith<PaymentAmount, $Res> get amounts;
  @override
  $MemberCopyWith<$Res>? get memberInfo;
  @override
  $BaseListCopyWith<PaymentMethod, $Res> get paymentMethods;
  @override
  $BaseListCopyWith<PaymentOrder, $Res> get paymentOrders;
}

/// @nodoc
class __$$PaymentInfoImplCopyWithImpl<$Res>
    extends _$PaymentInfoCopyWithImpl<$Res, _$PaymentInfoImpl>
    implements _$$PaymentInfoImplCopyWith<$Res> {
  __$$PaymentInfoImplCopyWithImpl(
      _$PaymentInfoImpl _value, $Res Function(_$PaymentInfoImpl) _then)
      : super(_value, _then);

  /// Create a copy of PaymentInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? amounts = null,
    Object? memberInfo = freezed,
    Object? paymentMethods = null,
    Object? paymentOrders = null,
  }) {
    return _then(_$PaymentInfoImpl(
      amounts: null == amounts
          ? _value.amounts
          : amounts // ignore: cast_nullable_to_non_nullable
              as BaseList<PaymentAmount>,
      memberInfo: freezed == memberInfo
          ? _value.memberInfo
          : memberInfo // ignore: cast_nullable_to_non_nullable
              as Member?,
      paymentMethods: null == paymentMethods
          ? _value.paymentMethods
          : paymentMethods // ignore: cast_nullable_to_non_nullable
              as BaseList<PaymentMethod>,
      paymentOrders: null == paymentOrders
          ? _value.paymentOrders
          : paymentOrders // ignore: cast_nullable_to_non_nullable
              as BaseList<PaymentOrder>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PaymentInfoImpl implements _PaymentInfo {
  const _$PaymentInfoImpl(
      {@JsonKey(name: "amounts") required this.amounts,
      @JsonKey(name: "member_info") this.memberInfo,
      @JsonKey(name: "payment_methods") required this.paymentMethods,
      @JsonKey(name: "payment_orders") required this.paymentOrders});

  factory _$PaymentInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$PaymentInfoImplFromJson(json);

  @override
  @JsonKey(name: "amounts")
  final BaseList<PaymentAmount> amounts;
  @override
  @JsonKey(name: "member_info")
  final Member? memberInfo;
  @override
  @JsonKey(name: "payment_methods")
  final BaseList<PaymentMethod> paymentMethods;
  @override
  @JsonKey(name: "payment_orders")
  final BaseList<PaymentOrder> paymentOrders;

  @override
  String toString() {
    return 'PaymentInfo(amounts: $amounts, memberInfo: $memberInfo, paymentMethods: $paymentMethods, paymentOrders: $paymentOrders)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaymentInfoImpl &&
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

  /// Create a copy of PaymentInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PaymentInfoImplCopyWith<_$PaymentInfoImpl> get copyWith =>
      __$$PaymentInfoImplCopyWithImpl<_$PaymentInfoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PaymentInfoImplToJson(
      this,
    );
  }
}

abstract class _PaymentInfo implements PaymentInfo {
  const factory _PaymentInfo(
      {@JsonKey(name: "amounts") required final BaseList<PaymentAmount> amounts,
      @JsonKey(name: "member_info") final Member? memberInfo,
      @JsonKey(name: "payment_methods")
      required final BaseList<PaymentMethod> paymentMethods,
      @JsonKey(name: "payment_orders")
      required final BaseList<PaymentOrder> paymentOrders}) = _$PaymentInfoImpl;

  factory _PaymentInfo.fromJson(Map<String, dynamic> json) =
      _$PaymentInfoImpl.fromJson;

  @override
  @JsonKey(name: "amounts")
  BaseList<PaymentAmount> get amounts;
  @override
  @JsonKey(name: "member_info")
  Member? get memberInfo;
  @override
  @JsonKey(name: "payment_methods")
  BaseList<PaymentMethod> get paymentMethods;
  @override
  @JsonKey(name: "payment_orders")
  BaseList<PaymentOrder> get paymentOrders;

  /// Create a copy of PaymentInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PaymentInfoImplCopyWith<_$PaymentInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_payment_zero_rule.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RequestOrderPaymentZeroRule _$RequestOrderPaymentZeroRuleFromJson(
    Map<String, dynamic> json) {
  return _RequestOrderPaymentZeroRule.fromJson(json);
}

/// @nodoc
mixin _$RequestOrderPaymentZeroRule {
  @JsonKey(name: "sale_bill_uuid")
  int get saleBillUuid => throw _privateConstructorUsedError;
  @JsonKey(name: "sale_order_uuid")
  int get saleOrderUuid => throw _privateConstructorUsedError;
  @JsonKey(name: "zero_rule")
  int get zeroRule => throw _privateConstructorUsedError;

  /// Serializes this RequestOrderPaymentZeroRule to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RequestOrderPaymentZeroRule
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RequestOrderPaymentZeroRuleCopyWith<RequestOrderPaymentZeroRule>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RequestOrderPaymentZeroRuleCopyWith<$Res> {
  factory $RequestOrderPaymentZeroRuleCopyWith(
          RequestOrderPaymentZeroRule value,
          $Res Function(RequestOrderPaymentZeroRule) then) =
      _$RequestOrderPaymentZeroRuleCopyWithImpl<$Res,
          RequestOrderPaymentZeroRule>;
  @useResult
  $Res call(
      {@JsonKey(name: "sale_bill_uuid") int saleBillUuid,
      @JsonKey(name: "sale_order_uuid") int saleOrderUuid,
      @JsonKey(name: "zero_rule") int zeroRule});
}

/// @nodoc
class _$RequestOrderPaymentZeroRuleCopyWithImpl<$Res,
        $Val extends RequestOrderPaymentZeroRule>
    implements $RequestOrderPaymentZeroRuleCopyWith<$Res> {
  _$RequestOrderPaymentZeroRuleCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RequestOrderPaymentZeroRule
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? saleBillUuid = null,
    Object? saleOrderUuid = null,
    Object? zeroRule = null,
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
      zeroRule: null == zeroRule
          ? _value.zeroRule
          : zeroRule // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RequestOrderPaymentZeroRuleImplCopyWith<$Res>
    implements $RequestOrderPaymentZeroRuleCopyWith<$Res> {
  factory _$$RequestOrderPaymentZeroRuleImplCopyWith(
          _$RequestOrderPaymentZeroRuleImpl value,
          $Res Function(_$RequestOrderPaymentZeroRuleImpl) then) =
      __$$RequestOrderPaymentZeroRuleImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "sale_bill_uuid") int saleBillUuid,
      @JsonKey(name: "sale_order_uuid") int saleOrderUuid,
      @JsonKey(name: "zero_rule") int zeroRule});
}

/// @nodoc
class __$$RequestOrderPaymentZeroRuleImplCopyWithImpl<$Res>
    extends _$RequestOrderPaymentZeroRuleCopyWithImpl<$Res,
        _$RequestOrderPaymentZeroRuleImpl>
    implements _$$RequestOrderPaymentZeroRuleImplCopyWith<$Res> {
  __$$RequestOrderPaymentZeroRuleImplCopyWithImpl(
      _$RequestOrderPaymentZeroRuleImpl _value,
      $Res Function(_$RequestOrderPaymentZeroRuleImpl) _then)
      : super(_value, _then);

  /// Create a copy of RequestOrderPaymentZeroRule
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? saleBillUuid = null,
    Object? saleOrderUuid = null,
    Object? zeroRule = null,
  }) {
    return _then(_$RequestOrderPaymentZeroRuleImpl(
      saleBillUuid: null == saleBillUuid
          ? _value.saleBillUuid
          : saleBillUuid // ignore: cast_nullable_to_non_nullable
              as int,
      saleOrderUuid: null == saleOrderUuid
          ? _value.saleOrderUuid
          : saleOrderUuid // ignore: cast_nullable_to_non_nullable
              as int,
      zeroRule: null == zeroRule
          ? _value.zeroRule
          : zeroRule // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RequestOrderPaymentZeroRuleImpl
    implements _RequestOrderPaymentZeroRule {
  const _$RequestOrderPaymentZeroRuleImpl(
      {@JsonKey(name: "sale_bill_uuid") required this.saleBillUuid,
      @JsonKey(name: "sale_order_uuid") required this.saleOrderUuid,
      @JsonKey(name: "zero_rule") required this.zeroRule});

  factory _$RequestOrderPaymentZeroRuleImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$RequestOrderPaymentZeroRuleImplFromJson(json);

  @override
  @JsonKey(name: "sale_bill_uuid")
  final int saleBillUuid;
  @override
  @JsonKey(name: "sale_order_uuid")
  final int saleOrderUuid;
  @override
  @JsonKey(name: "zero_rule")
  final int zeroRule;

  @override
  String toString() {
    return 'RequestOrderPaymentZeroRule(saleBillUuid: $saleBillUuid, saleOrderUuid: $saleOrderUuid, zeroRule: $zeroRule)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RequestOrderPaymentZeroRuleImpl &&
            (identical(other.saleBillUuid, saleBillUuid) ||
                other.saleBillUuid == saleBillUuid) &&
            (identical(other.saleOrderUuid, saleOrderUuid) ||
                other.saleOrderUuid == saleOrderUuid) &&
            (identical(other.zeroRule, zeroRule) ||
                other.zeroRule == zeroRule));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, saleBillUuid, saleOrderUuid, zeroRule);

  /// Create a copy of RequestOrderPaymentZeroRule
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RequestOrderPaymentZeroRuleImplCopyWith<_$RequestOrderPaymentZeroRuleImpl>
      get copyWith => __$$RequestOrderPaymentZeroRuleImplCopyWithImpl<
          _$RequestOrderPaymentZeroRuleImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RequestOrderPaymentZeroRuleImplToJson(
      this,
    );
  }
}

abstract class _RequestOrderPaymentZeroRule
    implements RequestOrderPaymentZeroRule {
  const factory _RequestOrderPaymentZeroRule(
          {@JsonKey(name: "sale_bill_uuid") required final int saleBillUuid,
          @JsonKey(name: "sale_order_uuid") required final int saleOrderUuid,
          @JsonKey(name: "zero_rule") required final int zeroRule}) =
      _$RequestOrderPaymentZeroRuleImpl;

  factory _RequestOrderPaymentZeroRule.fromJson(Map<String, dynamic> json) =
      _$RequestOrderPaymentZeroRuleImpl.fromJson;

  @override
  @JsonKey(name: "sale_bill_uuid")
  int get saleBillUuid;
  @override
  @JsonKey(name: "sale_order_uuid")
  int get saleOrderUuid;
  @override
  @JsonKey(name: "zero_rule")
  int get zeroRule;

  /// Create a copy of RequestOrderPaymentZeroRule
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RequestOrderPaymentZeroRuleImplCopyWith<_$RequestOrderPaymentZeroRuleImpl>
      get copyWith => throw _privateConstructorUsedError;
}

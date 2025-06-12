// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_zero_rule.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RequestOrderZeroRule _$RequestOrderZeroRuleFromJson(Map<String, dynamic> json) {
  return _RequestOrderZeroRule.fromJson(json);
}

/// @nodoc
mixin _$RequestOrderZeroRule {
  @JsonKey(name: "sale_bill_uuid")
  int get saleBillUuid => throw _privateConstructorUsedError;
  @JsonKey(name: "sale_order_uuid")
  int get saleOrderUuid => throw _privateConstructorUsedError;
  @JsonKey(name: "zero_rule")
  int get zeroRule => throw _privateConstructorUsedError;

  /// Serializes this RequestOrderZeroRule to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RequestOrderZeroRule
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RequestOrderZeroRuleCopyWith<RequestOrderZeroRule> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RequestOrderZeroRuleCopyWith<$Res> {
  factory $RequestOrderZeroRuleCopyWith(RequestOrderZeroRule value,
          $Res Function(RequestOrderZeroRule) then) =
      _$RequestOrderZeroRuleCopyWithImpl<$Res, RequestOrderZeroRule>;
  @useResult
  $Res call(
      {@JsonKey(name: "sale_bill_uuid") int saleBillUuid,
      @JsonKey(name: "sale_order_uuid") int saleOrderUuid,
      @JsonKey(name: "zero_rule") int zeroRule});
}

/// @nodoc
class _$RequestOrderZeroRuleCopyWithImpl<$Res,
        $Val extends RequestOrderZeroRule>
    implements $RequestOrderZeroRuleCopyWith<$Res> {
  _$RequestOrderZeroRuleCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RequestOrderZeroRule
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
abstract class _$$RequestOrderZeroRuleImplCopyWith<$Res>
    implements $RequestOrderZeroRuleCopyWith<$Res> {
  factory _$$RequestOrderZeroRuleImplCopyWith(_$RequestOrderZeroRuleImpl value,
          $Res Function(_$RequestOrderZeroRuleImpl) then) =
      __$$RequestOrderZeroRuleImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "sale_bill_uuid") int saleBillUuid,
      @JsonKey(name: "sale_order_uuid") int saleOrderUuid,
      @JsonKey(name: "zero_rule") int zeroRule});
}

/// @nodoc
class __$$RequestOrderZeroRuleImplCopyWithImpl<$Res>
    extends _$RequestOrderZeroRuleCopyWithImpl<$Res, _$RequestOrderZeroRuleImpl>
    implements _$$RequestOrderZeroRuleImplCopyWith<$Res> {
  __$$RequestOrderZeroRuleImplCopyWithImpl(_$RequestOrderZeroRuleImpl _value,
      $Res Function(_$RequestOrderZeroRuleImpl) _then)
      : super(_value, _then);

  /// Create a copy of RequestOrderZeroRule
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? saleBillUuid = null,
    Object? saleOrderUuid = null,
    Object? zeroRule = null,
  }) {
    return _then(_$RequestOrderZeroRuleImpl(
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
class _$RequestOrderZeroRuleImpl implements _RequestOrderZeroRule {
  const _$RequestOrderZeroRuleImpl(
      {@JsonKey(name: "sale_bill_uuid") required this.saleBillUuid,
      @JsonKey(name: "sale_order_uuid") required this.saleOrderUuid,
      @JsonKey(name: "zero_rule") required this.zeroRule});

  factory _$RequestOrderZeroRuleImpl.fromJson(Map<String, dynamic> json) =>
      _$$RequestOrderZeroRuleImplFromJson(json);

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
    return 'RequestOrderZeroRule(saleBillUuid: $saleBillUuid, saleOrderUuid: $saleOrderUuid, zeroRule: $zeroRule)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RequestOrderZeroRuleImpl &&
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

  /// Create a copy of RequestOrderZeroRule
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RequestOrderZeroRuleImplCopyWith<_$RequestOrderZeroRuleImpl>
      get copyWith =>
          __$$RequestOrderZeroRuleImplCopyWithImpl<_$RequestOrderZeroRuleImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RequestOrderZeroRuleImplToJson(
      this,
    );
  }
}

abstract class _RequestOrderZeroRule implements RequestOrderZeroRule {
  const factory _RequestOrderZeroRule(
          {@JsonKey(name: "sale_bill_uuid") required final int saleBillUuid,
          @JsonKey(name: "sale_order_uuid") required final int saleOrderUuid,
          @JsonKey(name: "zero_rule") required final int zeroRule}) =
      _$RequestOrderZeroRuleImpl;

  factory _RequestOrderZeroRule.fromJson(Map<String, dynamic> json) =
      _$RequestOrderZeroRuleImpl.fromJson;

  @override
  @JsonKey(name: "sale_bill_uuid")
  int get saleBillUuid;
  @override
  @JsonKey(name: "sale_order_uuid")
  int get saleOrderUuid;
  @override
  @JsonKey(name: "zero_rule")
  int get zeroRule;

  /// Create a copy of RequestOrderZeroRule
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RequestOrderZeroRuleImplCopyWith<_$RequestOrderZeroRuleImpl>
      get copyWith => throw _privateConstructorUsedError;
}

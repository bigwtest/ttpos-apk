// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'check.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RequestOrderCheck _$RequestOrderCheckFromJson(Map<String, dynamic> json) {
  return _RequestOrderCheck.fromJson(json);
}

/// @nodoc
mixin _$RequestOrderCheck {
  @JsonKey(name: "sale_bill_uuid")
  int get saleBillUuid => throw _privateConstructorUsedError;
  @JsonKey(name: "sale_bill_uuid")
  set saleBillUuid(int value) => throw _privateConstructorUsedError;
  @JsonKey(name: "sale_order_uuid")
  int get saleOrderUuid => throw _privateConstructorUsedError;
  @JsonKey(name: "sale_order_uuid")
  set saleOrderUuid(int value) => throw _privateConstructorUsedError;
  @JsonKey(name: "ignore_must")
  bool get ignoreMust => throw _privateConstructorUsedError;
  @JsonKey(name: "ignore_must")
  set ignoreMust(bool value) => throw _privateConstructorUsedError;

  /// Serializes this RequestOrderCheck to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RequestOrderCheck
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RequestOrderCheckCopyWith<RequestOrderCheck> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RequestOrderCheckCopyWith<$Res> {
  factory $RequestOrderCheckCopyWith(
          RequestOrderCheck value, $Res Function(RequestOrderCheck) then) =
      _$RequestOrderCheckCopyWithImpl<$Res, RequestOrderCheck>;
  @useResult
  $Res call(
      {@JsonKey(name: "sale_bill_uuid") int saleBillUuid,
      @JsonKey(name: "sale_order_uuid") int saleOrderUuid,
      @JsonKey(name: "ignore_must") bool ignoreMust});
}

/// @nodoc
class _$RequestOrderCheckCopyWithImpl<$Res, $Val extends RequestOrderCheck>
    implements $RequestOrderCheckCopyWith<$Res> {
  _$RequestOrderCheckCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RequestOrderCheck
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? saleBillUuid = null,
    Object? saleOrderUuid = null,
    Object? ignoreMust = null,
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
      ignoreMust: null == ignoreMust
          ? _value.ignoreMust
          : ignoreMust // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RequestOrderCheckImplCopyWith<$Res>
    implements $RequestOrderCheckCopyWith<$Res> {
  factory _$$RequestOrderCheckImplCopyWith(_$RequestOrderCheckImpl value,
          $Res Function(_$RequestOrderCheckImpl) then) =
      __$$RequestOrderCheckImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "sale_bill_uuid") int saleBillUuid,
      @JsonKey(name: "sale_order_uuid") int saleOrderUuid,
      @JsonKey(name: "ignore_must") bool ignoreMust});
}

/// @nodoc
class __$$RequestOrderCheckImplCopyWithImpl<$Res>
    extends _$RequestOrderCheckCopyWithImpl<$Res, _$RequestOrderCheckImpl>
    implements _$$RequestOrderCheckImplCopyWith<$Res> {
  __$$RequestOrderCheckImplCopyWithImpl(_$RequestOrderCheckImpl _value,
      $Res Function(_$RequestOrderCheckImpl) _then)
      : super(_value, _then);

  /// Create a copy of RequestOrderCheck
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? saleBillUuid = null,
    Object? saleOrderUuid = null,
    Object? ignoreMust = null,
  }) {
    return _then(_$RequestOrderCheckImpl(
      saleBillUuid: null == saleBillUuid
          ? _value.saleBillUuid
          : saleBillUuid // ignore: cast_nullable_to_non_nullable
              as int,
      saleOrderUuid: null == saleOrderUuid
          ? _value.saleOrderUuid
          : saleOrderUuid // ignore: cast_nullable_to_non_nullable
              as int,
      ignoreMust: null == ignoreMust
          ? _value.ignoreMust
          : ignoreMust // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RequestOrderCheckImpl implements _RequestOrderCheck {
  _$RequestOrderCheckImpl(
      {@JsonKey(name: "sale_bill_uuid") required this.saleBillUuid,
      @JsonKey(name: "sale_order_uuid") required this.saleOrderUuid,
      @JsonKey(name: "ignore_must") required this.ignoreMust});

  factory _$RequestOrderCheckImpl.fromJson(Map<String, dynamic> json) =>
      _$$RequestOrderCheckImplFromJson(json);

  @override
  @JsonKey(name: "sale_bill_uuid")
  int saleBillUuid;
  @override
  @JsonKey(name: "sale_order_uuid")
  int saleOrderUuid;
  @override
  @JsonKey(name: "ignore_must")
  bool ignoreMust;

  @override
  String toString() {
    return 'RequestOrderCheck(saleBillUuid: $saleBillUuid, saleOrderUuid: $saleOrderUuid, ignoreMust: $ignoreMust)';
  }

  /// Create a copy of RequestOrderCheck
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RequestOrderCheckImplCopyWith<_$RequestOrderCheckImpl> get copyWith =>
      __$$RequestOrderCheckImplCopyWithImpl<_$RequestOrderCheckImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RequestOrderCheckImplToJson(
      this,
    );
  }
}

abstract class _RequestOrderCheck implements RequestOrderCheck {
  factory _RequestOrderCheck(
          {@JsonKey(name: "sale_bill_uuid") required int saleBillUuid,
          @JsonKey(name: "sale_order_uuid") required int saleOrderUuid,
          @JsonKey(name: "ignore_must") required bool ignoreMust}) =
      _$RequestOrderCheckImpl;

  factory _RequestOrderCheck.fromJson(Map<String, dynamic> json) =
      _$RequestOrderCheckImpl.fromJson;

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
  @JsonKey(name: "ignore_must")
  bool get ignoreMust;
  @JsonKey(name: "ignore_must")
  set ignoreMust(bool value);

  /// Create a copy of RequestOrderCheck
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RequestOrderCheckImplCopyWith<_$RequestOrderCheckImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

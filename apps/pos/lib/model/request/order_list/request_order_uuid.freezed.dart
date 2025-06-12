// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'request_order_uuid.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RequestOrderUuid _$RequestOrderUuidFromJson(Map<String, dynamic> json) {
  return _RequestOrderUuid.fromJson(json);
}

/// @nodoc
mixin _$RequestOrderUuid {
  @JsonKey(name: "sale_bill_uuid")
  int? get saleBillUuid => throw _privateConstructorUsedError;
  @JsonKey(name: "sale_bill_uuid")
  set saleBillUuid(int? value) => throw _privateConstructorUsedError;
  @JsonKey(name: "sale_order_uuid")
  int? get saleOrderUuid => throw _privateConstructorUsedError;
  @JsonKey(name: "sale_order_uuid")
  set saleOrderUuid(int? value) => throw _privateConstructorUsedError;

  /// Serializes this RequestOrderUuid to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RequestOrderUuid
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RequestOrderUuidCopyWith<RequestOrderUuid> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RequestOrderUuidCopyWith<$Res> {
  factory $RequestOrderUuidCopyWith(
          RequestOrderUuid value, $Res Function(RequestOrderUuid) then) =
      _$RequestOrderUuidCopyWithImpl<$Res, RequestOrderUuid>;
  @useResult
  $Res call(
      {@JsonKey(name: "sale_bill_uuid") int? saleBillUuid,
      @JsonKey(name: "sale_order_uuid") int? saleOrderUuid});
}

/// @nodoc
class _$RequestOrderUuidCopyWithImpl<$Res, $Val extends RequestOrderUuid>
    implements $RequestOrderUuidCopyWith<$Res> {
  _$RequestOrderUuidCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RequestOrderUuid
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? saleBillUuid = freezed,
    Object? saleOrderUuid = freezed,
  }) {
    return _then(_value.copyWith(
      saleBillUuid: freezed == saleBillUuid
          ? _value.saleBillUuid
          : saleBillUuid // ignore: cast_nullable_to_non_nullable
              as int?,
      saleOrderUuid: freezed == saleOrderUuid
          ? _value.saleOrderUuid
          : saleOrderUuid // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RequestOrderUuidImplCopyWith<$Res>
    implements $RequestOrderUuidCopyWith<$Res> {
  factory _$$RequestOrderUuidImplCopyWith(_$RequestOrderUuidImpl value,
          $Res Function(_$RequestOrderUuidImpl) then) =
      __$$RequestOrderUuidImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "sale_bill_uuid") int? saleBillUuid,
      @JsonKey(name: "sale_order_uuid") int? saleOrderUuid});
}

/// @nodoc
class __$$RequestOrderUuidImplCopyWithImpl<$Res>
    extends _$RequestOrderUuidCopyWithImpl<$Res, _$RequestOrderUuidImpl>
    implements _$$RequestOrderUuidImplCopyWith<$Res> {
  __$$RequestOrderUuidImplCopyWithImpl(_$RequestOrderUuidImpl _value,
      $Res Function(_$RequestOrderUuidImpl) _then)
      : super(_value, _then);

  /// Create a copy of RequestOrderUuid
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? saleBillUuid = freezed,
    Object? saleOrderUuid = freezed,
  }) {
    return _then(_$RequestOrderUuidImpl(
      saleBillUuid: freezed == saleBillUuid
          ? _value.saleBillUuid
          : saleBillUuid // ignore: cast_nullable_to_non_nullable
              as int?,
      saleOrderUuid: freezed == saleOrderUuid
          ? _value.saleOrderUuid
          : saleOrderUuid // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RequestOrderUuidImpl implements _RequestOrderUuid {
  _$RequestOrderUuidImpl(
      {@JsonKey(name: "sale_bill_uuid") this.saleBillUuid,
      @JsonKey(name: "sale_order_uuid") this.saleOrderUuid});

  factory _$RequestOrderUuidImpl.fromJson(Map<String, dynamic> json) =>
      _$$RequestOrderUuidImplFromJson(json);

  @override
  @JsonKey(name: "sale_bill_uuid")
  int? saleBillUuid;
  @override
  @JsonKey(name: "sale_order_uuid")
  int? saleOrderUuid;

  @override
  String toString() {
    return 'RequestOrderUuid(saleBillUuid: $saleBillUuid, saleOrderUuid: $saleOrderUuid)';
  }

  /// Create a copy of RequestOrderUuid
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RequestOrderUuidImplCopyWith<_$RequestOrderUuidImpl> get copyWith =>
      __$$RequestOrderUuidImplCopyWithImpl<_$RequestOrderUuidImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RequestOrderUuidImplToJson(
      this,
    );
  }
}

abstract class _RequestOrderUuid implements RequestOrderUuid {
  factory _RequestOrderUuid(
          {@JsonKey(name: "sale_bill_uuid") int? saleBillUuid,
          @JsonKey(name: "sale_order_uuid") int? saleOrderUuid}) =
      _$RequestOrderUuidImpl;

  factory _RequestOrderUuid.fromJson(Map<String, dynamic> json) =
      _$RequestOrderUuidImpl.fromJson;

  @override
  @JsonKey(name: "sale_bill_uuid")
  int? get saleBillUuid;
  @JsonKey(name: "sale_bill_uuid")
  set saleBillUuid(int? value);
  @override
  @JsonKey(name: "sale_order_uuid")
  int? get saleOrderUuid;
  @JsonKey(name: "sale_order_uuid")
  set saleOrderUuid(int? value);

  /// Create a copy of RequestOrderUuid
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RequestOrderUuidImplCopyWith<_$RequestOrderUuidImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

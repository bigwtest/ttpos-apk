// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'request_uuid.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RequestUuid _$RequestUuidFromJson(Map<String, dynamic> json) {
  return _RequestUuid.fromJson(json);
}

/// @nodoc
mixin _$RequestUuid {
  @JsonKey(name: "sale_bill_uuid")
  int? get saleBillUuid => throw _privateConstructorUsedError;
  @JsonKey(name: "sale_bill_uuid")
  set saleBillUuid(int? value) => throw _privateConstructorUsedError;

  /// Serializes this RequestUuid to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RequestUuid
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RequestUuidCopyWith<RequestUuid> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RequestUuidCopyWith<$Res> {
  factory $RequestUuidCopyWith(
          RequestUuid value, $Res Function(RequestUuid) then) =
      _$RequestUuidCopyWithImpl<$Res, RequestUuid>;
  @useResult
  $Res call({@JsonKey(name: "sale_bill_uuid") int? saleBillUuid});
}

/// @nodoc
class _$RequestUuidCopyWithImpl<$Res, $Val extends RequestUuid>
    implements $RequestUuidCopyWith<$Res> {
  _$RequestUuidCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RequestUuid
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? saleBillUuid = freezed,
  }) {
    return _then(_value.copyWith(
      saleBillUuid: freezed == saleBillUuid
          ? _value.saleBillUuid
          : saleBillUuid // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RequestUuidImplCopyWith<$Res>
    implements $RequestUuidCopyWith<$Res> {
  factory _$$RequestUuidImplCopyWith(
          _$RequestUuidImpl value, $Res Function(_$RequestUuidImpl) then) =
      __$$RequestUuidImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: "sale_bill_uuid") int? saleBillUuid});
}

/// @nodoc
class __$$RequestUuidImplCopyWithImpl<$Res>
    extends _$RequestUuidCopyWithImpl<$Res, _$RequestUuidImpl>
    implements _$$RequestUuidImplCopyWith<$Res> {
  __$$RequestUuidImplCopyWithImpl(
      _$RequestUuidImpl _value, $Res Function(_$RequestUuidImpl) _then)
      : super(_value, _then);

  /// Create a copy of RequestUuid
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? saleBillUuid = freezed,
  }) {
    return _then(_$RequestUuidImpl(
      saleBillUuid: freezed == saleBillUuid
          ? _value.saleBillUuid
          : saleBillUuid // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RequestUuidImpl implements _RequestUuid {
  _$RequestUuidImpl({@JsonKey(name: "sale_bill_uuid") this.saleBillUuid});

  factory _$RequestUuidImpl.fromJson(Map<String, dynamic> json) =>
      _$$RequestUuidImplFromJson(json);

  @override
  @JsonKey(name: "sale_bill_uuid")
  int? saleBillUuid;

  @override
  String toString() {
    return 'RequestUuid(saleBillUuid: $saleBillUuid)';
  }

  /// Create a copy of RequestUuid
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RequestUuidImplCopyWith<_$RequestUuidImpl> get copyWith =>
      __$$RequestUuidImplCopyWithImpl<_$RequestUuidImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RequestUuidImplToJson(
      this,
    );
  }
}

abstract class _RequestUuid implements RequestUuid {
  factory _RequestUuid({@JsonKey(name: "sale_bill_uuid") int? saleBillUuid}) =
      _$RequestUuidImpl;

  factory _RequestUuid.fromJson(Map<String, dynamic> json) =
      _$RequestUuidImpl.fromJson;

  @override
  @JsonKey(name: "sale_bill_uuid")
  int? get saleBillUuid;
  @JsonKey(name: "sale_bill_uuid")
  set saleBillUuid(int? value);

  /// Create a copy of RequestUuid
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RequestUuidImplCopyWith<_$RequestUuidImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

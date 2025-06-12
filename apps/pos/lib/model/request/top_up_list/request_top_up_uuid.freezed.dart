// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'request_top_up_uuid.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RequestTopUpUuid _$RequestTopUpUuidFromJson(Map<String, dynamic> json) {
  return _RequestTopUpUuid.fromJson(json);
}

/// @nodoc
mixin _$RequestTopUpUuid {
  @JsonKey(name: "uuid")
  int get uuid => throw _privateConstructorUsedError;
  @JsonKey(name: "uuid")
  set uuid(int value) => throw _privateConstructorUsedError;

  /// Serializes this RequestTopUpUuid to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RequestTopUpUuid
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RequestTopUpUuidCopyWith<RequestTopUpUuid> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RequestTopUpUuidCopyWith<$Res> {
  factory $RequestTopUpUuidCopyWith(
          RequestTopUpUuid value, $Res Function(RequestTopUpUuid) then) =
      _$RequestTopUpUuidCopyWithImpl<$Res, RequestTopUpUuid>;
  @useResult
  $Res call({@JsonKey(name: "uuid") int uuid});
}

/// @nodoc
class _$RequestTopUpUuidCopyWithImpl<$Res, $Val extends RequestTopUpUuid>
    implements $RequestTopUpUuidCopyWith<$Res> {
  _$RequestTopUpUuidCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RequestTopUpUuid
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uuid = null,
  }) {
    return _then(_value.copyWith(
      uuid: null == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RequestTopUpUuidImplCopyWith<$Res>
    implements $RequestTopUpUuidCopyWith<$Res> {
  factory _$$RequestTopUpUuidImplCopyWith(_$RequestTopUpUuidImpl value,
          $Res Function(_$RequestTopUpUuidImpl) then) =
      __$$RequestTopUpUuidImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: "uuid") int uuid});
}

/// @nodoc
class __$$RequestTopUpUuidImplCopyWithImpl<$Res>
    extends _$RequestTopUpUuidCopyWithImpl<$Res, _$RequestTopUpUuidImpl>
    implements _$$RequestTopUpUuidImplCopyWith<$Res> {
  __$$RequestTopUpUuidImplCopyWithImpl(_$RequestTopUpUuidImpl _value,
      $Res Function(_$RequestTopUpUuidImpl) _then)
      : super(_value, _then);

  /// Create a copy of RequestTopUpUuid
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uuid = null,
  }) {
    return _then(_$RequestTopUpUuidImpl(
      uuid: null == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RequestTopUpUuidImpl implements _RequestTopUpUuid {
  _$RequestTopUpUuidImpl({@JsonKey(name: "uuid") required this.uuid});

  factory _$RequestTopUpUuidImpl.fromJson(Map<String, dynamic> json) =>
      _$$RequestTopUpUuidImplFromJson(json);

  @override
  @JsonKey(name: "uuid")
  int uuid;

  @override
  String toString() {
    return 'RequestTopUpUuid(uuid: $uuid)';
  }

  /// Create a copy of RequestTopUpUuid
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RequestTopUpUuidImplCopyWith<_$RequestTopUpUuidImpl> get copyWith =>
      __$$RequestTopUpUuidImplCopyWithImpl<_$RequestTopUpUuidImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RequestTopUpUuidImplToJson(
      this,
    );
  }
}

abstract class _RequestTopUpUuid implements RequestTopUpUuid {
  factory _RequestTopUpUuid({@JsonKey(name: "uuid") required int uuid}) =
      _$RequestTopUpUuidImpl;

  factory _RequestTopUpUuid.fromJson(Map<String, dynamic> json) =
      _$RequestTopUpUuidImpl.fromJson;

  @override
  @JsonKey(name: "uuid")
  int get uuid;
  @JsonKey(name: "uuid")
  set uuid(int value);

  /// Create a copy of RequestTopUpUuid
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RequestTopUpUuidImplCopyWith<_$RequestTopUpUuidImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

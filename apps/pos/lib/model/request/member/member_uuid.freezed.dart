// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'member_uuid.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RequestMemberUuid _$RequestMemberUuidFromJson(Map<String, dynamic> json) {
  return _RequestMemberUuid.fromJson(json);
}

/// @nodoc
mixin _$RequestMemberUuid {
  @JsonKey(name: "uuid")
  int get uuid => throw _privateConstructorUsedError;

  /// Serializes this RequestMemberUuid to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RequestMemberUuid
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RequestMemberUuidCopyWith<RequestMemberUuid> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RequestMemberUuidCopyWith<$Res> {
  factory $RequestMemberUuidCopyWith(
          RequestMemberUuid value, $Res Function(RequestMemberUuid) then) =
      _$RequestMemberUuidCopyWithImpl<$Res, RequestMemberUuid>;
  @useResult
  $Res call({@JsonKey(name: "uuid") int uuid});
}

/// @nodoc
class _$RequestMemberUuidCopyWithImpl<$Res, $Val extends RequestMemberUuid>
    implements $RequestMemberUuidCopyWith<$Res> {
  _$RequestMemberUuidCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RequestMemberUuid
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
abstract class _$$RequestMemberUuidImplCopyWith<$Res>
    implements $RequestMemberUuidCopyWith<$Res> {
  factory _$$RequestMemberUuidImplCopyWith(_$RequestMemberUuidImpl value,
          $Res Function(_$RequestMemberUuidImpl) then) =
      __$$RequestMemberUuidImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: "uuid") int uuid});
}

/// @nodoc
class __$$RequestMemberUuidImplCopyWithImpl<$Res>
    extends _$RequestMemberUuidCopyWithImpl<$Res, _$RequestMemberUuidImpl>
    implements _$$RequestMemberUuidImplCopyWith<$Res> {
  __$$RequestMemberUuidImplCopyWithImpl(_$RequestMemberUuidImpl _value,
      $Res Function(_$RequestMemberUuidImpl) _then)
      : super(_value, _then);

  /// Create a copy of RequestMemberUuid
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uuid = null,
  }) {
    return _then(_$RequestMemberUuidImpl(
      uuid: null == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RequestMemberUuidImpl implements _RequestMemberUuid {
  const _$RequestMemberUuidImpl({@JsonKey(name: "uuid") required this.uuid});

  factory _$RequestMemberUuidImpl.fromJson(Map<String, dynamic> json) =>
      _$$RequestMemberUuidImplFromJson(json);

  @override
  @JsonKey(name: "uuid")
  final int uuid;

  @override
  String toString() {
    return 'RequestMemberUuid(uuid: $uuid)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RequestMemberUuidImpl &&
            (identical(other.uuid, uuid) || other.uuid == uuid));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, uuid);

  /// Create a copy of RequestMemberUuid
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RequestMemberUuidImplCopyWith<_$RequestMemberUuidImpl> get copyWith =>
      __$$RequestMemberUuidImplCopyWithImpl<_$RequestMemberUuidImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RequestMemberUuidImplToJson(
      this,
    );
  }
}

abstract class _RequestMemberUuid implements RequestMemberUuid {
  const factory _RequestMemberUuid(
          {@JsonKey(name: "uuid") required final int uuid}) =
      _$RequestMemberUuidImpl;

  factory _RequestMemberUuid.fromJson(Map<String, dynamic> json) =
      _$RequestMemberUuidImpl.fromJson;

  @override
  @JsonKey(name: "uuid")
  int get uuid;

  /// Create a copy of RequestMemberUuid
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RequestMemberUuidImplCopyWith<_$RequestMemberUuidImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

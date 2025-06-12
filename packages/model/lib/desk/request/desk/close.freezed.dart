// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'close.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RequestDeskClose _$RequestDeskCloseFromJson(Map<String, dynamic> json) {
  return _RequestDeskClose.fromJson(json);
}

/// @nodoc
mixin _$RequestDeskClose {
  @JsonKey(name: "password")
  String? get password => throw _privateConstructorUsedError;
  @JsonKey(name: "reason")
  String get reason => throw _privateConstructorUsedError;
  @JsonKey(name: "uuid")
  int get uuid => throw _privateConstructorUsedError;

  /// Serializes this RequestDeskClose to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RequestDeskClose
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RequestDeskCloseCopyWith<RequestDeskClose> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RequestDeskCloseCopyWith<$Res> {
  factory $RequestDeskCloseCopyWith(
          RequestDeskClose value, $Res Function(RequestDeskClose) then) =
      _$RequestDeskCloseCopyWithImpl<$Res, RequestDeskClose>;
  @useResult
  $Res call(
      {@JsonKey(name: "password") String? password,
      @JsonKey(name: "reason") String reason,
      @JsonKey(name: "uuid") int uuid});
}

/// @nodoc
class _$RequestDeskCloseCopyWithImpl<$Res, $Val extends RequestDeskClose>
    implements $RequestDeskCloseCopyWith<$Res> {
  _$RequestDeskCloseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RequestDeskClose
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? password = freezed,
    Object? reason = null,
    Object? uuid = null,
  }) {
    return _then(_value.copyWith(
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      reason: null == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String,
      uuid: null == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RequestDeskCloseImplCopyWith<$Res>
    implements $RequestDeskCloseCopyWith<$Res> {
  factory _$$RequestDeskCloseImplCopyWith(_$RequestDeskCloseImpl value,
          $Res Function(_$RequestDeskCloseImpl) then) =
      __$$RequestDeskCloseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "password") String? password,
      @JsonKey(name: "reason") String reason,
      @JsonKey(name: "uuid") int uuid});
}

/// @nodoc
class __$$RequestDeskCloseImplCopyWithImpl<$Res>
    extends _$RequestDeskCloseCopyWithImpl<$Res, _$RequestDeskCloseImpl>
    implements _$$RequestDeskCloseImplCopyWith<$Res> {
  __$$RequestDeskCloseImplCopyWithImpl(_$RequestDeskCloseImpl _value,
      $Res Function(_$RequestDeskCloseImpl) _then)
      : super(_value, _then);

  /// Create a copy of RequestDeskClose
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? password = freezed,
    Object? reason = null,
    Object? uuid = null,
  }) {
    return _then(_$RequestDeskCloseImpl(
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      reason: null == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String,
      uuid: null == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RequestDeskCloseImpl implements _RequestDeskClose {
  const _$RequestDeskCloseImpl(
      {@JsonKey(name: "password") this.password,
      @JsonKey(name: "reason") required this.reason,
      @JsonKey(name: "uuid") required this.uuid});

  factory _$RequestDeskCloseImpl.fromJson(Map<String, dynamic> json) =>
      _$$RequestDeskCloseImplFromJson(json);

  @override
  @JsonKey(name: "password")
  final String? password;
  @override
  @JsonKey(name: "reason")
  final String reason;
  @override
  @JsonKey(name: "uuid")
  final int uuid;

  @override
  String toString() {
    return 'RequestDeskClose(password: $password, reason: $reason, uuid: $uuid)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RequestDeskCloseImpl &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.reason, reason) || other.reason == reason) &&
            (identical(other.uuid, uuid) || other.uuid == uuid));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, password, reason, uuid);

  /// Create a copy of RequestDeskClose
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RequestDeskCloseImplCopyWith<_$RequestDeskCloseImpl> get copyWith =>
      __$$RequestDeskCloseImplCopyWithImpl<_$RequestDeskCloseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RequestDeskCloseImplToJson(
      this,
    );
  }
}

abstract class _RequestDeskClose implements RequestDeskClose {
  const factory _RequestDeskClose(
      {@JsonKey(name: "password") final String? password,
      @JsonKey(name: "reason") required final String reason,
      @JsonKey(name: "uuid") required final int uuid}) = _$RequestDeskCloseImpl;

  factory _RequestDeskClose.fromJson(Map<String, dynamic> json) =
      _$RequestDeskCloseImpl.fromJson;

  @override
  @JsonKey(name: "password")
  String? get password;
  @override
  @JsonKey(name: "reason")
  String get reason;
  @override
  @JsonKey(name: "uuid")
  int get uuid;

  /// Create a copy of RequestDeskClose
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RequestDeskCloseImplCopyWith<_$RequestDeskCloseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'member_level.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ResponseMemberLevel _$ResponseMemberLevelFromJson(Map<String, dynamic> json) {
  return _ResponseMemberLevel.fromJson(json);
}

/// @nodoc
mixin _$ResponseMemberLevel {
  @JsonKey(name: "create_time")
  int? get createTime => throw _privateConstructorUsedError;
  @JsonKey(name: "name")
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: "priority")
  int? get priority => throw _privateConstructorUsedError;
  @JsonKey(name: "uuid")
  int? get uuid => throw _privateConstructorUsedError;

  /// Serializes this ResponseMemberLevel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ResponseMemberLevel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ResponseMemberLevelCopyWith<ResponseMemberLevel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResponseMemberLevelCopyWith<$Res> {
  factory $ResponseMemberLevelCopyWith(
          ResponseMemberLevel value, $Res Function(ResponseMemberLevel) then) =
      _$ResponseMemberLevelCopyWithImpl<$Res, ResponseMemberLevel>;
  @useResult
  $Res call(
      {@JsonKey(name: "create_time") int? createTime,
      @JsonKey(name: "name") String? name,
      @JsonKey(name: "priority") int? priority,
      @JsonKey(name: "uuid") int? uuid});
}

/// @nodoc
class _$ResponseMemberLevelCopyWithImpl<$Res, $Val extends ResponseMemberLevel>
    implements $ResponseMemberLevelCopyWith<$Res> {
  _$ResponseMemberLevelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ResponseMemberLevel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? createTime = freezed,
    Object? name = freezed,
    Object? priority = freezed,
    Object? uuid = freezed,
  }) {
    return _then(_value.copyWith(
      createTime: freezed == createTime
          ? _value.createTime
          : createTime // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      priority: freezed == priority
          ? _value.priority
          : priority // ignore: cast_nullable_to_non_nullable
              as int?,
      uuid: freezed == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ResponseMemberLevelImplCopyWith<$Res>
    implements $ResponseMemberLevelCopyWith<$Res> {
  factory _$$ResponseMemberLevelImplCopyWith(_$ResponseMemberLevelImpl value,
          $Res Function(_$ResponseMemberLevelImpl) then) =
      __$$ResponseMemberLevelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "create_time") int? createTime,
      @JsonKey(name: "name") String? name,
      @JsonKey(name: "priority") int? priority,
      @JsonKey(name: "uuid") int? uuid});
}

/// @nodoc
class __$$ResponseMemberLevelImplCopyWithImpl<$Res>
    extends _$ResponseMemberLevelCopyWithImpl<$Res, _$ResponseMemberLevelImpl>
    implements _$$ResponseMemberLevelImplCopyWith<$Res> {
  __$$ResponseMemberLevelImplCopyWithImpl(_$ResponseMemberLevelImpl _value,
      $Res Function(_$ResponseMemberLevelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ResponseMemberLevel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? createTime = freezed,
    Object? name = freezed,
    Object? priority = freezed,
    Object? uuid = freezed,
  }) {
    return _then(_$ResponseMemberLevelImpl(
      createTime: freezed == createTime
          ? _value.createTime
          : createTime // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      priority: freezed == priority
          ? _value.priority
          : priority // ignore: cast_nullable_to_non_nullable
              as int?,
      uuid: freezed == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ResponseMemberLevelImpl implements _ResponseMemberLevel {
  const _$ResponseMemberLevelImpl(
      {@JsonKey(name: "create_time") this.createTime,
      @JsonKey(name: "name") this.name,
      @JsonKey(name: "priority") this.priority,
      @JsonKey(name: "uuid") this.uuid});

  factory _$ResponseMemberLevelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResponseMemberLevelImplFromJson(json);

  @override
  @JsonKey(name: "create_time")
  final int? createTime;
  @override
  @JsonKey(name: "name")
  final String? name;
  @override
  @JsonKey(name: "priority")
  final int? priority;
  @override
  @JsonKey(name: "uuid")
  final int? uuid;

  @override
  String toString() {
    return 'ResponseMemberLevel(createTime: $createTime, name: $name, priority: $priority, uuid: $uuid)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResponseMemberLevelImpl &&
            (identical(other.createTime, createTime) ||
                other.createTime == createTime) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.priority, priority) ||
                other.priority == priority) &&
            (identical(other.uuid, uuid) || other.uuid == uuid));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, createTime, name, priority, uuid);

  /// Create a copy of ResponseMemberLevel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ResponseMemberLevelImplCopyWith<_$ResponseMemberLevelImpl> get copyWith =>
      __$$ResponseMemberLevelImplCopyWithImpl<_$ResponseMemberLevelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResponseMemberLevelImplToJson(
      this,
    );
  }
}

abstract class _ResponseMemberLevel implements ResponseMemberLevel {
  const factory _ResponseMemberLevel(
      {@JsonKey(name: "create_time") final int? createTime,
      @JsonKey(name: "name") final String? name,
      @JsonKey(name: "priority") final int? priority,
      @JsonKey(name: "uuid") final int? uuid}) = _$ResponseMemberLevelImpl;

  factory _ResponseMemberLevel.fromJson(Map<String, dynamic> json) =
      _$ResponseMemberLevelImpl.fromJson;

  @override
  @JsonKey(name: "create_time")
  int? get createTime;
  @override
  @JsonKey(name: "name")
  String? get name;
  @override
  @JsonKey(name: "priority")
  int? get priority;
  @override
  @JsonKey(name: "uuid")
  int? get uuid;

  /// Create a copy of ResponseMemberLevel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ResponseMemberLevelImplCopyWith<_$ResponseMemberLevelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

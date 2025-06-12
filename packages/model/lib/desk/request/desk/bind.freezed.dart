// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bind.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RequestDeskBind _$RequestDeskBindFromJson(Map<String, dynamic> json) {
  return _RequestDeskBind.fromJson(json);
}

/// @nodoc
mixin _$RequestDeskBind {
  @JsonKey(name: "desk_uuid")
  int get deskUuid => throw _privateConstructorUsedError;
  @JsonKey(name: "desk_uuid")
  set deskUuid(int value) => throw _privateConstructorUsedError;
  @JsonKey(name: "old_desk_uuid")
  int? get oldDeskUuid => throw _privateConstructorUsedError;
  @JsonKey(name: "old_desk_uuid")
  set oldDeskUuid(int? value) => throw _privateConstructorUsedError;

  /// Serializes this RequestDeskBind to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RequestDeskBind
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RequestDeskBindCopyWith<RequestDeskBind> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RequestDeskBindCopyWith<$Res> {
  factory $RequestDeskBindCopyWith(
          RequestDeskBind value, $Res Function(RequestDeskBind) then) =
      _$RequestDeskBindCopyWithImpl<$Res, RequestDeskBind>;
  @useResult
  $Res call(
      {@JsonKey(name: "desk_uuid") int deskUuid,
      @JsonKey(name: "old_desk_uuid") int? oldDeskUuid});
}

/// @nodoc
class _$RequestDeskBindCopyWithImpl<$Res, $Val extends RequestDeskBind>
    implements $RequestDeskBindCopyWith<$Res> {
  _$RequestDeskBindCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RequestDeskBind
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? deskUuid = null,
    Object? oldDeskUuid = freezed,
  }) {
    return _then(_value.copyWith(
      deskUuid: null == deskUuid
          ? _value.deskUuid
          : deskUuid // ignore: cast_nullable_to_non_nullable
              as int,
      oldDeskUuid: freezed == oldDeskUuid
          ? _value.oldDeskUuid
          : oldDeskUuid // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RequestDeskBindImplCopyWith<$Res>
    implements $RequestDeskBindCopyWith<$Res> {
  factory _$$RequestDeskBindImplCopyWith(_$RequestDeskBindImpl value,
          $Res Function(_$RequestDeskBindImpl) then) =
      __$$RequestDeskBindImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "desk_uuid") int deskUuid,
      @JsonKey(name: "old_desk_uuid") int? oldDeskUuid});
}

/// @nodoc
class __$$RequestDeskBindImplCopyWithImpl<$Res>
    extends _$RequestDeskBindCopyWithImpl<$Res, _$RequestDeskBindImpl>
    implements _$$RequestDeskBindImplCopyWith<$Res> {
  __$$RequestDeskBindImplCopyWithImpl(
      _$RequestDeskBindImpl _value, $Res Function(_$RequestDeskBindImpl) _then)
      : super(_value, _then);

  /// Create a copy of RequestDeskBind
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? deskUuid = null,
    Object? oldDeskUuid = freezed,
  }) {
    return _then(_$RequestDeskBindImpl(
      deskUuid: null == deskUuid
          ? _value.deskUuid
          : deskUuid // ignore: cast_nullable_to_non_nullable
              as int,
      oldDeskUuid: freezed == oldDeskUuid
          ? _value.oldDeskUuid
          : oldDeskUuid // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RequestDeskBindImpl implements _RequestDeskBind {
  _$RequestDeskBindImpl(
      {@JsonKey(name: "desk_uuid") required this.deskUuid,
      @JsonKey(name: "old_desk_uuid") this.oldDeskUuid});

  factory _$RequestDeskBindImpl.fromJson(Map<String, dynamic> json) =>
      _$$RequestDeskBindImplFromJson(json);

  @override
  @JsonKey(name: "desk_uuid")
  int deskUuid;
  @override
  @JsonKey(name: "old_desk_uuid")
  int? oldDeskUuid;

  @override
  String toString() {
    return 'RequestDeskBind(deskUuid: $deskUuid, oldDeskUuid: $oldDeskUuid)';
  }

  /// Create a copy of RequestDeskBind
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RequestDeskBindImplCopyWith<_$RequestDeskBindImpl> get copyWith =>
      __$$RequestDeskBindImplCopyWithImpl<_$RequestDeskBindImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RequestDeskBindImplToJson(
      this,
    );
  }
}

abstract class _RequestDeskBind implements RequestDeskBind {
  factory _RequestDeskBind(
          {@JsonKey(name: "desk_uuid") required int deskUuid,
          @JsonKey(name: "old_desk_uuid") int? oldDeskUuid}) =
      _$RequestDeskBindImpl;

  factory _RequestDeskBind.fromJson(Map<String, dynamic> json) =
      _$RequestDeskBindImpl.fromJson;

  @override
  @JsonKey(name: "desk_uuid")
  int get deskUuid;
  @JsonKey(name: "desk_uuid")
  set deskUuid(int value);
  @override
  @JsonKey(name: "old_desk_uuid")
  int? get oldDeskUuid;
  @JsonKey(name: "old_desk_uuid")
  set oldDeskUuid(int? value);

  /// Create a copy of RequestDeskBind
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RequestDeskBindImplCopyWith<_$RequestDeskBindImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

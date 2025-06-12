// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_member.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RequestAddMember _$RequestAddMemberFromJson(Map<String, dynamic> json) {
  return _RequestAddMember.fromJson(json);
}

/// @nodoc
mixin _$RequestAddMember {
  @JsonKey(name: "level_uuid")
  int get levelUuid => throw _privateConstructorUsedError;
  @JsonKey(name: "level_uuid")
  set levelUuid(int value) => throw _privateConstructorUsedError;
  @JsonKey(name: "nickname")
  String get nickname => throw _privateConstructorUsedError;
  @JsonKey(name: "nickname")
  set nickname(String value) => throw _privateConstructorUsedError;
  @JsonKey(name: "password")
  String get password => throw _privateConstructorUsedError;
  @JsonKey(name: "password")
  set password(String value) => throw _privateConstructorUsedError;
  @JsonKey(name: "phone")
  String get phone => throw _privateConstructorUsedError;
  @JsonKey(name: "phone")
  set phone(String value) => throw _privateConstructorUsedError;

  /// Serializes this RequestAddMember to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RequestAddMember
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RequestAddMemberCopyWith<RequestAddMember> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RequestAddMemberCopyWith<$Res> {
  factory $RequestAddMemberCopyWith(
          RequestAddMember value, $Res Function(RequestAddMember) then) =
      _$RequestAddMemberCopyWithImpl<$Res, RequestAddMember>;
  @useResult
  $Res call(
      {@JsonKey(name: "level_uuid") int levelUuid,
      @JsonKey(name: "nickname") String nickname,
      @JsonKey(name: "password") String password,
      @JsonKey(name: "phone") String phone});
}

/// @nodoc
class _$RequestAddMemberCopyWithImpl<$Res, $Val extends RequestAddMember>
    implements $RequestAddMemberCopyWith<$Res> {
  _$RequestAddMemberCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RequestAddMember
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? levelUuid = null,
    Object? nickname = null,
    Object? password = null,
    Object? phone = null,
  }) {
    return _then(_value.copyWith(
      levelUuid: null == levelUuid
          ? _value.levelUuid
          : levelUuid // ignore: cast_nullable_to_non_nullable
              as int,
      nickname: null == nickname
          ? _value.nickname
          : nickname // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RequestAddMemberImplCopyWith<$Res>
    implements $RequestAddMemberCopyWith<$Res> {
  factory _$$RequestAddMemberImplCopyWith(_$RequestAddMemberImpl value,
          $Res Function(_$RequestAddMemberImpl) then) =
      __$$RequestAddMemberImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "level_uuid") int levelUuid,
      @JsonKey(name: "nickname") String nickname,
      @JsonKey(name: "password") String password,
      @JsonKey(name: "phone") String phone});
}

/// @nodoc
class __$$RequestAddMemberImplCopyWithImpl<$Res>
    extends _$RequestAddMemberCopyWithImpl<$Res, _$RequestAddMemberImpl>
    implements _$$RequestAddMemberImplCopyWith<$Res> {
  __$$RequestAddMemberImplCopyWithImpl(_$RequestAddMemberImpl _value,
      $Res Function(_$RequestAddMemberImpl) _then)
      : super(_value, _then);

  /// Create a copy of RequestAddMember
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? levelUuid = null,
    Object? nickname = null,
    Object? password = null,
    Object? phone = null,
  }) {
    return _then(_$RequestAddMemberImpl(
      levelUuid: null == levelUuid
          ? _value.levelUuid
          : levelUuid // ignore: cast_nullable_to_non_nullable
              as int,
      nickname: null == nickname
          ? _value.nickname
          : nickname // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RequestAddMemberImpl implements _RequestAddMember {
  _$RequestAddMemberImpl(
      {@JsonKey(name: "level_uuid") required this.levelUuid,
      @JsonKey(name: "nickname") required this.nickname,
      @JsonKey(name: "password") required this.password,
      @JsonKey(name: "phone") required this.phone});

  factory _$RequestAddMemberImpl.fromJson(Map<String, dynamic> json) =>
      _$$RequestAddMemberImplFromJson(json);

  @override
  @JsonKey(name: "level_uuid")
  int levelUuid;
  @override
  @JsonKey(name: "nickname")
  String nickname;
  @override
  @JsonKey(name: "password")
  String password;
  @override
  @JsonKey(name: "phone")
  String phone;

  @override
  String toString() {
    return 'RequestAddMember(levelUuid: $levelUuid, nickname: $nickname, password: $password, phone: $phone)';
  }

  /// Create a copy of RequestAddMember
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RequestAddMemberImplCopyWith<_$RequestAddMemberImpl> get copyWith =>
      __$$RequestAddMemberImplCopyWithImpl<_$RequestAddMemberImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RequestAddMemberImplToJson(
      this,
    );
  }
}

abstract class _RequestAddMember implements RequestAddMember {
  factory _RequestAddMember(
      {@JsonKey(name: "level_uuid") required int levelUuid,
      @JsonKey(name: "nickname") required String nickname,
      @JsonKey(name: "password") required String password,
      @JsonKey(name: "phone") required String phone}) = _$RequestAddMemberImpl;

  factory _RequestAddMember.fromJson(Map<String, dynamic> json) =
      _$RequestAddMemberImpl.fromJson;

  @override
  @JsonKey(name: "level_uuid")
  int get levelUuid;
  @JsonKey(name: "level_uuid")
  set levelUuid(int value);
  @override
  @JsonKey(name: "nickname")
  String get nickname;
  @JsonKey(name: "nickname")
  set nickname(String value);
  @override
  @JsonKey(name: "password")
  String get password;
  @JsonKey(name: "password")
  set password(String value);
  @override
  @JsonKey(name: "phone")
  String get phone;
  @JsonKey(name: "phone")
  set phone(String value);

  /// Create a copy of RequestAddMember
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RequestAddMemberImplCopyWith<_$RequestAddMemberImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'member_form.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RequestMemberForm _$RequestMemberFormFromJson(Map<String, dynamic> json) {
  return _RequestMemberForm.fromJson(json);
}

/// @nodoc
mixin _$RequestMemberForm {
  @JsonKey(name: "level_uuid")
  int get levelUuid => throw _privateConstructorUsedError;
  @JsonKey(name: "nickname")
  String get nickname => throw _privateConstructorUsedError;
  @JsonKey(name: "password")
  String get password => throw _privateConstructorUsedError;
  @JsonKey(name: "phone")
  String get phone => throw _privateConstructorUsedError;

  /// Serializes this RequestMemberForm to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RequestMemberForm
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RequestMemberFormCopyWith<RequestMemberForm> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RequestMemberFormCopyWith<$Res> {
  factory $RequestMemberFormCopyWith(
          RequestMemberForm value, $Res Function(RequestMemberForm) then) =
      _$RequestMemberFormCopyWithImpl<$Res, RequestMemberForm>;
  @useResult
  $Res call(
      {@JsonKey(name: "level_uuid") int levelUuid,
      @JsonKey(name: "nickname") String nickname,
      @JsonKey(name: "password") String password,
      @JsonKey(name: "phone") String phone});
}

/// @nodoc
class _$RequestMemberFormCopyWithImpl<$Res, $Val extends RequestMemberForm>
    implements $RequestMemberFormCopyWith<$Res> {
  _$RequestMemberFormCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RequestMemberForm
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
abstract class _$$RequestMemberFormImplCopyWith<$Res>
    implements $RequestMemberFormCopyWith<$Res> {
  factory _$$RequestMemberFormImplCopyWith(_$RequestMemberFormImpl value,
          $Res Function(_$RequestMemberFormImpl) then) =
      __$$RequestMemberFormImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "level_uuid") int levelUuid,
      @JsonKey(name: "nickname") String nickname,
      @JsonKey(name: "password") String password,
      @JsonKey(name: "phone") String phone});
}

/// @nodoc
class __$$RequestMemberFormImplCopyWithImpl<$Res>
    extends _$RequestMemberFormCopyWithImpl<$Res, _$RequestMemberFormImpl>
    implements _$$RequestMemberFormImplCopyWith<$Res> {
  __$$RequestMemberFormImplCopyWithImpl(_$RequestMemberFormImpl _value,
      $Res Function(_$RequestMemberFormImpl) _then)
      : super(_value, _then);

  /// Create a copy of RequestMemberForm
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? levelUuid = null,
    Object? nickname = null,
    Object? password = null,
    Object? phone = null,
  }) {
    return _then(_$RequestMemberFormImpl(
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
class _$RequestMemberFormImpl implements _RequestMemberForm {
  const _$RequestMemberFormImpl(
      {@JsonKey(name: "level_uuid") required this.levelUuid,
      @JsonKey(name: "nickname") required this.nickname,
      @JsonKey(name: "password") required this.password,
      @JsonKey(name: "phone") required this.phone});

  factory _$RequestMemberFormImpl.fromJson(Map<String, dynamic> json) =>
      _$$RequestMemberFormImplFromJson(json);

  @override
  @JsonKey(name: "level_uuid")
  final int levelUuid;
  @override
  @JsonKey(name: "nickname")
  final String nickname;
  @override
  @JsonKey(name: "password")
  final String password;
  @override
  @JsonKey(name: "phone")
  final String phone;

  @override
  String toString() {
    return 'RequestMemberForm(levelUuid: $levelUuid, nickname: $nickname, password: $password, phone: $phone)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RequestMemberFormImpl &&
            (identical(other.levelUuid, levelUuid) ||
                other.levelUuid == levelUuid) &&
            (identical(other.nickname, nickname) ||
                other.nickname == nickname) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.phone, phone) || other.phone == phone));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, levelUuid, nickname, password, phone);

  /// Create a copy of RequestMemberForm
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RequestMemberFormImplCopyWith<_$RequestMemberFormImpl> get copyWith =>
      __$$RequestMemberFormImplCopyWithImpl<_$RequestMemberFormImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RequestMemberFormImplToJson(
      this,
    );
  }
}

abstract class _RequestMemberForm implements RequestMemberForm {
  const factory _RequestMemberForm(
          {@JsonKey(name: "level_uuid") required final int levelUuid,
          @JsonKey(name: "nickname") required final String nickname,
          @JsonKey(name: "password") required final String password,
          @JsonKey(name: "phone") required final String phone}) =
      _$RequestMemberFormImpl;

  factory _RequestMemberForm.fromJson(Map<String, dynamic> json) =
      _$RequestMemberFormImpl.fromJson;

  @override
  @JsonKey(name: "level_uuid")
  int get levelUuid;
  @override
  @JsonKey(name: "nickname")
  String get nickname;
  @override
  @JsonKey(name: "password")
  String get password;
  @override
  @JsonKey(name: "phone")
  String get phone;

  /// Create a copy of RequestMemberForm
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RequestMemberFormImplCopyWith<_$RequestMemberFormImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_member.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ResponseSearchMember _$ResponseSearchMemberFromJson(Map<String, dynamic> json) {
  return _ResponseSearchMember.fromJson(json);
}

/// @nodoc
mixin _$ResponseSearchMember {
  @JsonKey(name: "nickname")
  String get nickname => throw _privateConstructorUsedError;
  @JsonKey(name: "phone")
  String get phone => throw _privateConstructorUsedError;
  @JsonKey(name: "uuid")
  int get uuid => throw _privateConstructorUsedError;

  /// Serializes this ResponseSearchMember to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ResponseSearchMember
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ResponseSearchMemberCopyWith<ResponseSearchMember> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResponseSearchMemberCopyWith<$Res> {
  factory $ResponseSearchMemberCopyWith(ResponseSearchMember value,
          $Res Function(ResponseSearchMember) then) =
      _$ResponseSearchMemberCopyWithImpl<$Res, ResponseSearchMember>;
  @useResult
  $Res call(
      {@JsonKey(name: "nickname") String nickname,
      @JsonKey(name: "phone") String phone,
      @JsonKey(name: "uuid") int uuid});
}

/// @nodoc
class _$ResponseSearchMemberCopyWithImpl<$Res,
        $Val extends ResponseSearchMember>
    implements $ResponseSearchMemberCopyWith<$Res> {
  _$ResponseSearchMemberCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ResponseSearchMember
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nickname = null,
    Object? phone = null,
    Object? uuid = null,
  }) {
    return _then(_value.copyWith(
      nickname: null == nickname
          ? _value.nickname
          : nickname // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      uuid: null == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ResponseSearchMemberImplCopyWith<$Res>
    implements $ResponseSearchMemberCopyWith<$Res> {
  factory _$$ResponseSearchMemberImplCopyWith(_$ResponseSearchMemberImpl value,
          $Res Function(_$ResponseSearchMemberImpl) then) =
      __$$ResponseSearchMemberImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "nickname") String nickname,
      @JsonKey(name: "phone") String phone,
      @JsonKey(name: "uuid") int uuid});
}

/// @nodoc
class __$$ResponseSearchMemberImplCopyWithImpl<$Res>
    extends _$ResponseSearchMemberCopyWithImpl<$Res, _$ResponseSearchMemberImpl>
    implements _$$ResponseSearchMemberImplCopyWith<$Res> {
  __$$ResponseSearchMemberImplCopyWithImpl(_$ResponseSearchMemberImpl _value,
      $Res Function(_$ResponseSearchMemberImpl) _then)
      : super(_value, _then);

  /// Create a copy of ResponseSearchMember
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nickname = null,
    Object? phone = null,
    Object? uuid = null,
  }) {
    return _then(_$ResponseSearchMemberImpl(
      nickname: null == nickname
          ? _value.nickname
          : nickname // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
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
class _$ResponseSearchMemberImpl implements _ResponseSearchMember {
  const _$ResponseSearchMemberImpl(
      {@JsonKey(name: "nickname") required this.nickname,
      @JsonKey(name: "phone") required this.phone,
      @JsonKey(name: "uuid") required this.uuid});

  factory _$ResponseSearchMemberImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResponseSearchMemberImplFromJson(json);

  @override
  @JsonKey(name: "nickname")
  final String nickname;
  @override
  @JsonKey(name: "phone")
  final String phone;
  @override
  @JsonKey(name: "uuid")
  final int uuid;

  @override
  String toString() {
    return 'ResponseSearchMember(nickname: $nickname, phone: $phone, uuid: $uuid)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResponseSearchMemberImpl &&
            (identical(other.nickname, nickname) ||
                other.nickname == nickname) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.uuid, uuid) || other.uuid == uuid));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, nickname, phone, uuid);

  /// Create a copy of ResponseSearchMember
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ResponseSearchMemberImplCopyWith<_$ResponseSearchMemberImpl>
      get copyWith =>
          __$$ResponseSearchMemberImplCopyWithImpl<_$ResponseSearchMemberImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResponseSearchMemberImplToJson(
      this,
    );
  }
}

abstract class _ResponseSearchMember implements ResponseSearchMember {
  const factory _ResponseSearchMember(
          {@JsonKey(name: "nickname") required final String nickname,
          @JsonKey(name: "phone") required final String phone,
          @JsonKey(name: "uuid") required final int uuid}) =
      _$ResponseSearchMemberImpl;

  factory _ResponseSearchMember.fromJson(Map<String, dynamic> json) =
      _$ResponseSearchMemberImpl.fromJson;

  @override
  @JsonKey(name: "nickname")
  String get nickname;
  @override
  @JsonKey(name: "phone")
  String get phone;
  @override
  @JsonKey(name: "uuid")
  int get uuid;

  /// Create a copy of ResponseSearchMember
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ResponseSearchMemberImplCopyWith<_$ResponseSearchMemberImpl>
      get copyWith => throw _privateConstructorUsedError;
}

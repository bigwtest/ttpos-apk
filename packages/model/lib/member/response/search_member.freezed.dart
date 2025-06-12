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

SearchMember _$SearchMemberFromJson(Map<String, dynamic> json) {
  return _SearchMember.fromJson(json);
}

/// @nodoc
mixin _$SearchMember {
  @JsonKey(name: "nickname")
  String get nickname => throw _privateConstructorUsedError;
  @JsonKey(name: "phone")
  String get phone => throw _privateConstructorUsedError;
  @JsonKey(name: "uuid")
  int get uuid => throw _privateConstructorUsedError;

  /// Serializes this SearchMember to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SearchMember
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SearchMemberCopyWith<SearchMember> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchMemberCopyWith<$Res> {
  factory $SearchMemberCopyWith(
          SearchMember value, $Res Function(SearchMember) then) =
      _$SearchMemberCopyWithImpl<$Res, SearchMember>;
  @useResult
  $Res call(
      {@JsonKey(name: "nickname") String nickname,
      @JsonKey(name: "phone") String phone,
      @JsonKey(name: "uuid") int uuid});
}

/// @nodoc
class _$SearchMemberCopyWithImpl<$Res, $Val extends SearchMember>
    implements $SearchMemberCopyWith<$Res> {
  _$SearchMemberCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SearchMember
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
abstract class _$$SearchMemberImplCopyWith<$Res>
    implements $SearchMemberCopyWith<$Res> {
  factory _$$SearchMemberImplCopyWith(
          _$SearchMemberImpl value, $Res Function(_$SearchMemberImpl) then) =
      __$$SearchMemberImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "nickname") String nickname,
      @JsonKey(name: "phone") String phone,
      @JsonKey(name: "uuid") int uuid});
}

/// @nodoc
class __$$SearchMemberImplCopyWithImpl<$Res>
    extends _$SearchMemberCopyWithImpl<$Res, _$SearchMemberImpl>
    implements _$$SearchMemberImplCopyWith<$Res> {
  __$$SearchMemberImplCopyWithImpl(
      _$SearchMemberImpl _value, $Res Function(_$SearchMemberImpl) _then)
      : super(_value, _then);

  /// Create a copy of SearchMember
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nickname = null,
    Object? phone = null,
    Object? uuid = null,
  }) {
    return _then(_$SearchMemberImpl(
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
class _$SearchMemberImpl implements _SearchMember {
  const _$SearchMemberImpl(
      {@JsonKey(name: "nickname") required this.nickname,
      @JsonKey(name: "phone") required this.phone,
      @JsonKey(name: "uuid") required this.uuid});

  factory _$SearchMemberImpl.fromJson(Map<String, dynamic> json) =>
      _$$SearchMemberImplFromJson(json);

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
    return 'SearchMember(nickname: $nickname, phone: $phone, uuid: $uuid)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchMemberImpl &&
            (identical(other.nickname, nickname) ||
                other.nickname == nickname) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.uuid, uuid) || other.uuid == uuid));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, nickname, phone, uuid);

  /// Create a copy of SearchMember
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchMemberImplCopyWith<_$SearchMemberImpl> get copyWith =>
      __$$SearchMemberImplCopyWithImpl<_$SearchMemberImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SearchMemberImplToJson(
      this,
    );
  }
}

abstract class _SearchMember implements SearchMember {
  const factory _SearchMember(
      {@JsonKey(name: "nickname") required final String nickname,
      @JsonKey(name: "phone") required final String phone,
      @JsonKey(name: "uuid") required final int uuid}) = _$SearchMemberImpl;

  factory _SearchMember.fromJson(Map<String, dynamic> json) =
      _$SearchMemberImpl.fromJson;

  @override
  @JsonKey(name: "nickname")
  String get nickname;
  @override
  @JsonKey(name: "phone")
  String get phone;
  @override
  @JsonKey(name: "uuid")
  int get uuid;

  /// Create a copy of SearchMember
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SearchMemberImplCopyWith<_$SearchMemberImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

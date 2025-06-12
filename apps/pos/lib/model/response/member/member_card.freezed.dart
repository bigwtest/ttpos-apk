// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'member_card.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ResponseMemberCard _$ResponseMemberCardFromJson(Map<String, dynamic> json) {
  return _ResponseMemberCard.fromJson(json);
}

/// @nodoc
mixin _$ResponseMemberCard {
  @JsonKey(name: "name")
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: "uuid")
  int? get uuid => throw _privateConstructorUsedError;

  /// Serializes this ResponseMemberCard to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ResponseMemberCard
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ResponseMemberCardCopyWith<ResponseMemberCard> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResponseMemberCardCopyWith<$Res> {
  factory $ResponseMemberCardCopyWith(
          ResponseMemberCard value, $Res Function(ResponseMemberCard) then) =
      _$ResponseMemberCardCopyWithImpl<$Res, ResponseMemberCard>;
  @useResult
  $Res call(
      {@JsonKey(name: "name") String name, @JsonKey(name: "uuid") int? uuid});
}

/// @nodoc
class _$ResponseMemberCardCopyWithImpl<$Res, $Val extends ResponseMemberCard>
    implements $ResponseMemberCardCopyWith<$Res> {
  _$ResponseMemberCardCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ResponseMemberCard
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? uuid = freezed,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      uuid: freezed == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ResponseMemberCardImplCopyWith<$Res>
    implements $ResponseMemberCardCopyWith<$Res> {
  factory _$$ResponseMemberCardImplCopyWith(_$ResponseMemberCardImpl value,
          $Res Function(_$ResponseMemberCardImpl) then) =
      __$$ResponseMemberCardImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "name") String name, @JsonKey(name: "uuid") int? uuid});
}

/// @nodoc
class __$$ResponseMemberCardImplCopyWithImpl<$Res>
    extends _$ResponseMemberCardCopyWithImpl<$Res, _$ResponseMemberCardImpl>
    implements _$$ResponseMemberCardImplCopyWith<$Res> {
  __$$ResponseMemberCardImplCopyWithImpl(_$ResponseMemberCardImpl _value,
      $Res Function(_$ResponseMemberCardImpl) _then)
      : super(_value, _then);

  /// Create a copy of ResponseMemberCard
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? uuid = freezed,
  }) {
    return _then(_$ResponseMemberCardImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      uuid: freezed == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ResponseMemberCardImpl implements _ResponseMemberCard {
  const _$ResponseMemberCardImpl(
      {@JsonKey(name: "name") required this.name,
      @JsonKey(name: "uuid") this.uuid});

  factory _$ResponseMemberCardImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResponseMemberCardImplFromJson(json);

  @override
  @JsonKey(name: "name")
  final String name;
  @override
  @JsonKey(name: "uuid")
  final int? uuid;

  @override
  String toString() {
    return 'ResponseMemberCard(name: $name, uuid: $uuid)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResponseMemberCardImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.uuid, uuid) || other.uuid == uuid));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, uuid);

  /// Create a copy of ResponseMemberCard
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ResponseMemberCardImplCopyWith<_$ResponseMemberCardImpl> get copyWith =>
      __$$ResponseMemberCardImplCopyWithImpl<_$ResponseMemberCardImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResponseMemberCardImplToJson(
      this,
    );
  }
}

abstract class _ResponseMemberCard implements ResponseMemberCard {
  const factory _ResponseMemberCard(
      {@JsonKey(name: "name") required final String name,
      @JsonKey(name: "uuid") final int? uuid}) = _$ResponseMemberCardImpl;

  factory _ResponseMemberCard.fromJson(Map<String, dynamic> json) =
      _$ResponseMemberCardImpl.fromJson;

  @override
  @JsonKey(name: "name")
  String get name;
  @override
  @JsonKey(name: "uuid")
  int? get uuid;

  /// Create a copy of ResponseMemberCard
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ResponseMemberCardImplCopyWith<_$ResponseMemberCardImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

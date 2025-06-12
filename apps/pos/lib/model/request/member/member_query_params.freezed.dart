// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'member_query_params.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RequestParamsQueryMember _$RequestParamsQueryMemberFromJson(
    Map<String, dynamic> json) {
  return _RequestParamsQueryMember.fromJson(json);
}

/// @nodoc
mixin _$RequestParamsQueryMember {
  @JsonKey(name: "keyword")
  String get keyword => throw _privateConstructorUsedError;

  /// Serializes this RequestParamsQueryMember to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RequestParamsQueryMember
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RequestParamsQueryMemberCopyWith<RequestParamsQueryMember> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RequestParamsQueryMemberCopyWith<$Res> {
  factory $RequestParamsQueryMemberCopyWith(RequestParamsQueryMember value,
          $Res Function(RequestParamsQueryMember) then) =
      _$RequestParamsQueryMemberCopyWithImpl<$Res, RequestParamsQueryMember>;
  @useResult
  $Res call({@JsonKey(name: "keyword") String keyword});
}

/// @nodoc
class _$RequestParamsQueryMemberCopyWithImpl<$Res,
        $Val extends RequestParamsQueryMember>
    implements $RequestParamsQueryMemberCopyWith<$Res> {
  _$RequestParamsQueryMemberCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RequestParamsQueryMember
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? keyword = null,
  }) {
    return _then(_value.copyWith(
      keyword: null == keyword
          ? _value.keyword
          : keyword // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RequestParamsQueryMemberImplCopyWith<$Res>
    implements $RequestParamsQueryMemberCopyWith<$Res> {
  factory _$$RequestParamsQueryMemberImplCopyWith(
          _$RequestParamsQueryMemberImpl value,
          $Res Function(_$RequestParamsQueryMemberImpl) then) =
      __$$RequestParamsQueryMemberImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: "keyword") String keyword});
}

/// @nodoc
class __$$RequestParamsQueryMemberImplCopyWithImpl<$Res>
    extends _$RequestParamsQueryMemberCopyWithImpl<$Res,
        _$RequestParamsQueryMemberImpl>
    implements _$$RequestParamsQueryMemberImplCopyWith<$Res> {
  __$$RequestParamsQueryMemberImplCopyWithImpl(
      _$RequestParamsQueryMemberImpl _value,
      $Res Function(_$RequestParamsQueryMemberImpl) _then)
      : super(_value, _then);

  /// Create a copy of RequestParamsQueryMember
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? keyword = null,
  }) {
    return _then(_$RequestParamsQueryMemberImpl(
      keyword: null == keyword
          ? _value.keyword
          : keyword // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RequestParamsQueryMemberImpl implements _RequestParamsQueryMember {
  const _$RequestParamsQueryMemberImpl(
      {@JsonKey(name: "keyword") required this.keyword});

  factory _$RequestParamsQueryMemberImpl.fromJson(Map<String, dynamic> json) =>
      _$$RequestParamsQueryMemberImplFromJson(json);

  @override
  @JsonKey(name: "keyword")
  final String keyword;

  @override
  String toString() {
    return 'RequestParamsQueryMember(keyword: $keyword)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RequestParamsQueryMemberImpl &&
            (identical(other.keyword, keyword) || other.keyword == keyword));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, keyword);

  /// Create a copy of RequestParamsQueryMember
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RequestParamsQueryMemberImplCopyWith<_$RequestParamsQueryMemberImpl>
      get copyWith => __$$RequestParamsQueryMemberImplCopyWithImpl<
          _$RequestParamsQueryMemberImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RequestParamsQueryMemberImplToJson(
      this,
    );
  }
}

abstract class _RequestParamsQueryMember implements RequestParamsQueryMember {
  const factory _RequestParamsQueryMember(
          {@JsonKey(name: "keyword") required final String keyword}) =
      _$RequestParamsQueryMemberImpl;

  factory _RequestParamsQueryMember.fromJson(Map<String, dynamic> json) =
      _$RequestParamsQueryMemberImpl.fromJson;

  @override
  @JsonKey(name: "keyword")
  String get keyword;

  /// Create a copy of RequestParamsQueryMember
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RequestParamsQueryMemberImplCopyWith<_$RequestParamsQueryMemberImpl>
      get copyWith => throw _privateConstructorUsedError;
}

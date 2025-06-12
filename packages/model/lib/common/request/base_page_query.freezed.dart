// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'base_page_query.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BasePageQuery _$BasePageQueryFromJson(Map<String, dynamic> json) {
  return _BasePageQuery.fromJson(json);
}

/// @nodoc
mixin _$BasePageQuery {
  @JsonKey(name: "page_no")
  int? get pageNo => throw _privateConstructorUsedError;
  @JsonKey(name: "page_no")
  set pageNo(int? value) => throw _privateConstructorUsedError;
  @JsonKey(name: "page_size")
  int? get pageSize => throw _privateConstructorUsedError;
  @JsonKey(name: "page_size")
  set pageSize(int? value) => throw _privateConstructorUsedError;

  /// Serializes this BasePageQuery to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BasePageQuery
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BasePageQueryCopyWith<BasePageQuery> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BasePageQueryCopyWith<$Res> {
  factory $BasePageQueryCopyWith(
          BasePageQuery value, $Res Function(BasePageQuery) then) =
      _$BasePageQueryCopyWithImpl<$Res, BasePageQuery>;
  @useResult
  $Res call(
      {@JsonKey(name: "page_no") int? pageNo,
      @JsonKey(name: "page_size") int? pageSize});
}

/// @nodoc
class _$BasePageQueryCopyWithImpl<$Res, $Val extends BasePageQuery>
    implements $BasePageQueryCopyWith<$Res> {
  _$BasePageQueryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BasePageQuery
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pageNo = freezed,
    Object? pageSize = freezed,
  }) {
    return _then(_value.copyWith(
      pageNo: freezed == pageNo
          ? _value.pageNo
          : pageNo // ignore: cast_nullable_to_non_nullable
              as int?,
      pageSize: freezed == pageSize
          ? _value.pageSize
          : pageSize // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BasePageQueryImplCopyWith<$Res>
    implements $BasePageQueryCopyWith<$Res> {
  factory _$$BasePageQueryImplCopyWith(
          _$BasePageQueryImpl value, $Res Function(_$BasePageQueryImpl) then) =
      __$$BasePageQueryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "page_no") int? pageNo,
      @JsonKey(name: "page_size") int? pageSize});
}

/// @nodoc
class __$$BasePageQueryImplCopyWithImpl<$Res>
    extends _$BasePageQueryCopyWithImpl<$Res, _$BasePageQueryImpl>
    implements _$$BasePageQueryImplCopyWith<$Res> {
  __$$BasePageQueryImplCopyWithImpl(
      _$BasePageQueryImpl _value, $Res Function(_$BasePageQueryImpl) _then)
      : super(_value, _then);

  /// Create a copy of BasePageQuery
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pageNo = freezed,
    Object? pageSize = freezed,
  }) {
    return _then(_$BasePageQueryImpl(
      pageNo: freezed == pageNo
          ? _value.pageNo
          : pageNo // ignore: cast_nullable_to_non_nullable
              as int?,
      pageSize: freezed == pageSize
          ? _value.pageSize
          : pageSize // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BasePageQueryImpl implements _BasePageQuery {
  _$BasePageQueryImpl(
      {@JsonKey(name: "page_no") this.pageNo,
      @JsonKey(name: "page_size") this.pageSize});

  factory _$BasePageQueryImpl.fromJson(Map<String, dynamic> json) =>
      _$$BasePageQueryImplFromJson(json);

  @override
  @JsonKey(name: "page_no")
  int? pageNo;
  @override
  @JsonKey(name: "page_size")
  int? pageSize;

  @override
  String toString() {
    return 'BasePageQuery(pageNo: $pageNo, pageSize: $pageSize)';
  }

  /// Create a copy of BasePageQuery
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BasePageQueryImplCopyWith<_$BasePageQueryImpl> get copyWith =>
      __$$BasePageQueryImplCopyWithImpl<_$BasePageQueryImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BasePageQueryImplToJson(
      this,
    );
  }
}

abstract class _BasePageQuery implements BasePageQuery {
  factory _BasePageQuery(
      {@JsonKey(name: "page_no") int? pageNo,
      @JsonKey(name: "page_size") int? pageSize}) = _$BasePageQueryImpl;

  factory _BasePageQuery.fromJson(Map<String, dynamic> json) =
      _$BasePageQueryImpl.fromJson;

  @override
  @JsonKey(name: "page_no")
  int? get pageNo;
  @JsonKey(name: "page_no")
  set pageNo(int? value);
  @override
  @JsonKey(name: "page_size")
  int? get pageSize;
  @JsonKey(name: "page_size")
  set pageSize(int? value);

  /// Create a copy of BasePageQuery
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BasePageQueryImplCopyWith<_$BasePageQueryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

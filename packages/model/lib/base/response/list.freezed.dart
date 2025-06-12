// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'list.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$BaseList<T> {
  List<T> get list => throw _privateConstructorUsedError;
  set list(List<T> value) => throw _privateConstructorUsedError;
  BaseListMeta? get meta => throw _privateConstructorUsedError;
  set meta(BaseListMeta? value) => throw _privateConstructorUsedError;

  /// Create a copy of BaseList
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BaseListCopyWith<T, BaseList<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BaseListCopyWith<T, $Res> {
  factory $BaseListCopyWith(
          BaseList<T> value, $Res Function(BaseList<T>) then) =
      _$BaseListCopyWithImpl<T, $Res, BaseList<T>>;
  @useResult
  $Res call({List<T> list, BaseListMeta? meta});

  $BaseListMetaCopyWith<$Res>? get meta;
}

/// @nodoc
class _$BaseListCopyWithImpl<T, $Res, $Val extends BaseList<T>>
    implements $BaseListCopyWith<T, $Res> {
  _$BaseListCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BaseList
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? list = null,
    Object? meta = freezed,
  }) {
    return _then(_value.copyWith(
      list: null == list
          ? _value.list
          : list // ignore: cast_nullable_to_non_nullable
              as List<T>,
      meta: freezed == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as BaseListMeta?,
    ) as $Val);
  }

  /// Create a copy of BaseList
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BaseListMetaCopyWith<$Res>? get meta {
    if (_value.meta == null) {
      return null;
    }

    return $BaseListMetaCopyWith<$Res>(_value.meta!, (value) {
      return _then(_value.copyWith(meta: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$BaseListImplCopyWith<T, $Res>
    implements $BaseListCopyWith<T, $Res> {
  factory _$$BaseListImplCopyWith(
          _$BaseListImpl<T> value, $Res Function(_$BaseListImpl<T>) then) =
      __$$BaseListImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({List<T> list, BaseListMeta? meta});

  @override
  $BaseListMetaCopyWith<$Res>? get meta;
}

/// @nodoc
class __$$BaseListImplCopyWithImpl<T, $Res>
    extends _$BaseListCopyWithImpl<T, $Res, _$BaseListImpl<T>>
    implements _$$BaseListImplCopyWith<T, $Res> {
  __$$BaseListImplCopyWithImpl(
      _$BaseListImpl<T> _value, $Res Function(_$BaseListImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of BaseList
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? list = null,
    Object? meta = freezed,
  }) {
    return _then(_$BaseListImpl<T>(
      list: null == list
          ? _value.list
          : list // ignore: cast_nullable_to_non_nullable
              as List<T>,
      meta: freezed == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as BaseListMeta?,
    ));
  }
}

/// @nodoc

class _$BaseListImpl<T> extends _BaseList<T> {
  _$BaseListImpl({required this.list, this.meta}) : super._();

  @override
  List<T> list;
  @override
  BaseListMeta? meta;

  @override
  String toString() {
    return 'BaseList<$T>(list: $list, meta: $meta)';
  }

  /// Create a copy of BaseList
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BaseListImplCopyWith<T, _$BaseListImpl<T>> get copyWith =>
      __$$BaseListImplCopyWithImpl<T, _$BaseListImpl<T>>(this, _$identity);
}

abstract class _BaseList<T> extends BaseList<T> {
  factory _BaseList({required List<T> list, BaseListMeta? meta}) =
      _$BaseListImpl<T>;
  _BaseList._() : super._();

  @override
  List<T> get list;
  set list(List<T> value);
  @override
  BaseListMeta? get meta;
  set meta(BaseListMeta? value);

  /// Create a copy of BaseList
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BaseListImplCopyWith<T, _$BaseListImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

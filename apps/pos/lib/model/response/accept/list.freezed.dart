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

AcceptList _$AcceptListFromJson(Map<String, dynamic> json) {
  return _AcceptList.fromJson(json);
}

/// @nodoc
mixin _$AcceptList {
  @JsonKey(name: "extra")
  Extra get extra => throw _privateConstructorUsedError;
  @JsonKey(name: "list")
  List<AcceptOrder> get list => throw _privateConstructorUsedError;
  @JsonKey(name: "meta")
  BaseListMeta get meta => throw _privateConstructorUsedError;

  /// Serializes this AcceptList to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AcceptList
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AcceptListCopyWith<AcceptList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AcceptListCopyWith<$Res> {
  factory $AcceptListCopyWith(
          AcceptList value, $Res Function(AcceptList) then) =
      _$AcceptListCopyWithImpl<$Res, AcceptList>;
  @useResult
  $Res call(
      {@JsonKey(name: "extra") Extra extra,
      @JsonKey(name: "list") List<AcceptOrder> list,
      @JsonKey(name: "meta") BaseListMeta meta});

  $ExtraCopyWith<$Res> get extra;
  $BaseListMetaCopyWith<$Res> get meta;
}

/// @nodoc
class _$AcceptListCopyWithImpl<$Res, $Val extends AcceptList>
    implements $AcceptListCopyWith<$Res> {
  _$AcceptListCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AcceptList
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? extra = null,
    Object? list = null,
    Object? meta = null,
  }) {
    return _then(_value.copyWith(
      extra: null == extra
          ? _value.extra
          : extra // ignore: cast_nullable_to_non_nullable
              as Extra,
      list: null == list
          ? _value.list
          : list // ignore: cast_nullable_to_non_nullable
              as List<AcceptOrder>,
      meta: null == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as BaseListMeta,
    ) as $Val);
  }

  /// Create a copy of AcceptList
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ExtraCopyWith<$Res> get extra {
    return $ExtraCopyWith<$Res>(_value.extra, (value) {
      return _then(_value.copyWith(extra: value) as $Val);
    });
  }

  /// Create a copy of AcceptList
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BaseListMetaCopyWith<$Res> get meta {
    return $BaseListMetaCopyWith<$Res>(_value.meta, (value) {
      return _then(_value.copyWith(meta: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AcceptListImplCopyWith<$Res>
    implements $AcceptListCopyWith<$Res> {
  factory _$$AcceptListImplCopyWith(
          _$AcceptListImpl value, $Res Function(_$AcceptListImpl) then) =
      __$$AcceptListImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "extra") Extra extra,
      @JsonKey(name: "list") List<AcceptOrder> list,
      @JsonKey(name: "meta") BaseListMeta meta});

  @override
  $ExtraCopyWith<$Res> get extra;
  @override
  $BaseListMetaCopyWith<$Res> get meta;
}

/// @nodoc
class __$$AcceptListImplCopyWithImpl<$Res>
    extends _$AcceptListCopyWithImpl<$Res, _$AcceptListImpl>
    implements _$$AcceptListImplCopyWith<$Res> {
  __$$AcceptListImplCopyWithImpl(
      _$AcceptListImpl _value, $Res Function(_$AcceptListImpl) _then)
      : super(_value, _then);

  /// Create a copy of AcceptList
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? extra = null,
    Object? list = null,
    Object? meta = null,
  }) {
    return _then(_$AcceptListImpl(
      extra: null == extra
          ? _value.extra
          : extra // ignore: cast_nullable_to_non_nullable
              as Extra,
      list: null == list
          ? _value._list
          : list // ignore: cast_nullable_to_non_nullable
              as List<AcceptOrder>,
      meta: null == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as BaseListMeta,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AcceptListImpl implements _AcceptList {
  _$AcceptListImpl(
      {@JsonKey(name: "extra") required this.extra,
      @JsonKey(name: "list") required final List<AcceptOrder> list,
      @JsonKey(name: "meta") required this.meta})
      : _list = list;

  factory _$AcceptListImpl.fromJson(Map<String, dynamic> json) =>
      _$$AcceptListImplFromJson(json);

  @override
  @JsonKey(name: "extra")
  final Extra extra;
  final List<AcceptOrder> _list;
  @override
  @JsonKey(name: "list")
  List<AcceptOrder> get list {
    if (_list is EqualUnmodifiableListView) return _list;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_list);
  }

  @override
  @JsonKey(name: "meta")
  final BaseListMeta meta;

  @override
  String toString() {
    return 'AcceptList(extra: $extra, list: $list, meta: $meta)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AcceptListImpl &&
            (identical(other.extra, extra) || other.extra == extra) &&
            const DeepCollectionEquality().equals(other._list, _list) &&
            (identical(other.meta, meta) || other.meta == meta));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, extra, const DeepCollectionEquality().hash(_list), meta);

  /// Create a copy of AcceptList
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AcceptListImplCopyWith<_$AcceptListImpl> get copyWith =>
      __$$AcceptListImplCopyWithImpl<_$AcceptListImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AcceptListImplToJson(
      this,
    );
  }
}

abstract class _AcceptList implements AcceptList {
  factory _AcceptList(
          {@JsonKey(name: "extra") required final Extra extra,
          @JsonKey(name: "list") required final List<AcceptOrder> list,
          @JsonKey(name: "meta") required final BaseListMeta meta}) =
      _$AcceptListImpl;

  factory _AcceptList.fromJson(Map<String, dynamic> json) =
      _$AcceptListImpl.fromJson;

  @override
  @JsonKey(name: "extra")
  Extra get extra;
  @override
  @JsonKey(name: "list")
  List<AcceptOrder> get list;
  @override
  @JsonKey(name: "meta")
  BaseListMeta get meta;

  /// Create a copy of AcceptList
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AcceptListImplCopyWith<_$AcceptListImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Extra _$ExtraFromJson(Map<String, dynamic> json) {
  return _Extra.fromJson(json);
}

/// @nodoc
mixin _$Extra {
  @JsonKey(name: "handled_count")
  int get handledCount => throw _privateConstructorUsedError;
  @JsonKey(name: "handled_count")
  set handledCount(int value) => throw _privateConstructorUsedError;
  @JsonKey(name: "unhandled_count")
  int get unhandledCount => throw _privateConstructorUsedError;
  @JsonKey(name: "unhandled_count")
  set unhandledCount(int value) => throw _privateConstructorUsedError;

  /// Serializes this Extra to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Extra
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ExtraCopyWith<Extra> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExtraCopyWith<$Res> {
  factory $ExtraCopyWith(Extra value, $Res Function(Extra) then) =
      _$ExtraCopyWithImpl<$Res, Extra>;
  @useResult
  $Res call(
      {@JsonKey(name: "handled_count") int handledCount,
      @JsonKey(name: "unhandled_count") int unhandledCount});
}

/// @nodoc
class _$ExtraCopyWithImpl<$Res, $Val extends Extra>
    implements $ExtraCopyWith<$Res> {
  _$ExtraCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Extra
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? handledCount = null,
    Object? unhandledCount = null,
  }) {
    return _then(_value.copyWith(
      handledCount: null == handledCount
          ? _value.handledCount
          : handledCount // ignore: cast_nullable_to_non_nullable
              as int,
      unhandledCount: null == unhandledCount
          ? _value.unhandledCount
          : unhandledCount // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ExtraImplCopyWith<$Res> implements $ExtraCopyWith<$Res> {
  factory _$$ExtraImplCopyWith(
          _$ExtraImpl value, $Res Function(_$ExtraImpl) then) =
      __$$ExtraImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "handled_count") int handledCount,
      @JsonKey(name: "unhandled_count") int unhandledCount});
}

/// @nodoc
class __$$ExtraImplCopyWithImpl<$Res>
    extends _$ExtraCopyWithImpl<$Res, _$ExtraImpl>
    implements _$$ExtraImplCopyWith<$Res> {
  __$$ExtraImplCopyWithImpl(
      _$ExtraImpl _value, $Res Function(_$ExtraImpl) _then)
      : super(_value, _then);

  /// Create a copy of Extra
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? handledCount = null,
    Object? unhandledCount = null,
  }) {
    return _then(_$ExtraImpl(
      handledCount: null == handledCount
          ? _value.handledCount
          : handledCount // ignore: cast_nullable_to_non_nullable
              as int,
      unhandledCount: null == unhandledCount
          ? _value.unhandledCount
          : unhandledCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ExtraImpl implements _Extra {
  _$ExtraImpl(
      {@JsonKey(name: "handled_count") required this.handledCount,
      @JsonKey(name: "unhandled_count") required this.unhandledCount});

  factory _$ExtraImpl.fromJson(Map<String, dynamic> json) =>
      _$$ExtraImplFromJson(json);

  @override
  @JsonKey(name: "handled_count")
  int handledCount;
  @override
  @JsonKey(name: "unhandled_count")
  int unhandledCount;

  @override
  String toString() {
    return 'Extra(handledCount: $handledCount, unhandledCount: $unhandledCount)';
  }

  /// Create a copy of Extra
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ExtraImplCopyWith<_$ExtraImpl> get copyWith =>
      __$$ExtraImplCopyWithImpl<_$ExtraImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ExtraImplToJson(
      this,
    );
  }
}

abstract class _Extra implements Extra {
  factory _Extra(
          {@JsonKey(name: "handled_count") required int handledCount,
          @JsonKey(name: "unhandled_count") required int unhandledCount}) =
      _$ExtraImpl;

  factory _Extra.fromJson(Map<String, dynamic> json) = _$ExtraImpl.fromJson;

  @override
  @JsonKey(name: "handled_count")
  int get handledCount;
  @JsonKey(name: "handled_count")
  set handledCount(int value);
  @override
  @JsonKey(name: "unhandled_count")
  int get unhandledCount;
  @JsonKey(name: "unhandled_count")
  set unhandledCount(int value);

  /// Create a copy of Extra
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ExtraImplCopyWith<_$ExtraImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

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

BuffetList _$BuffetListFromJson(Map<String, dynamic> json) {
  return _BuffetList.fromJson(json);
}

/// @nodoc
mixin _$BuffetList {
  @JsonKey(name: "list")
  List<Buffet> get list => throw _privateConstructorUsedError;
  @JsonKey(name: "meta")
  BaseListMeta get meta => throw _privateConstructorUsedError;

  /// Serializes this BuffetList to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BuffetList
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BuffetListCopyWith<BuffetList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BuffetListCopyWith<$Res> {
  factory $BuffetListCopyWith(
          BuffetList value, $Res Function(BuffetList) then) =
      _$BuffetListCopyWithImpl<$Res, BuffetList>;
  @useResult
  $Res call(
      {@JsonKey(name: "list") List<Buffet> list,
      @JsonKey(name: "meta") BaseListMeta meta});

  $BaseListMetaCopyWith<$Res> get meta;
}

/// @nodoc
class _$BuffetListCopyWithImpl<$Res, $Val extends BuffetList>
    implements $BuffetListCopyWith<$Res> {
  _$BuffetListCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BuffetList
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? list = null,
    Object? meta = null,
  }) {
    return _then(_value.copyWith(
      list: null == list
          ? _value.list
          : list // ignore: cast_nullable_to_non_nullable
              as List<Buffet>,
      meta: null == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as BaseListMeta,
    ) as $Val);
  }

  /// Create a copy of BuffetList
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
abstract class _$$BuffetListImplCopyWith<$Res>
    implements $BuffetListCopyWith<$Res> {
  factory _$$BuffetListImplCopyWith(
          _$BuffetListImpl value, $Res Function(_$BuffetListImpl) then) =
      __$$BuffetListImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "list") List<Buffet> list,
      @JsonKey(name: "meta") BaseListMeta meta});

  @override
  $BaseListMetaCopyWith<$Res> get meta;
}

/// @nodoc
class __$$BuffetListImplCopyWithImpl<$Res>
    extends _$BuffetListCopyWithImpl<$Res, _$BuffetListImpl>
    implements _$$BuffetListImplCopyWith<$Res> {
  __$$BuffetListImplCopyWithImpl(
      _$BuffetListImpl _value, $Res Function(_$BuffetListImpl) _then)
      : super(_value, _then);

  /// Create a copy of BuffetList
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? list = null,
    Object? meta = null,
  }) {
    return _then(_$BuffetListImpl(
      list: null == list
          ? _value._list
          : list // ignore: cast_nullable_to_non_nullable
              as List<Buffet>,
      meta: null == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as BaseListMeta,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BuffetListImpl implements _BuffetList {
  _$BuffetListImpl(
      {@JsonKey(name: "list") required final List<Buffet> list,
      @JsonKey(name: "meta") required this.meta})
      : _list = list;

  factory _$BuffetListImpl.fromJson(Map<String, dynamic> json) =>
      _$$BuffetListImplFromJson(json);

  final List<Buffet> _list;
  @override
  @JsonKey(name: "list")
  List<Buffet> get list {
    if (_list is EqualUnmodifiableListView) return _list;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_list);
  }

  @override
  @JsonKey(name: "meta")
  final BaseListMeta meta;

  @override
  String toString() {
    return 'BuffetList(list: $list, meta: $meta)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BuffetListImpl &&
            const DeepCollectionEquality().equals(other._list, _list) &&
            (identical(other.meta, meta) || other.meta == meta));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_list), meta);

  /// Create a copy of BuffetList
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BuffetListImplCopyWith<_$BuffetListImpl> get copyWith =>
      __$$BuffetListImplCopyWithImpl<_$BuffetListImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BuffetListImplToJson(
      this,
    );
  }
}

abstract class _BuffetList implements BuffetList {
  factory _BuffetList(
          {@JsonKey(name: "list") required final List<Buffet> list,
          @JsonKey(name: "meta") required final BaseListMeta meta}) =
      _$BuffetListImpl;

  factory _BuffetList.fromJson(Map<String, dynamic> json) =
      _$BuffetListImpl.fromJson;

  @override
  @JsonKey(name: "list")
  List<Buffet> get list;
  @override
  @JsonKey(name: "meta")
  BaseListMeta get meta;

  /// Create a copy of BuffetList
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BuffetListImplCopyWith<_$BuffetListImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

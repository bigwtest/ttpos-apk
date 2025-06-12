// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'desk_region.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DeskRegion _$DeskRegionFromJson(Map<String, dynamic> json) {
  return _DeskRegion.fromJson(json);
}

/// @nodoc
mixin _$DeskRegion {
  @JsonKey(name: "list")
  List<DeskRegionItem> get list => throw _privateConstructorUsedError;

  /// Serializes this DeskRegion to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DeskRegion
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DeskRegionCopyWith<DeskRegion> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeskRegionCopyWith<$Res> {
  factory $DeskRegionCopyWith(
          DeskRegion value, $Res Function(DeskRegion) then) =
      _$DeskRegionCopyWithImpl<$Res, DeskRegion>;
  @useResult
  $Res call({@JsonKey(name: "list") List<DeskRegionItem> list});
}

/// @nodoc
class _$DeskRegionCopyWithImpl<$Res, $Val extends DeskRegion>
    implements $DeskRegionCopyWith<$Res> {
  _$DeskRegionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DeskRegion
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? list = null,
  }) {
    return _then(_value.copyWith(
      list: null == list
          ? _value.list
          : list // ignore: cast_nullable_to_non_nullable
              as List<DeskRegionItem>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DeskRegionImplCopyWith<$Res>
    implements $DeskRegionCopyWith<$Res> {
  factory _$$DeskRegionImplCopyWith(
          _$DeskRegionImpl value, $Res Function(_$DeskRegionImpl) then) =
      __$$DeskRegionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: "list") List<DeskRegionItem> list});
}

/// @nodoc
class __$$DeskRegionImplCopyWithImpl<$Res>
    extends _$DeskRegionCopyWithImpl<$Res, _$DeskRegionImpl>
    implements _$$DeskRegionImplCopyWith<$Res> {
  __$$DeskRegionImplCopyWithImpl(
      _$DeskRegionImpl _value, $Res Function(_$DeskRegionImpl) _then)
      : super(_value, _then);

  /// Create a copy of DeskRegion
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? list = null,
  }) {
    return _then(_$DeskRegionImpl(
      list: null == list
          ? _value._list
          : list // ignore: cast_nullable_to_non_nullable
              as List<DeskRegionItem>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DeskRegionImpl implements _DeskRegion {
  const _$DeskRegionImpl(
      {@JsonKey(name: "list") required final List<DeskRegionItem> list})
      : _list = list;

  factory _$DeskRegionImpl.fromJson(Map<String, dynamic> json) =>
      _$$DeskRegionImplFromJson(json);

  final List<DeskRegionItem> _list;
  @override
  @JsonKey(name: "list")
  List<DeskRegionItem> get list {
    if (_list is EqualUnmodifiableListView) return _list;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_list);
  }

  @override
  String toString() {
    return 'DeskRegion(list: $list)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeskRegionImpl &&
            const DeepCollectionEquality().equals(other._list, _list));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_list));

  /// Create a copy of DeskRegion
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeskRegionImplCopyWith<_$DeskRegionImpl> get copyWith =>
      __$$DeskRegionImplCopyWithImpl<_$DeskRegionImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DeskRegionImplToJson(
      this,
    );
  }
}

abstract class _DeskRegion implements DeskRegion {
  const factory _DeskRegion(
          {@JsonKey(name: "list") required final List<DeskRegionItem> list}) =
      _$DeskRegionImpl;

  factory _DeskRegion.fromJson(Map<String, dynamic> json) =
      _$DeskRegionImpl.fromJson;

  @override
  @JsonKey(name: "list")
  List<DeskRegionItem> get list;

  /// Create a copy of DeskRegion
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeskRegionImplCopyWith<_$DeskRegionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'desk_type.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DeskType _$DeskTypeFromJson(Map<String, dynamic> json) {
  return _DeskType.fromJson(json);
}

/// @nodoc
mixin _$DeskType {
  @JsonKey(name: "list")
  List<DeskTypeItem> get list => throw _privateConstructorUsedError;

  /// Serializes this DeskType to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DeskType
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DeskTypeCopyWith<DeskType> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeskTypeCopyWith<$Res> {
  factory $DeskTypeCopyWith(DeskType value, $Res Function(DeskType) then) =
      _$DeskTypeCopyWithImpl<$Res, DeskType>;
  @useResult
  $Res call({@JsonKey(name: "list") List<DeskTypeItem> list});
}

/// @nodoc
class _$DeskTypeCopyWithImpl<$Res, $Val extends DeskType>
    implements $DeskTypeCopyWith<$Res> {
  _$DeskTypeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DeskType
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
              as List<DeskTypeItem>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DeskTypeImplCopyWith<$Res>
    implements $DeskTypeCopyWith<$Res> {
  factory _$$DeskTypeImplCopyWith(
          _$DeskTypeImpl value, $Res Function(_$DeskTypeImpl) then) =
      __$$DeskTypeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: "list") List<DeskTypeItem> list});
}

/// @nodoc
class __$$DeskTypeImplCopyWithImpl<$Res>
    extends _$DeskTypeCopyWithImpl<$Res, _$DeskTypeImpl>
    implements _$$DeskTypeImplCopyWith<$Res> {
  __$$DeskTypeImplCopyWithImpl(
      _$DeskTypeImpl _value, $Res Function(_$DeskTypeImpl) _then)
      : super(_value, _then);

  /// Create a copy of DeskType
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? list = null,
  }) {
    return _then(_$DeskTypeImpl(
      list: null == list
          ? _value._list
          : list // ignore: cast_nullable_to_non_nullable
              as List<DeskTypeItem>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DeskTypeImpl implements _DeskType {
  const _$DeskTypeImpl(
      {@JsonKey(name: "list") required final List<DeskTypeItem> list})
      : _list = list;

  factory _$DeskTypeImpl.fromJson(Map<String, dynamic> json) =>
      _$$DeskTypeImplFromJson(json);

  final List<DeskTypeItem> _list;
  @override
  @JsonKey(name: "list")
  List<DeskTypeItem> get list {
    if (_list is EqualUnmodifiableListView) return _list;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_list);
  }

  @override
  String toString() {
    return 'DeskType(list: $list)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeskTypeImpl &&
            const DeepCollectionEquality().equals(other._list, _list));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_list));

  /// Create a copy of DeskType
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeskTypeImplCopyWith<_$DeskTypeImpl> get copyWith =>
      __$$DeskTypeImplCopyWithImpl<_$DeskTypeImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DeskTypeImplToJson(
      this,
    );
  }
}

abstract class _DeskType implements DeskType {
  const factory _DeskType(
          {@JsonKey(name: "list") required final List<DeskTypeItem> list}) =
      _$DeskTypeImpl;

  factory _DeskType.fromJson(Map<String, dynamic> json) =
      _$DeskTypeImpl.fromJson;

  @override
  @JsonKey(name: "list")
  List<DeskTypeItem> get list;

  /// Create a copy of DeskType
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeskTypeImplCopyWith<_$DeskTypeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

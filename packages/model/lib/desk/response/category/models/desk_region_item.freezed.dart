// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'desk_region_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DeskRegionItem _$DeskRegionItemFromJson(Map<String, dynamic> json) {
  return _DeskRegionItem.fromJson(json);
}

/// @nodoc
mixin _$DeskRegionItem {
  @JsonKey(name: "name")
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: "uuid")
  int get uuid => throw _privateConstructorUsedError;

  /// Serializes this DeskRegionItem to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DeskRegionItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DeskRegionItemCopyWith<DeskRegionItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeskRegionItemCopyWith<$Res> {
  factory $DeskRegionItemCopyWith(
          DeskRegionItem value, $Res Function(DeskRegionItem) then) =
      _$DeskRegionItemCopyWithImpl<$Res, DeskRegionItem>;
  @useResult
  $Res call(
      {@JsonKey(name: "name") String name, @JsonKey(name: "uuid") int uuid});
}

/// @nodoc
class _$DeskRegionItemCopyWithImpl<$Res, $Val extends DeskRegionItem>
    implements $DeskRegionItemCopyWith<$Res> {
  _$DeskRegionItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DeskRegionItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? uuid = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      uuid: null == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DeskRegionItemImplCopyWith<$Res>
    implements $DeskRegionItemCopyWith<$Res> {
  factory _$$DeskRegionItemImplCopyWith(_$DeskRegionItemImpl value,
          $Res Function(_$DeskRegionItemImpl) then) =
      __$$DeskRegionItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "name") String name, @JsonKey(name: "uuid") int uuid});
}

/// @nodoc
class __$$DeskRegionItemImplCopyWithImpl<$Res>
    extends _$DeskRegionItemCopyWithImpl<$Res, _$DeskRegionItemImpl>
    implements _$$DeskRegionItemImplCopyWith<$Res> {
  __$$DeskRegionItemImplCopyWithImpl(
      _$DeskRegionItemImpl _value, $Res Function(_$DeskRegionItemImpl) _then)
      : super(_value, _then);

  /// Create a copy of DeskRegionItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? uuid = null,
  }) {
    return _then(_$DeskRegionItemImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
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
class _$DeskRegionItemImpl implements _DeskRegionItem {
  const _$DeskRegionItemImpl(
      {@JsonKey(name: "name") required this.name,
      @JsonKey(name: "uuid") required this.uuid});

  factory _$DeskRegionItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$DeskRegionItemImplFromJson(json);

  @override
  @JsonKey(name: "name")
  final String name;
  @override
  @JsonKey(name: "uuid")
  final int uuid;

  @override
  String toString() {
    return 'DeskRegionItem(name: $name, uuid: $uuid)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeskRegionItemImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.uuid, uuid) || other.uuid == uuid));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, uuid);

  /// Create a copy of DeskRegionItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeskRegionItemImplCopyWith<_$DeskRegionItemImpl> get copyWith =>
      __$$DeskRegionItemImplCopyWithImpl<_$DeskRegionItemImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DeskRegionItemImplToJson(
      this,
    );
  }
}

abstract class _DeskRegionItem implements DeskRegionItem {
  const factory _DeskRegionItem(
      {@JsonKey(name: "name") required final String name,
      @JsonKey(name: "uuid") required final int uuid}) = _$DeskRegionItemImpl;

  factory _DeskRegionItem.fromJson(Map<String, dynamic> json) =
      _$DeskRegionItemImpl.fromJson;

  @override
  @JsonKey(name: "name")
  String get name;
  @override
  @JsonKey(name: "uuid")
  int get uuid;

  /// Create a copy of DeskRegionItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeskRegionItemImplCopyWith<_$DeskRegionItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

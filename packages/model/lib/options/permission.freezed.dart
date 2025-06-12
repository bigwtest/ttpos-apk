// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'permission.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Permission _$PermissionFromJson(Map<String, dynamic> json) {
  return _Permission.fromJson(json);
}

/// @nodoc
mixin _$Permission {
  @JsonKey(name: "alias")
  String get alias => throw _privateConstructorUsedError;
  @JsonKey(name: "children")
  List<Permission> get children => throw _privateConstructorUsedError;
  @JsonKey(name: "id")
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: "is_menu")
  int get isMenu => throw _privateConstructorUsedError;
  @JsonKey(name: "is_route")
  int get isRoute => throw _privateConstructorUsedError;
  @JsonKey(name: "is_show")
  int get isShow => throw _privateConstructorUsedError;
  @JsonKey(name: "name")
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: "parent_id")
  int get parentId => throw _privateConstructorUsedError;
  @JsonKey(name: "path")
  String get path => throw _privateConstructorUsedError;
  @JsonKey(name: "redirect_name")
  String get redirectName => throw _privateConstructorUsedError;
  @JsonKey(name: "uuid")
  int get uuid => throw _privateConstructorUsedError;

  /// Serializes this Permission to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Permission
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PermissionCopyWith<Permission> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PermissionCopyWith<$Res> {
  factory $PermissionCopyWith(
          Permission value, $Res Function(Permission) then) =
      _$PermissionCopyWithImpl<$Res, Permission>;
  @useResult
  $Res call(
      {@JsonKey(name: "alias") String alias,
      @JsonKey(name: "children") List<Permission> children,
      @JsonKey(name: "id") int id,
      @JsonKey(name: "is_menu") int isMenu,
      @JsonKey(name: "is_route") int isRoute,
      @JsonKey(name: "is_show") int isShow,
      @JsonKey(name: "name") String name,
      @JsonKey(name: "parent_id") int parentId,
      @JsonKey(name: "path") String path,
      @JsonKey(name: "redirect_name") String redirectName,
      @JsonKey(name: "uuid") int uuid});
}

/// @nodoc
class _$PermissionCopyWithImpl<$Res, $Val extends Permission>
    implements $PermissionCopyWith<$Res> {
  _$PermissionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Permission
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? alias = null,
    Object? children = null,
    Object? id = null,
    Object? isMenu = null,
    Object? isRoute = null,
    Object? isShow = null,
    Object? name = null,
    Object? parentId = null,
    Object? path = null,
    Object? redirectName = null,
    Object? uuid = null,
  }) {
    return _then(_value.copyWith(
      alias: null == alias
          ? _value.alias
          : alias // ignore: cast_nullable_to_non_nullable
              as String,
      children: null == children
          ? _value.children
          : children // ignore: cast_nullable_to_non_nullable
              as List<Permission>,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      isMenu: null == isMenu
          ? _value.isMenu
          : isMenu // ignore: cast_nullable_to_non_nullable
              as int,
      isRoute: null == isRoute
          ? _value.isRoute
          : isRoute // ignore: cast_nullable_to_non_nullable
              as int,
      isShow: null == isShow
          ? _value.isShow
          : isShow // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      parentId: null == parentId
          ? _value.parentId
          : parentId // ignore: cast_nullable_to_non_nullable
              as int,
      path: null == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
      redirectName: null == redirectName
          ? _value.redirectName
          : redirectName // ignore: cast_nullable_to_non_nullable
              as String,
      uuid: null == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PermissionImplCopyWith<$Res>
    implements $PermissionCopyWith<$Res> {
  factory _$$PermissionImplCopyWith(
          _$PermissionImpl value, $Res Function(_$PermissionImpl) then) =
      __$$PermissionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "alias") String alias,
      @JsonKey(name: "children") List<Permission> children,
      @JsonKey(name: "id") int id,
      @JsonKey(name: "is_menu") int isMenu,
      @JsonKey(name: "is_route") int isRoute,
      @JsonKey(name: "is_show") int isShow,
      @JsonKey(name: "name") String name,
      @JsonKey(name: "parent_id") int parentId,
      @JsonKey(name: "path") String path,
      @JsonKey(name: "redirect_name") String redirectName,
      @JsonKey(name: "uuid") int uuid});
}

/// @nodoc
class __$$PermissionImplCopyWithImpl<$Res>
    extends _$PermissionCopyWithImpl<$Res, _$PermissionImpl>
    implements _$$PermissionImplCopyWith<$Res> {
  __$$PermissionImplCopyWithImpl(
      _$PermissionImpl _value, $Res Function(_$PermissionImpl) _then)
      : super(_value, _then);

  /// Create a copy of Permission
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? alias = null,
    Object? children = null,
    Object? id = null,
    Object? isMenu = null,
    Object? isRoute = null,
    Object? isShow = null,
    Object? name = null,
    Object? parentId = null,
    Object? path = null,
    Object? redirectName = null,
    Object? uuid = null,
  }) {
    return _then(_$PermissionImpl(
      alias: null == alias
          ? _value.alias
          : alias // ignore: cast_nullable_to_non_nullable
              as String,
      children: null == children
          ? _value._children
          : children // ignore: cast_nullable_to_non_nullable
              as List<Permission>,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      isMenu: null == isMenu
          ? _value.isMenu
          : isMenu // ignore: cast_nullable_to_non_nullable
              as int,
      isRoute: null == isRoute
          ? _value.isRoute
          : isRoute // ignore: cast_nullable_to_non_nullable
              as int,
      isShow: null == isShow
          ? _value.isShow
          : isShow // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      parentId: null == parentId
          ? _value.parentId
          : parentId // ignore: cast_nullable_to_non_nullable
              as int,
      path: null == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
      redirectName: null == redirectName
          ? _value.redirectName
          : redirectName // ignore: cast_nullable_to_non_nullable
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
class _$PermissionImpl implements _Permission {
  const _$PermissionImpl(
      {@JsonKey(name: "alias") required this.alias,
      @JsonKey(name: "children") required final List<Permission> children,
      @JsonKey(name: "id") required this.id,
      @JsonKey(name: "is_menu") required this.isMenu,
      @JsonKey(name: "is_route") required this.isRoute,
      @JsonKey(name: "is_show") required this.isShow,
      @JsonKey(name: "name") required this.name,
      @JsonKey(name: "parent_id") required this.parentId,
      @JsonKey(name: "path") required this.path,
      @JsonKey(name: "redirect_name") required this.redirectName,
      @JsonKey(name: "uuid") required this.uuid})
      : _children = children;

  factory _$PermissionImpl.fromJson(Map<String, dynamic> json) =>
      _$$PermissionImplFromJson(json);

  @override
  @JsonKey(name: "alias")
  final String alias;
  final List<Permission> _children;
  @override
  @JsonKey(name: "children")
  List<Permission> get children {
    if (_children is EqualUnmodifiableListView) return _children;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_children);
  }

  @override
  @JsonKey(name: "id")
  final int id;
  @override
  @JsonKey(name: "is_menu")
  final int isMenu;
  @override
  @JsonKey(name: "is_route")
  final int isRoute;
  @override
  @JsonKey(name: "is_show")
  final int isShow;
  @override
  @JsonKey(name: "name")
  final String name;
  @override
  @JsonKey(name: "parent_id")
  final int parentId;
  @override
  @JsonKey(name: "path")
  final String path;
  @override
  @JsonKey(name: "redirect_name")
  final String redirectName;
  @override
  @JsonKey(name: "uuid")
  final int uuid;

  @override
  String toString() {
    return 'Permission(alias: $alias, children: $children, id: $id, isMenu: $isMenu, isRoute: $isRoute, isShow: $isShow, name: $name, parentId: $parentId, path: $path, redirectName: $redirectName, uuid: $uuid)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PermissionImpl &&
            (identical(other.alias, alias) || other.alias == alias) &&
            const DeepCollectionEquality().equals(other._children, _children) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.isMenu, isMenu) || other.isMenu == isMenu) &&
            (identical(other.isRoute, isRoute) || other.isRoute == isRoute) &&
            (identical(other.isShow, isShow) || other.isShow == isShow) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.parentId, parentId) ||
                other.parentId == parentId) &&
            (identical(other.path, path) || other.path == path) &&
            (identical(other.redirectName, redirectName) ||
                other.redirectName == redirectName) &&
            (identical(other.uuid, uuid) || other.uuid == uuid));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      alias,
      const DeepCollectionEquality().hash(_children),
      id,
      isMenu,
      isRoute,
      isShow,
      name,
      parentId,
      path,
      redirectName,
      uuid);

  /// Create a copy of Permission
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PermissionImplCopyWith<_$PermissionImpl> get copyWith =>
      __$$PermissionImplCopyWithImpl<_$PermissionImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PermissionImplToJson(
      this,
    );
  }
}

abstract class _Permission implements Permission {
  const factory _Permission(
      {@JsonKey(name: "alias") required final String alias,
      @JsonKey(name: "children") required final List<Permission> children,
      @JsonKey(name: "id") required final int id,
      @JsonKey(name: "is_menu") required final int isMenu,
      @JsonKey(name: "is_route") required final int isRoute,
      @JsonKey(name: "is_show") required final int isShow,
      @JsonKey(name: "name") required final String name,
      @JsonKey(name: "parent_id") required final int parentId,
      @JsonKey(name: "path") required final String path,
      @JsonKey(name: "redirect_name") required final String redirectName,
      @JsonKey(name: "uuid") required final int uuid}) = _$PermissionImpl;

  factory _Permission.fromJson(Map<String, dynamic> json) =
      _$PermissionImpl.fromJson;

  @override
  @JsonKey(name: "alias")
  String get alias;
  @override
  @JsonKey(name: "children")
  List<Permission> get children;
  @override
  @JsonKey(name: "id")
  int get id;
  @override
  @JsonKey(name: "is_menu")
  int get isMenu;
  @override
  @JsonKey(name: "is_route")
  int get isRoute;
  @override
  @JsonKey(name: "is_show")
  int get isShow;
  @override
  @JsonKey(name: "name")
  String get name;
  @override
  @JsonKey(name: "parent_id")
  int get parentId;
  @override
  @JsonKey(name: "path")
  String get path;
  @override
  @JsonKey(name: "redirect_name")
  String get redirectName;
  @override
  @JsonKey(name: "uuid")
  int get uuid;

  /// Create a copy of Permission
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PermissionImplCopyWith<_$PermissionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

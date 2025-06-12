// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'category.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GoodsCategory _$GoodsCategoryFromJson(Map<String, dynamic> json) {
  return _GoodsCategory.fromJson(json);
}

/// @nodoc
mixin _$GoodsCategory {
// 子级类别
  @JsonKey(name: "children")
  GoodsCategoryChildren get children =>
      throw _privateConstructorUsedError; // 子级类别
  @JsonKey(name: "children")
  set children(GoodsCategoryChildren value) =>
      throw _privateConstructorUsedError; // 是否特殊类别
  @JsonKey(name: "is_special")
  bool get isSpecial => throw _privateConstructorUsedError; // 是否特殊类别
  @JsonKey(name: "is_special")
  set isSpecial(bool value) => throw _privateConstructorUsedError; // 商品类别名称
  @JsonKey(name: "locale_name")
  LocaleName get localeName => throw _privateConstructorUsedError; // 商品类别名称
  @JsonKey(name: "locale_name")
  set localeName(LocaleName value) =>
      throw _privateConstructorUsedError; // 父级类别UUID
  @JsonKey(name: "parent_uuid")
  int get parentUuid => throw _privateConstructorUsedError; // 父级类别UUID
  @JsonKey(name: "parent_uuid")
  set parentUuid(int value) => throw _privateConstructorUsedError; // 商品类别UUID
  @JsonKey(name: "uuid")
  int get uuid => throw _privateConstructorUsedError; // 商品类别UUID
  @JsonKey(name: "uuid")
  set uuid(int value) => throw _privateConstructorUsedError; // 等于all=>表示是全部分类
  @JsonKey(name: "category_key")
  String get categoryKey =>
      throw _privateConstructorUsedError; // 等于all=>表示是全部分类
  @JsonKey(name: "category_key")
  set categoryKey(String value) => throw _privateConstructorUsedError;

  /// Serializes this GoodsCategory to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GoodsCategory
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GoodsCategoryCopyWith<GoodsCategory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GoodsCategoryCopyWith<$Res> {
  factory $GoodsCategoryCopyWith(
          GoodsCategory value, $Res Function(GoodsCategory) then) =
      _$GoodsCategoryCopyWithImpl<$Res, GoodsCategory>;
  @useResult
  $Res call(
      {@JsonKey(name: "children") GoodsCategoryChildren children,
      @JsonKey(name: "is_special") bool isSpecial,
      @JsonKey(name: "locale_name") LocaleName localeName,
      @JsonKey(name: "parent_uuid") int parentUuid,
      @JsonKey(name: "uuid") int uuid,
      @JsonKey(name: "category_key") String categoryKey});

  $GoodsCategoryChildrenCopyWith<$Res> get children;
  $LocaleNameCopyWith<$Res> get localeName;
}

/// @nodoc
class _$GoodsCategoryCopyWithImpl<$Res, $Val extends GoodsCategory>
    implements $GoodsCategoryCopyWith<$Res> {
  _$GoodsCategoryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GoodsCategory
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? children = null,
    Object? isSpecial = null,
    Object? localeName = null,
    Object? parentUuid = null,
    Object? uuid = null,
    Object? categoryKey = null,
  }) {
    return _then(_value.copyWith(
      children: null == children
          ? _value.children
          : children // ignore: cast_nullable_to_non_nullable
              as GoodsCategoryChildren,
      isSpecial: null == isSpecial
          ? _value.isSpecial
          : isSpecial // ignore: cast_nullable_to_non_nullable
              as bool,
      localeName: null == localeName
          ? _value.localeName
          : localeName // ignore: cast_nullable_to_non_nullable
              as LocaleName,
      parentUuid: null == parentUuid
          ? _value.parentUuid
          : parentUuid // ignore: cast_nullable_to_non_nullable
              as int,
      uuid: null == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as int,
      categoryKey: null == categoryKey
          ? _value.categoryKey
          : categoryKey // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  /// Create a copy of GoodsCategory
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $GoodsCategoryChildrenCopyWith<$Res> get children {
    return $GoodsCategoryChildrenCopyWith<$Res>(_value.children, (value) {
      return _then(_value.copyWith(children: value) as $Val);
    });
  }

  /// Create a copy of GoodsCategory
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LocaleNameCopyWith<$Res> get localeName {
    return $LocaleNameCopyWith<$Res>(_value.localeName, (value) {
      return _then(_value.copyWith(localeName: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$GoodsCategoryImplCopyWith<$Res>
    implements $GoodsCategoryCopyWith<$Res> {
  factory _$$GoodsCategoryImplCopyWith(
          _$GoodsCategoryImpl value, $Res Function(_$GoodsCategoryImpl) then) =
      __$$GoodsCategoryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "children") GoodsCategoryChildren children,
      @JsonKey(name: "is_special") bool isSpecial,
      @JsonKey(name: "locale_name") LocaleName localeName,
      @JsonKey(name: "parent_uuid") int parentUuid,
      @JsonKey(name: "uuid") int uuid,
      @JsonKey(name: "category_key") String categoryKey});

  @override
  $GoodsCategoryChildrenCopyWith<$Res> get children;
  @override
  $LocaleNameCopyWith<$Res> get localeName;
}

/// @nodoc
class __$$GoodsCategoryImplCopyWithImpl<$Res>
    extends _$GoodsCategoryCopyWithImpl<$Res, _$GoodsCategoryImpl>
    implements _$$GoodsCategoryImplCopyWith<$Res> {
  __$$GoodsCategoryImplCopyWithImpl(
      _$GoodsCategoryImpl _value, $Res Function(_$GoodsCategoryImpl) _then)
      : super(_value, _then);

  /// Create a copy of GoodsCategory
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? children = null,
    Object? isSpecial = null,
    Object? localeName = null,
    Object? parentUuid = null,
    Object? uuid = null,
    Object? categoryKey = null,
  }) {
    return _then(_$GoodsCategoryImpl(
      children: null == children
          ? _value.children
          : children // ignore: cast_nullable_to_non_nullable
              as GoodsCategoryChildren,
      isSpecial: null == isSpecial
          ? _value.isSpecial
          : isSpecial // ignore: cast_nullable_to_non_nullable
              as bool,
      localeName: null == localeName
          ? _value.localeName
          : localeName // ignore: cast_nullable_to_non_nullable
              as LocaleName,
      parentUuid: null == parentUuid
          ? _value.parentUuid
          : parentUuid // ignore: cast_nullable_to_non_nullable
              as int,
      uuid: null == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as int,
      categoryKey: null == categoryKey
          ? _value.categoryKey
          : categoryKey // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GoodsCategoryImpl
    with DiagnosticableTreeMixin
    implements _GoodsCategory {
  _$GoodsCategoryImpl(
      {@JsonKey(name: "children") required this.children,
      @JsonKey(name: "is_special") required this.isSpecial,
      @JsonKey(name: "locale_name") required this.localeName,
      @JsonKey(name: "parent_uuid") required this.parentUuid,
      @JsonKey(name: "uuid") required this.uuid,
      @JsonKey(name: "category_key") required this.categoryKey});

  factory _$GoodsCategoryImpl.fromJson(Map<String, dynamic> json) =>
      _$$GoodsCategoryImplFromJson(json);

// 子级类别
  @override
  @JsonKey(name: "children")
  GoodsCategoryChildren children;
// 是否特殊类别
  @override
  @JsonKey(name: "is_special")
  bool isSpecial;
// 商品类别名称
  @override
  @JsonKey(name: "locale_name")
  LocaleName localeName;
// 父级类别UUID
  @override
  @JsonKey(name: "parent_uuid")
  int parentUuid;
// 商品类别UUID
  @override
  @JsonKey(name: "uuid")
  int uuid;
// 等于all=>表示是全部分类
  @override
  @JsonKey(name: "category_key")
  String categoryKey;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'GoodsCategory(children: $children, isSpecial: $isSpecial, localeName: $localeName, parentUuid: $parentUuid, uuid: $uuid, categoryKey: $categoryKey)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'GoodsCategory'))
      ..add(DiagnosticsProperty('children', children))
      ..add(DiagnosticsProperty('isSpecial', isSpecial))
      ..add(DiagnosticsProperty('localeName', localeName))
      ..add(DiagnosticsProperty('parentUuid', parentUuid))
      ..add(DiagnosticsProperty('uuid', uuid))
      ..add(DiagnosticsProperty('categoryKey', categoryKey));
  }

  /// Create a copy of GoodsCategory
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GoodsCategoryImplCopyWith<_$GoodsCategoryImpl> get copyWith =>
      __$$GoodsCategoryImplCopyWithImpl<_$GoodsCategoryImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GoodsCategoryImplToJson(
      this,
    );
  }
}

abstract class _GoodsCategory implements GoodsCategory {
  factory _GoodsCategory(
          {@JsonKey(name: "children") required GoodsCategoryChildren children,
          @JsonKey(name: "is_special") required bool isSpecial,
          @JsonKey(name: "locale_name") required LocaleName localeName,
          @JsonKey(name: "parent_uuid") required int parentUuid,
          @JsonKey(name: "uuid") required int uuid,
          @JsonKey(name: "category_key") required String categoryKey}) =
      _$GoodsCategoryImpl;

  factory _GoodsCategory.fromJson(Map<String, dynamic> json) =
      _$GoodsCategoryImpl.fromJson;

// 子级类别
  @override
  @JsonKey(name: "children")
  GoodsCategoryChildren get children; // 子级类别
  @JsonKey(name: "children")
  set children(GoodsCategoryChildren value); // 是否特殊类别
  @override
  @JsonKey(name: "is_special")
  bool get isSpecial; // 是否特殊类别
  @JsonKey(name: "is_special")
  set isSpecial(bool value); // 商品类别名称
  @override
  @JsonKey(name: "locale_name")
  LocaleName get localeName; // 商品类别名称
  @JsonKey(name: "locale_name")
  set localeName(LocaleName value); // 父级类别UUID
  @override
  @JsonKey(name: "parent_uuid")
  int get parentUuid; // 父级类别UUID
  @JsonKey(name: "parent_uuid")
  set parentUuid(int value); // 商品类别UUID
  @override
  @JsonKey(name: "uuid")
  int get uuid; // 商品类别UUID
  @JsonKey(name: "uuid")
  set uuid(int value); // 等于all=>表示是全部分类
  @override
  @JsonKey(name: "category_key")
  String get categoryKey; // 等于all=>表示是全部分类
  @JsonKey(name: "category_key")
  set categoryKey(String value);

  /// Create a copy of GoodsCategory
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GoodsCategoryImplCopyWith<_$GoodsCategoryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

GoodsCategoryChildren _$GoodsCategoryChildrenFromJson(
    Map<String, dynamic> json) {
  return _GoodsCategoryChildren.fromJson(json);
}

/// @nodoc
mixin _$GoodsCategoryChildren {
  @JsonKey(name: "list")
  List<GoodsCategory> get list => throw _privateConstructorUsedError;
  @JsonKey(name: "list")
  set list(List<GoodsCategory> value) => throw _privateConstructorUsedError;

  /// Serializes this GoodsCategoryChildren to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GoodsCategoryChildren
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GoodsCategoryChildrenCopyWith<GoodsCategoryChildren> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GoodsCategoryChildrenCopyWith<$Res> {
  factory $GoodsCategoryChildrenCopyWith(GoodsCategoryChildren value,
          $Res Function(GoodsCategoryChildren) then) =
      _$GoodsCategoryChildrenCopyWithImpl<$Res, GoodsCategoryChildren>;
  @useResult
  $Res call({@JsonKey(name: "list") List<GoodsCategory> list});
}

/// @nodoc
class _$GoodsCategoryChildrenCopyWithImpl<$Res,
        $Val extends GoodsCategoryChildren>
    implements $GoodsCategoryChildrenCopyWith<$Res> {
  _$GoodsCategoryChildrenCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GoodsCategoryChildren
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
              as List<GoodsCategory>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GoodsCategoryChildrenImplCopyWith<$Res>
    implements $GoodsCategoryChildrenCopyWith<$Res> {
  factory _$$GoodsCategoryChildrenImplCopyWith(
          _$GoodsCategoryChildrenImpl value,
          $Res Function(_$GoodsCategoryChildrenImpl) then) =
      __$$GoodsCategoryChildrenImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: "list") List<GoodsCategory> list});
}

/// @nodoc
class __$$GoodsCategoryChildrenImplCopyWithImpl<$Res>
    extends _$GoodsCategoryChildrenCopyWithImpl<$Res,
        _$GoodsCategoryChildrenImpl>
    implements _$$GoodsCategoryChildrenImplCopyWith<$Res> {
  __$$GoodsCategoryChildrenImplCopyWithImpl(_$GoodsCategoryChildrenImpl _value,
      $Res Function(_$GoodsCategoryChildrenImpl) _then)
      : super(_value, _then);

  /// Create a copy of GoodsCategoryChildren
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? list = null,
  }) {
    return _then(_$GoodsCategoryChildrenImpl(
      list: null == list
          ? _value.list
          : list // ignore: cast_nullable_to_non_nullable
              as List<GoodsCategory>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GoodsCategoryChildrenImpl
    with DiagnosticableTreeMixin
    implements _GoodsCategoryChildren {
  _$GoodsCategoryChildrenImpl({@JsonKey(name: "list") required this.list});

  factory _$GoodsCategoryChildrenImpl.fromJson(Map<String, dynamic> json) =>
      _$$GoodsCategoryChildrenImplFromJson(json);

  @override
  @JsonKey(name: "list")
  List<GoodsCategory> list;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'GoodsCategoryChildren(list: $list)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'GoodsCategoryChildren'))
      ..add(DiagnosticsProperty('list', list));
  }

  /// Create a copy of GoodsCategoryChildren
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GoodsCategoryChildrenImplCopyWith<_$GoodsCategoryChildrenImpl>
      get copyWith => __$$GoodsCategoryChildrenImplCopyWithImpl<
          _$GoodsCategoryChildrenImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GoodsCategoryChildrenImplToJson(
      this,
    );
  }
}

abstract class _GoodsCategoryChildren implements GoodsCategoryChildren {
  factory _GoodsCategoryChildren(
          {@JsonKey(name: "list") required List<GoodsCategory> list}) =
      _$GoodsCategoryChildrenImpl;

  factory _GoodsCategoryChildren.fromJson(Map<String, dynamic> json) =
      _$GoodsCategoryChildrenImpl.fromJson;

  @override
  @JsonKey(name: "list")
  List<GoodsCategory> get list;
  @JsonKey(name: "list")
  set list(List<GoodsCategory> value);

  /// Create a copy of GoodsCategoryChildren
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GoodsCategoryChildrenImplCopyWith<_$GoodsCategoryChildrenImpl>
      get copyWith => throw _privateConstructorUsedError;
}

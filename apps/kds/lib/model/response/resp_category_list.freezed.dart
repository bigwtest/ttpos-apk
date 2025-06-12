// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'resp_category_list.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ResponseCategory _$ResponseCategoryFromJson(Map<String, dynamic> json) {
  return _ResponseCategory.fromJson(json);
}

/// @nodoc
mixin _$ResponseCategory {
  @JsonKey(name: "category_key")
  String get categoryKey => throw _privateConstructorUsedError;
  @JsonKey(name: "category_key")
  set categoryKey(String value) => throw _privateConstructorUsedError; // 子级类别
  @JsonKey(name: "children")
  ResponseCategoryChildren get children =>
      throw _privateConstructorUsedError; // 子级类别
  @JsonKey(name: "children")
  set children(ResponseCategoryChildren value) =>
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
  set uuid(int value) => throw _privateConstructorUsedError;

  /// Serializes this ResponseCategory to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ResponseCategory
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ResponseCategoryCopyWith<ResponseCategory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResponseCategoryCopyWith<$Res> {
  factory $ResponseCategoryCopyWith(
          ResponseCategory value, $Res Function(ResponseCategory) then) =
      _$ResponseCategoryCopyWithImpl<$Res, ResponseCategory>;
  @useResult
  $Res call(
      {@JsonKey(name: "category_key") String categoryKey,
      @JsonKey(name: "children") ResponseCategoryChildren children,
      @JsonKey(name: "is_special") bool isSpecial,
      @JsonKey(name: "locale_name") LocaleName localeName,
      @JsonKey(name: "parent_uuid") int parentUuid,
      @JsonKey(name: "uuid") int uuid});

  $ResponseCategoryChildrenCopyWith<$Res> get children;
  $LocaleNameCopyWith<$Res> get localeName;
}

/// @nodoc
class _$ResponseCategoryCopyWithImpl<$Res, $Val extends ResponseCategory>
    implements $ResponseCategoryCopyWith<$Res> {
  _$ResponseCategoryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ResponseCategory
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categoryKey = null,
    Object? children = null,
    Object? isSpecial = null,
    Object? localeName = null,
    Object? parentUuid = null,
    Object? uuid = null,
  }) {
    return _then(_value.copyWith(
      categoryKey: null == categoryKey
          ? _value.categoryKey
          : categoryKey // ignore: cast_nullable_to_non_nullable
              as String,
      children: null == children
          ? _value.children
          : children // ignore: cast_nullable_to_non_nullable
              as ResponseCategoryChildren,
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
    ) as $Val);
  }

  /// Create a copy of ResponseCategory
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ResponseCategoryChildrenCopyWith<$Res> get children {
    return $ResponseCategoryChildrenCopyWith<$Res>(_value.children, (value) {
      return _then(_value.copyWith(children: value) as $Val);
    });
  }

  /// Create a copy of ResponseCategory
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
abstract class _$$ResponseCategoryImplCopyWith<$Res>
    implements $ResponseCategoryCopyWith<$Res> {
  factory _$$ResponseCategoryImplCopyWith(_$ResponseCategoryImpl value,
          $Res Function(_$ResponseCategoryImpl) then) =
      __$$ResponseCategoryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "category_key") String categoryKey,
      @JsonKey(name: "children") ResponseCategoryChildren children,
      @JsonKey(name: "is_special") bool isSpecial,
      @JsonKey(name: "locale_name") LocaleName localeName,
      @JsonKey(name: "parent_uuid") int parentUuid,
      @JsonKey(name: "uuid") int uuid});

  @override
  $ResponseCategoryChildrenCopyWith<$Res> get children;
  @override
  $LocaleNameCopyWith<$Res> get localeName;
}

/// @nodoc
class __$$ResponseCategoryImplCopyWithImpl<$Res>
    extends _$ResponseCategoryCopyWithImpl<$Res, _$ResponseCategoryImpl>
    implements _$$ResponseCategoryImplCopyWith<$Res> {
  __$$ResponseCategoryImplCopyWithImpl(_$ResponseCategoryImpl _value,
      $Res Function(_$ResponseCategoryImpl) _then)
      : super(_value, _then);

  /// Create a copy of ResponseCategory
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categoryKey = null,
    Object? children = null,
    Object? isSpecial = null,
    Object? localeName = null,
    Object? parentUuid = null,
    Object? uuid = null,
  }) {
    return _then(_$ResponseCategoryImpl(
      categoryKey: null == categoryKey
          ? _value.categoryKey
          : categoryKey // ignore: cast_nullable_to_non_nullable
              as String,
      children: null == children
          ? _value.children
          : children // ignore: cast_nullable_to_non_nullable
              as ResponseCategoryChildren,
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ResponseCategoryImpl implements _ResponseCategory {
  _$ResponseCategoryImpl(
      {@JsonKey(name: "category_key") required this.categoryKey,
      @JsonKey(name: "children") required this.children,
      @JsonKey(name: "is_special") required this.isSpecial,
      @JsonKey(name: "locale_name") required this.localeName,
      @JsonKey(name: "parent_uuid") required this.parentUuid,
      @JsonKey(name: "uuid") required this.uuid});

  factory _$ResponseCategoryImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResponseCategoryImplFromJson(json);

  @override
  @JsonKey(name: "category_key")
  String categoryKey;
// 子级类别
  @override
  @JsonKey(name: "children")
  ResponseCategoryChildren children;
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

  @override
  String toString() {
    return 'ResponseCategory(categoryKey: $categoryKey, children: $children, isSpecial: $isSpecial, localeName: $localeName, parentUuid: $parentUuid, uuid: $uuid)';
  }

  /// Create a copy of ResponseCategory
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ResponseCategoryImplCopyWith<_$ResponseCategoryImpl> get copyWith =>
      __$$ResponseCategoryImplCopyWithImpl<_$ResponseCategoryImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResponseCategoryImplToJson(
      this,
    );
  }
}

abstract class _ResponseCategory implements ResponseCategory {
  factory _ResponseCategory(
      {@JsonKey(name: "category_key") required String categoryKey,
      @JsonKey(name: "children") required ResponseCategoryChildren children,
      @JsonKey(name: "is_special") required bool isSpecial,
      @JsonKey(name: "locale_name") required LocaleName localeName,
      @JsonKey(name: "parent_uuid") required int parentUuid,
      @JsonKey(name: "uuid") required int uuid}) = _$ResponseCategoryImpl;

  factory _ResponseCategory.fromJson(Map<String, dynamic> json) =
      _$ResponseCategoryImpl.fromJson;

  @override
  @JsonKey(name: "category_key")
  String get categoryKey;
  @JsonKey(name: "category_key")
  set categoryKey(String value); // 子级类别
  @override
  @JsonKey(name: "children")
  ResponseCategoryChildren get children; // 子级类别
  @JsonKey(name: "children")
  set children(ResponseCategoryChildren value); // 是否特殊类别
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
  set uuid(int value);

  /// Create a copy of ResponseCategory
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ResponseCategoryImplCopyWith<_$ResponseCategoryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ResponseCategoryChildren _$ResponseCategoryChildrenFromJson(
    Map<String, dynamic> json) {
  return _ResponseCategoryChildren.fromJson(json);
}

/// @nodoc
mixin _$ResponseCategoryChildren {
  @JsonKey(name: "list")
  List<ResponseCategory> get list => throw _privateConstructorUsedError;
  @JsonKey(name: "list")
  set list(List<ResponseCategory> value) => throw _privateConstructorUsedError;

  /// Serializes this ResponseCategoryChildren to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ResponseCategoryChildren
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ResponseCategoryChildrenCopyWith<ResponseCategoryChildren> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResponseCategoryChildrenCopyWith<$Res> {
  factory $ResponseCategoryChildrenCopyWith(ResponseCategoryChildren value,
          $Res Function(ResponseCategoryChildren) then) =
      _$ResponseCategoryChildrenCopyWithImpl<$Res, ResponseCategoryChildren>;
  @useResult
  $Res call({@JsonKey(name: "list") List<ResponseCategory> list});
}

/// @nodoc
class _$ResponseCategoryChildrenCopyWithImpl<$Res,
        $Val extends ResponseCategoryChildren>
    implements $ResponseCategoryChildrenCopyWith<$Res> {
  _$ResponseCategoryChildrenCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ResponseCategoryChildren
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
              as List<ResponseCategory>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ResponseCategoryChildrenImplCopyWith<$Res>
    implements $ResponseCategoryChildrenCopyWith<$Res> {
  factory _$$ResponseCategoryChildrenImplCopyWith(
          _$ResponseCategoryChildrenImpl value,
          $Res Function(_$ResponseCategoryChildrenImpl) then) =
      __$$ResponseCategoryChildrenImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: "list") List<ResponseCategory> list});
}

/// @nodoc
class __$$ResponseCategoryChildrenImplCopyWithImpl<$Res>
    extends _$ResponseCategoryChildrenCopyWithImpl<$Res,
        _$ResponseCategoryChildrenImpl>
    implements _$$ResponseCategoryChildrenImplCopyWith<$Res> {
  __$$ResponseCategoryChildrenImplCopyWithImpl(
      _$ResponseCategoryChildrenImpl _value,
      $Res Function(_$ResponseCategoryChildrenImpl) _then)
      : super(_value, _then);

  /// Create a copy of ResponseCategoryChildren
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? list = null,
  }) {
    return _then(_$ResponseCategoryChildrenImpl(
      list: null == list
          ? _value.list
          : list // ignore: cast_nullable_to_non_nullable
              as List<ResponseCategory>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ResponseCategoryChildrenImpl implements _ResponseCategoryChildren {
  _$ResponseCategoryChildrenImpl({@JsonKey(name: "list") required this.list});

  factory _$ResponseCategoryChildrenImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResponseCategoryChildrenImplFromJson(json);

  @override
  @JsonKey(name: "list")
  List<ResponseCategory> list;

  @override
  String toString() {
    return 'ResponseCategoryChildren(list: $list)';
  }

  /// Create a copy of ResponseCategoryChildren
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ResponseCategoryChildrenImplCopyWith<_$ResponseCategoryChildrenImpl>
      get copyWith => __$$ResponseCategoryChildrenImplCopyWithImpl<
          _$ResponseCategoryChildrenImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResponseCategoryChildrenImplToJson(
      this,
    );
  }
}

abstract class _ResponseCategoryChildren implements ResponseCategoryChildren {
  factory _ResponseCategoryChildren(
          {@JsonKey(name: "list") required List<ResponseCategory> list}) =
      _$ResponseCategoryChildrenImpl;

  factory _ResponseCategoryChildren.fromJson(Map<String, dynamic> json) =
      _$ResponseCategoryChildrenImpl.fromJson;

  @override
  @JsonKey(name: "list")
  List<ResponseCategory> get list;
  @JsonKey(name: "list")
  set list(List<ResponseCategory> value);

  /// Create a copy of ResponseCategoryChildren
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ResponseCategoryChildrenImplCopyWith<_$ResponseCategoryChildrenImpl>
      get copyWith => throw _privateConstructorUsedError;
}

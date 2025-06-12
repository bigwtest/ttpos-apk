// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'attribute_groups.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GoodsAttributeGroups _$GoodsAttributeGroupsFromJson(Map<String, dynamic> json) {
  return _GoodsAttributeGroups.fromJson(json);
}

/// @nodoc
mixin _$GoodsAttributeGroups {
// 商品属性值列表
  @JsonKey(name: "attributes")
  BaseList<GoodsAttributes> get attributes =>
      throw _privateConstructorUsedError; // 是否必选
  @JsonKey(name: "is_must")
  bool get isMust => throw _privateConstructorUsedError; // 商品属性组名称
  @JsonKey(name: "locale_name")
  LocaleName get localeName => throw _privateConstructorUsedError; // 最大可选数量
  @JsonKey(name: "max_select")
  int get maxSelect => throw _privateConstructorUsedError; // 商品属性组UUID
  @JsonKey(name: "uuid")
  int? get uuid => throw _privateConstructorUsedError;

  /// Serializes this GoodsAttributeGroups to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GoodsAttributeGroups
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GoodsAttributeGroupsCopyWith<GoodsAttributeGroups> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GoodsAttributeGroupsCopyWith<$Res> {
  factory $GoodsAttributeGroupsCopyWith(GoodsAttributeGroups value,
          $Res Function(GoodsAttributeGroups) then) =
      _$GoodsAttributeGroupsCopyWithImpl<$Res, GoodsAttributeGroups>;
  @useResult
  $Res call(
      {@JsonKey(name: "attributes") BaseList<GoodsAttributes> attributes,
      @JsonKey(name: "is_must") bool isMust,
      @JsonKey(name: "locale_name") LocaleName localeName,
      @JsonKey(name: "max_select") int maxSelect,
      @JsonKey(name: "uuid") int? uuid});

  $BaseListCopyWith<GoodsAttributes, $Res> get attributes;
  $LocaleNameCopyWith<$Res> get localeName;
}

/// @nodoc
class _$GoodsAttributeGroupsCopyWithImpl<$Res,
        $Val extends GoodsAttributeGroups>
    implements $GoodsAttributeGroupsCopyWith<$Res> {
  _$GoodsAttributeGroupsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GoodsAttributeGroups
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? attributes = null,
    Object? isMust = null,
    Object? localeName = null,
    Object? maxSelect = null,
    Object? uuid = freezed,
  }) {
    return _then(_value.copyWith(
      attributes: null == attributes
          ? _value.attributes
          : attributes // ignore: cast_nullable_to_non_nullable
              as BaseList<GoodsAttributes>,
      isMust: null == isMust
          ? _value.isMust
          : isMust // ignore: cast_nullable_to_non_nullable
              as bool,
      localeName: null == localeName
          ? _value.localeName
          : localeName // ignore: cast_nullable_to_non_nullable
              as LocaleName,
      maxSelect: null == maxSelect
          ? _value.maxSelect
          : maxSelect // ignore: cast_nullable_to_non_nullable
              as int,
      uuid: freezed == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }

  /// Create a copy of GoodsAttributeGroups
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BaseListCopyWith<GoodsAttributes, $Res> get attributes {
    return $BaseListCopyWith<GoodsAttributes, $Res>(_value.attributes, (value) {
      return _then(_value.copyWith(attributes: value) as $Val);
    });
  }

  /// Create a copy of GoodsAttributeGroups
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
abstract class _$$GoodsAttributeGroupsImplCopyWith<$Res>
    implements $GoodsAttributeGroupsCopyWith<$Res> {
  factory _$$GoodsAttributeGroupsImplCopyWith(_$GoodsAttributeGroupsImpl value,
          $Res Function(_$GoodsAttributeGroupsImpl) then) =
      __$$GoodsAttributeGroupsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "attributes") BaseList<GoodsAttributes> attributes,
      @JsonKey(name: "is_must") bool isMust,
      @JsonKey(name: "locale_name") LocaleName localeName,
      @JsonKey(name: "max_select") int maxSelect,
      @JsonKey(name: "uuid") int? uuid});

  @override
  $BaseListCopyWith<GoodsAttributes, $Res> get attributes;
  @override
  $LocaleNameCopyWith<$Res> get localeName;
}

/// @nodoc
class __$$GoodsAttributeGroupsImplCopyWithImpl<$Res>
    extends _$GoodsAttributeGroupsCopyWithImpl<$Res, _$GoodsAttributeGroupsImpl>
    implements _$$GoodsAttributeGroupsImplCopyWith<$Res> {
  __$$GoodsAttributeGroupsImplCopyWithImpl(_$GoodsAttributeGroupsImpl _value,
      $Res Function(_$GoodsAttributeGroupsImpl) _then)
      : super(_value, _then);

  /// Create a copy of GoodsAttributeGroups
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? attributes = null,
    Object? isMust = null,
    Object? localeName = null,
    Object? maxSelect = null,
    Object? uuid = freezed,
  }) {
    return _then(_$GoodsAttributeGroupsImpl(
      attributes: null == attributes
          ? _value.attributes
          : attributes // ignore: cast_nullable_to_non_nullable
              as BaseList<GoodsAttributes>,
      isMust: null == isMust
          ? _value.isMust
          : isMust // ignore: cast_nullable_to_non_nullable
              as bool,
      localeName: null == localeName
          ? _value.localeName
          : localeName // ignore: cast_nullable_to_non_nullable
              as LocaleName,
      maxSelect: null == maxSelect
          ? _value.maxSelect
          : maxSelect // ignore: cast_nullable_to_non_nullable
              as int,
      uuid: freezed == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GoodsAttributeGroupsImpl implements _GoodsAttributeGroups {
  const _$GoodsAttributeGroupsImpl(
      {@JsonKey(name: "attributes") required this.attributes,
      @JsonKey(name: "is_must") required this.isMust,
      @JsonKey(name: "locale_name") required this.localeName,
      @JsonKey(name: "max_select") required this.maxSelect,
      @JsonKey(name: "uuid") this.uuid});

  factory _$GoodsAttributeGroupsImpl.fromJson(Map<String, dynamic> json) =>
      _$$GoodsAttributeGroupsImplFromJson(json);

// 商品属性值列表
  @override
  @JsonKey(name: "attributes")
  final BaseList<GoodsAttributes> attributes;
// 是否必选
  @override
  @JsonKey(name: "is_must")
  final bool isMust;
// 商品属性组名称
  @override
  @JsonKey(name: "locale_name")
  final LocaleName localeName;
// 最大可选数量
  @override
  @JsonKey(name: "max_select")
  final int maxSelect;
// 商品属性组UUID
  @override
  @JsonKey(name: "uuid")
  final int? uuid;

  @override
  String toString() {
    return 'GoodsAttributeGroups(attributes: $attributes, isMust: $isMust, localeName: $localeName, maxSelect: $maxSelect, uuid: $uuid)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GoodsAttributeGroupsImpl &&
            (identical(other.attributes, attributes) ||
                other.attributes == attributes) &&
            (identical(other.isMust, isMust) || other.isMust == isMust) &&
            (identical(other.localeName, localeName) ||
                other.localeName == localeName) &&
            (identical(other.maxSelect, maxSelect) ||
                other.maxSelect == maxSelect) &&
            (identical(other.uuid, uuid) || other.uuid == uuid));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, attributes, isMust, localeName, maxSelect, uuid);

  /// Create a copy of GoodsAttributeGroups
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GoodsAttributeGroupsImplCopyWith<_$GoodsAttributeGroupsImpl>
      get copyWith =>
          __$$GoodsAttributeGroupsImplCopyWithImpl<_$GoodsAttributeGroupsImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GoodsAttributeGroupsImplToJson(
      this,
    );
  }
}

abstract class _GoodsAttributeGroups implements GoodsAttributeGroups {
  const factory _GoodsAttributeGroups(
      {@JsonKey(name: "attributes")
      required final BaseList<GoodsAttributes> attributes,
      @JsonKey(name: "is_must") required final bool isMust,
      @JsonKey(name: "locale_name") required final LocaleName localeName,
      @JsonKey(name: "max_select") required final int maxSelect,
      @JsonKey(name: "uuid") final int? uuid}) = _$GoodsAttributeGroupsImpl;

  factory _GoodsAttributeGroups.fromJson(Map<String, dynamic> json) =
      _$GoodsAttributeGroupsImpl.fromJson;

// 商品属性值列表
  @override
  @JsonKey(name: "attributes")
  BaseList<GoodsAttributes> get attributes; // 是否必选
  @override
  @JsonKey(name: "is_must")
  bool get isMust; // 商品属性组名称
  @override
  @JsonKey(name: "locale_name")
  LocaleName get localeName; // 最大可选数量
  @override
  @JsonKey(name: "max_select")
  int get maxSelect; // 商品属性组UUID
  @override
  @JsonKey(name: "uuid")
  int? get uuid;

  /// Create a copy of GoodsAttributeGroups
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GoodsAttributeGroupsImplCopyWith<_$GoodsAttributeGroupsImpl>
      get copyWith => throw _privateConstructorUsedError;
}

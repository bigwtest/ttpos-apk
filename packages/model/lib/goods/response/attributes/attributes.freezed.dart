// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'attributes.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GoodsAttributes _$GoodsAttributesFromJson(Map<String, dynamic> json) {
  return _GoodsAttributes.fromJson(json);
}

/// @nodoc
mixin _$GoodsAttributes {
// 是否默认选中
  @JsonKey(name: "is_default_selected")
  bool get isDefaultSelected => throw _privateConstructorUsedError; // 商品属性名称
  @JsonKey(name: "locale_name")
  LocaleName get localeName => throw _privateConstructorUsedError; // 商品属性UUID
  @JsonKey(name: "uuid")
  int get uuid => throw _privateConstructorUsedError;

  /// Serializes this GoodsAttributes to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GoodsAttributes
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GoodsAttributesCopyWith<GoodsAttributes> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GoodsAttributesCopyWith<$Res> {
  factory $GoodsAttributesCopyWith(
          GoodsAttributes value, $Res Function(GoodsAttributes) then) =
      _$GoodsAttributesCopyWithImpl<$Res, GoodsAttributes>;
  @useResult
  $Res call(
      {@JsonKey(name: "is_default_selected") bool isDefaultSelected,
      @JsonKey(name: "locale_name") LocaleName localeName,
      @JsonKey(name: "uuid") int uuid});

  $LocaleNameCopyWith<$Res> get localeName;
}

/// @nodoc
class _$GoodsAttributesCopyWithImpl<$Res, $Val extends GoodsAttributes>
    implements $GoodsAttributesCopyWith<$Res> {
  _$GoodsAttributesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GoodsAttributes
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isDefaultSelected = null,
    Object? localeName = null,
    Object? uuid = null,
  }) {
    return _then(_value.copyWith(
      isDefaultSelected: null == isDefaultSelected
          ? _value.isDefaultSelected
          : isDefaultSelected // ignore: cast_nullable_to_non_nullable
              as bool,
      localeName: null == localeName
          ? _value.localeName
          : localeName // ignore: cast_nullable_to_non_nullable
              as LocaleName,
      uuid: null == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }

  /// Create a copy of GoodsAttributes
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
abstract class _$$GoodsAttributesImplCopyWith<$Res>
    implements $GoodsAttributesCopyWith<$Res> {
  factory _$$GoodsAttributesImplCopyWith(_$GoodsAttributesImpl value,
          $Res Function(_$GoodsAttributesImpl) then) =
      __$$GoodsAttributesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "is_default_selected") bool isDefaultSelected,
      @JsonKey(name: "locale_name") LocaleName localeName,
      @JsonKey(name: "uuid") int uuid});

  @override
  $LocaleNameCopyWith<$Res> get localeName;
}

/// @nodoc
class __$$GoodsAttributesImplCopyWithImpl<$Res>
    extends _$GoodsAttributesCopyWithImpl<$Res, _$GoodsAttributesImpl>
    implements _$$GoodsAttributesImplCopyWith<$Res> {
  __$$GoodsAttributesImplCopyWithImpl(
      _$GoodsAttributesImpl _value, $Res Function(_$GoodsAttributesImpl) _then)
      : super(_value, _then);

  /// Create a copy of GoodsAttributes
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isDefaultSelected = null,
    Object? localeName = null,
    Object? uuid = null,
  }) {
    return _then(_$GoodsAttributesImpl(
      isDefaultSelected: null == isDefaultSelected
          ? _value.isDefaultSelected
          : isDefaultSelected // ignore: cast_nullable_to_non_nullable
              as bool,
      localeName: null == localeName
          ? _value.localeName
          : localeName // ignore: cast_nullable_to_non_nullable
              as LocaleName,
      uuid: null == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GoodsAttributesImpl implements _GoodsAttributes {
  const _$GoodsAttributesImpl(
      {@JsonKey(name: "is_default_selected") required this.isDefaultSelected,
      @JsonKey(name: "locale_name") required this.localeName,
      @JsonKey(name: "uuid") required this.uuid});

  factory _$GoodsAttributesImpl.fromJson(Map<String, dynamic> json) =>
      _$$GoodsAttributesImplFromJson(json);

// 是否默认选中
  @override
  @JsonKey(name: "is_default_selected")
  final bool isDefaultSelected;
// 商品属性名称
  @override
  @JsonKey(name: "locale_name")
  final LocaleName localeName;
// 商品属性UUID
  @override
  @JsonKey(name: "uuid")
  final int uuid;

  @override
  String toString() {
    return 'GoodsAttributes(isDefaultSelected: $isDefaultSelected, localeName: $localeName, uuid: $uuid)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GoodsAttributesImpl &&
            (identical(other.isDefaultSelected, isDefaultSelected) ||
                other.isDefaultSelected == isDefaultSelected) &&
            (identical(other.localeName, localeName) ||
                other.localeName == localeName) &&
            (identical(other.uuid, uuid) || other.uuid == uuid));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, isDefaultSelected, localeName, uuid);

  /// Create a copy of GoodsAttributes
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GoodsAttributesImplCopyWith<_$GoodsAttributesImpl> get copyWith =>
      __$$GoodsAttributesImplCopyWithImpl<_$GoodsAttributesImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GoodsAttributesImplToJson(
      this,
    );
  }
}

abstract class _GoodsAttributes implements GoodsAttributes {
  const factory _GoodsAttributes(
      {@JsonKey(name: "is_default_selected")
      required final bool isDefaultSelected,
      @JsonKey(name: "locale_name") required final LocaleName localeName,
      @JsonKey(name: "uuid") required final int uuid}) = _$GoodsAttributesImpl;

  factory _GoodsAttributes.fromJson(Map<String, dynamic> json) =
      _$GoodsAttributesImpl.fromJson;

// 是否默认选中
  @override
  @JsonKey(name: "is_default_selected")
  bool get isDefaultSelected; // 商品属性名称
  @override
  @JsonKey(name: "locale_name")
  LocaleName get localeName; // 商品属性UUID
  @override
  @JsonKey(name: "uuid")
  int get uuid;

  /// Create a copy of GoodsAttributes
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GoodsAttributesImplCopyWith<_$GoodsAttributesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

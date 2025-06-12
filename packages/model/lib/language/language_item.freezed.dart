// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'language_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

LanguageItem _$LanguageItemFromJson(Map<String, dynamic> json) {
  return _LanguageItem.fromJson(json);
}

/// @nodoc
mixin _$LanguageItem {
  @JsonKey(name: "key")
  int? get key => throw _privateConstructorUsedError;
  @JsonKey(name: "name")
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: "value")
  String get value => throw _privateConstructorUsedError;

  /// Serializes this LanguageItem to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LanguageItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LanguageItemCopyWith<LanguageItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LanguageItemCopyWith<$Res> {
  factory $LanguageItemCopyWith(
          LanguageItem value, $Res Function(LanguageItem) then) =
      _$LanguageItemCopyWithImpl<$Res, LanguageItem>;
  @useResult
  $Res call(
      {@JsonKey(name: "key") int? key,
      @JsonKey(name: "name") String name,
      @JsonKey(name: "value") String value});
}

/// @nodoc
class _$LanguageItemCopyWithImpl<$Res, $Val extends LanguageItem>
    implements $LanguageItemCopyWith<$Res> {
  _$LanguageItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LanguageItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = freezed,
    Object? name = null,
    Object? value = null,
  }) {
    return _then(_value.copyWith(
      key: freezed == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as int?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LanguageItemImplCopyWith<$Res>
    implements $LanguageItemCopyWith<$Res> {
  factory _$$LanguageItemImplCopyWith(
          _$LanguageItemImpl value, $Res Function(_$LanguageItemImpl) then) =
      __$$LanguageItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "key") int? key,
      @JsonKey(name: "name") String name,
      @JsonKey(name: "value") String value});
}

/// @nodoc
class __$$LanguageItemImplCopyWithImpl<$Res>
    extends _$LanguageItemCopyWithImpl<$Res, _$LanguageItemImpl>
    implements _$$LanguageItemImplCopyWith<$Res> {
  __$$LanguageItemImplCopyWithImpl(
      _$LanguageItemImpl _value, $Res Function(_$LanguageItemImpl) _then)
      : super(_value, _then);

  /// Create a copy of LanguageItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = freezed,
    Object? name = null,
    Object? value = null,
  }) {
    return _then(_$LanguageItemImpl(
      key: freezed == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as int?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LanguageItemImpl implements _LanguageItem {
  const _$LanguageItemImpl(
      {@JsonKey(name: "key") this.key,
      @JsonKey(name: "name") required this.name,
      @JsonKey(name: "value") required this.value});

  factory _$LanguageItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$LanguageItemImplFromJson(json);

  @override
  @JsonKey(name: "key")
  final int? key;
  @override
  @JsonKey(name: "name")
  final String name;
  @override
  @JsonKey(name: "value")
  final String value;

  @override
  String toString() {
    return 'LanguageItem(key: $key, name: $name, value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LanguageItemImpl &&
            (identical(other.key, key) || other.key == key) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, key, name, value);

  /// Create a copy of LanguageItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LanguageItemImplCopyWith<_$LanguageItemImpl> get copyWith =>
      __$$LanguageItemImplCopyWithImpl<_$LanguageItemImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LanguageItemImplToJson(
      this,
    );
  }
}

abstract class _LanguageItem implements LanguageItem {
  const factory _LanguageItem(
          {@JsonKey(name: "key") final int? key,
          @JsonKey(name: "name") required final String name,
          @JsonKey(name: "value") required final String value}) =
      _$LanguageItemImpl;

  factory _LanguageItem.fromJson(Map<String, dynamic> json) =
      _$LanguageItemImpl.fromJson;

  @override
  @JsonKey(name: "key")
  int? get key;
  @override
  @JsonKey(name: "name")
  String get name;
  @override
  @JsonKey(name: "value")
  String get value;

  /// Create a copy of LanguageItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LanguageItemImplCopyWith<_$LanguageItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

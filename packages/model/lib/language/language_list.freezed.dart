// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'language_list.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

LanguageList _$LanguageListFromJson(Map<String, dynamic> json) {
  return _LanguageList.fromJson(json);
}

/// @nodoc
mixin _$LanguageList {
  @JsonKey(name: "default_language")
  String get defaultLanguage => throw _privateConstructorUsedError;
  @JsonKey(name: "language_list")
  List<LanguageItem> get languageList => throw _privateConstructorUsedError;
  @JsonKey(name: "languages")
  List<String> get languages => throw _privateConstructorUsedError;

  /// Serializes this LanguageList to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LanguageList
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LanguageListCopyWith<LanguageList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LanguageListCopyWith<$Res> {
  factory $LanguageListCopyWith(
          LanguageList value, $Res Function(LanguageList) then) =
      _$LanguageListCopyWithImpl<$Res, LanguageList>;
  @useResult
  $Res call(
      {@JsonKey(name: "default_language") String defaultLanguage,
      @JsonKey(name: "language_list") List<LanguageItem> languageList,
      @JsonKey(name: "languages") List<String> languages});
}

/// @nodoc
class _$LanguageListCopyWithImpl<$Res, $Val extends LanguageList>
    implements $LanguageListCopyWith<$Res> {
  _$LanguageListCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LanguageList
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? defaultLanguage = null,
    Object? languageList = null,
    Object? languages = null,
  }) {
    return _then(_value.copyWith(
      defaultLanguage: null == defaultLanguage
          ? _value.defaultLanguage
          : defaultLanguage // ignore: cast_nullable_to_non_nullable
              as String,
      languageList: null == languageList
          ? _value.languageList
          : languageList // ignore: cast_nullable_to_non_nullable
              as List<LanguageItem>,
      languages: null == languages
          ? _value.languages
          : languages // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LanguageListImplCopyWith<$Res>
    implements $LanguageListCopyWith<$Res> {
  factory _$$LanguageListImplCopyWith(
          _$LanguageListImpl value, $Res Function(_$LanguageListImpl) then) =
      __$$LanguageListImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "default_language") String defaultLanguage,
      @JsonKey(name: "language_list") List<LanguageItem> languageList,
      @JsonKey(name: "languages") List<String> languages});
}

/// @nodoc
class __$$LanguageListImplCopyWithImpl<$Res>
    extends _$LanguageListCopyWithImpl<$Res, _$LanguageListImpl>
    implements _$$LanguageListImplCopyWith<$Res> {
  __$$LanguageListImplCopyWithImpl(
      _$LanguageListImpl _value, $Res Function(_$LanguageListImpl) _then)
      : super(_value, _then);

  /// Create a copy of LanguageList
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? defaultLanguage = null,
    Object? languageList = null,
    Object? languages = null,
  }) {
    return _then(_$LanguageListImpl(
      defaultLanguage: null == defaultLanguage
          ? _value.defaultLanguage
          : defaultLanguage // ignore: cast_nullable_to_non_nullable
              as String,
      languageList: null == languageList
          ? _value._languageList
          : languageList // ignore: cast_nullable_to_non_nullable
              as List<LanguageItem>,
      languages: null == languages
          ? _value._languages
          : languages // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LanguageListImpl implements _LanguageList {
  const _$LanguageListImpl(
      {@JsonKey(name: "default_language") required this.defaultLanguage,
      @JsonKey(name: "language_list")
      required final List<LanguageItem> languageList,
      @JsonKey(name: "languages") required final List<String> languages})
      : _languageList = languageList,
        _languages = languages;

  factory _$LanguageListImpl.fromJson(Map<String, dynamic> json) =>
      _$$LanguageListImplFromJson(json);

  @override
  @JsonKey(name: "default_language")
  final String defaultLanguage;
  final List<LanguageItem> _languageList;
  @override
  @JsonKey(name: "language_list")
  List<LanguageItem> get languageList {
    if (_languageList is EqualUnmodifiableListView) return _languageList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_languageList);
  }

  final List<String> _languages;
  @override
  @JsonKey(name: "languages")
  List<String> get languages {
    if (_languages is EqualUnmodifiableListView) return _languages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_languages);
  }

  @override
  String toString() {
    return 'LanguageList(defaultLanguage: $defaultLanguage, languageList: $languageList, languages: $languages)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LanguageListImpl &&
            (identical(other.defaultLanguage, defaultLanguage) ||
                other.defaultLanguage == defaultLanguage) &&
            const DeepCollectionEquality()
                .equals(other._languageList, _languageList) &&
            const DeepCollectionEquality()
                .equals(other._languages, _languages));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      defaultLanguage,
      const DeepCollectionEquality().hash(_languageList),
      const DeepCollectionEquality().hash(_languages));

  /// Create a copy of LanguageList
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LanguageListImplCopyWith<_$LanguageListImpl> get copyWith =>
      __$$LanguageListImplCopyWithImpl<_$LanguageListImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LanguageListImplToJson(
      this,
    );
  }
}

abstract class _LanguageList implements LanguageList {
  const factory _LanguageList(
      {@JsonKey(name: "default_language") required final String defaultLanguage,
      @JsonKey(name: "language_list")
      required final List<LanguageItem> languageList,
      @JsonKey(name: "languages")
      required final List<String> languages}) = _$LanguageListImpl;

  factory _LanguageList.fromJson(Map<String, dynamic> json) =
      _$LanguageListImpl.fromJson;

  @override
  @JsonKey(name: "default_language")
  String get defaultLanguage;
  @override
  @JsonKey(name: "language_list")
  List<LanguageItem> get languageList;
  @override
  @JsonKey(name: "languages")
  List<String> get languages;

  /// Create a copy of LanguageList
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LanguageListImplCopyWith<_$LanguageListImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

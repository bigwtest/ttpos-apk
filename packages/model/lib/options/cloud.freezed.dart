// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cloud.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Cloud _$CloudFromJson(Map<String, dynamic> json) {
  return _Cloud.fromJson(json);
}

/// @nodoc
mixin _$Cloud {
  @JsonKey(name: "brand_logo")
  String? get brandLogo => throw _privateConstructorUsedError;
  @JsonKey(name: "brand_logo_long")
  String? get brandLogoLong => throw _privateConstructorUsedError;
  @JsonKey(name: "brand_name")
  String? get brandName => throw _privateConstructorUsedError;
  @JsonKey(name: "browser_logo")
  String? get browserLogo => throw _privateConstructorUsedError;
  @JsonKey(name: "browser_title")
  String? get browserTitle => throw _privateConstructorUsedError;
  @JsonKey(name: "expiration_reminder")
  int? get expirationReminder => throw _privateConstructorUsedError;

  /// Serializes this Cloud to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Cloud
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CloudCopyWith<Cloud> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CloudCopyWith<$Res> {
  factory $CloudCopyWith(Cloud value, $Res Function(Cloud) then) =
      _$CloudCopyWithImpl<$Res, Cloud>;
  @useResult
  $Res call(
      {@JsonKey(name: "brand_logo") String? brandLogo,
      @JsonKey(name: "brand_logo_long") String? brandLogoLong,
      @JsonKey(name: "brand_name") String? brandName,
      @JsonKey(name: "browser_logo") String? browserLogo,
      @JsonKey(name: "browser_title") String? browserTitle,
      @JsonKey(name: "expiration_reminder") int? expirationReminder});
}

/// @nodoc
class _$CloudCopyWithImpl<$Res, $Val extends Cloud>
    implements $CloudCopyWith<$Res> {
  _$CloudCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Cloud
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? brandLogo = freezed,
    Object? brandLogoLong = freezed,
    Object? brandName = freezed,
    Object? browserLogo = freezed,
    Object? browserTitle = freezed,
    Object? expirationReminder = freezed,
  }) {
    return _then(_value.copyWith(
      brandLogo: freezed == brandLogo
          ? _value.brandLogo
          : brandLogo // ignore: cast_nullable_to_non_nullable
              as String?,
      brandLogoLong: freezed == brandLogoLong
          ? _value.brandLogoLong
          : brandLogoLong // ignore: cast_nullable_to_non_nullable
              as String?,
      brandName: freezed == brandName
          ? _value.brandName
          : brandName // ignore: cast_nullable_to_non_nullable
              as String?,
      browserLogo: freezed == browserLogo
          ? _value.browserLogo
          : browserLogo // ignore: cast_nullable_to_non_nullable
              as String?,
      browserTitle: freezed == browserTitle
          ? _value.browserTitle
          : browserTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      expirationReminder: freezed == expirationReminder
          ? _value.expirationReminder
          : expirationReminder // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CloudImplCopyWith<$Res> implements $CloudCopyWith<$Res> {
  factory _$$CloudImplCopyWith(
          _$CloudImpl value, $Res Function(_$CloudImpl) then) =
      __$$CloudImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "brand_logo") String? brandLogo,
      @JsonKey(name: "brand_logo_long") String? brandLogoLong,
      @JsonKey(name: "brand_name") String? brandName,
      @JsonKey(name: "browser_logo") String? browserLogo,
      @JsonKey(name: "browser_title") String? browserTitle,
      @JsonKey(name: "expiration_reminder") int? expirationReminder});
}

/// @nodoc
class __$$CloudImplCopyWithImpl<$Res>
    extends _$CloudCopyWithImpl<$Res, _$CloudImpl>
    implements _$$CloudImplCopyWith<$Res> {
  __$$CloudImplCopyWithImpl(
      _$CloudImpl _value, $Res Function(_$CloudImpl) _then)
      : super(_value, _then);

  /// Create a copy of Cloud
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? brandLogo = freezed,
    Object? brandLogoLong = freezed,
    Object? brandName = freezed,
    Object? browserLogo = freezed,
    Object? browserTitle = freezed,
    Object? expirationReminder = freezed,
  }) {
    return _then(_$CloudImpl(
      brandLogo: freezed == brandLogo
          ? _value.brandLogo
          : brandLogo // ignore: cast_nullable_to_non_nullable
              as String?,
      brandLogoLong: freezed == brandLogoLong
          ? _value.brandLogoLong
          : brandLogoLong // ignore: cast_nullable_to_non_nullable
              as String?,
      brandName: freezed == brandName
          ? _value.brandName
          : brandName // ignore: cast_nullable_to_non_nullable
              as String?,
      browserLogo: freezed == browserLogo
          ? _value.browserLogo
          : browserLogo // ignore: cast_nullable_to_non_nullable
              as String?,
      browserTitle: freezed == browserTitle
          ? _value.browserTitle
          : browserTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      expirationReminder: freezed == expirationReminder
          ? _value.expirationReminder
          : expirationReminder // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CloudImpl implements _Cloud {
  const _$CloudImpl(
      {@JsonKey(name: "brand_logo") this.brandLogo,
      @JsonKey(name: "brand_logo_long") this.brandLogoLong,
      @JsonKey(name: "brand_name") this.brandName,
      @JsonKey(name: "browser_logo") this.browserLogo,
      @JsonKey(name: "browser_title") this.browserTitle,
      @JsonKey(name: "expiration_reminder") this.expirationReminder});

  factory _$CloudImpl.fromJson(Map<String, dynamic> json) =>
      _$$CloudImplFromJson(json);

  @override
  @JsonKey(name: "brand_logo")
  final String? brandLogo;
  @override
  @JsonKey(name: "brand_logo_long")
  final String? brandLogoLong;
  @override
  @JsonKey(name: "brand_name")
  final String? brandName;
  @override
  @JsonKey(name: "browser_logo")
  final String? browserLogo;
  @override
  @JsonKey(name: "browser_title")
  final String? browserTitle;
  @override
  @JsonKey(name: "expiration_reminder")
  final int? expirationReminder;

  @override
  String toString() {
    return 'Cloud(brandLogo: $brandLogo, brandLogoLong: $brandLogoLong, brandName: $brandName, browserLogo: $browserLogo, browserTitle: $browserTitle, expirationReminder: $expirationReminder)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CloudImpl &&
            (identical(other.brandLogo, brandLogo) ||
                other.brandLogo == brandLogo) &&
            (identical(other.brandLogoLong, brandLogoLong) ||
                other.brandLogoLong == brandLogoLong) &&
            (identical(other.brandName, brandName) ||
                other.brandName == brandName) &&
            (identical(other.browserLogo, browserLogo) ||
                other.browserLogo == browserLogo) &&
            (identical(other.browserTitle, browserTitle) ||
                other.browserTitle == browserTitle) &&
            (identical(other.expirationReminder, expirationReminder) ||
                other.expirationReminder == expirationReminder));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, brandLogo, brandLogoLong,
      brandName, browserLogo, browserTitle, expirationReminder);

  /// Create a copy of Cloud
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CloudImplCopyWith<_$CloudImpl> get copyWith =>
      __$$CloudImplCopyWithImpl<_$CloudImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CloudImplToJson(
      this,
    );
  }
}

abstract class _Cloud implements Cloud {
  const factory _Cloud(
      {@JsonKey(name: "brand_logo") final String? brandLogo,
      @JsonKey(name: "brand_logo_long") final String? brandLogoLong,
      @JsonKey(name: "brand_name") final String? brandName,
      @JsonKey(name: "browser_logo") final String? browserLogo,
      @JsonKey(name: "browser_title") final String? browserTitle,
      @JsonKey(name: "expiration_reminder")
      final int? expirationReminder}) = _$CloudImpl;

  factory _Cloud.fromJson(Map<String, dynamic> json) = _$CloudImpl.fromJson;

  @override
  @JsonKey(name: "brand_logo")
  String? get brandLogo;
  @override
  @JsonKey(name: "brand_logo_long")
  String? get brandLogoLong;
  @override
  @JsonKey(name: "brand_name")
  String? get brandName;
  @override
  @JsonKey(name: "browser_logo")
  String? get browserLogo;
  @override
  @JsonKey(name: "browser_title")
  String? get browserTitle;
  @override
  @JsonKey(name: "expiration_reminder")
  int? get expirationReminder;

  /// Create a copy of Cloud
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CloudImplCopyWith<_$CloudImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'captcha.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ResponseCaptcha _$ResponseCaptchaFromJson(Map<String, dynamic> json) {
  return _ResponseCaptcha.fromJson(json);
}

/// @nodoc
mixin _$ResponseCaptcha {
  String get base64 => throw _privateConstructorUsedError;
  String get sign => throw _privateConstructorUsedError;

  /// Serializes this ResponseCaptcha to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ResponseCaptcha
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ResponseCaptchaCopyWith<ResponseCaptcha> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResponseCaptchaCopyWith<$Res> {
  factory $ResponseCaptchaCopyWith(
          ResponseCaptcha value, $Res Function(ResponseCaptcha) then) =
      _$ResponseCaptchaCopyWithImpl<$Res, ResponseCaptcha>;
  @useResult
  $Res call({String base64, String sign});
}

/// @nodoc
class _$ResponseCaptchaCopyWithImpl<$Res, $Val extends ResponseCaptcha>
    implements $ResponseCaptchaCopyWith<$Res> {
  _$ResponseCaptchaCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ResponseCaptcha
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? base64 = null,
    Object? sign = null,
  }) {
    return _then(_value.copyWith(
      base64: null == base64
          ? _value.base64
          : base64 // ignore: cast_nullable_to_non_nullable
              as String,
      sign: null == sign
          ? _value.sign
          : sign // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ResponseCaptchaImplCopyWith<$Res>
    implements $ResponseCaptchaCopyWith<$Res> {
  factory _$$ResponseCaptchaImplCopyWith(_$ResponseCaptchaImpl value,
          $Res Function(_$ResponseCaptchaImpl) then) =
      __$$ResponseCaptchaImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String base64, String sign});
}

/// @nodoc
class __$$ResponseCaptchaImplCopyWithImpl<$Res>
    extends _$ResponseCaptchaCopyWithImpl<$Res, _$ResponseCaptchaImpl>
    implements _$$ResponseCaptchaImplCopyWith<$Res> {
  __$$ResponseCaptchaImplCopyWithImpl(
      _$ResponseCaptchaImpl _value, $Res Function(_$ResponseCaptchaImpl) _then)
      : super(_value, _then);

  /// Create a copy of ResponseCaptcha
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? base64 = null,
    Object? sign = null,
  }) {
    return _then(_$ResponseCaptchaImpl(
      base64: null == base64
          ? _value.base64
          : base64 // ignore: cast_nullable_to_non_nullable
              as String,
      sign: null == sign
          ? _value.sign
          : sign // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ResponseCaptchaImpl
    with DiagnosticableTreeMixin
    implements _ResponseCaptcha {
  _$ResponseCaptchaImpl({required this.base64, required this.sign});

  factory _$ResponseCaptchaImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResponseCaptchaImplFromJson(json);

  @override
  final String base64;
  @override
  final String sign;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ResponseCaptcha(base64: $base64, sign: $sign)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ResponseCaptcha'))
      ..add(DiagnosticsProperty('base64', base64))
      ..add(DiagnosticsProperty('sign', sign));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResponseCaptchaImpl &&
            (identical(other.base64, base64) || other.base64 == base64) &&
            (identical(other.sign, sign) || other.sign == sign));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, base64, sign);

  /// Create a copy of ResponseCaptcha
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ResponseCaptchaImplCopyWith<_$ResponseCaptchaImpl> get copyWith =>
      __$$ResponseCaptchaImplCopyWithImpl<_$ResponseCaptchaImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResponseCaptchaImplToJson(
      this,
    );
  }
}

abstract class _ResponseCaptcha implements ResponseCaptcha {
  factory _ResponseCaptcha(
      {required final String base64,
      required final String sign}) = _$ResponseCaptchaImpl;

  factory _ResponseCaptcha.fromJson(Map<String, dynamic> json) =
      _$ResponseCaptchaImpl.fromJson;

  @override
  String get base64;
  @override
  String get sign;

  /// Create a copy of ResponseCaptcha
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ResponseCaptchaImplCopyWith<_$ResponseCaptchaImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

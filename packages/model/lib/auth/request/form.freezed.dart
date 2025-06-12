// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'form.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RequestDataLoginForm _$RequestDataLoginFormFromJson(Map<String, dynamic> json) {
  return _RequestDataLoginForm.fromJson(json);
}

/// @nodoc
mixin _$RequestDataLoginForm {
  String? get brand => throw _privateConstructorUsedError;
  set brand(String? value) => throw _privateConstructorUsedError;
  String get code => throw _privateConstructorUsedError;
  set code(String value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'device_id')
  String get deviceId => throw _privateConstructorUsedError;
  @JsonKey(name: 'device_id')
  set deviceId(String value) => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  set password(String value) => throw _privateConstructorUsedError;
  String get username => throw _privateConstructorUsedError;
  set username(String value) => throw _privateConstructorUsedError;

  /// Serializes this RequestDataLoginForm to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RequestDataLoginForm
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RequestDataLoginFormCopyWith<RequestDataLoginForm> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RequestDataLoginFormCopyWith<$Res> {
  factory $RequestDataLoginFormCopyWith(RequestDataLoginForm value,
          $Res Function(RequestDataLoginForm) then) =
      _$RequestDataLoginFormCopyWithImpl<$Res, RequestDataLoginForm>;
  @useResult
  $Res call(
      {String? brand,
      String code,
      @JsonKey(name: 'device_id') String deviceId,
      String password,
      String username});
}

/// @nodoc
class _$RequestDataLoginFormCopyWithImpl<$Res,
        $Val extends RequestDataLoginForm>
    implements $RequestDataLoginFormCopyWith<$Res> {
  _$RequestDataLoginFormCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RequestDataLoginForm
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? brand = freezed,
    Object? code = null,
    Object? deviceId = null,
    Object? password = null,
    Object? username = null,
  }) {
    return _then(_value.copyWith(
      brand: freezed == brand
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as String?,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      deviceId: null == deviceId
          ? _value.deviceId
          : deviceId // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RequestDataLoginFormImplCopyWith<$Res>
    implements $RequestDataLoginFormCopyWith<$Res> {
  factory _$$RequestDataLoginFormImplCopyWith(_$RequestDataLoginFormImpl value,
          $Res Function(_$RequestDataLoginFormImpl) then) =
      __$$RequestDataLoginFormImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? brand,
      String code,
      @JsonKey(name: 'device_id') String deviceId,
      String password,
      String username});
}

/// @nodoc
class __$$RequestDataLoginFormImplCopyWithImpl<$Res>
    extends _$RequestDataLoginFormCopyWithImpl<$Res, _$RequestDataLoginFormImpl>
    implements _$$RequestDataLoginFormImplCopyWith<$Res> {
  __$$RequestDataLoginFormImplCopyWithImpl(_$RequestDataLoginFormImpl _value,
      $Res Function(_$RequestDataLoginFormImpl) _then)
      : super(_value, _then);

  /// Create a copy of RequestDataLoginForm
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? brand = freezed,
    Object? code = null,
    Object? deviceId = null,
    Object? password = null,
    Object? username = null,
  }) {
    return _then(_$RequestDataLoginFormImpl(
      brand: freezed == brand
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as String?,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      deviceId: null == deviceId
          ? _value.deviceId
          : deviceId // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RequestDataLoginFormImpl
    with DiagnosticableTreeMixin
    implements _RequestDataLoginForm {
  _$RequestDataLoginFormImpl(
      {this.brand,
      required this.code,
      @JsonKey(name: 'device_id') required this.deviceId,
      required this.password,
      required this.username});

  factory _$RequestDataLoginFormImpl.fromJson(Map<String, dynamic> json) =>
      _$$RequestDataLoginFormImplFromJson(json);

  @override
  String? brand;
  @override
  String code;
  @override
  @JsonKey(name: 'device_id')
  String deviceId;
  @override
  String password;
  @override
  String username;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RequestDataLoginForm(brand: $brand, code: $code, deviceId: $deviceId, password: $password, username: $username)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'RequestDataLoginForm'))
      ..add(DiagnosticsProperty('brand', brand))
      ..add(DiagnosticsProperty('code', code))
      ..add(DiagnosticsProperty('deviceId', deviceId))
      ..add(DiagnosticsProperty('password', password))
      ..add(DiagnosticsProperty('username', username));
  }

  /// Create a copy of RequestDataLoginForm
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RequestDataLoginFormImplCopyWith<_$RequestDataLoginFormImpl>
      get copyWith =>
          __$$RequestDataLoginFormImplCopyWithImpl<_$RequestDataLoginFormImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RequestDataLoginFormImplToJson(
      this,
    );
  }
}

abstract class _RequestDataLoginForm implements RequestDataLoginForm {
  factory _RequestDataLoginForm(
      {String? brand,
      required String code,
      @JsonKey(name: 'device_id') required String deviceId,
      required String password,
      required String username}) = _$RequestDataLoginFormImpl;

  factory _RequestDataLoginForm.fromJson(Map<String, dynamic> json) =
      _$RequestDataLoginFormImpl.fromJson;

  @override
  String? get brand;
  set brand(String? value);
  @override
  String get code;
  set code(String value);
  @override
  @JsonKey(name: 'device_id')
  String get deviceId;
  @JsonKey(name: 'device_id')
  set deviceId(String value);
  @override
  String get password;
  set password(String value);
  @override
  String get username;
  set username(String value);

  /// Create a copy of RequestDataLoginForm
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RequestDataLoginFormImplCopyWith<_$RequestDataLoginFormImpl>
      get copyWith => throw _privateConstructorUsedError;
}

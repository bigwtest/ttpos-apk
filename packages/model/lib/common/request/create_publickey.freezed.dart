// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_publickey.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RequestDataCreatePublicKey _$RequestDataCreatePublicKeyFromJson(
    Map<String, dynamic> json) {
  return _RequestDataCreatePublicKey.fromJson(json);
}

/// @nodoc
mixin _$RequestDataCreatePublicKey {
  @JsonKey(name: 'public_key')
  String get publicKey => throw _privateConstructorUsedError;
  @JsonKey(name: 'public_key')
  set publicKey(String value) => throw _privateConstructorUsedError;

  /// Serializes this RequestDataCreatePublicKey to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RequestDataCreatePublicKey
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RequestDataCreatePublicKeyCopyWith<RequestDataCreatePublicKey>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RequestDataCreatePublicKeyCopyWith<$Res> {
  factory $RequestDataCreatePublicKeyCopyWith(RequestDataCreatePublicKey value,
          $Res Function(RequestDataCreatePublicKey) then) =
      _$RequestDataCreatePublicKeyCopyWithImpl<$Res,
          RequestDataCreatePublicKey>;
  @useResult
  $Res call({@JsonKey(name: 'public_key') String publicKey});
}

/// @nodoc
class _$RequestDataCreatePublicKeyCopyWithImpl<$Res,
        $Val extends RequestDataCreatePublicKey>
    implements $RequestDataCreatePublicKeyCopyWith<$Res> {
  _$RequestDataCreatePublicKeyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RequestDataCreatePublicKey
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? publicKey = null,
  }) {
    return _then(_value.copyWith(
      publicKey: null == publicKey
          ? _value.publicKey
          : publicKey // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RequestDataCreatePublicKeyImplCopyWith<$Res>
    implements $RequestDataCreatePublicKeyCopyWith<$Res> {
  factory _$$RequestDataCreatePublicKeyImplCopyWith(
          _$RequestDataCreatePublicKeyImpl value,
          $Res Function(_$RequestDataCreatePublicKeyImpl) then) =
      __$$RequestDataCreatePublicKeyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'public_key') String publicKey});
}

/// @nodoc
class __$$RequestDataCreatePublicKeyImplCopyWithImpl<$Res>
    extends _$RequestDataCreatePublicKeyCopyWithImpl<$Res,
        _$RequestDataCreatePublicKeyImpl>
    implements _$$RequestDataCreatePublicKeyImplCopyWith<$Res> {
  __$$RequestDataCreatePublicKeyImplCopyWithImpl(
      _$RequestDataCreatePublicKeyImpl _value,
      $Res Function(_$RequestDataCreatePublicKeyImpl) _then)
      : super(_value, _then);

  /// Create a copy of RequestDataCreatePublicKey
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? publicKey = null,
  }) {
    return _then(_$RequestDataCreatePublicKeyImpl(
      publicKey: null == publicKey
          ? _value.publicKey
          : publicKey // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RequestDataCreatePublicKeyImpl
    with DiagnosticableTreeMixin
    implements _RequestDataCreatePublicKey {
  _$RequestDataCreatePublicKeyImpl(
      {@JsonKey(name: 'public_key') required this.publicKey});

  factory _$RequestDataCreatePublicKeyImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$RequestDataCreatePublicKeyImplFromJson(json);

  @override
  @JsonKey(name: 'public_key')
  String publicKey;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RequestDataCreatePublicKey(publicKey: $publicKey)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'RequestDataCreatePublicKey'))
      ..add(DiagnosticsProperty('publicKey', publicKey));
  }

  /// Create a copy of RequestDataCreatePublicKey
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RequestDataCreatePublicKeyImplCopyWith<_$RequestDataCreatePublicKeyImpl>
      get copyWith => __$$RequestDataCreatePublicKeyImplCopyWithImpl<
          _$RequestDataCreatePublicKeyImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RequestDataCreatePublicKeyImplToJson(
      this,
    );
  }
}

abstract class _RequestDataCreatePublicKey
    implements RequestDataCreatePublicKey {
  factory _RequestDataCreatePublicKey(
          {@JsonKey(name: 'public_key') required String publicKey}) =
      _$RequestDataCreatePublicKeyImpl;

  factory _RequestDataCreatePublicKey.fromJson(Map<String, dynamic> json) =
      _$RequestDataCreatePublicKeyImpl.fromJson;

  @override
  @JsonKey(name: 'public_key')
  String get publicKey;
  @JsonKey(name: 'public_key')
  set publicKey(String value);

  /// Create a copy of RequestDataCreatePublicKey
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RequestDataCreatePublicKeyImplCopyWith<_$RequestDataCreatePublicKeyImpl>
      get copyWith => throw _privateConstructorUsedError;
}

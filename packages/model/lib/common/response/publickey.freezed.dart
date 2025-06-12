// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'publickey.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ResponseCreatePublicKey _$ResponseCreatePublicKeyFromJson(
    Map<String, dynamic> json) {
  return _ResponseCreatePublicKey.fromJson(json);
}

/// @nodoc
mixin _$ResponseCreatePublicKey {
  ///客户端ID
  @JsonKey(name: 'client_id')
  String get clientId => throw _privateConstructorUsedError;

  ///客户端ID
  @JsonKey(name: 'client_id')
  set clientId(String value) => throw _privateConstructorUsedError;

  ///公钥
  @JsonKey(name: 'public_key')
  String get publicKey => throw _privateConstructorUsedError;

  ///公钥
  @JsonKey(name: 'public_key')
  set publicKey(String value) => throw _privateConstructorUsedError;

  /// Serializes this ResponseCreatePublicKey to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ResponseCreatePublicKey
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ResponseCreatePublicKeyCopyWith<ResponseCreatePublicKey> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResponseCreatePublicKeyCopyWith<$Res> {
  factory $ResponseCreatePublicKeyCopyWith(ResponseCreatePublicKey value,
          $Res Function(ResponseCreatePublicKey) then) =
      _$ResponseCreatePublicKeyCopyWithImpl<$Res, ResponseCreatePublicKey>;
  @useResult
  $Res call(
      {@JsonKey(name: 'client_id') String clientId,
      @JsonKey(name: 'public_key') String publicKey});
}

/// @nodoc
class _$ResponseCreatePublicKeyCopyWithImpl<$Res,
        $Val extends ResponseCreatePublicKey>
    implements $ResponseCreatePublicKeyCopyWith<$Res> {
  _$ResponseCreatePublicKeyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ResponseCreatePublicKey
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? clientId = null,
    Object? publicKey = null,
  }) {
    return _then(_value.copyWith(
      clientId: null == clientId
          ? _value.clientId
          : clientId // ignore: cast_nullable_to_non_nullable
              as String,
      publicKey: null == publicKey
          ? _value.publicKey
          : publicKey // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ResponseCreatePublicKeyImplCopyWith<$Res>
    implements $ResponseCreatePublicKeyCopyWith<$Res> {
  factory _$$ResponseCreatePublicKeyImplCopyWith(
          _$ResponseCreatePublicKeyImpl value,
          $Res Function(_$ResponseCreatePublicKeyImpl) then) =
      __$$ResponseCreatePublicKeyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'client_id') String clientId,
      @JsonKey(name: 'public_key') String publicKey});
}

/// @nodoc
class __$$ResponseCreatePublicKeyImplCopyWithImpl<$Res>
    extends _$ResponseCreatePublicKeyCopyWithImpl<$Res,
        _$ResponseCreatePublicKeyImpl>
    implements _$$ResponseCreatePublicKeyImplCopyWith<$Res> {
  __$$ResponseCreatePublicKeyImplCopyWithImpl(
      _$ResponseCreatePublicKeyImpl _value,
      $Res Function(_$ResponseCreatePublicKeyImpl) _then)
      : super(_value, _then);

  /// Create a copy of ResponseCreatePublicKey
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? clientId = null,
    Object? publicKey = null,
  }) {
    return _then(_$ResponseCreatePublicKeyImpl(
      clientId: null == clientId
          ? _value.clientId
          : clientId // ignore: cast_nullable_to_non_nullable
              as String,
      publicKey: null == publicKey
          ? _value.publicKey
          : publicKey // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ResponseCreatePublicKeyImpl
    with DiagnosticableTreeMixin
    implements _ResponseCreatePublicKey {
  _$ResponseCreatePublicKeyImpl(
      {@JsonKey(name: 'client_id') required this.clientId,
      @JsonKey(name: 'public_key') required this.publicKey});

  factory _$ResponseCreatePublicKeyImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResponseCreatePublicKeyImplFromJson(json);

  ///客户端ID
  @override
  @JsonKey(name: 'client_id')
  String clientId;

  ///公钥
  @override
  @JsonKey(name: 'public_key')
  String publicKey;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ResponseCreatePublicKey(clientId: $clientId, publicKey: $publicKey)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ResponseCreatePublicKey'))
      ..add(DiagnosticsProperty('clientId', clientId))
      ..add(DiagnosticsProperty('publicKey', publicKey));
  }

  /// Create a copy of ResponseCreatePublicKey
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ResponseCreatePublicKeyImplCopyWith<_$ResponseCreatePublicKeyImpl>
      get copyWith => __$$ResponseCreatePublicKeyImplCopyWithImpl<
          _$ResponseCreatePublicKeyImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResponseCreatePublicKeyImplToJson(
      this,
    );
  }
}

abstract class _ResponseCreatePublicKey implements ResponseCreatePublicKey {
  factory _ResponseCreatePublicKey(
          {@JsonKey(name: 'client_id') required String clientId,
          @JsonKey(name: 'public_key') required String publicKey}) =
      _$ResponseCreatePublicKeyImpl;

  factory _ResponseCreatePublicKey.fromJson(Map<String, dynamic> json) =
      _$ResponseCreatePublicKeyImpl.fromJson;

  ///客户端ID
  @override
  @JsonKey(name: 'client_id')
  String get clientId;

  ///客户端ID
  @JsonKey(name: 'client_id')
  set clientId(String value);

  ///公钥
  @override
  @JsonKey(name: 'public_key')
  String get publicKey;

  ///公钥
  @JsonKey(name: 'public_key')
  set publicKey(String value);

  /// Create a copy of ResponseCreatePublicKey
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ResponseCreatePublicKeyImplCopyWith<_$ResponseCreatePublicKeyImpl>
      get copyWith => throw _privateConstructorUsedError;
}

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'public_key.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ResponseDataServerPublicKey _$ResponseDataServerPublicKeyFromJson(
    Map<String, dynamic> json) {
  return _ResponseDataServerPublicKey.fromJson(json);
}

/// @nodoc
mixin _$ResponseDataServerPublicKey {
  @JsonKey(name: "key")
  String get publicKey => throw _privateConstructorUsedError;
  @JsonKey(name: "type")
  String? get encryptType => throw _privateConstructorUsedError;
  @JsonKey(name: "id")
  String? get clientId => throw _privateConstructorUsedError;

  /// Serializes this ResponseDataServerPublicKey to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ResponseDataServerPublicKey
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ResponseDataServerPublicKeyCopyWith<ResponseDataServerPublicKey>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResponseDataServerPublicKeyCopyWith<$Res> {
  factory $ResponseDataServerPublicKeyCopyWith(
          ResponseDataServerPublicKey value,
          $Res Function(ResponseDataServerPublicKey) then) =
      _$ResponseDataServerPublicKeyCopyWithImpl<$Res,
          ResponseDataServerPublicKey>;
  @useResult
  $Res call(
      {@JsonKey(name: "key") String publicKey,
      @JsonKey(name: "type") String? encryptType,
      @JsonKey(name: "id") String? clientId});
}

/// @nodoc
class _$ResponseDataServerPublicKeyCopyWithImpl<$Res,
        $Val extends ResponseDataServerPublicKey>
    implements $ResponseDataServerPublicKeyCopyWith<$Res> {
  _$ResponseDataServerPublicKeyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ResponseDataServerPublicKey
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? publicKey = null,
    Object? encryptType = freezed,
    Object? clientId = freezed,
  }) {
    return _then(_value.copyWith(
      publicKey: null == publicKey
          ? _value.publicKey
          : publicKey // ignore: cast_nullable_to_non_nullable
              as String,
      encryptType: freezed == encryptType
          ? _value.encryptType
          : encryptType // ignore: cast_nullable_to_non_nullable
              as String?,
      clientId: freezed == clientId
          ? _value.clientId
          : clientId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ResponseDataServerPublicKeyImplCopyWith<$Res>
    implements $ResponseDataServerPublicKeyCopyWith<$Res> {
  factory _$$ResponseDataServerPublicKeyImplCopyWith(
          _$ResponseDataServerPublicKeyImpl value,
          $Res Function(_$ResponseDataServerPublicKeyImpl) then) =
      __$$ResponseDataServerPublicKeyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "key") String publicKey,
      @JsonKey(name: "type") String? encryptType,
      @JsonKey(name: "id") String? clientId});
}

/// @nodoc
class __$$ResponseDataServerPublicKeyImplCopyWithImpl<$Res>
    extends _$ResponseDataServerPublicKeyCopyWithImpl<$Res,
        _$ResponseDataServerPublicKeyImpl>
    implements _$$ResponseDataServerPublicKeyImplCopyWith<$Res> {
  __$$ResponseDataServerPublicKeyImplCopyWithImpl(
      _$ResponseDataServerPublicKeyImpl _value,
      $Res Function(_$ResponseDataServerPublicKeyImpl) _then)
      : super(_value, _then);

  /// Create a copy of ResponseDataServerPublicKey
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? publicKey = null,
    Object? encryptType = freezed,
    Object? clientId = freezed,
  }) {
    return _then(_$ResponseDataServerPublicKeyImpl(
      publicKey: null == publicKey
          ? _value.publicKey
          : publicKey // ignore: cast_nullable_to_non_nullable
              as String,
      encryptType: freezed == encryptType
          ? _value.encryptType
          : encryptType // ignore: cast_nullable_to_non_nullable
              as String?,
      clientId: freezed == clientId
          ? _value.clientId
          : clientId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ResponseDataServerPublicKeyImpl
    implements _ResponseDataServerPublicKey {
  _$ResponseDataServerPublicKeyImpl(
      {@JsonKey(name: "key") required this.publicKey,
      @JsonKey(name: "type") this.encryptType,
      @JsonKey(name: "id") this.clientId});

  factory _$ResponseDataServerPublicKeyImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ResponseDataServerPublicKeyImplFromJson(json);

  @override
  @JsonKey(name: "key")
  final String publicKey;
  @override
  @JsonKey(name: "type")
  final String? encryptType;
  @override
  @JsonKey(name: "id")
  final String? clientId;

  @override
  String toString() {
    return 'ResponseDataServerPublicKey(publicKey: $publicKey, encryptType: $encryptType, clientId: $clientId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResponseDataServerPublicKeyImpl &&
            (identical(other.publicKey, publicKey) ||
                other.publicKey == publicKey) &&
            (identical(other.encryptType, encryptType) ||
                other.encryptType == encryptType) &&
            (identical(other.clientId, clientId) ||
                other.clientId == clientId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, publicKey, encryptType, clientId);

  /// Create a copy of ResponseDataServerPublicKey
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ResponseDataServerPublicKeyImplCopyWith<_$ResponseDataServerPublicKeyImpl>
      get copyWith => __$$ResponseDataServerPublicKeyImplCopyWithImpl<
          _$ResponseDataServerPublicKeyImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResponseDataServerPublicKeyImplToJson(
      this,
    );
  }
}

abstract class _ResponseDataServerPublicKey
    implements ResponseDataServerPublicKey {
  factory _ResponseDataServerPublicKey(
          {@JsonKey(name: "key") required final String publicKey,
          @JsonKey(name: "type") final String? encryptType,
          @JsonKey(name: "id") final String? clientId}) =
      _$ResponseDataServerPublicKeyImpl;

  factory _ResponseDataServerPublicKey.fromJson(Map<String, dynamic> json) =
      _$ResponseDataServerPublicKeyImpl.fromJson;

  @override
  @JsonKey(name: "key")
  String get publicKey;
  @override
  @JsonKey(name: "type")
  String? get encryptType;
  @override
  @JsonKey(name: "id")
  String? get clientId;

  /// Create a copy of ResponseDataServerPublicKey
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ResponseDataServerPublicKeyImplCopyWith<_$ResponseDataServerPublicKeyImpl>
      get copyWith => throw _privateConstructorUsedError;
}

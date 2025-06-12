// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'print_config.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PrintConfig _$PrintConfigFromJson(Map<String, dynamic> json) {
  return _PrintConfig.fromJson(json);
}

/// @nodoc
mixin _$PrintConfig {
  @JsonKey(name: "IP")
  String? get ip => throw _privateConstructorUsedError;
  @JsonKey(name: "PORT")
  String? get port => throw _privateConstructorUsedError;
  @JsonKey(name: "SN")
  String? get sn => throw _privateConstructorUsedError;
  @JsonKey(name: "APP_ID")
  String? get appId => throw _privateConstructorUsedError;
  @JsonKey(name: "APP_KEY")
  String? get appKey => throw _privateConstructorUsedError;

  /// Serializes this PrintConfig to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PrintConfig
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PrintConfigCopyWith<PrintConfig> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PrintConfigCopyWith<$Res> {
  factory $PrintConfigCopyWith(
          PrintConfig value, $Res Function(PrintConfig) then) =
      _$PrintConfigCopyWithImpl<$Res, PrintConfig>;
  @useResult
  $Res call(
      {@JsonKey(name: "IP") String? ip,
      @JsonKey(name: "PORT") String? port,
      @JsonKey(name: "SN") String? sn,
      @JsonKey(name: "APP_ID") String? appId,
      @JsonKey(name: "APP_KEY") String? appKey});
}

/// @nodoc
class _$PrintConfigCopyWithImpl<$Res, $Val extends PrintConfig>
    implements $PrintConfigCopyWith<$Res> {
  _$PrintConfigCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PrintConfig
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ip = freezed,
    Object? port = freezed,
    Object? sn = freezed,
    Object? appId = freezed,
    Object? appKey = freezed,
  }) {
    return _then(_value.copyWith(
      ip: freezed == ip
          ? _value.ip
          : ip // ignore: cast_nullable_to_non_nullable
              as String?,
      port: freezed == port
          ? _value.port
          : port // ignore: cast_nullable_to_non_nullable
              as String?,
      sn: freezed == sn
          ? _value.sn
          : sn // ignore: cast_nullable_to_non_nullable
              as String?,
      appId: freezed == appId
          ? _value.appId
          : appId // ignore: cast_nullable_to_non_nullable
              as String?,
      appKey: freezed == appKey
          ? _value.appKey
          : appKey // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PrintConfigImplCopyWith<$Res>
    implements $PrintConfigCopyWith<$Res> {
  factory _$$PrintConfigImplCopyWith(
          _$PrintConfigImpl value, $Res Function(_$PrintConfigImpl) then) =
      __$$PrintConfigImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "IP") String? ip,
      @JsonKey(name: "PORT") String? port,
      @JsonKey(name: "SN") String? sn,
      @JsonKey(name: "APP_ID") String? appId,
      @JsonKey(name: "APP_KEY") String? appKey});
}

/// @nodoc
class __$$PrintConfigImplCopyWithImpl<$Res>
    extends _$PrintConfigCopyWithImpl<$Res, _$PrintConfigImpl>
    implements _$$PrintConfigImplCopyWith<$Res> {
  __$$PrintConfigImplCopyWithImpl(
      _$PrintConfigImpl _value, $Res Function(_$PrintConfigImpl) _then)
      : super(_value, _then);

  /// Create a copy of PrintConfig
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ip = freezed,
    Object? port = freezed,
    Object? sn = freezed,
    Object? appId = freezed,
    Object? appKey = freezed,
  }) {
    return _then(_$PrintConfigImpl(
      ip: freezed == ip
          ? _value.ip
          : ip // ignore: cast_nullable_to_non_nullable
              as String?,
      port: freezed == port
          ? _value.port
          : port // ignore: cast_nullable_to_non_nullable
              as String?,
      sn: freezed == sn
          ? _value.sn
          : sn // ignore: cast_nullable_to_non_nullable
              as String?,
      appId: freezed == appId
          ? _value.appId
          : appId // ignore: cast_nullable_to_non_nullable
              as String?,
      appKey: freezed == appKey
          ? _value.appKey
          : appKey // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PrintConfigImpl implements _PrintConfig {
  const _$PrintConfigImpl(
      {@JsonKey(name: "IP") this.ip,
      @JsonKey(name: "PORT") this.port,
      @JsonKey(name: "SN") this.sn,
      @JsonKey(name: "APP_ID") this.appId,
      @JsonKey(name: "APP_KEY") this.appKey});

  factory _$PrintConfigImpl.fromJson(Map<String, dynamic> json) =>
      _$$PrintConfigImplFromJson(json);

  @override
  @JsonKey(name: "IP")
  final String? ip;
  @override
  @JsonKey(name: "PORT")
  final String? port;
  @override
  @JsonKey(name: "SN")
  final String? sn;
  @override
  @JsonKey(name: "APP_ID")
  final String? appId;
  @override
  @JsonKey(name: "APP_KEY")
  final String? appKey;

  @override
  String toString() {
    return 'PrintConfig(ip: $ip, port: $port, sn: $sn, appId: $appId, appKey: $appKey)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PrintConfigImpl &&
            (identical(other.ip, ip) || other.ip == ip) &&
            (identical(other.port, port) || other.port == port) &&
            (identical(other.sn, sn) || other.sn == sn) &&
            (identical(other.appId, appId) || other.appId == appId) &&
            (identical(other.appKey, appKey) || other.appKey == appKey));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, ip, port, sn, appId, appKey);

  /// Create a copy of PrintConfig
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PrintConfigImplCopyWith<_$PrintConfigImpl> get copyWith =>
      __$$PrintConfigImplCopyWithImpl<_$PrintConfigImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PrintConfigImplToJson(
      this,
    );
  }
}

abstract class _PrintConfig implements PrintConfig {
  const factory _PrintConfig(
      {@JsonKey(name: "IP") final String? ip,
      @JsonKey(name: "PORT") final String? port,
      @JsonKey(name: "SN") final String? sn,
      @JsonKey(name: "APP_ID") final String? appId,
      @JsonKey(name: "APP_KEY") final String? appKey}) = _$PrintConfigImpl;

  factory _PrintConfig.fromJson(Map<String, dynamic> json) =
      _$PrintConfigImpl.fromJson;

  @override
  @JsonKey(name: "IP")
  String? get ip;
  @override
  @JsonKey(name: "PORT")
  String? get port;
  @override
  @JsonKey(name: "SN")
  String? get sn;
  @override
  @JsonKey(name: "APP_ID")
  String? get appId;
  @override
  @JsonKey(name: "APP_KEY")
  String? get appKey;

  /// Create a copy of PrintConfig
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PrintConfigImplCopyWith<_$PrintConfigImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

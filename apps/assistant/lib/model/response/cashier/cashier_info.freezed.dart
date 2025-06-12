// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cashier_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ResponseCashierInfo _$ResponseCashierInfoFromJson(Map<String, dynamic> json) {
  return _ResponseCashierInfo.fromJson(json);
}

/// @nodoc
mixin _$ResponseCashierInfo {
  @JsonKey(name: "cashier_uuid")
  int get cashierUuid => throw _privateConstructorUsedError;
  @JsonKey(name: "device_id")
  String get deviceId => throw _privateConstructorUsedError;
  @JsonKey(name: "remark")
  String get remark => throw _privateConstructorUsedError;
  @JsonKey(name: "username")
  String get username => throw _privateConstructorUsedError;

  /// Serializes this ResponseCashierInfo to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ResponseCashierInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ResponseCashierInfoCopyWith<ResponseCashierInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResponseCashierInfoCopyWith<$Res> {
  factory $ResponseCashierInfoCopyWith(
          ResponseCashierInfo value, $Res Function(ResponseCashierInfo) then) =
      _$ResponseCashierInfoCopyWithImpl<$Res, ResponseCashierInfo>;
  @useResult
  $Res call(
      {@JsonKey(name: "cashier_uuid") int cashierUuid,
      @JsonKey(name: "device_id") String deviceId,
      @JsonKey(name: "remark") String remark,
      @JsonKey(name: "username") String username});
}

/// @nodoc
class _$ResponseCashierInfoCopyWithImpl<$Res, $Val extends ResponseCashierInfo>
    implements $ResponseCashierInfoCopyWith<$Res> {
  _$ResponseCashierInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ResponseCashierInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cashierUuid = null,
    Object? deviceId = null,
    Object? remark = null,
    Object? username = null,
  }) {
    return _then(_value.copyWith(
      cashierUuid: null == cashierUuid
          ? _value.cashierUuid
          : cashierUuid // ignore: cast_nullable_to_non_nullable
              as int,
      deviceId: null == deviceId
          ? _value.deviceId
          : deviceId // ignore: cast_nullable_to_non_nullable
              as String,
      remark: null == remark
          ? _value.remark
          : remark // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ResponseCashierInfoImplCopyWith<$Res>
    implements $ResponseCashierInfoCopyWith<$Res> {
  factory _$$ResponseCashierInfoImplCopyWith(_$ResponseCashierInfoImpl value,
          $Res Function(_$ResponseCashierInfoImpl) then) =
      __$$ResponseCashierInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "cashier_uuid") int cashierUuid,
      @JsonKey(name: "device_id") String deviceId,
      @JsonKey(name: "remark") String remark,
      @JsonKey(name: "username") String username});
}

/// @nodoc
class __$$ResponseCashierInfoImplCopyWithImpl<$Res>
    extends _$ResponseCashierInfoCopyWithImpl<$Res, _$ResponseCashierInfoImpl>
    implements _$$ResponseCashierInfoImplCopyWith<$Res> {
  __$$ResponseCashierInfoImplCopyWithImpl(_$ResponseCashierInfoImpl _value,
      $Res Function(_$ResponseCashierInfoImpl) _then)
      : super(_value, _then);

  /// Create a copy of ResponseCashierInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cashierUuid = null,
    Object? deviceId = null,
    Object? remark = null,
    Object? username = null,
  }) {
    return _then(_$ResponseCashierInfoImpl(
      cashierUuid: null == cashierUuid
          ? _value.cashierUuid
          : cashierUuid // ignore: cast_nullable_to_non_nullable
              as int,
      deviceId: null == deviceId
          ? _value.deviceId
          : deviceId // ignore: cast_nullable_to_non_nullable
              as String,
      remark: null == remark
          ? _value.remark
          : remark // ignore: cast_nullable_to_non_nullable
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
class _$ResponseCashierInfoImpl implements _ResponseCashierInfo {
  const _$ResponseCashierInfoImpl(
      {@JsonKey(name: "cashier_uuid") required this.cashierUuid,
      @JsonKey(name: "device_id") required this.deviceId,
      @JsonKey(name: "remark") required this.remark,
      @JsonKey(name: "username") required this.username});

  factory _$ResponseCashierInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResponseCashierInfoImplFromJson(json);

  @override
  @JsonKey(name: "cashier_uuid")
  final int cashierUuid;
  @override
  @JsonKey(name: "device_id")
  final String deviceId;
  @override
  @JsonKey(name: "remark")
  final String remark;
  @override
  @JsonKey(name: "username")
  final String username;

  @override
  String toString() {
    return 'ResponseCashierInfo(cashierUuid: $cashierUuid, deviceId: $deviceId, remark: $remark, username: $username)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResponseCashierInfoImpl &&
            (identical(other.cashierUuid, cashierUuid) ||
                other.cashierUuid == cashierUuid) &&
            (identical(other.deviceId, deviceId) ||
                other.deviceId == deviceId) &&
            (identical(other.remark, remark) || other.remark == remark) &&
            (identical(other.username, username) ||
                other.username == username));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, cashierUuid, deviceId, remark, username);

  /// Create a copy of ResponseCashierInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ResponseCashierInfoImplCopyWith<_$ResponseCashierInfoImpl> get copyWith =>
      __$$ResponseCashierInfoImplCopyWithImpl<_$ResponseCashierInfoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResponseCashierInfoImplToJson(
      this,
    );
  }
}

abstract class _ResponseCashierInfo implements ResponseCashierInfo {
  const factory _ResponseCashierInfo(
          {@JsonKey(name: "cashier_uuid") required final int cashierUuid,
          @JsonKey(name: "device_id") required final String deviceId,
          @JsonKey(name: "remark") required final String remark,
          @JsonKey(name: "username") required final String username}) =
      _$ResponseCashierInfoImpl;

  factory _ResponseCashierInfo.fromJson(Map<String, dynamic> json) =
      _$ResponseCashierInfoImpl.fromJson;

  @override
  @JsonKey(name: "cashier_uuid")
  int get cashierUuid;
  @override
  @JsonKey(name: "device_id")
  String get deviceId;
  @override
  @JsonKey(name: "remark")
  String get remark;
  @override
  @JsonKey(name: "username")
  String get username;

  /// Create a copy of ResponseCashierInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ResponseCashierInfoImplCopyWith<_$ResponseCashierInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

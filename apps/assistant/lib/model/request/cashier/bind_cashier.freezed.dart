// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bind_cashier.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RequestBindCashier _$RequestBindCashierFromJson(Map<String, dynamic> json) {
  return _RequestBindCashier.fromJson(json);
}

/// @nodoc
mixin _$RequestBindCashier {
  @JsonKey(name: "cashier_uuid")
  int get cashierUuid => throw _privateConstructorUsedError;
  @JsonKey(name: "device_id")
  String get deviceId => throw _privateConstructorUsedError;

  /// Serializes this RequestBindCashier to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RequestBindCashier
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RequestBindCashierCopyWith<RequestBindCashier> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RequestBindCashierCopyWith<$Res> {
  factory $RequestBindCashierCopyWith(
          RequestBindCashier value, $Res Function(RequestBindCashier) then) =
      _$RequestBindCashierCopyWithImpl<$Res, RequestBindCashier>;
  @useResult
  $Res call(
      {@JsonKey(name: "cashier_uuid") int cashierUuid,
      @JsonKey(name: "device_id") String deviceId});
}

/// @nodoc
class _$RequestBindCashierCopyWithImpl<$Res, $Val extends RequestBindCashier>
    implements $RequestBindCashierCopyWith<$Res> {
  _$RequestBindCashierCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RequestBindCashier
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cashierUuid = null,
    Object? deviceId = null,
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RequestBindCashierImplCopyWith<$Res>
    implements $RequestBindCashierCopyWith<$Res> {
  factory _$$RequestBindCashierImplCopyWith(_$RequestBindCashierImpl value,
          $Res Function(_$RequestBindCashierImpl) then) =
      __$$RequestBindCashierImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "cashier_uuid") int cashierUuid,
      @JsonKey(name: "device_id") String deviceId});
}

/// @nodoc
class __$$RequestBindCashierImplCopyWithImpl<$Res>
    extends _$RequestBindCashierCopyWithImpl<$Res, _$RequestBindCashierImpl>
    implements _$$RequestBindCashierImplCopyWith<$Res> {
  __$$RequestBindCashierImplCopyWithImpl(_$RequestBindCashierImpl _value,
      $Res Function(_$RequestBindCashierImpl) _then)
      : super(_value, _then);

  /// Create a copy of RequestBindCashier
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cashierUuid = null,
    Object? deviceId = null,
  }) {
    return _then(_$RequestBindCashierImpl(
      cashierUuid: null == cashierUuid
          ? _value.cashierUuid
          : cashierUuid // ignore: cast_nullable_to_non_nullable
              as int,
      deviceId: null == deviceId
          ? _value.deviceId
          : deviceId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RequestBindCashierImpl implements _RequestBindCashier {
  const _$RequestBindCashierImpl(
      {@JsonKey(name: "cashier_uuid") required this.cashierUuid,
      @JsonKey(name: "device_id") required this.deviceId});

  factory _$RequestBindCashierImpl.fromJson(Map<String, dynamic> json) =>
      _$$RequestBindCashierImplFromJson(json);

  @override
  @JsonKey(name: "cashier_uuid")
  final int cashierUuid;
  @override
  @JsonKey(name: "device_id")
  final String deviceId;

  @override
  String toString() {
    return 'RequestBindCashier(cashierUuid: $cashierUuid, deviceId: $deviceId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RequestBindCashierImpl &&
            (identical(other.cashierUuid, cashierUuid) ||
                other.cashierUuid == cashierUuid) &&
            (identical(other.deviceId, deviceId) ||
                other.deviceId == deviceId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, cashierUuid, deviceId);

  /// Create a copy of RequestBindCashier
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RequestBindCashierImplCopyWith<_$RequestBindCashierImpl> get copyWith =>
      __$$RequestBindCashierImplCopyWithImpl<_$RequestBindCashierImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RequestBindCashierImplToJson(
      this,
    );
  }
}

abstract class _RequestBindCashier implements RequestBindCashier {
  const factory _RequestBindCashier(
          {@JsonKey(name: "cashier_uuid") required final int cashierUuid,
          @JsonKey(name: "device_id") required final String deviceId}) =
      _$RequestBindCashierImpl;

  factory _RequestBindCashier.fromJson(Map<String, dynamic> json) =
      _$RequestBindCashierImpl.fromJson;

  @override
  @JsonKey(name: "cashier_uuid")
  int get cashierUuid;
  @override
  @JsonKey(name: "device_id")
  String get deviceId;

  /// Create a copy of RequestBindCashier
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RequestBindCashierImplCopyWith<_$RequestBindCashierImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cashier_staff.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CashierStaff _$CashierStaffFromJson(Map<String, dynamic> json) {
  return _CashierStaff.fromJson(json);
}

/// @nodoc
mixin _$CashierStaff {
  @JsonKey(name: "device_id")
  String get deviceId => throw _privateConstructorUsedError;
  @JsonKey(name: "device_remark")
  String get deviceRemark => throw _privateConstructorUsedError;
  @JsonKey(name: "real_name")
  String get realName => throw _privateConstructorUsedError;
  @JsonKey(name: "username")
  String get username => throw _privateConstructorUsedError;

  /// Serializes this CashierStaff to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CashierStaff
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CashierStaffCopyWith<CashierStaff> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CashierStaffCopyWith<$Res> {
  factory $CashierStaffCopyWith(
          CashierStaff value, $Res Function(CashierStaff) then) =
      _$CashierStaffCopyWithImpl<$Res, CashierStaff>;
  @useResult
  $Res call(
      {@JsonKey(name: "device_id") String deviceId,
      @JsonKey(name: "device_remark") String deviceRemark,
      @JsonKey(name: "real_name") String realName,
      @JsonKey(name: "username") String username});
}

/// @nodoc
class _$CashierStaffCopyWithImpl<$Res, $Val extends CashierStaff>
    implements $CashierStaffCopyWith<$Res> {
  _$CashierStaffCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CashierStaff
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? deviceId = null,
    Object? deviceRemark = null,
    Object? realName = null,
    Object? username = null,
  }) {
    return _then(_value.copyWith(
      deviceId: null == deviceId
          ? _value.deviceId
          : deviceId // ignore: cast_nullable_to_non_nullable
              as String,
      deviceRemark: null == deviceRemark
          ? _value.deviceRemark
          : deviceRemark // ignore: cast_nullable_to_non_nullable
              as String,
      realName: null == realName
          ? _value.realName
          : realName // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CashierStaffImplCopyWith<$Res>
    implements $CashierStaffCopyWith<$Res> {
  factory _$$CashierStaffImplCopyWith(
          _$CashierStaffImpl value, $Res Function(_$CashierStaffImpl) then) =
      __$$CashierStaffImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "device_id") String deviceId,
      @JsonKey(name: "device_remark") String deviceRemark,
      @JsonKey(name: "real_name") String realName,
      @JsonKey(name: "username") String username});
}

/// @nodoc
class __$$CashierStaffImplCopyWithImpl<$Res>
    extends _$CashierStaffCopyWithImpl<$Res, _$CashierStaffImpl>
    implements _$$CashierStaffImplCopyWith<$Res> {
  __$$CashierStaffImplCopyWithImpl(
      _$CashierStaffImpl _value, $Res Function(_$CashierStaffImpl) _then)
      : super(_value, _then);

  /// Create a copy of CashierStaff
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? deviceId = null,
    Object? deviceRemark = null,
    Object? realName = null,
    Object? username = null,
  }) {
    return _then(_$CashierStaffImpl(
      deviceId: null == deviceId
          ? _value.deviceId
          : deviceId // ignore: cast_nullable_to_non_nullable
              as String,
      deviceRemark: null == deviceRemark
          ? _value.deviceRemark
          : deviceRemark // ignore: cast_nullable_to_non_nullable
              as String,
      realName: null == realName
          ? _value.realName
          : realName // ignore: cast_nullable_to_non_nullable
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
class _$CashierStaffImpl implements _CashierStaff {
  const _$CashierStaffImpl(
      {@JsonKey(name: "device_id") required this.deviceId,
      @JsonKey(name: "device_remark") required this.deviceRemark,
      @JsonKey(name: "real_name") required this.realName,
      @JsonKey(name: "username") required this.username});

  factory _$CashierStaffImpl.fromJson(Map<String, dynamic> json) =>
      _$$CashierStaffImplFromJson(json);

  @override
  @JsonKey(name: "device_id")
  final String deviceId;
  @override
  @JsonKey(name: "device_remark")
  final String deviceRemark;
  @override
  @JsonKey(name: "real_name")
  final String realName;
  @override
  @JsonKey(name: "username")
  final String username;

  @override
  String toString() {
    return 'CashierStaff(deviceId: $deviceId, deviceRemark: $deviceRemark, realName: $realName, username: $username)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CashierStaffImpl &&
            (identical(other.deviceId, deviceId) ||
                other.deviceId == deviceId) &&
            (identical(other.deviceRemark, deviceRemark) ||
                other.deviceRemark == deviceRemark) &&
            (identical(other.realName, realName) ||
                other.realName == realName) &&
            (identical(other.username, username) ||
                other.username == username));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, deviceId, deviceRemark, realName, username);

  /// Create a copy of CashierStaff
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CashierStaffImplCopyWith<_$CashierStaffImpl> get copyWith =>
      __$$CashierStaffImplCopyWithImpl<_$CashierStaffImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CashierStaffImplToJson(
      this,
    );
  }
}

abstract class _CashierStaff implements CashierStaff {
  const factory _CashierStaff(
          {@JsonKey(name: "device_id") required final String deviceId,
          @JsonKey(name: "device_remark") required final String deviceRemark,
          @JsonKey(name: "real_name") required final String realName,
          @JsonKey(name: "username") required final String username}) =
      _$CashierStaffImpl;

  factory _CashierStaff.fromJson(Map<String, dynamic> json) =
      _$CashierStaffImpl.fromJson;

  @override
  @JsonKey(name: "device_id")
  String get deviceId;
  @override
  @JsonKey(name: "device_remark")
  String get deviceRemark;
  @override
  @JsonKey(name: "real_name")
  String get realName;
  @override
  @JsonKey(name: "username")
  String get username;

  /// Create a copy of CashierStaff
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CashierStaffImplCopyWith<_$CashierStaffImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

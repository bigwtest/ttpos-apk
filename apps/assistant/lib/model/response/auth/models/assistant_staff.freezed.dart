// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'assistant_staff.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AssistantStaff _$AssistantStaffFromJson(Map<String, dynamic> json) {
  return _AssistantStaff.fromJson(json);
}

/// @nodoc
mixin _$AssistantStaff {
  @JsonKey(name: "device_id")
  String get deviceId => throw _privateConstructorUsedError;
  @JsonKey(name: "phone")
  String get phone => throw _privateConstructorUsedError;
  @JsonKey(name: "real_name")
  String get realName => throw _privateConstructorUsedError;
  @JsonKey(name: "uuid")
  int get uuid => throw _privateConstructorUsedError;

  /// Serializes this AssistantStaff to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AssistantStaff
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AssistantStaffCopyWith<AssistantStaff> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AssistantStaffCopyWith<$Res> {
  factory $AssistantStaffCopyWith(
          AssistantStaff value, $Res Function(AssistantStaff) then) =
      _$AssistantStaffCopyWithImpl<$Res, AssistantStaff>;
  @useResult
  $Res call(
      {@JsonKey(name: "device_id") String deviceId,
      @JsonKey(name: "phone") String phone,
      @JsonKey(name: "real_name") String realName,
      @JsonKey(name: "uuid") int uuid});
}

/// @nodoc
class _$AssistantStaffCopyWithImpl<$Res, $Val extends AssistantStaff>
    implements $AssistantStaffCopyWith<$Res> {
  _$AssistantStaffCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AssistantStaff
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? deviceId = null,
    Object? phone = null,
    Object? realName = null,
    Object? uuid = null,
  }) {
    return _then(_value.copyWith(
      deviceId: null == deviceId
          ? _value.deviceId
          : deviceId // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      realName: null == realName
          ? _value.realName
          : realName // ignore: cast_nullable_to_non_nullable
              as String,
      uuid: null == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AssistantStaffImplCopyWith<$Res>
    implements $AssistantStaffCopyWith<$Res> {
  factory _$$AssistantStaffImplCopyWith(_$AssistantStaffImpl value,
          $Res Function(_$AssistantStaffImpl) then) =
      __$$AssistantStaffImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "device_id") String deviceId,
      @JsonKey(name: "phone") String phone,
      @JsonKey(name: "real_name") String realName,
      @JsonKey(name: "uuid") int uuid});
}

/// @nodoc
class __$$AssistantStaffImplCopyWithImpl<$Res>
    extends _$AssistantStaffCopyWithImpl<$Res, _$AssistantStaffImpl>
    implements _$$AssistantStaffImplCopyWith<$Res> {
  __$$AssistantStaffImplCopyWithImpl(
      _$AssistantStaffImpl _value, $Res Function(_$AssistantStaffImpl) _then)
      : super(_value, _then);

  /// Create a copy of AssistantStaff
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? deviceId = null,
    Object? phone = null,
    Object? realName = null,
    Object? uuid = null,
  }) {
    return _then(_$AssistantStaffImpl(
      deviceId: null == deviceId
          ? _value.deviceId
          : deviceId // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      realName: null == realName
          ? _value.realName
          : realName // ignore: cast_nullable_to_non_nullable
              as String,
      uuid: null == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AssistantStaffImpl implements _AssistantStaff {
  const _$AssistantStaffImpl(
      {@JsonKey(name: "device_id") required this.deviceId,
      @JsonKey(name: "phone") required this.phone,
      @JsonKey(name: "real_name") required this.realName,
      @JsonKey(name: "uuid") required this.uuid});

  factory _$AssistantStaffImpl.fromJson(Map<String, dynamic> json) =>
      _$$AssistantStaffImplFromJson(json);

  @override
  @JsonKey(name: "device_id")
  final String deviceId;
  @override
  @JsonKey(name: "phone")
  final String phone;
  @override
  @JsonKey(name: "real_name")
  final String realName;
  @override
  @JsonKey(name: "uuid")
  final int uuid;

  @override
  String toString() {
    return 'AssistantStaff(deviceId: $deviceId, phone: $phone, realName: $realName, uuid: $uuid)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AssistantStaffImpl &&
            (identical(other.deviceId, deviceId) ||
                other.deviceId == deviceId) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.realName, realName) ||
                other.realName == realName) &&
            (identical(other.uuid, uuid) || other.uuid == uuid));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, deviceId, phone, realName, uuid);

  /// Create a copy of AssistantStaff
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AssistantStaffImplCopyWith<_$AssistantStaffImpl> get copyWith =>
      __$$AssistantStaffImplCopyWithImpl<_$AssistantStaffImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AssistantStaffImplToJson(
      this,
    );
  }
}

abstract class _AssistantStaff implements AssistantStaff {
  const factory _AssistantStaff(
      {@JsonKey(name: "device_id") required final String deviceId,
      @JsonKey(name: "phone") required final String phone,
      @JsonKey(name: "real_name") required final String realName,
      @JsonKey(name: "uuid") required final int uuid}) = _$AssistantStaffImpl;

  factory _AssistantStaff.fromJson(Map<String, dynamic> json) =
      _$AssistantStaffImpl.fromJson;

  @override
  @JsonKey(name: "device_id")
  String get deviceId;
  @override
  @JsonKey(name: "phone")
  String get phone;
  @override
  @JsonKey(name: "real_name")
  String get realName;
  @override
  @JsonKey(name: "uuid")
  int get uuid;

  /// Create a copy of AssistantStaff
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AssistantStaffImplCopyWith<_$AssistantStaffImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

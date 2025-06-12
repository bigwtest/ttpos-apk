// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'report.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ReqReportPrinterData _$ReqReportPrinterDataFromJson(Map<String, dynamic> json) {
  return _ReqReportPrinterData.fromJson(json);
}

/// @nodoc
mixin _$ReqReportPrinterData {
  @JsonKey(name: 'uuid')
  int get uuid => throw _privateConstructorUsedError;
  @JsonKey(name: 'reason')
  String? get reason => throw _privateConstructorUsedError;
  @JsonKey(name: 'status')
  int get status => throw _privateConstructorUsedError;

  /// Serializes this ReqReportPrinterData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ReqReportPrinterData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ReqReportPrinterDataCopyWith<ReqReportPrinterData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReqReportPrinterDataCopyWith<$Res> {
  factory $ReqReportPrinterDataCopyWith(ReqReportPrinterData value,
          $Res Function(ReqReportPrinterData) then) =
      _$ReqReportPrinterDataCopyWithImpl<$Res, ReqReportPrinterData>;
  @useResult
  $Res call(
      {@JsonKey(name: 'uuid') int uuid,
      @JsonKey(name: 'reason') String? reason,
      @JsonKey(name: 'status') int status});
}

/// @nodoc
class _$ReqReportPrinterDataCopyWithImpl<$Res,
        $Val extends ReqReportPrinterData>
    implements $ReqReportPrinterDataCopyWith<$Res> {
  _$ReqReportPrinterDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ReqReportPrinterData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uuid = null,
    Object? reason = freezed,
    Object? status = null,
  }) {
    return _then(_value.copyWith(
      uuid: null == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as int,
      reason: freezed == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ReqReportPrinterDataImplCopyWith<$Res>
    implements $ReqReportPrinterDataCopyWith<$Res> {
  factory _$$ReqReportPrinterDataImplCopyWith(_$ReqReportPrinterDataImpl value,
          $Res Function(_$ReqReportPrinterDataImpl) then) =
      __$$ReqReportPrinterDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'uuid') int uuid,
      @JsonKey(name: 'reason') String? reason,
      @JsonKey(name: 'status') int status});
}

/// @nodoc
class __$$ReqReportPrinterDataImplCopyWithImpl<$Res>
    extends _$ReqReportPrinterDataCopyWithImpl<$Res, _$ReqReportPrinterDataImpl>
    implements _$$ReqReportPrinterDataImplCopyWith<$Res> {
  __$$ReqReportPrinterDataImplCopyWithImpl(_$ReqReportPrinterDataImpl _value,
      $Res Function(_$ReqReportPrinterDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of ReqReportPrinterData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uuid = null,
    Object? reason = freezed,
    Object? status = null,
  }) {
    return _then(_$ReqReportPrinterDataImpl(
      uuid: null == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as int,
      reason: freezed == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ReqReportPrinterDataImpl implements _ReqReportPrinterData {
  _$ReqReportPrinterDataImpl(
      {@JsonKey(name: 'uuid') required this.uuid,
      @JsonKey(name: 'reason') this.reason,
      @JsonKey(name: 'status') required this.status});

  factory _$ReqReportPrinterDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReqReportPrinterDataImplFromJson(json);

  @override
  @JsonKey(name: 'uuid')
  final int uuid;
  @override
  @JsonKey(name: 'reason')
  final String? reason;
  @override
  @JsonKey(name: 'status')
  final int status;

  @override
  String toString() {
    return 'ReqReportPrinterData(uuid: $uuid, reason: $reason, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReqReportPrinterDataImpl &&
            (identical(other.uuid, uuid) || other.uuid == uuid) &&
            (identical(other.reason, reason) || other.reason == reason) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, uuid, reason, status);

  /// Create a copy of ReqReportPrinterData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ReqReportPrinterDataImplCopyWith<_$ReqReportPrinterDataImpl>
      get copyWith =>
          __$$ReqReportPrinterDataImplCopyWithImpl<_$ReqReportPrinterDataImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReqReportPrinterDataImplToJson(
      this,
    );
  }
}

abstract class _ReqReportPrinterData implements ReqReportPrinterData {
  factory _ReqReportPrinterData(
          {@JsonKey(name: 'uuid') required final int uuid,
          @JsonKey(name: 'reason') final String? reason,
          @JsonKey(name: 'status') required final int status}) =
      _$ReqReportPrinterDataImpl;

  factory _ReqReportPrinterData.fromJson(Map<String, dynamic> json) =
      _$ReqReportPrinterDataImpl.fromJson;

  @override
  @JsonKey(name: 'uuid')
  int get uuid;
  @override
  @JsonKey(name: 'reason')
  String? get reason;
  @override
  @JsonKey(name: 'status')
  int get status;

  /// Create a copy of ReqReportPrinterData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ReqReportPrinterDataImplCopyWith<_$ReqReportPrinterDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}

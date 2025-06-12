// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_details.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ResponseOrderDetails _$ResponseOrderDetailsFromJson(Map<String, dynamic> json) {
  return _ResponseOrderDetails.fromJson(json);
}

/// @nodoc
mixin _$ResponseOrderDetails {
  @JsonKey(name: "detail")
  Detail get detail => throw _privateConstructorUsedError;
  @JsonKey(name: "extra")
  Extra get extra => throw _privateConstructorUsedError;
  @JsonKey(name: "operation_log")
  OperationLog get operationLog => throw _privateConstructorUsedError;

  /// Serializes this ResponseOrderDetails to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ResponseOrderDetails
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ResponseOrderDetailsCopyWith<ResponseOrderDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResponseOrderDetailsCopyWith<$Res> {
  factory $ResponseOrderDetailsCopyWith(ResponseOrderDetails value,
          $Res Function(ResponseOrderDetails) then) =
      _$ResponseOrderDetailsCopyWithImpl<$Res, ResponseOrderDetails>;
  @useResult
  $Res call(
      {@JsonKey(name: "detail") Detail detail,
      @JsonKey(name: "extra") Extra extra,
      @JsonKey(name: "operation_log") OperationLog operationLog});

  $DetailCopyWith<$Res> get detail;
  $ExtraCopyWith<$Res> get extra;
  $OperationLogCopyWith<$Res> get operationLog;
}

/// @nodoc
class _$ResponseOrderDetailsCopyWithImpl<$Res,
        $Val extends ResponseOrderDetails>
    implements $ResponseOrderDetailsCopyWith<$Res> {
  _$ResponseOrderDetailsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ResponseOrderDetails
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? detail = null,
    Object? extra = null,
    Object? operationLog = null,
  }) {
    return _then(_value.copyWith(
      detail: null == detail
          ? _value.detail
          : detail // ignore: cast_nullable_to_non_nullable
              as Detail,
      extra: null == extra
          ? _value.extra
          : extra // ignore: cast_nullable_to_non_nullable
              as Extra,
      operationLog: null == operationLog
          ? _value.operationLog
          : operationLog // ignore: cast_nullable_to_non_nullable
              as OperationLog,
    ) as $Val);
  }

  /// Create a copy of ResponseOrderDetails
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DetailCopyWith<$Res> get detail {
    return $DetailCopyWith<$Res>(_value.detail, (value) {
      return _then(_value.copyWith(detail: value) as $Val);
    });
  }

  /// Create a copy of ResponseOrderDetails
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ExtraCopyWith<$Res> get extra {
    return $ExtraCopyWith<$Res>(_value.extra, (value) {
      return _then(_value.copyWith(extra: value) as $Val);
    });
  }

  /// Create a copy of ResponseOrderDetails
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $OperationLogCopyWith<$Res> get operationLog {
    return $OperationLogCopyWith<$Res>(_value.operationLog, (value) {
      return _then(_value.copyWith(operationLog: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ResponseOrderDetailsImplCopyWith<$Res>
    implements $ResponseOrderDetailsCopyWith<$Res> {
  factory _$$ResponseOrderDetailsImplCopyWith(_$ResponseOrderDetailsImpl value,
          $Res Function(_$ResponseOrderDetailsImpl) then) =
      __$$ResponseOrderDetailsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "detail") Detail detail,
      @JsonKey(name: "extra") Extra extra,
      @JsonKey(name: "operation_log") OperationLog operationLog});

  @override
  $DetailCopyWith<$Res> get detail;
  @override
  $ExtraCopyWith<$Res> get extra;
  @override
  $OperationLogCopyWith<$Res> get operationLog;
}

/// @nodoc
class __$$ResponseOrderDetailsImplCopyWithImpl<$Res>
    extends _$ResponseOrderDetailsCopyWithImpl<$Res, _$ResponseOrderDetailsImpl>
    implements _$$ResponseOrderDetailsImplCopyWith<$Res> {
  __$$ResponseOrderDetailsImplCopyWithImpl(_$ResponseOrderDetailsImpl _value,
      $Res Function(_$ResponseOrderDetailsImpl) _then)
      : super(_value, _then);

  /// Create a copy of ResponseOrderDetails
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? detail = null,
    Object? extra = null,
    Object? operationLog = null,
  }) {
    return _then(_$ResponseOrderDetailsImpl(
      detail: null == detail
          ? _value.detail
          : detail // ignore: cast_nullable_to_non_nullable
              as Detail,
      extra: null == extra
          ? _value.extra
          : extra // ignore: cast_nullable_to_non_nullable
              as Extra,
      operationLog: null == operationLog
          ? _value.operationLog
          : operationLog // ignore: cast_nullable_to_non_nullable
              as OperationLog,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ResponseOrderDetailsImpl implements _ResponseOrderDetails {
  _$ResponseOrderDetailsImpl(
      {@JsonKey(name: "detail") required this.detail,
      @JsonKey(name: "extra") required this.extra,
      @JsonKey(name: "operation_log") required this.operationLog});

  factory _$ResponseOrderDetailsImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResponseOrderDetailsImplFromJson(json);

  @override
  @JsonKey(name: "detail")
  final Detail detail;
  @override
  @JsonKey(name: "extra")
  final Extra extra;
  @override
  @JsonKey(name: "operation_log")
  final OperationLog operationLog;

  @override
  String toString() {
    return 'ResponseOrderDetails(detail: $detail, extra: $extra, operationLog: $operationLog)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResponseOrderDetailsImpl &&
            (identical(other.detail, detail) || other.detail == detail) &&
            (identical(other.extra, extra) || other.extra == extra) &&
            (identical(other.operationLog, operationLog) ||
                other.operationLog == operationLog));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, detail, extra, operationLog);

  /// Create a copy of ResponseOrderDetails
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ResponseOrderDetailsImplCopyWith<_$ResponseOrderDetailsImpl>
      get copyWith =>
          __$$ResponseOrderDetailsImplCopyWithImpl<_$ResponseOrderDetailsImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResponseOrderDetailsImplToJson(
      this,
    );
  }
}

abstract class _ResponseOrderDetails implements ResponseOrderDetails {
  factory _ResponseOrderDetails(
      {@JsonKey(name: "detail") required final Detail detail,
      @JsonKey(name: "extra") required final Extra extra,
      @JsonKey(name: "operation_log")
      required final OperationLog operationLog}) = _$ResponseOrderDetailsImpl;

  factory _ResponseOrderDetails.fromJson(Map<String, dynamic> json) =
      _$ResponseOrderDetailsImpl.fromJson;

  @override
  @JsonKey(name: "detail")
  Detail get detail;
  @override
  @JsonKey(name: "extra")
  Extra get extra;
  @override
  @JsonKey(name: "operation_log")
  OperationLog get operationLog;

  /// Create a copy of ResponseOrderDetails
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ResponseOrderDetailsImplCopyWith<_$ResponseOrderDetailsImpl>
      get copyWith => throw _privateConstructorUsedError;
}

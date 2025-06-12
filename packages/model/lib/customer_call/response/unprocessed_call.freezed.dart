// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'unprocessed_call.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ResponseUnprocessedCall _$ResponseUnprocessedCallFromJson(
    Map<String, dynamic> json) {
  return _ResponseUnprocessedCall.fromJson(json);
}

/// @nodoc
mixin _$ResponseUnprocessedCall {
// 异常打印数量
  @JsonKey(name: "abnormal_print_count")
  int get abnormalPrintCount => throw _privateConstructorUsedError; // 未处理呼叫数量
  @JsonKey(name: "unprocessed_call_count")
  int get unprocessedCallCount => throw _privateConstructorUsedError;

  /// NOTE: 更新时间
  @JsonKey(name: "update_time")
  int? get updateTime => throw _privateConstructorUsedError;

  /// NOTE: 未处理 H5 订单数量
  @JsonKey(name: "unprocessed_h5_order_count")
  int? get unprocessedH5OrderCount => throw _privateConstructorUsedError;

  /// Serializes this ResponseUnprocessedCall to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ResponseUnprocessedCall
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ResponseUnprocessedCallCopyWith<ResponseUnprocessedCall> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResponseUnprocessedCallCopyWith<$Res> {
  factory $ResponseUnprocessedCallCopyWith(ResponseUnprocessedCall value,
          $Res Function(ResponseUnprocessedCall) then) =
      _$ResponseUnprocessedCallCopyWithImpl<$Res, ResponseUnprocessedCall>;
  @useResult
  $Res call(
      {@JsonKey(name: "abnormal_print_count") int abnormalPrintCount,
      @JsonKey(name: "unprocessed_call_count") int unprocessedCallCount,
      @JsonKey(name: "update_time") int? updateTime,
      @JsonKey(name: "unprocessed_h5_order_count")
      int? unprocessedH5OrderCount});
}

/// @nodoc
class _$ResponseUnprocessedCallCopyWithImpl<$Res,
        $Val extends ResponseUnprocessedCall>
    implements $ResponseUnprocessedCallCopyWith<$Res> {
  _$ResponseUnprocessedCallCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ResponseUnprocessedCall
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? abnormalPrintCount = null,
    Object? unprocessedCallCount = null,
    Object? updateTime = freezed,
    Object? unprocessedH5OrderCount = freezed,
  }) {
    return _then(_value.copyWith(
      abnormalPrintCount: null == abnormalPrintCount
          ? _value.abnormalPrintCount
          : abnormalPrintCount // ignore: cast_nullable_to_non_nullable
              as int,
      unprocessedCallCount: null == unprocessedCallCount
          ? _value.unprocessedCallCount
          : unprocessedCallCount // ignore: cast_nullable_to_non_nullable
              as int,
      updateTime: freezed == updateTime
          ? _value.updateTime
          : updateTime // ignore: cast_nullable_to_non_nullable
              as int?,
      unprocessedH5OrderCount: freezed == unprocessedH5OrderCount
          ? _value.unprocessedH5OrderCount
          : unprocessedH5OrderCount // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ResponseUnprocessedCallImplCopyWith<$Res>
    implements $ResponseUnprocessedCallCopyWith<$Res> {
  factory _$$ResponseUnprocessedCallImplCopyWith(
          _$ResponseUnprocessedCallImpl value,
          $Res Function(_$ResponseUnprocessedCallImpl) then) =
      __$$ResponseUnprocessedCallImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "abnormal_print_count") int abnormalPrintCount,
      @JsonKey(name: "unprocessed_call_count") int unprocessedCallCount,
      @JsonKey(name: "update_time") int? updateTime,
      @JsonKey(name: "unprocessed_h5_order_count")
      int? unprocessedH5OrderCount});
}

/// @nodoc
class __$$ResponseUnprocessedCallImplCopyWithImpl<$Res>
    extends _$ResponseUnprocessedCallCopyWithImpl<$Res,
        _$ResponseUnprocessedCallImpl>
    implements _$$ResponseUnprocessedCallImplCopyWith<$Res> {
  __$$ResponseUnprocessedCallImplCopyWithImpl(
      _$ResponseUnprocessedCallImpl _value,
      $Res Function(_$ResponseUnprocessedCallImpl) _then)
      : super(_value, _then);

  /// Create a copy of ResponseUnprocessedCall
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? abnormalPrintCount = null,
    Object? unprocessedCallCount = null,
    Object? updateTime = freezed,
    Object? unprocessedH5OrderCount = freezed,
  }) {
    return _then(_$ResponseUnprocessedCallImpl(
      abnormalPrintCount: null == abnormalPrintCount
          ? _value.abnormalPrintCount
          : abnormalPrintCount // ignore: cast_nullable_to_non_nullable
              as int,
      unprocessedCallCount: null == unprocessedCallCount
          ? _value.unprocessedCallCount
          : unprocessedCallCount // ignore: cast_nullable_to_non_nullable
              as int,
      updateTime: freezed == updateTime
          ? _value.updateTime
          : updateTime // ignore: cast_nullable_to_non_nullable
              as int?,
      unprocessedH5OrderCount: freezed == unprocessedH5OrderCount
          ? _value.unprocessedH5OrderCount
          : unprocessedH5OrderCount // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ResponseUnprocessedCallImpl implements _ResponseUnprocessedCall {
  const _$ResponseUnprocessedCallImpl(
      {@JsonKey(name: "abnormal_print_count") required this.abnormalPrintCount,
      @JsonKey(name: "unprocessed_call_count")
      required this.unprocessedCallCount,
      @JsonKey(name: "update_time") this.updateTime = 0,
      @JsonKey(name: "unprocessed_h5_order_count")
      this.unprocessedH5OrderCount = 0});

  factory _$ResponseUnprocessedCallImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResponseUnprocessedCallImplFromJson(json);

// 异常打印数量
  @override
  @JsonKey(name: "abnormal_print_count")
  final int abnormalPrintCount;
// 未处理呼叫数量
  @override
  @JsonKey(name: "unprocessed_call_count")
  final int unprocessedCallCount;

  /// NOTE: 更新时间
  @override
  @JsonKey(name: "update_time")
  final int? updateTime;

  /// NOTE: 未处理 H5 订单数量
  @override
  @JsonKey(name: "unprocessed_h5_order_count")
  final int? unprocessedH5OrderCount;

  @override
  String toString() {
    return 'ResponseUnprocessedCall(abnormalPrintCount: $abnormalPrintCount, unprocessedCallCount: $unprocessedCallCount, updateTime: $updateTime, unprocessedH5OrderCount: $unprocessedH5OrderCount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResponseUnprocessedCallImpl &&
            (identical(other.abnormalPrintCount, abnormalPrintCount) ||
                other.abnormalPrintCount == abnormalPrintCount) &&
            (identical(other.unprocessedCallCount, unprocessedCallCount) ||
                other.unprocessedCallCount == unprocessedCallCount) &&
            (identical(other.updateTime, updateTime) ||
                other.updateTime == updateTime) &&
            (identical(
                    other.unprocessedH5OrderCount, unprocessedH5OrderCount) ||
                other.unprocessedH5OrderCount == unprocessedH5OrderCount));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, abnormalPrintCount,
      unprocessedCallCount, updateTime, unprocessedH5OrderCount);

  /// Create a copy of ResponseUnprocessedCall
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ResponseUnprocessedCallImplCopyWith<_$ResponseUnprocessedCallImpl>
      get copyWith => __$$ResponseUnprocessedCallImplCopyWithImpl<
          _$ResponseUnprocessedCallImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResponseUnprocessedCallImplToJson(
      this,
    );
  }
}

abstract class _ResponseUnprocessedCall implements ResponseUnprocessedCall {
  const factory _ResponseUnprocessedCall(
      {@JsonKey(name: "abnormal_print_count")
      required final int abnormalPrintCount,
      @JsonKey(name: "unprocessed_call_count")
      required final int unprocessedCallCount,
      @JsonKey(name: "update_time") final int? updateTime,
      @JsonKey(name: "unprocessed_h5_order_count")
      final int? unprocessedH5OrderCount}) = _$ResponseUnprocessedCallImpl;

  factory _ResponseUnprocessedCall.fromJson(Map<String, dynamic> json) =
      _$ResponseUnprocessedCallImpl.fromJson;

// 异常打印数量
  @override
  @JsonKey(name: "abnormal_print_count")
  int get abnormalPrintCount; // 未处理呼叫数量
  @override
  @JsonKey(name: "unprocessed_call_count")
  int get unprocessedCallCount;

  /// NOTE: 更新时间
  @override
  @JsonKey(name: "update_time")
  int? get updateTime;

  /// NOTE: 未处理 H5 订单数量
  @override
  @JsonKey(name: "unprocessed_h5_order_count")
  int? get unprocessedH5OrderCount;

  /// Create a copy of ResponseUnprocessedCall
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ResponseUnprocessedCallImplCopyWith<_$ResponseUnprocessedCallImpl>
      get copyWith => throw _privateConstructorUsedError;
}

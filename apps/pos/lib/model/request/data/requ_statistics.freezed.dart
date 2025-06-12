// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'requ_statistics.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RequStatistics _$RequStatisticsFromJson(Map<String, dynamic> json) {
  return _RequStatistics.fromJson(json);
}

/// @nodoc
mixin _$RequStatistics {
  @JsonKey(name: "category_type")
  int get categoryType => throw _privateConstructorUsedError;
  @JsonKey(name: "query_end_time")
  int get queryEndTime => throw _privateConstructorUsedError;
  @JsonKey(name: "query_start_time")
  int get queryStartTime => throw _privateConstructorUsedError;
  @JsonKey(name: "time_type")
  int get timeType => throw _privateConstructorUsedError;

  /// Serializes this RequStatistics to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RequStatistics
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RequStatisticsCopyWith<RequStatistics> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RequStatisticsCopyWith<$Res> {
  factory $RequStatisticsCopyWith(
          RequStatistics value, $Res Function(RequStatistics) then) =
      _$RequStatisticsCopyWithImpl<$Res, RequStatistics>;
  @useResult
  $Res call(
      {@JsonKey(name: "category_type") int categoryType,
      @JsonKey(name: "query_end_time") int queryEndTime,
      @JsonKey(name: "query_start_time") int queryStartTime,
      @JsonKey(name: "time_type") int timeType});
}

/// @nodoc
class _$RequStatisticsCopyWithImpl<$Res, $Val extends RequStatistics>
    implements $RequStatisticsCopyWith<$Res> {
  _$RequStatisticsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RequStatistics
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categoryType = null,
    Object? queryEndTime = null,
    Object? queryStartTime = null,
    Object? timeType = null,
  }) {
    return _then(_value.copyWith(
      categoryType: null == categoryType
          ? _value.categoryType
          : categoryType // ignore: cast_nullable_to_non_nullable
              as int,
      queryEndTime: null == queryEndTime
          ? _value.queryEndTime
          : queryEndTime // ignore: cast_nullable_to_non_nullable
              as int,
      queryStartTime: null == queryStartTime
          ? _value.queryStartTime
          : queryStartTime // ignore: cast_nullable_to_non_nullable
              as int,
      timeType: null == timeType
          ? _value.timeType
          : timeType // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RequStatisticsImplCopyWith<$Res>
    implements $RequStatisticsCopyWith<$Res> {
  factory _$$RequStatisticsImplCopyWith(_$RequStatisticsImpl value,
          $Res Function(_$RequStatisticsImpl) then) =
      __$$RequStatisticsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "category_type") int categoryType,
      @JsonKey(name: "query_end_time") int queryEndTime,
      @JsonKey(name: "query_start_time") int queryStartTime,
      @JsonKey(name: "time_type") int timeType});
}

/// @nodoc
class __$$RequStatisticsImplCopyWithImpl<$Res>
    extends _$RequStatisticsCopyWithImpl<$Res, _$RequStatisticsImpl>
    implements _$$RequStatisticsImplCopyWith<$Res> {
  __$$RequStatisticsImplCopyWithImpl(
      _$RequStatisticsImpl _value, $Res Function(_$RequStatisticsImpl) _then)
      : super(_value, _then);

  /// Create a copy of RequStatistics
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categoryType = null,
    Object? queryEndTime = null,
    Object? queryStartTime = null,
    Object? timeType = null,
  }) {
    return _then(_$RequStatisticsImpl(
      categoryType: null == categoryType
          ? _value.categoryType
          : categoryType // ignore: cast_nullable_to_non_nullable
              as int,
      queryEndTime: null == queryEndTime
          ? _value.queryEndTime
          : queryEndTime // ignore: cast_nullable_to_non_nullable
              as int,
      queryStartTime: null == queryStartTime
          ? _value.queryStartTime
          : queryStartTime // ignore: cast_nullable_to_non_nullable
              as int,
      timeType: null == timeType
          ? _value.timeType
          : timeType // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RequStatisticsImpl implements _RequStatistics {
  _$RequStatisticsImpl(
      {@JsonKey(name: "category_type") required this.categoryType,
      @JsonKey(name: "query_end_time") required this.queryEndTime,
      @JsonKey(name: "query_start_time") required this.queryStartTime,
      @JsonKey(name: "time_type") required this.timeType});

  factory _$RequStatisticsImpl.fromJson(Map<String, dynamic> json) =>
      _$$RequStatisticsImplFromJson(json);

  @override
  @JsonKey(name: "category_type")
  final int categoryType;
  @override
  @JsonKey(name: "query_end_time")
  final int queryEndTime;
  @override
  @JsonKey(name: "query_start_time")
  final int queryStartTime;
  @override
  @JsonKey(name: "time_type")
  final int timeType;

  @override
  String toString() {
    return 'RequStatistics(categoryType: $categoryType, queryEndTime: $queryEndTime, queryStartTime: $queryStartTime, timeType: $timeType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RequStatisticsImpl &&
            (identical(other.categoryType, categoryType) ||
                other.categoryType == categoryType) &&
            (identical(other.queryEndTime, queryEndTime) ||
                other.queryEndTime == queryEndTime) &&
            (identical(other.queryStartTime, queryStartTime) ||
                other.queryStartTime == queryStartTime) &&
            (identical(other.timeType, timeType) ||
                other.timeType == timeType));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, categoryType, queryEndTime, queryStartTime, timeType);

  /// Create a copy of RequStatistics
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RequStatisticsImplCopyWith<_$RequStatisticsImpl> get copyWith =>
      __$$RequStatisticsImplCopyWithImpl<_$RequStatisticsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RequStatisticsImplToJson(
      this,
    );
  }
}

abstract class _RequStatistics implements RequStatistics {
  factory _RequStatistics(
          {@JsonKey(name: "category_type") required final int categoryType,
          @JsonKey(name: "query_end_time") required final int queryEndTime,
          @JsonKey(name: "query_start_time") required final int queryStartTime,
          @JsonKey(name: "time_type") required final int timeType}) =
      _$RequStatisticsImpl;

  factory _RequStatistics.fromJson(Map<String, dynamic> json) =
      _$RequStatisticsImpl.fromJson;

  @override
  @JsonKey(name: "category_type")
  int get categoryType;
  @override
  @JsonKey(name: "query_end_time")
  int get queryEndTime;
  @override
  @JsonKey(name: "query_start_time")
  int get queryStartTime;
  @override
  @JsonKey(name: "time_type")
  int get timeType;

  /// Create a copy of RequStatistics
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RequStatisticsImplCopyWith<_$RequStatisticsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

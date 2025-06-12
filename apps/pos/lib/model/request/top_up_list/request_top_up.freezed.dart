// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'request_top_up.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RequestTopUp _$RequestTopUpFromJson(Map<String, dynamic> json) {
  return _RequestTopUp.fromJson(json);
}

/// @nodoc
mixin _$RequestTopUp {
  @JsonKey(name: "date_type")
  int get dateType => throw _privateConstructorUsedError;
  @JsonKey(name: "date_type")
  set dateType(int value) => throw _privateConstructorUsedError;
  @JsonKey(name: "enable_create_time")
  bool get enableCreateTime => throw _privateConstructorUsedError;
  @JsonKey(name: "enable_create_time")
  set enableCreateTime(bool value) => throw _privateConstructorUsedError;
  @JsonKey(name: "enable_payment_time")
  bool get enablePaymentTime => throw _privateConstructorUsedError;
  @JsonKey(name: "enable_payment_time")
  set enablePaymentTime(bool value) => throw _privateConstructorUsedError;
  @JsonKey(name: "order_no")
  String get orderNo => throw _privateConstructorUsedError;
  @JsonKey(name: "order_no")
  set orderNo(String value) => throw _privateConstructorUsedError;
  @JsonKey(name: "page_no")
  int get pageNo => throw _privateConstructorUsedError;
  @JsonKey(name: "page_no")
  set pageNo(int value) => throw _privateConstructorUsedError;
  @JsonKey(name: "page_size")
  int get pageSize => throw _privateConstructorUsedError;
  @JsonKey(name: "page_size")
  set pageSize(int value) => throw _privateConstructorUsedError;
  @JsonKey(name: "query_end_time")
  int get queryEndTime => throw _privateConstructorUsedError;
  @JsonKey(name: "query_end_time")
  set queryEndTime(int value) => throw _privateConstructorUsedError;
  @JsonKey(name: "query_start_time")
  int get queryStartTime => throw _privateConstructorUsedError;
  @JsonKey(name: "query_start_time")
  set queryStartTime(int value) => throw _privateConstructorUsedError;
  @JsonKey(name: "status")
  int get status => throw _privateConstructorUsedError;
  @JsonKey(name: "status")
  set status(int value) => throw _privateConstructorUsedError;

  /// Serializes this RequestTopUp to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RequestTopUp
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RequestTopUpCopyWith<RequestTopUp> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RequestTopUpCopyWith<$Res> {
  factory $RequestTopUpCopyWith(
          RequestTopUp value, $Res Function(RequestTopUp) then) =
      _$RequestTopUpCopyWithImpl<$Res, RequestTopUp>;
  @useResult
  $Res call(
      {@JsonKey(name: "date_type") int dateType,
      @JsonKey(name: "enable_create_time") bool enableCreateTime,
      @JsonKey(name: "enable_payment_time") bool enablePaymentTime,
      @JsonKey(name: "order_no") String orderNo,
      @JsonKey(name: "page_no") int pageNo,
      @JsonKey(name: "page_size") int pageSize,
      @JsonKey(name: "query_end_time") int queryEndTime,
      @JsonKey(name: "query_start_time") int queryStartTime,
      @JsonKey(name: "status") int status});
}

/// @nodoc
class _$RequestTopUpCopyWithImpl<$Res, $Val extends RequestTopUp>
    implements $RequestTopUpCopyWith<$Res> {
  _$RequestTopUpCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RequestTopUp
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dateType = null,
    Object? enableCreateTime = null,
    Object? enablePaymentTime = null,
    Object? orderNo = null,
    Object? pageNo = null,
    Object? pageSize = null,
    Object? queryEndTime = null,
    Object? queryStartTime = null,
    Object? status = null,
  }) {
    return _then(_value.copyWith(
      dateType: null == dateType
          ? _value.dateType
          : dateType // ignore: cast_nullable_to_non_nullable
              as int,
      enableCreateTime: null == enableCreateTime
          ? _value.enableCreateTime
          : enableCreateTime // ignore: cast_nullable_to_non_nullable
              as bool,
      enablePaymentTime: null == enablePaymentTime
          ? _value.enablePaymentTime
          : enablePaymentTime // ignore: cast_nullable_to_non_nullable
              as bool,
      orderNo: null == orderNo
          ? _value.orderNo
          : orderNo // ignore: cast_nullable_to_non_nullable
              as String,
      pageNo: null == pageNo
          ? _value.pageNo
          : pageNo // ignore: cast_nullable_to_non_nullable
              as int,
      pageSize: null == pageSize
          ? _value.pageSize
          : pageSize // ignore: cast_nullable_to_non_nullable
              as int,
      queryEndTime: null == queryEndTime
          ? _value.queryEndTime
          : queryEndTime // ignore: cast_nullable_to_non_nullable
              as int,
      queryStartTime: null == queryStartTime
          ? _value.queryStartTime
          : queryStartTime // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RequestTopUpImplCopyWith<$Res>
    implements $RequestTopUpCopyWith<$Res> {
  factory _$$RequestTopUpImplCopyWith(
          _$RequestTopUpImpl value, $Res Function(_$RequestTopUpImpl) then) =
      __$$RequestTopUpImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "date_type") int dateType,
      @JsonKey(name: "enable_create_time") bool enableCreateTime,
      @JsonKey(name: "enable_payment_time") bool enablePaymentTime,
      @JsonKey(name: "order_no") String orderNo,
      @JsonKey(name: "page_no") int pageNo,
      @JsonKey(name: "page_size") int pageSize,
      @JsonKey(name: "query_end_time") int queryEndTime,
      @JsonKey(name: "query_start_time") int queryStartTime,
      @JsonKey(name: "status") int status});
}

/// @nodoc
class __$$RequestTopUpImplCopyWithImpl<$Res>
    extends _$RequestTopUpCopyWithImpl<$Res, _$RequestTopUpImpl>
    implements _$$RequestTopUpImplCopyWith<$Res> {
  __$$RequestTopUpImplCopyWithImpl(
      _$RequestTopUpImpl _value, $Res Function(_$RequestTopUpImpl) _then)
      : super(_value, _then);

  /// Create a copy of RequestTopUp
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dateType = null,
    Object? enableCreateTime = null,
    Object? enablePaymentTime = null,
    Object? orderNo = null,
    Object? pageNo = null,
    Object? pageSize = null,
    Object? queryEndTime = null,
    Object? queryStartTime = null,
    Object? status = null,
  }) {
    return _then(_$RequestTopUpImpl(
      dateType: null == dateType
          ? _value.dateType
          : dateType // ignore: cast_nullable_to_non_nullable
              as int,
      enableCreateTime: null == enableCreateTime
          ? _value.enableCreateTime
          : enableCreateTime // ignore: cast_nullable_to_non_nullable
              as bool,
      enablePaymentTime: null == enablePaymentTime
          ? _value.enablePaymentTime
          : enablePaymentTime // ignore: cast_nullable_to_non_nullable
              as bool,
      orderNo: null == orderNo
          ? _value.orderNo
          : orderNo // ignore: cast_nullable_to_non_nullable
              as String,
      pageNo: null == pageNo
          ? _value.pageNo
          : pageNo // ignore: cast_nullable_to_non_nullable
              as int,
      pageSize: null == pageSize
          ? _value.pageSize
          : pageSize // ignore: cast_nullable_to_non_nullable
              as int,
      queryEndTime: null == queryEndTime
          ? _value.queryEndTime
          : queryEndTime // ignore: cast_nullable_to_non_nullable
              as int,
      queryStartTime: null == queryStartTime
          ? _value.queryStartTime
          : queryStartTime // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RequestTopUpImpl implements _RequestTopUp {
  _$RequestTopUpImpl(
      {@JsonKey(name: "date_type") required this.dateType,
      @JsonKey(name: "enable_create_time") required this.enableCreateTime,
      @JsonKey(name: "enable_payment_time") required this.enablePaymentTime,
      @JsonKey(name: "order_no") required this.orderNo,
      @JsonKey(name: "page_no") required this.pageNo,
      @JsonKey(name: "page_size") required this.pageSize,
      @JsonKey(name: "query_end_time") required this.queryEndTime,
      @JsonKey(name: "query_start_time") required this.queryStartTime,
      @JsonKey(name: "status") required this.status});

  factory _$RequestTopUpImpl.fromJson(Map<String, dynamic> json) =>
      _$$RequestTopUpImplFromJson(json);

  @override
  @JsonKey(name: "date_type")
  int dateType;
  @override
  @JsonKey(name: "enable_create_time")
  bool enableCreateTime;
  @override
  @JsonKey(name: "enable_payment_time")
  bool enablePaymentTime;
  @override
  @JsonKey(name: "order_no")
  String orderNo;
  @override
  @JsonKey(name: "page_no")
  int pageNo;
  @override
  @JsonKey(name: "page_size")
  int pageSize;
  @override
  @JsonKey(name: "query_end_time")
  int queryEndTime;
  @override
  @JsonKey(name: "query_start_time")
  int queryStartTime;
  @override
  @JsonKey(name: "status")
  int status;

  @override
  String toString() {
    return 'RequestTopUp(dateType: $dateType, enableCreateTime: $enableCreateTime, enablePaymentTime: $enablePaymentTime, orderNo: $orderNo, pageNo: $pageNo, pageSize: $pageSize, queryEndTime: $queryEndTime, queryStartTime: $queryStartTime, status: $status)';
  }

  /// Create a copy of RequestTopUp
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RequestTopUpImplCopyWith<_$RequestTopUpImpl> get copyWith =>
      __$$RequestTopUpImplCopyWithImpl<_$RequestTopUpImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RequestTopUpImplToJson(
      this,
    );
  }
}

abstract class _RequestTopUp implements RequestTopUp {
  factory _RequestTopUp(
      {@JsonKey(name: "date_type") required int dateType,
      @JsonKey(name: "enable_create_time") required bool enableCreateTime,
      @JsonKey(name: "enable_payment_time") required bool enablePaymentTime,
      @JsonKey(name: "order_no") required String orderNo,
      @JsonKey(name: "page_no") required int pageNo,
      @JsonKey(name: "page_size") required int pageSize,
      @JsonKey(name: "query_end_time") required int queryEndTime,
      @JsonKey(name: "query_start_time") required int queryStartTime,
      @JsonKey(name: "status") required int status}) = _$RequestTopUpImpl;

  factory _RequestTopUp.fromJson(Map<String, dynamic> json) =
      _$RequestTopUpImpl.fromJson;

  @override
  @JsonKey(name: "date_type")
  int get dateType;
  @JsonKey(name: "date_type")
  set dateType(int value);
  @override
  @JsonKey(name: "enable_create_time")
  bool get enableCreateTime;
  @JsonKey(name: "enable_create_time")
  set enableCreateTime(bool value);
  @override
  @JsonKey(name: "enable_payment_time")
  bool get enablePaymentTime;
  @JsonKey(name: "enable_payment_time")
  set enablePaymentTime(bool value);
  @override
  @JsonKey(name: "order_no")
  String get orderNo;
  @JsonKey(name: "order_no")
  set orderNo(String value);
  @override
  @JsonKey(name: "page_no")
  int get pageNo;
  @JsonKey(name: "page_no")
  set pageNo(int value);
  @override
  @JsonKey(name: "page_size")
  int get pageSize;
  @JsonKey(name: "page_size")
  set pageSize(int value);
  @override
  @JsonKey(name: "query_end_time")
  int get queryEndTime;
  @JsonKey(name: "query_end_time")
  set queryEndTime(int value);
  @override
  @JsonKey(name: "query_start_time")
  int get queryStartTime;
  @JsonKey(name: "query_start_time")
  set queryStartTime(int value);
  @override
  @JsonKey(name: "status")
  int get status;
  @JsonKey(name: "status")
  set status(int value);

  /// Create a copy of RequestTopUp
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RequestTopUpImplCopyWith<_$RequestTopUpImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

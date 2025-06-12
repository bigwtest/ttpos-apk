// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cart_desk.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ResponseCartDesk _$ResponseCartDeskFromJson(Map<String, dynamic> json) {
  return _ResponseCartDesk.fromJson(json);
}

/// @nodoc
mixin _$ResponseCartDesk {
// 桌台号
  @JsonKey(name: 'desk_no')
  String get deskNo => throw _privateConstructorUsedError; // 就餐人数
  @JsonKey(name: 'meal_num')
  int get mealNum => throw _privateConstructorUsedError; // 开台时间
  @JsonKey(name: 'start_time')
  int get startTime => throw _privateConstructorUsedError; // 就餐时长
  @JsonKey(name: 'duration')
  int get duration => throw _privateConstructorUsedError; // 桌台ID
  @JsonKey(name: 'uuid')
  int get uuid => throw _privateConstructorUsedError;

  /// Serializes this ResponseCartDesk to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ResponseCartDesk
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ResponseCartDeskCopyWith<ResponseCartDesk> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResponseCartDeskCopyWith<$Res> {
  factory $ResponseCartDeskCopyWith(
          ResponseCartDesk value, $Res Function(ResponseCartDesk) then) =
      _$ResponseCartDeskCopyWithImpl<$Res, ResponseCartDesk>;
  @useResult
  $Res call(
      {@JsonKey(name: 'desk_no') String deskNo,
      @JsonKey(name: 'meal_num') int mealNum,
      @JsonKey(name: 'start_time') int startTime,
      @JsonKey(name: 'duration') int duration,
      @JsonKey(name: 'uuid') int uuid});
}

/// @nodoc
class _$ResponseCartDeskCopyWithImpl<$Res, $Val extends ResponseCartDesk>
    implements $ResponseCartDeskCopyWith<$Res> {
  _$ResponseCartDeskCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ResponseCartDesk
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? deskNo = null,
    Object? mealNum = null,
    Object? startTime = null,
    Object? duration = null,
    Object? uuid = null,
  }) {
    return _then(_value.copyWith(
      deskNo: null == deskNo
          ? _value.deskNo
          : deskNo // ignore: cast_nullable_to_non_nullable
              as String,
      mealNum: null == mealNum
          ? _value.mealNum
          : mealNum // ignore: cast_nullable_to_non_nullable
              as int,
      startTime: null == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as int,
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int,
      uuid: null == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ResponseCartDeskImplCopyWith<$Res>
    implements $ResponseCartDeskCopyWith<$Res> {
  factory _$$ResponseCartDeskImplCopyWith(_$ResponseCartDeskImpl value,
          $Res Function(_$ResponseCartDeskImpl) then) =
      __$$ResponseCartDeskImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'desk_no') String deskNo,
      @JsonKey(name: 'meal_num') int mealNum,
      @JsonKey(name: 'start_time') int startTime,
      @JsonKey(name: 'duration') int duration,
      @JsonKey(name: 'uuid') int uuid});
}

/// @nodoc
class __$$ResponseCartDeskImplCopyWithImpl<$Res>
    extends _$ResponseCartDeskCopyWithImpl<$Res, _$ResponseCartDeskImpl>
    implements _$$ResponseCartDeskImplCopyWith<$Res> {
  __$$ResponseCartDeskImplCopyWithImpl(_$ResponseCartDeskImpl _value,
      $Res Function(_$ResponseCartDeskImpl) _then)
      : super(_value, _then);

  /// Create a copy of ResponseCartDesk
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? deskNo = null,
    Object? mealNum = null,
    Object? startTime = null,
    Object? duration = null,
    Object? uuid = null,
  }) {
    return _then(_$ResponseCartDeskImpl(
      deskNo: null == deskNo
          ? _value.deskNo
          : deskNo // ignore: cast_nullable_to_non_nullable
              as String,
      mealNum: null == mealNum
          ? _value.mealNum
          : mealNum // ignore: cast_nullable_to_non_nullable
              as int,
      startTime: null == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as int,
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int,
      uuid: null == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ResponseCartDeskImpl implements _ResponseCartDesk {
  _$ResponseCartDeskImpl(
      {@JsonKey(name: 'desk_no') required this.deskNo,
      @JsonKey(name: 'meal_num') required this.mealNum,
      @JsonKey(name: 'start_time') required this.startTime,
      @JsonKey(name: 'duration') required this.duration,
      @JsonKey(name: 'uuid') required this.uuid});

  factory _$ResponseCartDeskImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResponseCartDeskImplFromJson(json);

// 桌台号
  @override
  @JsonKey(name: 'desk_no')
  final String deskNo;
// 就餐人数
  @override
  @JsonKey(name: 'meal_num')
  final int mealNum;
// 开台时间
  @override
  @JsonKey(name: 'start_time')
  final int startTime;
// 就餐时长
  @override
  @JsonKey(name: 'duration')
  final int duration;
// 桌台ID
  @override
  @JsonKey(name: 'uuid')
  final int uuid;

  @override
  String toString() {
    return 'ResponseCartDesk(deskNo: $deskNo, mealNum: $mealNum, startTime: $startTime, duration: $duration, uuid: $uuid)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResponseCartDeskImpl &&
            (identical(other.deskNo, deskNo) || other.deskNo == deskNo) &&
            (identical(other.mealNum, mealNum) || other.mealNum == mealNum) &&
            (identical(other.startTime, startTime) ||
                other.startTime == startTime) &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            (identical(other.uuid, uuid) || other.uuid == uuid));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, deskNo, mealNum, startTime, duration, uuid);

  /// Create a copy of ResponseCartDesk
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ResponseCartDeskImplCopyWith<_$ResponseCartDeskImpl> get copyWith =>
      __$$ResponseCartDeskImplCopyWithImpl<_$ResponseCartDeskImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResponseCartDeskImplToJson(
      this,
    );
  }
}

abstract class _ResponseCartDesk implements ResponseCartDesk {
  factory _ResponseCartDesk(
      {@JsonKey(name: 'desk_no') required final String deskNo,
      @JsonKey(name: 'meal_num') required final int mealNum,
      @JsonKey(name: 'start_time') required final int startTime,
      @JsonKey(name: 'duration') required final int duration,
      @JsonKey(name: 'uuid') required final int uuid}) = _$ResponseCartDeskImpl;

  factory _ResponseCartDesk.fromJson(Map<String, dynamic> json) =
      _$ResponseCartDeskImpl.fromJson;

// 桌台号
  @override
  @JsonKey(name: 'desk_no')
  String get deskNo; // 就餐人数
  @override
  @JsonKey(name: 'meal_num')
  int get mealNum; // 开台时间
  @override
  @JsonKey(name: 'start_time')
  int get startTime; // 就餐时长
  @override
  @JsonKey(name: 'duration')
  int get duration; // 桌台ID
  @override
  @JsonKey(name: 'uuid')
  int get uuid;

  /// Create a copy of ResponseCartDesk
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ResponseCartDeskImplCopyWith<_$ResponseCartDeskImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'open.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RequestDeskOpen _$RequestDeskOpenFromJson(Map<String, dynamic> json) {
  return _RequestDeskOpen.fromJson(json);
}

/// @nodoc
mixin _$RequestDeskOpen {
  @JsonKey(name: "buffet_customer_types")
  List<RequestDeskBuffetCustomerType> get buffetCustomerTypes =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "buffet_customer_types")
  set buffetCustomerTypes(List<RequestDeskBuffetCustomerType> value) =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "buffet_uuids")
  List<int> get buffetUuids => throw _privateConstructorUsedError;
  @JsonKey(name: "buffet_uuids")
  set buffetUuids(List<int> value) => throw _privateConstructorUsedError;
  @JsonKey(name: "desk_uuid")
  int get deskUuid => throw _privateConstructorUsedError;
  @JsonKey(name: "desk_uuid")
  set deskUuid(int value) => throw _privateConstructorUsedError;
  @JsonKey(name: "is_buffet")
  bool get isBuffet => throw _privateConstructorUsedError;
  @JsonKey(name: "is_buffet")
  set isBuffet(bool value) => throw _privateConstructorUsedError;
  @JsonKey(name: "meal_num")
  int get mealNum => throw _privateConstructorUsedError;
  @JsonKey(name: "meal_num")
  set mealNum(int value) => throw _privateConstructorUsedError;
  @JsonKey(name: "remark")
  String get remark => throw _privateConstructorUsedError;
  @JsonKey(name: "remark")
  set remark(String value) => throw _privateConstructorUsedError;

  /// Serializes this RequestDeskOpen to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RequestDeskOpen
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RequestDeskOpenCopyWith<RequestDeskOpen> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RequestDeskOpenCopyWith<$Res> {
  factory $RequestDeskOpenCopyWith(
          RequestDeskOpen value, $Res Function(RequestDeskOpen) then) =
      _$RequestDeskOpenCopyWithImpl<$Res, RequestDeskOpen>;
  @useResult
  $Res call(
      {@JsonKey(name: "buffet_customer_types")
      List<RequestDeskBuffetCustomerType> buffetCustomerTypes,
      @JsonKey(name: "buffet_uuids") List<int> buffetUuids,
      @JsonKey(name: "desk_uuid") int deskUuid,
      @JsonKey(name: "is_buffet") bool isBuffet,
      @JsonKey(name: "meal_num") int mealNum,
      @JsonKey(name: "remark") String remark});
}

/// @nodoc
class _$RequestDeskOpenCopyWithImpl<$Res, $Val extends RequestDeskOpen>
    implements $RequestDeskOpenCopyWith<$Res> {
  _$RequestDeskOpenCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RequestDeskOpen
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? buffetCustomerTypes = null,
    Object? buffetUuids = null,
    Object? deskUuid = null,
    Object? isBuffet = null,
    Object? mealNum = null,
    Object? remark = null,
  }) {
    return _then(_value.copyWith(
      buffetCustomerTypes: null == buffetCustomerTypes
          ? _value.buffetCustomerTypes
          : buffetCustomerTypes // ignore: cast_nullable_to_non_nullable
              as List<RequestDeskBuffetCustomerType>,
      buffetUuids: null == buffetUuids
          ? _value.buffetUuids
          : buffetUuids // ignore: cast_nullable_to_non_nullable
              as List<int>,
      deskUuid: null == deskUuid
          ? _value.deskUuid
          : deskUuid // ignore: cast_nullable_to_non_nullable
              as int,
      isBuffet: null == isBuffet
          ? _value.isBuffet
          : isBuffet // ignore: cast_nullable_to_non_nullable
              as bool,
      mealNum: null == mealNum
          ? _value.mealNum
          : mealNum // ignore: cast_nullable_to_non_nullable
              as int,
      remark: null == remark
          ? _value.remark
          : remark // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RequestDeskOpenImplCopyWith<$Res>
    implements $RequestDeskOpenCopyWith<$Res> {
  factory _$$RequestDeskOpenImplCopyWith(_$RequestDeskOpenImpl value,
          $Res Function(_$RequestDeskOpenImpl) then) =
      __$$RequestDeskOpenImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "buffet_customer_types")
      List<RequestDeskBuffetCustomerType> buffetCustomerTypes,
      @JsonKey(name: "buffet_uuids") List<int> buffetUuids,
      @JsonKey(name: "desk_uuid") int deskUuid,
      @JsonKey(name: "is_buffet") bool isBuffet,
      @JsonKey(name: "meal_num") int mealNum,
      @JsonKey(name: "remark") String remark});
}

/// @nodoc
class __$$RequestDeskOpenImplCopyWithImpl<$Res>
    extends _$RequestDeskOpenCopyWithImpl<$Res, _$RequestDeskOpenImpl>
    implements _$$RequestDeskOpenImplCopyWith<$Res> {
  __$$RequestDeskOpenImplCopyWithImpl(
      _$RequestDeskOpenImpl _value, $Res Function(_$RequestDeskOpenImpl) _then)
      : super(_value, _then);

  /// Create a copy of RequestDeskOpen
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? buffetCustomerTypes = null,
    Object? buffetUuids = null,
    Object? deskUuid = null,
    Object? isBuffet = null,
    Object? mealNum = null,
    Object? remark = null,
  }) {
    return _then(_$RequestDeskOpenImpl(
      buffetCustomerTypes: null == buffetCustomerTypes
          ? _value.buffetCustomerTypes
          : buffetCustomerTypes // ignore: cast_nullable_to_non_nullable
              as List<RequestDeskBuffetCustomerType>,
      buffetUuids: null == buffetUuids
          ? _value.buffetUuids
          : buffetUuids // ignore: cast_nullable_to_non_nullable
              as List<int>,
      deskUuid: null == deskUuid
          ? _value.deskUuid
          : deskUuid // ignore: cast_nullable_to_non_nullable
              as int,
      isBuffet: null == isBuffet
          ? _value.isBuffet
          : isBuffet // ignore: cast_nullable_to_non_nullable
              as bool,
      mealNum: null == mealNum
          ? _value.mealNum
          : mealNum // ignore: cast_nullable_to_non_nullable
              as int,
      remark: null == remark
          ? _value.remark
          : remark // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RequestDeskOpenImpl implements _RequestDeskOpen {
  _$RequestDeskOpenImpl(
      {@JsonKey(name: "buffet_customer_types")
      required this.buffetCustomerTypes,
      @JsonKey(name: "buffet_uuids") required this.buffetUuids,
      @JsonKey(name: "desk_uuid") required this.deskUuid,
      @JsonKey(name: "is_buffet") required this.isBuffet,
      @JsonKey(name: "meal_num") required this.mealNum,
      @JsonKey(name: "remark") required this.remark});

  factory _$RequestDeskOpenImpl.fromJson(Map<String, dynamic> json) =>
      _$$RequestDeskOpenImplFromJson(json);

  @override
  @JsonKey(name: "buffet_customer_types")
  List<RequestDeskBuffetCustomerType> buffetCustomerTypes;
  @override
  @JsonKey(name: "buffet_uuids")
  List<int> buffetUuids;
  @override
  @JsonKey(name: "desk_uuid")
  int deskUuid;
  @override
  @JsonKey(name: "is_buffet")
  bool isBuffet;
  @override
  @JsonKey(name: "meal_num")
  int mealNum;
  @override
  @JsonKey(name: "remark")
  String remark;

  @override
  String toString() {
    return 'RequestDeskOpen(buffetCustomerTypes: $buffetCustomerTypes, buffetUuids: $buffetUuids, deskUuid: $deskUuid, isBuffet: $isBuffet, mealNum: $mealNum, remark: $remark)';
  }

  /// Create a copy of RequestDeskOpen
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RequestDeskOpenImplCopyWith<_$RequestDeskOpenImpl> get copyWith =>
      __$$RequestDeskOpenImplCopyWithImpl<_$RequestDeskOpenImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RequestDeskOpenImplToJson(
      this,
    );
  }
}

abstract class _RequestDeskOpen implements RequestDeskOpen {
  factory _RequestDeskOpen(
      {@JsonKey(name: "buffet_customer_types")
      required List<RequestDeskBuffetCustomerType> buffetCustomerTypes,
      @JsonKey(name: "buffet_uuids") required List<int> buffetUuids,
      @JsonKey(name: "desk_uuid") required int deskUuid,
      @JsonKey(name: "is_buffet") required bool isBuffet,
      @JsonKey(name: "meal_num") required int mealNum,
      @JsonKey(name: "remark") required String remark}) = _$RequestDeskOpenImpl;

  factory _RequestDeskOpen.fromJson(Map<String, dynamic> json) =
      _$RequestDeskOpenImpl.fromJson;

  @override
  @JsonKey(name: "buffet_customer_types")
  List<RequestDeskBuffetCustomerType> get buffetCustomerTypes;
  @JsonKey(name: "buffet_customer_types")
  set buffetCustomerTypes(List<RequestDeskBuffetCustomerType> value);
  @override
  @JsonKey(name: "buffet_uuids")
  List<int> get buffetUuids;
  @JsonKey(name: "buffet_uuids")
  set buffetUuids(List<int> value);
  @override
  @JsonKey(name: "desk_uuid")
  int get deskUuid;
  @JsonKey(name: "desk_uuid")
  set deskUuid(int value);
  @override
  @JsonKey(name: "is_buffet")
  bool get isBuffet;
  @JsonKey(name: "is_buffet")
  set isBuffet(bool value);
  @override
  @JsonKey(name: "meal_num")
  int get mealNum;
  @JsonKey(name: "meal_num")
  set mealNum(int value);
  @override
  @JsonKey(name: "remark")
  String get remark;
  @JsonKey(name: "remark")
  set remark(String value);

  /// Create a copy of RequestDeskOpen
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RequestDeskOpenImplCopyWith<_$RequestDeskOpenImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

RequestDeskBuffetCustomerType _$RequestDeskBuffetCustomerTypeFromJson(
    Map<String, dynamic> json) {
  return _RequestDeskBuffetCustomerType.fromJson(json);
}

/// @nodoc
mixin _$RequestDeskBuffetCustomerType {
  @JsonKey(name: "meal_num")
  int get mealNum => throw _privateConstructorUsedError;
  @JsonKey(name: "meal_num")
  set mealNum(int value) => throw _privateConstructorUsedError;
  @JsonKey(name: "uuid")
  int get uuid => throw _privateConstructorUsedError;
  @JsonKey(name: "uuid")
  set uuid(int value) => throw _privateConstructorUsedError;

  /// Serializes this RequestDeskBuffetCustomerType to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RequestDeskBuffetCustomerType
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RequestDeskBuffetCustomerTypeCopyWith<RequestDeskBuffetCustomerType>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RequestDeskBuffetCustomerTypeCopyWith<$Res> {
  factory $RequestDeskBuffetCustomerTypeCopyWith(
          RequestDeskBuffetCustomerType value,
          $Res Function(RequestDeskBuffetCustomerType) then) =
      _$RequestDeskBuffetCustomerTypeCopyWithImpl<$Res,
          RequestDeskBuffetCustomerType>;
  @useResult
  $Res call(
      {@JsonKey(name: "meal_num") int mealNum,
      @JsonKey(name: "uuid") int uuid});
}

/// @nodoc
class _$RequestDeskBuffetCustomerTypeCopyWithImpl<$Res,
        $Val extends RequestDeskBuffetCustomerType>
    implements $RequestDeskBuffetCustomerTypeCopyWith<$Res> {
  _$RequestDeskBuffetCustomerTypeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RequestDeskBuffetCustomerType
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mealNum = null,
    Object? uuid = null,
  }) {
    return _then(_value.copyWith(
      mealNum: null == mealNum
          ? _value.mealNum
          : mealNum // ignore: cast_nullable_to_non_nullable
              as int,
      uuid: null == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RequestDeskBuffetCustomerTypeImplCopyWith<$Res>
    implements $RequestDeskBuffetCustomerTypeCopyWith<$Res> {
  factory _$$RequestDeskBuffetCustomerTypeImplCopyWith(
          _$RequestDeskBuffetCustomerTypeImpl value,
          $Res Function(_$RequestDeskBuffetCustomerTypeImpl) then) =
      __$$RequestDeskBuffetCustomerTypeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "meal_num") int mealNum,
      @JsonKey(name: "uuid") int uuid});
}

/// @nodoc
class __$$RequestDeskBuffetCustomerTypeImplCopyWithImpl<$Res>
    extends _$RequestDeskBuffetCustomerTypeCopyWithImpl<$Res,
        _$RequestDeskBuffetCustomerTypeImpl>
    implements _$$RequestDeskBuffetCustomerTypeImplCopyWith<$Res> {
  __$$RequestDeskBuffetCustomerTypeImplCopyWithImpl(
      _$RequestDeskBuffetCustomerTypeImpl _value,
      $Res Function(_$RequestDeskBuffetCustomerTypeImpl) _then)
      : super(_value, _then);

  /// Create a copy of RequestDeskBuffetCustomerType
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mealNum = null,
    Object? uuid = null,
  }) {
    return _then(_$RequestDeskBuffetCustomerTypeImpl(
      mealNum: null == mealNum
          ? _value.mealNum
          : mealNum // ignore: cast_nullable_to_non_nullable
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
class _$RequestDeskBuffetCustomerTypeImpl
    implements _RequestDeskBuffetCustomerType {
  _$RequestDeskBuffetCustomerTypeImpl(
      {@JsonKey(name: "meal_num") required this.mealNum,
      @JsonKey(name: "uuid") required this.uuid});

  factory _$RequestDeskBuffetCustomerTypeImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$RequestDeskBuffetCustomerTypeImplFromJson(json);

  @override
  @JsonKey(name: "meal_num")
  int mealNum;
  @override
  @JsonKey(name: "uuid")
  int uuid;

  @override
  String toString() {
    return 'RequestDeskBuffetCustomerType(mealNum: $mealNum, uuid: $uuid)';
  }

  /// Create a copy of RequestDeskBuffetCustomerType
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RequestDeskBuffetCustomerTypeImplCopyWith<
          _$RequestDeskBuffetCustomerTypeImpl>
      get copyWith => __$$RequestDeskBuffetCustomerTypeImplCopyWithImpl<
          _$RequestDeskBuffetCustomerTypeImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RequestDeskBuffetCustomerTypeImplToJson(
      this,
    );
  }
}

abstract class _RequestDeskBuffetCustomerType
    implements RequestDeskBuffetCustomerType {
  factory _RequestDeskBuffetCustomerType(
          {@JsonKey(name: "meal_num") required int mealNum,
          @JsonKey(name: "uuid") required int uuid}) =
      _$RequestDeskBuffetCustomerTypeImpl;

  factory _RequestDeskBuffetCustomerType.fromJson(Map<String, dynamic> json) =
      _$RequestDeskBuffetCustomerTypeImpl.fromJson;

  @override
  @JsonKey(name: "meal_num")
  int get mealNum;
  @JsonKey(name: "meal_num")
  set mealNum(int value);
  @override
  @JsonKey(name: "uuid")
  int get uuid;
  @JsonKey(name: "uuid")
  set uuid(int value);

  /// Create a copy of RequestDeskBuffetCustomerType
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RequestDeskBuffetCustomerTypeImplCopyWith<
          _$RequestDeskBuffetCustomerTypeImpl>
      get copyWith => throw _privateConstructorUsedError;
}

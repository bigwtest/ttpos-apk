// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'unprocessed_call_list.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ResponseUnprocessedCallList _$ResponseUnprocessedCallListFromJson(
    Map<String, dynamic> json) {
  return _ResponseUnprocessedCallList.fromJson(json);
}

/// @nodoc
mixin _$ResponseUnprocessedCallList {
// 呼叫类型:呼叫类型(1服务员,2结账)
  @JsonKey(name: "call_type")
  int get callType => throw _privateConstructorUsedError; // 桌台编号
  @JsonKey(name: "desk_no")
  String get deskNo => throw _privateConstructorUsedError; // 桌台Uuid
  @JsonKey(name: "desk_uuid")
  int get deskUuid => throw _privateConstructorUsedError; // 是否已发送：1-是；0-否
  @JsonKey(name: "is_send")
  int get isSend => throw _privateConstructorUsedError; // 呼叫Uuid
  @JsonKey(name: "uuid")
  int get uuid => throw _privateConstructorUsedError;

  /// Serializes this ResponseUnprocessedCallList to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ResponseUnprocessedCallList
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ResponseUnprocessedCallListCopyWith<ResponseUnprocessedCallList>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResponseUnprocessedCallListCopyWith<$Res> {
  factory $ResponseUnprocessedCallListCopyWith(
          ResponseUnprocessedCallList value,
          $Res Function(ResponseUnprocessedCallList) then) =
      _$ResponseUnprocessedCallListCopyWithImpl<$Res,
          ResponseUnprocessedCallList>;
  @useResult
  $Res call(
      {@JsonKey(name: "call_type") int callType,
      @JsonKey(name: "desk_no") String deskNo,
      @JsonKey(name: "desk_uuid") int deskUuid,
      @JsonKey(name: "is_send") int isSend,
      @JsonKey(name: "uuid") int uuid});
}

/// @nodoc
class _$ResponseUnprocessedCallListCopyWithImpl<$Res,
        $Val extends ResponseUnprocessedCallList>
    implements $ResponseUnprocessedCallListCopyWith<$Res> {
  _$ResponseUnprocessedCallListCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ResponseUnprocessedCallList
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? callType = null,
    Object? deskNo = null,
    Object? deskUuid = null,
    Object? isSend = null,
    Object? uuid = null,
  }) {
    return _then(_value.copyWith(
      callType: null == callType
          ? _value.callType
          : callType // ignore: cast_nullable_to_non_nullable
              as int,
      deskNo: null == deskNo
          ? _value.deskNo
          : deskNo // ignore: cast_nullable_to_non_nullable
              as String,
      deskUuid: null == deskUuid
          ? _value.deskUuid
          : deskUuid // ignore: cast_nullable_to_non_nullable
              as int,
      isSend: null == isSend
          ? _value.isSend
          : isSend // ignore: cast_nullable_to_non_nullable
              as int,
      uuid: null == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ResponseUnprocessedCallListImplCopyWith<$Res>
    implements $ResponseUnprocessedCallListCopyWith<$Res> {
  factory _$$ResponseUnprocessedCallListImplCopyWith(
          _$ResponseUnprocessedCallListImpl value,
          $Res Function(_$ResponseUnprocessedCallListImpl) then) =
      __$$ResponseUnprocessedCallListImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "call_type") int callType,
      @JsonKey(name: "desk_no") String deskNo,
      @JsonKey(name: "desk_uuid") int deskUuid,
      @JsonKey(name: "is_send") int isSend,
      @JsonKey(name: "uuid") int uuid});
}

/// @nodoc
class __$$ResponseUnprocessedCallListImplCopyWithImpl<$Res>
    extends _$ResponseUnprocessedCallListCopyWithImpl<$Res,
        _$ResponseUnprocessedCallListImpl>
    implements _$$ResponseUnprocessedCallListImplCopyWith<$Res> {
  __$$ResponseUnprocessedCallListImplCopyWithImpl(
      _$ResponseUnprocessedCallListImpl _value,
      $Res Function(_$ResponseUnprocessedCallListImpl) _then)
      : super(_value, _then);

  /// Create a copy of ResponseUnprocessedCallList
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? callType = null,
    Object? deskNo = null,
    Object? deskUuid = null,
    Object? isSend = null,
    Object? uuid = null,
  }) {
    return _then(_$ResponseUnprocessedCallListImpl(
      callType: null == callType
          ? _value.callType
          : callType // ignore: cast_nullable_to_non_nullable
              as int,
      deskNo: null == deskNo
          ? _value.deskNo
          : deskNo // ignore: cast_nullable_to_non_nullable
              as String,
      deskUuid: null == deskUuid
          ? _value.deskUuid
          : deskUuid // ignore: cast_nullable_to_non_nullable
              as int,
      isSend: null == isSend
          ? _value.isSend
          : isSend // ignore: cast_nullable_to_non_nullable
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
class _$ResponseUnprocessedCallListImpl
    implements _ResponseUnprocessedCallList {
  const _$ResponseUnprocessedCallListImpl(
      {@JsonKey(name: "call_type") required this.callType,
      @JsonKey(name: "desk_no") required this.deskNo,
      @JsonKey(name: "desk_uuid") required this.deskUuid,
      @JsonKey(name: "is_send") required this.isSend,
      @JsonKey(name: "uuid") required this.uuid});

  factory _$ResponseUnprocessedCallListImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ResponseUnprocessedCallListImplFromJson(json);

// 呼叫类型:呼叫类型(1服务员,2结账)
  @override
  @JsonKey(name: "call_type")
  final int callType;
// 桌台编号
  @override
  @JsonKey(name: "desk_no")
  final String deskNo;
// 桌台Uuid
  @override
  @JsonKey(name: "desk_uuid")
  final int deskUuid;
// 是否已发送：1-是；0-否
  @override
  @JsonKey(name: "is_send")
  final int isSend;
// 呼叫Uuid
  @override
  @JsonKey(name: "uuid")
  final int uuid;

  @override
  String toString() {
    return 'ResponseUnprocessedCallList(callType: $callType, deskNo: $deskNo, deskUuid: $deskUuid, isSend: $isSend, uuid: $uuid)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResponseUnprocessedCallListImpl &&
            (identical(other.callType, callType) ||
                other.callType == callType) &&
            (identical(other.deskNo, deskNo) || other.deskNo == deskNo) &&
            (identical(other.deskUuid, deskUuid) ||
                other.deskUuid == deskUuid) &&
            (identical(other.isSend, isSend) || other.isSend == isSend) &&
            (identical(other.uuid, uuid) || other.uuid == uuid));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, callType, deskNo, deskUuid, isSend, uuid);

  /// Create a copy of ResponseUnprocessedCallList
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ResponseUnprocessedCallListImplCopyWith<_$ResponseUnprocessedCallListImpl>
      get copyWith => __$$ResponseUnprocessedCallListImplCopyWithImpl<
          _$ResponseUnprocessedCallListImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResponseUnprocessedCallListImplToJson(
      this,
    );
  }
}

abstract class _ResponseUnprocessedCallList
    implements ResponseUnprocessedCallList {
  const factory _ResponseUnprocessedCallList(
          {@JsonKey(name: "call_type") required final int callType,
          @JsonKey(name: "desk_no") required final String deskNo,
          @JsonKey(name: "desk_uuid") required final int deskUuid,
          @JsonKey(name: "is_send") required final int isSend,
          @JsonKey(name: "uuid") required final int uuid}) =
      _$ResponseUnprocessedCallListImpl;

  factory _ResponseUnprocessedCallList.fromJson(Map<String, dynamic> json) =
      _$ResponseUnprocessedCallListImpl.fromJson;

// 呼叫类型:呼叫类型(1服务员,2结账)
  @override
  @JsonKey(name: "call_type")
  int get callType; // 桌台编号
  @override
  @JsonKey(name: "desk_no")
  String get deskNo; // 桌台Uuid
  @override
  @JsonKey(name: "desk_uuid")
  int get deskUuid; // 是否已发送：1-是；0-否
  @override
  @JsonKey(name: "is_send")
  int get isSend; // 呼叫Uuid
  @override
  @JsonKey(name: "uuid")
  int get uuid;

  /// Create a copy of ResponseUnprocessedCallList
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ResponseUnprocessedCallListImplCopyWith<_$ResponseUnprocessedCallListImpl>
      get copyWith => throw _privateConstructorUsedError;
}

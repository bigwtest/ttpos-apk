// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'list.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RequestAcceptList _$RequestAcceptListFromJson(Map<String, dynamic> json) {
  return _RequestAcceptList.fromJson(json);
}

/// @nodoc
mixin _$RequestAcceptList {
  @JsonKey(name: "desk_region_uuid")
  int get deskRegionUuid => throw _privateConstructorUsedError;
  @JsonKey(name: "desk_region_uuid")
  set deskRegionUuid(int value) => throw _privateConstructorUsedError;
  @JsonKey(name: "page_no")
  int get pageNo => throw _privateConstructorUsedError;
  @JsonKey(name: "page_no")
  set pageNo(int value) => throw _privateConstructorUsedError;
  @JsonKey(name: "page_size")
  int get pageSize => throw _privateConstructorUsedError;
  @JsonKey(name: "page_size")
  set pageSize(int value) => throw _privateConstructorUsedError;
  @JsonKey(name: "status")
  int get status => throw _privateConstructorUsedError;
  @JsonKey(name: "status")
  set status(int value) => throw _privateConstructorUsedError;

  /// Serializes this RequestAcceptList to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RequestAcceptList
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RequestAcceptListCopyWith<RequestAcceptList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RequestAcceptListCopyWith<$Res> {
  factory $RequestAcceptListCopyWith(
          RequestAcceptList value, $Res Function(RequestAcceptList) then) =
      _$RequestAcceptListCopyWithImpl<$Res, RequestAcceptList>;
  @useResult
  $Res call(
      {@JsonKey(name: "desk_region_uuid") int deskRegionUuid,
      @JsonKey(name: "page_no") int pageNo,
      @JsonKey(name: "page_size") int pageSize,
      @JsonKey(name: "status") int status});
}

/// @nodoc
class _$RequestAcceptListCopyWithImpl<$Res, $Val extends RequestAcceptList>
    implements $RequestAcceptListCopyWith<$Res> {
  _$RequestAcceptListCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RequestAcceptList
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? deskRegionUuid = null,
    Object? pageNo = null,
    Object? pageSize = null,
    Object? status = null,
  }) {
    return _then(_value.copyWith(
      deskRegionUuid: null == deskRegionUuid
          ? _value.deskRegionUuid
          : deskRegionUuid // ignore: cast_nullable_to_non_nullable
              as int,
      pageNo: null == pageNo
          ? _value.pageNo
          : pageNo // ignore: cast_nullable_to_non_nullable
              as int,
      pageSize: null == pageSize
          ? _value.pageSize
          : pageSize // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RequestAcceptListImplCopyWith<$Res>
    implements $RequestAcceptListCopyWith<$Res> {
  factory _$$RequestAcceptListImplCopyWith(_$RequestAcceptListImpl value,
          $Res Function(_$RequestAcceptListImpl) then) =
      __$$RequestAcceptListImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "desk_region_uuid") int deskRegionUuid,
      @JsonKey(name: "page_no") int pageNo,
      @JsonKey(name: "page_size") int pageSize,
      @JsonKey(name: "status") int status});
}

/// @nodoc
class __$$RequestAcceptListImplCopyWithImpl<$Res>
    extends _$RequestAcceptListCopyWithImpl<$Res, _$RequestAcceptListImpl>
    implements _$$RequestAcceptListImplCopyWith<$Res> {
  __$$RequestAcceptListImplCopyWithImpl(_$RequestAcceptListImpl _value,
      $Res Function(_$RequestAcceptListImpl) _then)
      : super(_value, _then);

  /// Create a copy of RequestAcceptList
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? deskRegionUuid = null,
    Object? pageNo = null,
    Object? pageSize = null,
    Object? status = null,
  }) {
    return _then(_$RequestAcceptListImpl(
      deskRegionUuid: null == deskRegionUuid
          ? _value.deskRegionUuid
          : deskRegionUuid // ignore: cast_nullable_to_non_nullable
              as int,
      pageNo: null == pageNo
          ? _value.pageNo
          : pageNo // ignore: cast_nullable_to_non_nullable
              as int,
      pageSize: null == pageSize
          ? _value.pageSize
          : pageSize // ignore: cast_nullable_to_non_nullable
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
class _$RequestAcceptListImpl implements _RequestAcceptList {
  _$RequestAcceptListImpl(
      {@JsonKey(name: "desk_region_uuid") required this.deskRegionUuid,
      @JsonKey(name: "page_no") required this.pageNo,
      @JsonKey(name: "page_size") required this.pageSize,
      @JsonKey(name: "status") required this.status});

  factory _$RequestAcceptListImpl.fromJson(Map<String, dynamic> json) =>
      _$$RequestAcceptListImplFromJson(json);

  @override
  @JsonKey(name: "desk_region_uuid")
  int deskRegionUuid;
  @override
  @JsonKey(name: "page_no")
  int pageNo;
  @override
  @JsonKey(name: "page_size")
  int pageSize;
  @override
  @JsonKey(name: "status")
  int status;

  @override
  String toString() {
    return 'RequestAcceptList(deskRegionUuid: $deskRegionUuid, pageNo: $pageNo, pageSize: $pageSize, status: $status)';
  }

  /// Create a copy of RequestAcceptList
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RequestAcceptListImplCopyWith<_$RequestAcceptListImpl> get copyWith =>
      __$$RequestAcceptListImplCopyWithImpl<_$RequestAcceptListImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RequestAcceptListImplToJson(
      this,
    );
  }
}

abstract class _RequestAcceptList implements RequestAcceptList {
  factory _RequestAcceptList(
      {@JsonKey(name: "desk_region_uuid") required int deskRegionUuid,
      @JsonKey(name: "page_no") required int pageNo,
      @JsonKey(name: "page_size") required int pageSize,
      @JsonKey(name: "status") required int status}) = _$RequestAcceptListImpl;

  factory _RequestAcceptList.fromJson(Map<String, dynamic> json) =
      _$RequestAcceptListImpl.fromJson;

  @override
  @JsonKey(name: "desk_region_uuid")
  int get deskRegionUuid;
  @JsonKey(name: "desk_region_uuid")
  set deskRegionUuid(int value);
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
  @JsonKey(name: "status")
  int get status;
  @JsonKey(name: "status")
  set status(int value);

  /// Create a copy of RequestAcceptList
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RequestAcceptListImplCopyWith<_$RequestAcceptListImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'req_list.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ReqList _$ReqListFromJson(Map<String, dynamic> json) {
  return _ReqList.fromJson(json);
}

/// @nodoc
mixin _$ReqList {
  @JsonKey(name: "category_uuid")
  int? get categoryUuid => throw _privateConstructorUsedError;
  @JsonKey(name: "page_no")
  int get pageNo => throw _privateConstructorUsedError;
  @JsonKey(name: "page_size")
  int get pageSize => throw _privateConstructorUsedError;

  /// Serializes this ReqList to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ReqList
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ReqListCopyWith<ReqList> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReqListCopyWith<$Res> {
  factory $ReqListCopyWith(ReqList value, $Res Function(ReqList) then) =
      _$ReqListCopyWithImpl<$Res, ReqList>;
  @useResult
  $Res call(
      {@JsonKey(name: "category_uuid") int? categoryUuid,
      @JsonKey(name: "page_no") int pageNo,
      @JsonKey(name: "page_size") int pageSize});
}

/// @nodoc
class _$ReqListCopyWithImpl<$Res, $Val extends ReqList>
    implements $ReqListCopyWith<$Res> {
  _$ReqListCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ReqList
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categoryUuid = freezed,
    Object? pageNo = null,
    Object? pageSize = null,
  }) {
    return _then(_value.copyWith(
      categoryUuid: freezed == categoryUuid
          ? _value.categoryUuid
          : categoryUuid // ignore: cast_nullable_to_non_nullable
              as int?,
      pageNo: null == pageNo
          ? _value.pageNo
          : pageNo // ignore: cast_nullable_to_non_nullable
              as int,
      pageSize: null == pageSize
          ? _value.pageSize
          : pageSize // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ReqListImplCopyWith<$Res> implements $ReqListCopyWith<$Res> {
  factory _$$ReqListImplCopyWith(
          _$ReqListImpl value, $Res Function(_$ReqListImpl) then) =
      __$$ReqListImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "category_uuid") int? categoryUuid,
      @JsonKey(name: "page_no") int pageNo,
      @JsonKey(name: "page_size") int pageSize});
}

/// @nodoc
class __$$ReqListImplCopyWithImpl<$Res>
    extends _$ReqListCopyWithImpl<$Res, _$ReqListImpl>
    implements _$$ReqListImplCopyWith<$Res> {
  __$$ReqListImplCopyWithImpl(
      _$ReqListImpl _value, $Res Function(_$ReqListImpl) _then)
      : super(_value, _then);

  /// Create a copy of ReqList
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categoryUuid = freezed,
    Object? pageNo = null,
    Object? pageSize = null,
  }) {
    return _then(_$ReqListImpl(
      categoryUuid: freezed == categoryUuid
          ? _value.categoryUuid
          : categoryUuid // ignore: cast_nullable_to_non_nullable
              as int?,
      pageNo: null == pageNo
          ? _value.pageNo
          : pageNo // ignore: cast_nullable_to_non_nullable
              as int,
      pageSize: null == pageSize
          ? _value.pageSize
          : pageSize // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ReqListImpl implements _ReqList {
  _$ReqListImpl(
      {@JsonKey(name: "category_uuid") this.categoryUuid,
      @JsonKey(name: "page_no") required this.pageNo,
      @JsonKey(name: "page_size") required this.pageSize});

  factory _$ReqListImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReqListImplFromJson(json);

  @override
  @JsonKey(name: "category_uuid")
  final int? categoryUuid;
  @override
  @JsonKey(name: "page_no")
  final int pageNo;
  @override
  @JsonKey(name: "page_size")
  final int pageSize;

  @override
  String toString() {
    return 'ReqList(categoryUuid: $categoryUuid, pageNo: $pageNo, pageSize: $pageSize)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReqListImpl &&
            (identical(other.categoryUuid, categoryUuid) ||
                other.categoryUuid == categoryUuid) &&
            (identical(other.pageNo, pageNo) || other.pageNo == pageNo) &&
            (identical(other.pageSize, pageSize) ||
                other.pageSize == pageSize));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, categoryUuid, pageNo, pageSize);

  /// Create a copy of ReqList
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ReqListImplCopyWith<_$ReqListImpl> get copyWith =>
      __$$ReqListImplCopyWithImpl<_$ReqListImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReqListImplToJson(
      this,
    );
  }
}

abstract class _ReqList implements ReqList {
  factory _ReqList(
      {@JsonKey(name: "category_uuid") final int? categoryUuid,
      @JsonKey(name: "page_no") required final int pageNo,
      @JsonKey(name: "page_size") required final int pageSize}) = _$ReqListImpl;

  factory _ReqList.fromJson(Map<String, dynamic> json) = _$ReqListImpl.fromJson;

  @override
  @JsonKey(name: "category_uuid")
  int? get categoryUuid;
  @override
  @JsonKey(name: "page_no")
  int get pageNo;
  @override
  @JsonKey(name: "page_size")
  int get pageSize;

  /// Create a copy of ReqList
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ReqListImplCopyWith<_$ReqListImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

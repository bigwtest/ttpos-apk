// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'meta.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BaseListMeta _$BaseListMetaFromJson(Map<String, dynamic> json) {
  return _BaseListMeta.fromJson(json);
}

/// @nodoc
mixin _$BaseListMeta {
  int get total => throw _privateConstructorUsedError;
  @JsonKey(name: 'page_no')
  int get pageNo => throw _privateConstructorUsedError;
  @JsonKey(name: 'page_size')
  int get pageSize => throw _privateConstructorUsedError;

  /// Serializes this BaseListMeta to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BaseListMeta
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BaseListMetaCopyWith<BaseListMeta> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BaseListMetaCopyWith<$Res> {
  factory $BaseListMetaCopyWith(
          BaseListMeta value, $Res Function(BaseListMeta) then) =
      _$BaseListMetaCopyWithImpl<$Res, BaseListMeta>;
  @useResult
  $Res call(
      {int total,
      @JsonKey(name: 'page_no') int pageNo,
      @JsonKey(name: 'page_size') int pageSize});
}

/// @nodoc
class _$BaseListMetaCopyWithImpl<$Res, $Val extends BaseListMeta>
    implements $BaseListMetaCopyWith<$Res> {
  _$BaseListMetaCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BaseListMeta
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? total = null,
    Object? pageNo = null,
    Object? pageSize = null,
  }) {
    return _then(_value.copyWith(
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
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
abstract class _$$BaseListMetaImplCopyWith<$Res>
    implements $BaseListMetaCopyWith<$Res> {
  factory _$$BaseListMetaImplCopyWith(
          _$BaseListMetaImpl value, $Res Function(_$BaseListMetaImpl) then) =
      __$$BaseListMetaImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int total,
      @JsonKey(name: 'page_no') int pageNo,
      @JsonKey(name: 'page_size') int pageSize});
}

/// @nodoc
class __$$BaseListMetaImplCopyWithImpl<$Res>
    extends _$BaseListMetaCopyWithImpl<$Res, _$BaseListMetaImpl>
    implements _$$BaseListMetaImplCopyWith<$Res> {
  __$$BaseListMetaImplCopyWithImpl(
      _$BaseListMetaImpl _value, $Res Function(_$BaseListMetaImpl) _then)
      : super(_value, _then);

  /// Create a copy of BaseListMeta
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? total = null,
    Object? pageNo = null,
    Object? pageSize = null,
  }) {
    return _then(_$BaseListMetaImpl(
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
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
class _$BaseListMetaImpl implements _BaseListMeta {
  const _$BaseListMetaImpl(
      {required this.total,
      @JsonKey(name: 'page_no') required this.pageNo,
      @JsonKey(name: 'page_size') required this.pageSize});

  factory _$BaseListMetaImpl.fromJson(Map<String, dynamic> json) =>
      _$$BaseListMetaImplFromJson(json);

  @override
  final int total;
  @override
  @JsonKey(name: 'page_no')
  final int pageNo;
  @override
  @JsonKey(name: 'page_size')
  final int pageSize;

  @override
  String toString() {
    return 'BaseListMeta(total: $total, pageNo: $pageNo, pageSize: $pageSize)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BaseListMetaImpl &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.pageNo, pageNo) || other.pageNo == pageNo) &&
            (identical(other.pageSize, pageSize) ||
                other.pageSize == pageSize));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, total, pageNo, pageSize);

  /// Create a copy of BaseListMeta
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BaseListMetaImplCopyWith<_$BaseListMetaImpl> get copyWith =>
      __$$BaseListMetaImplCopyWithImpl<_$BaseListMetaImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BaseListMetaImplToJson(
      this,
    );
  }
}

abstract class _BaseListMeta implements BaseListMeta {
  const factory _BaseListMeta(
          {required final int total,
          @JsonKey(name: 'page_no') required final int pageNo,
          @JsonKey(name: 'page_size') required final int pageSize}) =
      _$BaseListMetaImpl;

  factory _BaseListMeta.fromJson(Map<String, dynamic> json) =
      _$BaseListMetaImpl.fromJson;

  @override
  int get total;
  @override
  @JsonKey(name: 'page_no')
  int get pageNo;
  @override
  @JsonKey(name: 'page_size')
  int get pageSize;

  /// Create a copy of BaseListMeta
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BaseListMetaImplCopyWith<_$BaseListMetaImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

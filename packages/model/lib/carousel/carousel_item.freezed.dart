// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'carousel_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ResponseCarouselItem _$ResponseCarouselItemFromJson(Map<String, dynamic> json) {
  return _ResponseCarouselItem.fromJson(json);
}

/// @nodoc
mixin _$ResponseCarouselItem {
  @JsonKey(name: "file_path")
  String get filePath => throw _privateConstructorUsedError;
  @JsonKey(name: "real_name")
  String get realName => throw _privateConstructorUsedError;
  @JsonKey(name: "sort")
  String get sort => throw _privateConstructorUsedError;
  @JsonKey(name: "type")
  String get type => throw _privateConstructorUsedError;

  /// Serializes this ResponseCarouselItem to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ResponseCarouselItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ResponseCarouselItemCopyWith<ResponseCarouselItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResponseCarouselItemCopyWith<$Res> {
  factory $ResponseCarouselItemCopyWith(ResponseCarouselItem value,
          $Res Function(ResponseCarouselItem) then) =
      _$ResponseCarouselItemCopyWithImpl<$Res, ResponseCarouselItem>;
  @useResult
  $Res call(
      {@JsonKey(name: "file_path") String filePath,
      @JsonKey(name: "real_name") String realName,
      @JsonKey(name: "sort") String sort,
      @JsonKey(name: "type") String type});
}

/// @nodoc
class _$ResponseCarouselItemCopyWithImpl<$Res,
        $Val extends ResponseCarouselItem>
    implements $ResponseCarouselItemCopyWith<$Res> {
  _$ResponseCarouselItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ResponseCarouselItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? filePath = null,
    Object? realName = null,
    Object? sort = null,
    Object? type = null,
  }) {
    return _then(_value.copyWith(
      filePath: null == filePath
          ? _value.filePath
          : filePath // ignore: cast_nullable_to_non_nullable
              as String,
      realName: null == realName
          ? _value.realName
          : realName // ignore: cast_nullable_to_non_nullable
              as String,
      sort: null == sort
          ? _value.sort
          : sort // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ResponseCarouselItemImplCopyWith<$Res>
    implements $ResponseCarouselItemCopyWith<$Res> {
  factory _$$ResponseCarouselItemImplCopyWith(_$ResponseCarouselItemImpl value,
          $Res Function(_$ResponseCarouselItemImpl) then) =
      __$$ResponseCarouselItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "file_path") String filePath,
      @JsonKey(name: "real_name") String realName,
      @JsonKey(name: "sort") String sort,
      @JsonKey(name: "type") String type});
}

/// @nodoc
class __$$ResponseCarouselItemImplCopyWithImpl<$Res>
    extends _$ResponseCarouselItemCopyWithImpl<$Res, _$ResponseCarouselItemImpl>
    implements _$$ResponseCarouselItemImplCopyWith<$Res> {
  __$$ResponseCarouselItemImplCopyWithImpl(_$ResponseCarouselItemImpl _value,
      $Res Function(_$ResponseCarouselItemImpl) _then)
      : super(_value, _then);

  /// Create a copy of ResponseCarouselItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? filePath = null,
    Object? realName = null,
    Object? sort = null,
    Object? type = null,
  }) {
    return _then(_$ResponseCarouselItemImpl(
      filePath: null == filePath
          ? _value.filePath
          : filePath // ignore: cast_nullable_to_non_nullable
              as String,
      realName: null == realName
          ? _value.realName
          : realName // ignore: cast_nullable_to_non_nullable
              as String,
      sort: null == sort
          ? _value.sort
          : sort // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ResponseCarouselItemImpl implements _ResponseCarouselItem {
  _$ResponseCarouselItemImpl(
      {@JsonKey(name: "file_path") required this.filePath,
      @JsonKey(name: "real_name") required this.realName,
      @JsonKey(name: "sort") required this.sort,
      @JsonKey(name: "type") required this.type});

  factory _$ResponseCarouselItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResponseCarouselItemImplFromJson(json);

  @override
  @JsonKey(name: "file_path")
  final String filePath;
  @override
  @JsonKey(name: "real_name")
  final String realName;
  @override
  @JsonKey(name: "sort")
  final String sort;
  @override
  @JsonKey(name: "type")
  final String type;

  @override
  String toString() {
    return 'ResponseCarouselItem(filePath: $filePath, realName: $realName, sort: $sort, type: $type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResponseCarouselItemImpl &&
            (identical(other.filePath, filePath) ||
                other.filePath == filePath) &&
            (identical(other.realName, realName) ||
                other.realName == realName) &&
            (identical(other.sort, sort) || other.sort == sort) &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, filePath, realName, sort, type);

  /// Create a copy of ResponseCarouselItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ResponseCarouselItemImplCopyWith<_$ResponseCarouselItemImpl>
      get copyWith =>
          __$$ResponseCarouselItemImplCopyWithImpl<_$ResponseCarouselItemImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResponseCarouselItemImplToJson(
      this,
    );
  }
}

abstract class _ResponseCarouselItem implements ResponseCarouselItem {
  factory _ResponseCarouselItem(
          {@JsonKey(name: "file_path") required final String filePath,
          @JsonKey(name: "real_name") required final String realName,
          @JsonKey(name: "sort") required final String sort,
          @JsonKey(name: "type") required final String type}) =
      _$ResponseCarouselItemImpl;

  factory _ResponseCarouselItem.fromJson(Map<String, dynamic> json) =
      _$ResponseCarouselItemImpl.fromJson;

  @override
  @JsonKey(name: "file_path")
  String get filePath;
  @override
  @JsonKey(name: "real_name")
  String get realName;
  @override
  @JsonKey(name: "sort")
  String get sort;
  @override
  @JsonKey(name: "type")
  String get type;

  /// Create a copy of ResponseCarouselItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ResponseCarouselItemImplCopyWith<_$ResponseCarouselItemImpl>
      get copyWith => throw _privateConstructorUsedError;
}

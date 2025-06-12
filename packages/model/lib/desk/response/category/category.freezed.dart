// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'category.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DeskCategory _$DeskCategoryFromJson(Map<String, dynamic> json) {
  return _DeskCategory.fromJson(json);
}

/// @nodoc
mixin _$DeskCategory {
  @JsonKey(name: "region")
  DeskRegion get region => throw _privateConstructorUsedError;
  @JsonKey(name: "type")
  DeskType get type => throw _privateConstructorUsedError;

  /// 更新时间
  @JsonKey(name: "update_time")
  int? get updateTime => throw _privateConstructorUsedError;

  /// Serializes this DeskCategory to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DeskCategory
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DeskCategoryCopyWith<DeskCategory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeskCategoryCopyWith<$Res> {
  factory $DeskCategoryCopyWith(
          DeskCategory value, $Res Function(DeskCategory) then) =
      _$DeskCategoryCopyWithImpl<$Res, DeskCategory>;
  @useResult
  $Res call(
      {@JsonKey(name: "region") DeskRegion region,
      @JsonKey(name: "type") DeskType type,
      @JsonKey(name: "update_time") int? updateTime});

  $DeskRegionCopyWith<$Res> get region;
  $DeskTypeCopyWith<$Res> get type;
}

/// @nodoc
class _$DeskCategoryCopyWithImpl<$Res, $Val extends DeskCategory>
    implements $DeskCategoryCopyWith<$Res> {
  _$DeskCategoryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DeskCategory
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? region = null,
    Object? type = null,
    Object? updateTime = freezed,
  }) {
    return _then(_value.copyWith(
      region: null == region
          ? _value.region
          : region // ignore: cast_nullable_to_non_nullable
              as DeskRegion,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as DeskType,
      updateTime: freezed == updateTime
          ? _value.updateTime
          : updateTime // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }

  /// Create a copy of DeskCategory
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DeskRegionCopyWith<$Res> get region {
    return $DeskRegionCopyWith<$Res>(_value.region, (value) {
      return _then(_value.copyWith(region: value) as $Val);
    });
  }

  /// Create a copy of DeskCategory
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DeskTypeCopyWith<$Res> get type {
    return $DeskTypeCopyWith<$Res>(_value.type, (value) {
      return _then(_value.copyWith(type: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DeskCategoryImplCopyWith<$Res>
    implements $DeskCategoryCopyWith<$Res> {
  factory _$$DeskCategoryImplCopyWith(
          _$DeskCategoryImpl value, $Res Function(_$DeskCategoryImpl) then) =
      __$$DeskCategoryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "region") DeskRegion region,
      @JsonKey(name: "type") DeskType type,
      @JsonKey(name: "update_time") int? updateTime});

  @override
  $DeskRegionCopyWith<$Res> get region;
  @override
  $DeskTypeCopyWith<$Res> get type;
}

/// @nodoc
class __$$DeskCategoryImplCopyWithImpl<$Res>
    extends _$DeskCategoryCopyWithImpl<$Res, _$DeskCategoryImpl>
    implements _$$DeskCategoryImplCopyWith<$Res> {
  __$$DeskCategoryImplCopyWithImpl(
      _$DeskCategoryImpl _value, $Res Function(_$DeskCategoryImpl) _then)
      : super(_value, _then);

  /// Create a copy of DeskCategory
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? region = null,
    Object? type = null,
    Object? updateTime = freezed,
  }) {
    return _then(_$DeskCategoryImpl(
      region: null == region
          ? _value.region
          : region // ignore: cast_nullable_to_non_nullable
              as DeskRegion,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as DeskType,
      updateTime: freezed == updateTime
          ? _value.updateTime
          : updateTime // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DeskCategoryImpl implements _DeskCategory {
  const _$DeskCategoryImpl(
      {@JsonKey(name: "region") required this.region,
      @JsonKey(name: "type") required this.type,
      @JsonKey(name: "update_time") this.updateTime = 0});

  factory _$DeskCategoryImpl.fromJson(Map<String, dynamic> json) =>
      _$$DeskCategoryImplFromJson(json);

  @override
  @JsonKey(name: "region")
  final DeskRegion region;
  @override
  @JsonKey(name: "type")
  final DeskType type;

  /// 更新时间
  @override
  @JsonKey(name: "update_time")
  final int? updateTime;

  @override
  String toString() {
    return 'DeskCategory(region: $region, type: $type, updateTime: $updateTime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeskCategoryImpl &&
            (identical(other.region, region) || other.region == region) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.updateTime, updateTime) ||
                other.updateTime == updateTime));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, region, type, updateTime);

  /// Create a copy of DeskCategory
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeskCategoryImplCopyWith<_$DeskCategoryImpl> get copyWith =>
      __$$DeskCategoryImplCopyWithImpl<_$DeskCategoryImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DeskCategoryImplToJson(
      this,
    );
  }
}

abstract class _DeskCategory implements DeskCategory {
  const factory _DeskCategory(
          {@JsonKey(name: "region") required final DeskRegion region,
          @JsonKey(name: "type") required final DeskType type,
          @JsonKey(name: "update_time") final int? updateTime}) =
      _$DeskCategoryImpl;

  factory _DeskCategory.fromJson(Map<String, dynamic> json) =
      _$DeskCategoryImpl.fromJson;

  @override
  @JsonKey(name: "region")
  DeskRegion get region;
  @override
  @JsonKey(name: "type")
  DeskType get type;

  /// 更新时间
  @override
  @JsonKey(name: "update_time")
  int? get updateTime;

  /// Create a copy of DeskCategory
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeskCategoryImplCopyWith<_$DeskCategoryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

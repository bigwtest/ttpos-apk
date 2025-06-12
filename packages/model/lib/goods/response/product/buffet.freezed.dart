// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'buffet.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GoodsBuffet _$GoodsBuffetFromJson(Map<String, dynamic> json) {
  return _GoodsBuffet.fromJson(json);
}

/// @nodoc
mixin _$GoodsBuffet {
// 商品名称
// @JsonKey(name: "locale_name") required LocaleName localeName,
// 商品UUID
  @JsonKey(name: "uuid")
  int get uuid => throw _privateConstructorUsedError; // 限制数量
  @JsonKey(name: "limit")
  int get limit => throw _privateConstructorUsedError;

  /// Serializes this GoodsBuffet to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GoodsBuffet
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GoodsBuffetCopyWith<GoodsBuffet> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GoodsBuffetCopyWith<$Res> {
  factory $GoodsBuffetCopyWith(
          GoodsBuffet value, $Res Function(GoodsBuffet) then) =
      _$GoodsBuffetCopyWithImpl<$Res, GoodsBuffet>;
  @useResult
  $Res call(
      {@JsonKey(name: "uuid") int uuid, @JsonKey(name: "limit") int limit});
}

/// @nodoc
class _$GoodsBuffetCopyWithImpl<$Res, $Val extends GoodsBuffet>
    implements $GoodsBuffetCopyWith<$Res> {
  _$GoodsBuffetCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GoodsBuffet
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uuid = null,
    Object? limit = null,
  }) {
    return _then(_value.copyWith(
      uuid: null == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as int,
      limit: null == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GoodsBuffetImplCopyWith<$Res>
    implements $GoodsBuffetCopyWith<$Res> {
  factory _$$GoodsBuffetImplCopyWith(
          _$GoodsBuffetImpl value, $Res Function(_$GoodsBuffetImpl) then) =
      __$$GoodsBuffetImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "uuid") int uuid, @JsonKey(name: "limit") int limit});
}

/// @nodoc
class __$$GoodsBuffetImplCopyWithImpl<$Res>
    extends _$GoodsBuffetCopyWithImpl<$Res, _$GoodsBuffetImpl>
    implements _$$GoodsBuffetImplCopyWith<$Res> {
  __$$GoodsBuffetImplCopyWithImpl(
      _$GoodsBuffetImpl _value, $Res Function(_$GoodsBuffetImpl) _then)
      : super(_value, _then);

  /// Create a copy of GoodsBuffet
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uuid = null,
    Object? limit = null,
  }) {
    return _then(_$GoodsBuffetImpl(
      uuid: null == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as int,
      limit: null == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GoodsBuffetImpl implements _GoodsBuffet {
  _$GoodsBuffetImpl(
      {@JsonKey(name: "uuid") required this.uuid,
      @JsonKey(name: "limit") required this.limit});

  factory _$GoodsBuffetImpl.fromJson(Map<String, dynamic> json) =>
      _$$GoodsBuffetImplFromJson(json);

// 商品名称
// @JsonKey(name: "locale_name") required LocaleName localeName,
// 商品UUID
  @override
  @JsonKey(name: "uuid")
  final int uuid;
// 限制数量
  @override
  @JsonKey(name: "limit")
  final int limit;

  @override
  String toString() {
    return 'GoodsBuffet(uuid: $uuid, limit: $limit)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GoodsBuffetImpl &&
            (identical(other.uuid, uuid) || other.uuid == uuid) &&
            (identical(other.limit, limit) || other.limit == limit));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, uuid, limit);

  /// Create a copy of GoodsBuffet
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GoodsBuffetImplCopyWith<_$GoodsBuffetImpl> get copyWith =>
      __$$GoodsBuffetImplCopyWithImpl<_$GoodsBuffetImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GoodsBuffetImplToJson(
      this,
    );
  }
}

abstract class _GoodsBuffet implements GoodsBuffet {
  factory _GoodsBuffet(
      {@JsonKey(name: "uuid") required final int uuid,
      @JsonKey(name: "limit") required final int limit}) = _$GoodsBuffetImpl;

  factory _GoodsBuffet.fromJson(Map<String, dynamic> json) =
      _$GoodsBuffetImpl.fromJson;

// 商品名称
// @JsonKey(name: "locale_name") required LocaleName localeName,
// 商品UUID
  @override
  @JsonKey(name: "uuid")
  int get uuid; // 限制数量
  @override
  @JsonKey(name: "limit")
  int get limit;

  /// Create a copy of GoodsBuffet
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GoodsBuffetImplCopyWith<_$GoodsBuffetImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

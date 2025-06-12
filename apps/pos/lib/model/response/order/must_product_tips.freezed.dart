// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'must_product_tips.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ResponseMustProductTips _$ResponseMustProductTipsFromJson(
    Map<String, dynamic> json) {
  return _ResponseMustProductTips.fromJson(json);
}

/// @nodoc
mixin _$ResponseMustProductTips {
// 名称
  @JsonKey(name: 'name')
  String? get name => throw _privateConstructorUsedError; // 数量
  @JsonKey(name: 'num')
  int? get num => throw _privateConstructorUsedError;

  /// Serializes this ResponseMustProductTips to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ResponseMustProductTips
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ResponseMustProductTipsCopyWith<ResponseMustProductTips> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResponseMustProductTipsCopyWith<$Res> {
  factory $ResponseMustProductTipsCopyWith(ResponseMustProductTips value,
          $Res Function(ResponseMustProductTips) then) =
      _$ResponseMustProductTipsCopyWithImpl<$Res, ResponseMustProductTips>;
  @useResult
  $Res call(
      {@JsonKey(name: 'name') String? name, @JsonKey(name: 'num') int? num});
}

/// @nodoc
class _$ResponseMustProductTipsCopyWithImpl<$Res,
        $Val extends ResponseMustProductTips>
    implements $ResponseMustProductTipsCopyWith<$Res> {
  _$ResponseMustProductTipsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ResponseMustProductTips
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? num = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      num: freezed == num
          ? _value.num
          : num // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ResponseMustProductTipsImplCopyWith<$Res>
    implements $ResponseMustProductTipsCopyWith<$Res> {
  factory _$$ResponseMustProductTipsImplCopyWith(
          _$ResponseMustProductTipsImpl value,
          $Res Function(_$ResponseMustProductTipsImpl) then) =
      __$$ResponseMustProductTipsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'name') String? name, @JsonKey(name: 'num') int? num});
}

/// @nodoc
class __$$ResponseMustProductTipsImplCopyWithImpl<$Res>
    extends _$ResponseMustProductTipsCopyWithImpl<$Res,
        _$ResponseMustProductTipsImpl>
    implements _$$ResponseMustProductTipsImplCopyWith<$Res> {
  __$$ResponseMustProductTipsImplCopyWithImpl(
      _$ResponseMustProductTipsImpl _value,
      $Res Function(_$ResponseMustProductTipsImpl) _then)
      : super(_value, _then);

  /// Create a copy of ResponseMustProductTips
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? num = freezed,
  }) {
    return _then(_$ResponseMustProductTipsImpl(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      num: freezed == num
          ? _value.num
          : num // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ResponseMustProductTipsImpl implements _ResponseMustProductTips {
  _$ResponseMustProductTipsImpl(
      {@JsonKey(name: 'name') this.name, @JsonKey(name: 'num') this.num});

  factory _$ResponseMustProductTipsImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResponseMustProductTipsImplFromJson(json);

// 名称
  @override
  @JsonKey(name: 'name')
  final String? name;
// 数量
  @override
  @JsonKey(name: 'num')
  final int? num;

  @override
  String toString() {
    return 'ResponseMustProductTips(name: $name, num: $num)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResponseMustProductTipsImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.num, num) || other.num == num));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, num);

  /// Create a copy of ResponseMustProductTips
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ResponseMustProductTipsImplCopyWith<_$ResponseMustProductTipsImpl>
      get copyWith => __$$ResponseMustProductTipsImplCopyWithImpl<
          _$ResponseMustProductTipsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResponseMustProductTipsImplToJson(
      this,
    );
  }
}

abstract class _ResponseMustProductTips implements ResponseMustProductTips {
  factory _ResponseMustProductTips(
      {@JsonKey(name: 'name') final String? name,
      @JsonKey(name: 'num') final int? num}) = _$ResponseMustProductTipsImpl;

  factory _ResponseMustProductTips.fromJson(Map<String, dynamic> json) =
      _$ResponseMustProductTipsImpl.fromJson;

// 名称
  @override
  @JsonKey(name: 'name')
  String? get name; // 数量
  @override
  @JsonKey(name: 'num')
  int? get num;

  /// Create a copy of ResponseMustProductTips
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ResponseMustProductTipsImplCopyWith<_$ResponseMustProductTipsImpl>
      get copyWith => throw _privateConstructorUsedError;
}

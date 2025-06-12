// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cart_buffet.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ResponseCartBuffet _$ResponseCartBuffetFromJson(Map<String, dynamic> json) {
  return _ResponseCartBuffet.fromJson(json);
}

/// @nodoc
mixin _$ResponseCartBuffet {
// 自助餐剩余秒数
  @JsonKey(name: 'remaining_seconds')
  int get remainingSeconds => throw _privateConstructorUsedError; // 自助餐名称
  @JsonKey(name: 'locale_name')
  LocaleName get localeName => throw _privateConstructorUsedError;

  /// Serializes this ResponseCartBuffet to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ResponseCartBuffet
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ResponseCartBuffetCopyWith<ResponseCartBuffet> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResponseCartBuffetCopyWith<$Res> {
  factory $ResponseCartBuffetCopyWith(
          ResponseCartBuffet value, $Res Function(ResponseCartBuffet) then) =
      _$ResponseCartBuffetCopyWithImpl<$Res, ResponseCartBuffet>;
  @useResult
  $Res call(
      {@JsonKey(name: 'remaining_seconds') int remainingSeconds,
      @JsonKey(name: 'locale_name') LocaleName localeName});

  $LocaleNameCopyWith<$Res> get localeName;
}

/// @nodoc
class _$ResponseCartBuffetCopyWithImpl<$Res, $Val extends ResponseCartBuffet>
    implements $ResponseCartBuffetCopyWith<$Res> {
  _$ResponseCartBuffetCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ResponseCartBuffet
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? remainingSeconds = null,
    Object? localeName = null,
  }) {
    return _then(_value.copyWith(
      remainingSeconds: null == remainingSeconds
          ? _value.remainingSeconds
          : remainingSeconds // ignore: cast_nullable_to_non_nullable
              as int,
      localeName: null == localeName
          ? _value.localeName
          : localeName // ignore: cast_nullable_to_non_nullable
              as LocaleName,
    ) as $Val);
  }

  /// Create a copy of ResponseCartBuffet
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LocaleNameCopyWith<$Res> get localeName {
    return $LocaleNameCopyWith<$Res>(_value.localeName, (value) {
      return _then(_value.copyWith(localeName: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ResponseCartBuffetImplCopyWith<$Res>
    implements $ResponseCartBuffetCopyWith<$Res> {
  factory _$$ResponseCartBuffetImplCopyWith(_$ResponseCartBuffetImpl value,
          $Res Function(_$ResponseCartBuffetImpl) then) =
      __$$ResponseCartBuffetImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'remaining_seconds') int remainingSeconds,
      @JsonKey(name: 'locale_name') LocaleName localeName});

  @override
  $LocaleNameCopyWith<$Res> get localeName;
}

/// @nodoc
class __$$ResponseCartBuffetImplCopyWithImpl<$Res>
    extends _$ResponseCartBuffetCopyWithImpl<$Res, _$ResponseCartBuffetImpl>
    implements _$$ResponseCartBuffetImplCopyWith<$Res> {
  __$$ResponseCartBuffetImplCopyWithImpl(_$ResponseCartBuffetImpl _value,
      $Res Function(_$ResponseCartBuffetImpl) _then)
      : super(_value, _then);

  /// Create a copy of ResponseCartBuffet
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? remainingSeconds = null,
    Object? localeName = null,
  }) {
    return _then(_$ResponseCartBuffetImpl(
      remainingSeconds: null == remainingSeconds
          ? _value.remainingSeconds
          : remainingSeconds // ignore: cast_nullable_to_non_nullable
              as int,
      localeName: null == localeName
          ? _value.localeName
          : localeName // ignore: cast_nullable_to_non_nullable
              as LocaleName,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ResponseCartBuffetImpl implements _ResponseCartBuffet {
  _$ResponseCartBuffetImpl(
      {@JsonKey(name: 'remaining_seconds') required this.remainingSeconds,
      @JsonKey(name: 'locale_name') required this.localeName});

  factory _$ResponseCartBuffetImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResponseCartBuffetImplFromJson(json);

// 自助餐剩余秒数
  @override
  @JsonKey(name: 'remaining_seconds')
  final int remainingSeconds;
// 自助餐名称
  @override
  @JsonKey(name: 'locale_name')
  final LocaleName localeName;

  @override
  String toString() {
    return 'ResponseCartBuffet(remainingSeconds: $remainingSeconds, localeName: $localeName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResponseCartBuffetImpl &&
            (identical(other.remainingSeconds, remainingSeconds) ||
                other.remainingSeconds == remainingSeconds) &&
            (identical(other.localeName, localeName) ||
                other.localeName == localeName));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, remainingSeconds, localeName);

  /// Create a copy of ResponseCartBuffet
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ResponseCartBuffetImplCopyWith<_$ResponseCartBuffetImpl> get copyWith =>
      __$$ResponseCartBuffetImplCopyWithImpl<_$ResponseCartBuffetImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResponseCartBuffetImplToJson(
      this,
    );
  }
}

abstract class _ResponseCartBuffet implements ResponseCartBuffet {
  factory _ResponseCartBuffet(
      {@JsonKey(name: 'remaining_seconds') required final int remainingSeconds,
      @JsonKey(name: 'locale_name')
      required final LocaleName localeName}) = _$ResponseCartBuffetImpl;

  factory _ResponseCartBuffet.fromJson(Map<String, dynamic> json) =
      _$ResponseCartBuffetImpl.fromJson;

// 自助餐剩余秒数
  @override
  @JsonKey(name: 'remaining_seconds')
  int get remainingSeconds; // 自助餐名称
  @override
  @JsonKey(name: 'locale_name')
  LocaleName get localeName;

  /// Create a copy of ResponseCartBuffet
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ResponseCartBuffetImplCopyWith<_$ResponseCartBuffetImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'safety_number.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SafetyNumber {
  Object get value => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String value) string,
    required TResult Function(double value) double,
    required TResult Function(int value) int,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String value)? string,
    TResult? Function(double value)? double,
    TResult? Function(int value)? int,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String value)? string,
    TResult Function(double value)? double,
    TResult Function(int value)? int,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StringSafetyNumber value) string,
    required TResult Function(DoubleSafetyNumber value) double,
    required TResult Function(IntSafetyNumber value) int,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StringSafetyNumber value)? string,
    TResult? Function(DoubleSafetyNumber value)? double,
    TResult? Function(IntSafetyNumber value)? int,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StringSafetyNumber value)? string,
    TResult Function(DoubleSafetyNumber value)? double,
    TResult Function(IntSafetyNumber value)? int,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SafetyNumberCopyWith<$Res> {
  factory $SafetyNumberCopyWith(
          SafetyNumber value, $Res Function(SafetyNumber) then) =
      _$SafetyNumberCopyWithImpl<$Res, SafetyNumber>;
}

/// @nodoc
class _$SafetyNumberCopyWithImpl<$Res, $Val extends SafetyNumber>
    implements $SafetyNumberCopyWith<$Res> {
  _$SafetyNumberCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SafetyNumber
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$StringSafetyNumberImplCopyWith<$Res> {
  factory _$$StringSafetyNumberImplCopyWith(_$StringSafetyNumberImpl value,
          $Res Function(_$StringSafetyNumberImpl) then) =
      __$$StringSafetyNumberImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String value});
}

/// @nodoc
class __$$StringSafetyNumberImplCopyWithImpl<$Res>
    extends _$SafetyNumberCopyWithImpl<$Res, _$StringSafetyNumberImpl>
    implements _$$StringSafetyNumberImplCopyWith<$Res> {
  __$$StringSafetyNumberImplCopyWithImpl(_$StringSafetyNumberImpl _value,
      $Res Function(_$StringSafetyNumberImpl) _then)
      : super(_value, _then);

  /// Create a copy of SafetyNumber
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$StringSafetyNumberImpl(
      null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$StringSafetyNumberImpl extends StringSafetyNumber {
  const _$StringSafetyNumberImpl(this.value) : super._();

  @override
  final String value;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StringSafetyNumberImpl &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  /// Create a copy of SafetyNumber
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StringSafetyNumberImplCopyWith<_$StringSafetyNumberImpl> get copyWith =>
      __$$StringSafetyNumberImplCopyWithImpl<_$StringSafetyNumberImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String value) string,
    required TResult Function(double value) double,
    required TResult Function(int value) int,
  }) {
    return string(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String value)? string,
    TResult? Function(double value)? double,
    TResult? Function(int value)? int,
  }) {
    return string?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String value)? string,
    TResult Function(double value)? double,
    TResult Function(int value)? int,
    required TResult orElse(),
  }) {
    if (string != null) {
      return string(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StringSafetyNumber value) string,
    required TResult Function(DoubleSafetyNumber value) double,
    required TResult Function(IntSafetyNumber value) int,
  }) {
    return string(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StringSafetyNumber value)? string,
    TResult? Function(DoubleSafetyNumber value)? double,
    TResult? Function(IntSafetyNumber value)? int,
  }) {
    return string?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StringSafetyNumber value)? string,
    TResult Function(DoubleSafetyNumber value)? double,
    TResult Function(IntSafetyNumber value)? int,
    required TResult orElse(),
  }) {
    if (string != null) {
      return string(this);
    }
    return orElse();
  }
}

abstract class StringSafetyNumber extends SafetyNumber {
  const factory StringSafetyNumber(final String value) =
      _$StringSafetyNumberImpl;
  const StringSafetyNumber._() : super._();

  @override
  String get value;

  /// Create a copy of SafetyNumber
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StringSafetyNumberImplCopyWith<_$StringSafetyNumberImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DoubleSafetyNumberImplCopyWith<$Res> {
  factory _$$DoubleSafetyNumberImplCopyWith(_$DoubleSafetyNumberImpl value,
          $Res Function(_$DoubleSafetyNumberImpl) then) =
      __$$DoubleSafetyNumberImplCopyWithImpl<$Res>;
  @useResult
  $Res call({double value});
}

/// @nodoc
class __$$DoubleSafetyNumberImplCopyWithImpl<$Res>
    extends _$SafetyNumberCopyWithImpl<$Res, _$DoubleSafetyNumberImpl>
    implements _$$DoubleSafetyNumberImplCopyWith<$Res> {
  __$$DoubleSafetyNumberImplCopyWithImpl(_$DoubleSafetyNumberImpl _value,
      $Res Function(_$DoubleSafetyNumberImpl) _then)
      : super(_value, _then);

  /// Create a copy of SafetyNumber
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$DoubleSafetyNumberImpl(
      null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$DoubleSafetyNumberImpl extends DoubleSafetyNumber {
  const _$DoubleSafetyNumberImpl(this.value) : super._();

  @override
  final double value;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DoubleSafetyNumberImpl &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  /// Create a copy of SafetyNumber
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DoubleSafetyNumberImplCopyWith<_$DoubleSafetyNumberImpl> get copyWith =>
      __$$DoubleSafetyNumberImplCopyWithImpl<_$DoubleSafetyNumberImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String value) string,
    required TResult Function(double value) double,
    required TResult Function(int value) int,
  }) {
    return double(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String value)? string,
    TResult? Function(double value)? double,
    TResult? Function(int value)? int,
  }) {
    return double?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String value)? string,
    TResult Function(double value)? double,
    TResult Function(int value)? int,
    required TResult orElse(),
  }) {
    if (double != null) {
      return double(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StringSafetyNumber value) string,
    required TResult Function(DoubleSafetyNumber value) double,
    required TResult Function(IntSafetyNumber value) int,
  }) {
    return double(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StringSafetyNumber value)? string,
    TResult? Function(DoubleSafetyNumber value)? double,
    TResult? Function(IntSafetyNumber value)? int,
  }) {
    return double?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StringSafetyNumber value)? string,
    TResult Function(DoubleSafetyNumber value)? double,
    TResult Function(IntSafetyNumber value)? int,
    required TResult orElse(),
  }) {
    if (double != null) {
      return double(this);
    }
    return orElse();
  }
}

abstract class DoubleSafetyNumber extends SafetyNumber {
  const factory DoubleSafetyNumber(final double value) =
      _$DoubleSafetyNumberImpl;
  const DoubleSafetyNumber._() : super._();

  @override
  double get value;

  /// Create a copy of SafetyNumber
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DoubleSafetyNumberImplCopyWith<_$DoubleSafetyNumberImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$IntSafetyNumberImplCopyWith<$Res> {
  factory _$$IntSafetyNumberImplCopyWith(_$IntSafetyNumberImpl value,
          $Res Function(_$IntSafetyNumberImpl) then) =
      __$$IntSafetyNumberImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int value});
}

/// @nodoc
class __$$IntSafetyNumberImplCopyWithImpl<$Res>
    extends _$SafetyNumberCopyWithImpl<$Res, _$IntSafetyNumberImpl>
    implements _$$IntSafetyNumberImplCopyWith<$Res> {
  __$$IntSafetyNumberImplCopyWithImpl(
      _$IntSafetyNumberImpl _value, $Res Function(_$IntSafetyNumberImpl) _then)
      : super(_value, _then);

  /// Create a copy of SafetyNumber
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$IntSafetyNumberImpl(
      null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$IntSafetyNumberImpl extends IntSafetyNumber {
  const _$IntSafetyNumberImpl(this.value) : super._();

  @override
  final int value;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IntSafetyNumberImpl &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  /// Create a copy of SafetyNumber
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$IntSafetyNumberImplCopyWith<_$IntSafetyNumberImpl> get copyWith =>
      __$$IntSafetyNumberImplCopyWithImpl<_$IntSafetyNumberImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String value) string,
    required TResult Function(double value) double,
    required TResult Function(int value) int,
  }) {
    return int(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String value)? string,
    TResult? Function(double value)? double,
    TResult? Function(int value)? int,
  }) {
    return int?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String value)? string,
    TResult Function(double value)? double,
    TResult Function(int value)? int,
    required TResult orElse(),
  }) {
    if (int != null) {
      return int(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StringSafetyNumber value) string,
    required TResult Function(DoubleSafetyNumber value) double,
    required TResult Function(IntSafetyNumber value) int,
  }) {
    return int(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StringSafetyNumber value)? string,
    TResult? Function(DoubleSafetyNumber value)? double,
    TResult? Function(IntSafetyNumber value)? int,
  }) {
    return int?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StringSafetyNumber value)? string,
    TResult Function(DoubleSafetyNumber value)? double,
    TResult Function(IntSafetyNumber value)? int,
    required TResult orElse(),
  }) {
    if (int != null) {
      return int(this);
    }
    return orElse();
  }
}

abstract class IntSafetyNumber extends SafetyNumber {
  const factory IntSafetyNumber(final int value) = _$IntSafetyNumberImpl;
  const IntSafetyNumber._() : super._();

  @override
  int get value;

  /// Create a copy of SafetyNumber
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$IntSafetyNumberImplCopyWith<_$IntSafetyNumberImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

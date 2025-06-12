// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'merge_desk.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ResponseOrderMergeDesk _$ResponseOrderMergeDeskFromJson(
    Map<String, dynamic> json) {
  return _ResponseOrderMergeDesk.fromJson(json);
}

/// @nodoc
mixin _$ResponseOrderMergeDesk {
// 是否重置折扣
  @JsonKey(name: "is_reset_discount")
  bool? get isResetDiscount => throw _privateConstructorUsedError;

  /// Serializes this ResponseOrderMergeDesk to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ResponseOrderMergeDesk
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ResponseOrderMergeDeskCopyWith<ResponseOrderMergeDesk> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResponseOrderMergeDeskCopyWith<$Res> {
  factory $ResponseOrderMergeDeskCopyWith(ResponseOrderMergeDesk value,
          $Res Function(ResponseOrderMergeDesk) then) =
      _$ResponseOrderMergeDeskCopyWithImpl<$Res, ResponseOrderMergeDesk>;
  @useResult
  $Res call({@JsonKey(name: "is_reset_discount") bool? isResetDiscount});
}

/// @nodoc
class _$ResponseOrderMergeDeskCopyWithImpl<$Res,
        $Val extends ResponseOrderMergeDesk>
    implements $ResponseOrderMergeDeskCopyWith<$Res> {
  _$ResponseOrderMergeDeskCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ResponseOrderMergeDesk
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isResetDiscount = freezed,
  }) {
    return _then(_value.copyWith(
      isResetDiscount: freezed == isResetDiscount
          ? _value.isResetDiscount
          : isResetDiscount // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ResponseOrderMergeDeskImplCopyWith<$Res>
    implements $ResponseOrderMergeDeskCopyWith<$Res> {
  factory _$$ResponseOrderMergeDeskImplCopyWith(
          _$ResponseOrderMergeDeskImpl value,
          $Res Function(_$ResponseOrderMergeDeskImpl) then) =
      __$$ResponseOrderMergeDeskImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: "is_reset_discount") bool? isResetDiscount});
}

/// @nodoc
class __$$ResponseOrderMergeDeskImplCopyWithImpl<$Res>
    extends _$ResponseOrderMergeDeskCopyWithImpl<$Res,
        _$ResponseOrderMergeDeskImpl>
    implements _$$ResponseOrderMergeDeskImplCopyWith<$Res> {
  __$$ResponseOrderMergeDeskImplCopyWithImpl(
      _$ResponseOrderMergeDeskImpl _value,
      $Res Function(_$ResponseOrderMergeDeskImpl) _then)
      : super(_value, _then);

  /// Create a copy of ResponseOrderMergeDesk
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isResetDiscount = freezed,
  }) {
    return _then(_$ResponseOrderMergeDeskImpl(
      isResetDiscount: freezed == isResetDiscount
          ? _value.isResetDiscount
          : isResetDiscount // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ResponseOrderMergeDeskImpl implements _ResponseOrderMergeDesk {
  _$ResponseOrderMergeDeskImpl(
      {@JsonKey(name: "is_reset_discount") this.isResetDiscount});

  factory _$ResponseOrderMergeDeskImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResponseOrderMergeDeskImplFromJson(json);

// 是否重置折扣
  @override
  @JsonKey(name: "is_reset_discount")
  final bool? isResetDiscount;

  @override
  String toString() {
    return 'ResponseOrderMergeDesk(isResetDiscount: $isResetDiscount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResponseOrderMergeDeskImpl &&
            (identical(other.isResetDiscount, isResetDiscount) ||
                other.isResetDiscount == isResetDiscount));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, isResetDiscount);

  /// Create a copy of ResponseOrderMergeDesk
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ResponseOrderMergeDeskImplCopyWith<_$ResponseOrderMergeDeskImpl>
      get copyWith => __$$ResponseOrderMergeDeskImplCopyWithImpl<
          _$ResponseOrderMergeDeskImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResponseOrderMergeDeskImplToJson(
      this,
    );
  }
}

abstract class _ResponseOrderMergeDesk implements ResponseOrderMergeDesk {
  factory _ResponseOrderMergeDesk(
          {@JsonKey(name: "is_reset_discount") final bool? isResetDiscount}) =
      _$ResponseOrderMergeDeskImpl;

  factory _ResponseOrderMergeDesk.fromJson(Map<String, dynamic> json) =
      _$ResponseOrderMergeDeskImpl.fromJson;

// 是否重置折扣
  @override
  @JsonKey(name: "is_reset_discount")
  bool? get isResetDiscount;

  /// Create a copy of ResponseOrderMergeDesk
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ResponseOrderMergeDeskImplCopyWith<_$ResponseOrderMergeDeskImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ResponseOrderMergeDeskCheck _$ResponseOrderMergeDeskCheckFromJson(
    Map<String, dynamic> json) {
  return _ResponseOrderMergeDeskCheck.fromJson(json);
}

/// @nodoc
mixin _$ResponseOrderMergeDeskCheck {
  @JsonKey(name: "desk_no")
  String get deskNo => throw _privateConstructorUsedError;

  /// Serializes this ResponseOrderMergeDeskCheck to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ResponseOrderMergeDeskCheck
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ResponseOrderMergeDeskCheckCopyWith<ResponseOrderMergeDeskCheck>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResponseOrderMergeDeskCheckCopyWith<$Res> {
  factory $ResponseOrderMergeDeskCheckCopyWith(
          ResponseOrderMergeDeskCheck value,
          $Res Function(ResponseOrderMergeDeskCheck) then) =
      _$ResponseOrderMergeDeskCheckCopyWithImpl<$Res,
          ResponseOrderMergeDeskCheck>;
  @useResult
  $Res call({@JsonKey(name: "desk_no") String deskNo});
}

/// @nodoc
class _$ResponseOrderMergeDeskCheckCopyWithImpl<$Res,
        $Val extends ResponseOrderMergeDeskCheck>
    implements $ResponseOrderMergeDeskCheckCopyWith<$Res> {
  _$ResponseOrderMergeDeskCheckCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ResponseOrderMergeDeskCheck
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? deskNo = null,
  }) {
    return _then(_value.copyWith(
      deskNo: null == deskNo
          ? _value.deskNo
          : deskNo // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ResponseOrderMergeDeskCheckImplCopyWith<$Res>
    implements $ResponseOrderMergeDeskCheckCopyWith<$Res> {
  factory _$$ResponseOrderMergeDeskCheckImplCopyWith(
          _$ResponseOrderMergeDeskCheckImpl value,
          $Res Function(_$ResponseOrderMergeDeskCheckImpl) then) =
      __$$ResponseOrderMergeDeskCheckImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: "desk_no") String deskNo});
}

/// @nodoc
class __$$ResponseOrderMergeDeskCheckImplCopyWithImpl<$Res>
    extends _$ResponseOrderMergeDeskCheckCopyWithImpl<$Res,
        _$ResponseOrderMergeDeskCheckImpl>
    implements _$$ResponseOrderMergeDeskCheckImplCopyWith<$Res> {
  __$$ResponseOrderMergeDeskCheckImplCopyWithImpl(
      _$ResponseOrderMergeDeskCheckImpl _value,
      $Res Function(_$ResponseOrderMergeDeskCheckImpl) _then)
      : super(_value, _then);

  /// Create a copy of ResponseOrderMergeDeskCheck
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? deskNo = null,
  }) {
    return _then(_$ResponseOrderMergeDeskCheckImpl(
      deskNo: null == deskNo
          ? _value.deskNo
          : deskNo // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ResponseOrderMergeDeskCheckImpl
    implements _ResponseOrderMergeDeskCheck {
  _$ResponseOrderMergeDeskCheckImpl(
      {@JsonKey(name: "desk_no") required this.deskNo});

  factory _$ResponseOrderMergeDeskCheckImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ResponseOrderMergeDeskCheckImplFromJson(json);

  @override
  @JsonKey(name: "desk_no")
  final String deskNo;

  @override
  String toString() {
    return 'ResponseOrderMergeDeskCheck(deskNo: $deskNo)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResponseOrderMergeDeskCheckImpl &&
            (identical(other.deskNo, deskNo) || other.deskNo == deskNo));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, deskNo);

  /// Create a copy of ResponseOrderMergeDeskCheck
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ResponseOrderMergeDeskCheckImplCopyWith<_$ResponseOrderMergeDeskCheckImpl>
      get copyWith => __$$ResponseOrderMergeDeskCheckImplCopyWithImpl<
          _$ResponseOrderMergeDeskCheckImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResponseOrderMergeDeskCheckImplToJson(
      this,
    );
  }
}

abstract class _ResponseOrderMergeDeskCheck
    implements ResponseOrderMergeDeskCheck {
  factory _ResponseOrderMergeDeskCheck(
          {@JsonKey(name: "desk_no") required final String deskNo}) =
      _$ResponseOrderMergeDeskCheckImpl;

  factory _ResponseOrderMergeDeskCheck.fromJson(Map<String, dynamic> json) =
      _$ResponseOrderMergeDeskCheckImpl.fromJson;

  @override
  @JsonKey(name: "desk_no")
  String get deskNo;

  /// Create a copy of ResponseOrderMergeDeskCheck
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ResponseOrderMergeDeskCheckImplCopyWith<_$ResponseOrderMergeDeskCheckImpl>
      get copyWith => throw _privateConstructorUsedError;
}

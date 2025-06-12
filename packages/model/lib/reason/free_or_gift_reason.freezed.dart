// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'free_or_gift_reason.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ResponseFreeOrGiftReason _$ResponseFreeOrGiftReasonFromJson(
    Map<String, dynamic> json) {
  return _ResponseFreeOrGiftReason.fromJson(json);
}

/// @nodoc
mixin _$ResponseFreeOrGiftReason {
  @JsonKey(name: "uuid")
  int get uuid => throw _privateConstructorUsedError;
  @JsonKey(name: "locale_name")
  LocaleName get localeName => throw _privateConstructorUsedError;

  /// Serializes this ResponseFreeOrGiftReason to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ResponseFreeOrGiftReason
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ResponseFreeOrGiftReasonCopyWith<ResponseFreeOrGiftReason> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResponseFreeOrGiftReasonCopyWith<$Res> {
  factory $ResponseFreeOrGiftReasonCopyWith(ResponseFreeOrGiftReason value,
          $Res Function(ResponseFreeOrGiftReason) then) =
      _$ResponseFreeOrGiftReasonCopyWithImpl<$Res, ResponseFreeOrGiftReason>;
  @useResult
  $Res call(
      {@JsonKey(name: "uuid") int uuid,
      @JsonKey(name: "locale_name") LocaleName localeName});

  $LocaleNameCopyWith<$Res> get localeName;
}

/// @nodoc
class _$ResponseFreeOrGiftReasonCopyWithImpl<$Res,
        $Val extends ResponseFreeOrGiftReason>
    implements $ResponseFreeOrGiftReasonCopyWith<$Res> {
  _$ResponseFreeOrGiftReasonCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ResponseFreeOrGiftReason
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uuid = null,
    Object? localeName = null,
  }) {
    return _then(_value.copyWith(
      uuid: null == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as int,
      localeName: null == localeName
          ? _value.localeName
          : localeName // ignore: cast_nullable_to_non_nullable
              as LocaleName,
    ) as $Val);
  }

  /// Create a copy of ResponseFreeOrGiftReason
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
abstract class _$$ResponseFreeOrGiftReasonImplCopyWith<$Res>
    implements $ResponseFreeOrGiftReasonCopyWith<$Res> {
  factory _$$ResponseFreeOrGiftReasonImplCopyWith(
          _$ResponseFreeOrGiftReasonImpl value,
          $Res Function(_$ResponseFreeOrGiftReasonImpl) then) =
      __$$ResponseFreeOrGiftReasonImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "uuid") int uuid,
      @JsonKey(name: "locale_name") LocaleName localeName});

  @override
  $LocaleNameCopyWith<$Res> get localeName;
}

/// @nodoc
class __$$ResponseFreeOrGiftReasonImplCopyWithImpl<$Res>
    extends _$ResponseFreeOrGiftReasonCopyWithImpl<$Res,
        _$ResponseFreeOrGiftReasonImpl>
    implements _$$ResponseFreeOrGiftReasonImplCopyWith<$Res> {
  __$$ResponseFreeOrGiftReasonImplCopyWithImpl(
      _$ResponseFreeOrGiftReasonImpl _value,
      $Res Function(_$ResponseFreeOrGiftReasonImpl) _then)
      : super(_value, _then);

  /// Create a copy of ResponseFreeOrGiftReason
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uuid = null,
    Object? localeName = null,
  }) {
    return _then(_$ResponseFreeOrGiftReasonImpl(
      uuid: null == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
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
class _$ResponseFreeOrGiftReasonImpl implements _ResponseFreeOrGiftReason {
  const _$ResponseFreeOrGiftReasonImpl(
      {@JsonKey(name: "uuid") required this.uuid,
      @JsonKey(name: "locale_name") required this.localeName});

  factory _$ResponseFreeOrGiftReasonImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResponseFreeOrGiftReasonImplFromJson(json);

  @override
  @JsonKey(name: "uuid")
  final int uuid;
  @override
  @JsonKey(name: "locale_name")
  final LocaleName localeName;

  @override
  String toString() {
    return 'ResponseFreeOrGiftReason(uuid: $uuid, localeName: $localeName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResponseFreeOrGiftReasonImpl &&
            (identical(other.uuid, uuid) || other.uuid == uuid) &&
            (identical(other.localeName, localeName) ||
                other.localeName == localeName));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, uuid, localeName);

  /// Create a copy of ResponseFreeOrGiftReason
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ResponseFreeOrGiftReasonImplCopyWith<_$ResponseFreeOrGiftReasonImpl>
      get copyWith => __$$ResponseFreeOrGiftReasonImplCopyWithImpl<
          _$ResponseFreeOrGiftReasonImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResponseFreeOrGiftReasonImplToJson(
      this,
    );
  }
}

abstract class _ResponseFreeOrGiftReason implements ResponseFreeOrGiftReason {
  const factory _ResponseFreeOrGiftReason(
          {@JsonKey(name: "uuid") required final int uuid,
          @JsonKey(name: "locale_name") required final LocaleName localeName}) =
      _$ResponseFreeOrGiftReasonImpl;

  factory _ResponseFreeOrGiftReason.fromJson(Map<String, dynamic> json) =
      _$ResponseFreeOrGiftReasonImpl.fromJson;

  @override
  @JsonKey(name: "uuid")
  int get uuid;
  @override
  @JsonKey(name: "locale_name")
  LocaleName get localeName;

  /// Create a copy of ResponseFreeOrGiftReason
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ResponseFreeOrGiftReasonImplCopyWith<_$ResponseFreeOrGiftReasonImpl>
      get copyWith => throw _privateConstructorUsedError;
}

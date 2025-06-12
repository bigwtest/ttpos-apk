// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'return_reason.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ResponseReturnReason _$ResponseReturnReasonFromJson(Map<String, dynamic> json) {
  return _ResponseReturnReason.fromJson(json);
}

/// @nodoc
mixin _$ResponseReturnReason {
  @JsonKey(name: "uuid")
  int get uuid => throw _privateConstructorUsedError;
  @JsonKey(name: "locale_name")
  LocaleName get localeName => throw _privateConstructorUsedError;

  /// Serializes this ResponseReturnReason to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ResponseReturnReason
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ResponseReturnReasonCopyWith<ResponseReturnReason> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResponseReturnReasonCopyWith<$Res> {
  factory $ResponseReturnReasonCopyWith(ResponseReturnReason value,
          $Res Function(ResponseReturnReason) then) =
      _$ResponseReturnReasonCopyWithImpl<$Res, ResponseReturnReason>;
  @useResult
  $Res call(
      {@JsonKey(name: "uuid") int uuid,
      @JsonKey(name: "locale_name") LocaleName localeName});

  $LocaleNameCopyWith<$Res> get localeName;
}

/// @nodoc
class _$ResponseReturnReasonCopyWithImpl<$Res,
        $Val extends ResponseReturnReason>
    implements $ResponseReturnReasonCopyWith<$Res> {
  _$ResponseReturnReasonCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ResponseReturnReason
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

  /// Create a copy of ResponseReturnReason
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
abstract class _$$ResponseReturnReasonImplCopyWith<$Res>
    implements $ResponseReturnReasonCopyWith<$Res> {
  factory _$$ResponseReturnReasonImplCopyWith(_$ResponseReturnReasonImpl value,
          $Res Function(_$ResponseReturnReasonImpl) then) =
      __$$ResponseReturnReasonImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "uuid") int uuid,
      @JsonKey(name: "locale_name") LocaleName localeName});

  @override
  $LocaleNameCopyWith<$Res> get localeName;
}

/// @nodoc
class __$$ResponseReturnReasonImplCopyWithImpl<$Res>
    extends _$ResponseReturnReasonCopyWithImpl<$Res, _$ResponseReturnReasonImpl>
    implements _$$ResponseReturnReasonImplCopyWith<$Res> {
  __$$ResponseReturnReasonImplCopyWithImpl(_$ResponseReturnReasonImpl _value,
      $Res Function(_$ResponseReturnReasonImpl) _then)
      : super(_value, _then);

  /// Create a copy of ResponseReturnReason
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uuid = null,
    Object? localeName = null,
  }) {
    return _then(_$ResponseReturnReasonImpl(
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
class _$ResponseReturnReasonImpl implements _ResponseReturnReason {
  const _$ResponseReturnReasonImpl(
      {@JsonKey(name: "uuid") required this.uuid,
      @JsonKey(name: "locale_name") required this.localeName});

  factory _$ResponseReturnReasonImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResponseReturnReasonImplFromJson(json);

  @override
  @JsonKey(name: "uuid")
  final int uuid;
  @override
  @JsonKey(name: "locale_name")
  final LocaleName localeName;

  @override
  String toString() {
    return 'ResponseReturnReason(uuid: $uuid, localeName: $localeName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResponseReturnReasonImpl &&
            (identical(other.uuid, uuid) || other.uuid == uuid) &&
            (identical(other.localeName, localeName) ||
                other.localeName == localeName));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, uuid, localeName);

  /// Create a copy of ResponseReturnReason
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ResponseReturnReasonImplCopyWith<_$ResponseReturnReasonImpl>
      get copyWith =>
          __$$ResponseReturnReasonImplCopyWithImpl<_$ResponseReturnReasonImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResponseReturnReasonImplToJson(
      this,
    );
  }
}

abstract class _ResponseReturnReason implements ResponseReturnReason {
  const factory _ResponseReturnReason(
          {@JsonKey(name: "uuid") required final int uuid,
          @JsonKey(name: "locale_name") required final LocaleName localeName}) =
      _$ResponseReturnReasonImpl;

  factory _ResponseReturnReason.fromJson(Map<String, dynamic> json) =
      _$ResponseReturnReasonImpl.fromJson;

  @override
  @JsonKey(name: "uuid")
  int get uuid;
  @override
  @JsonKey(name: "locale_name")
  LocaleName get localeName;

  /// Create a copy of ResponseReturnReason
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ResponseReturnReasonImplCopyWith<_$ResponseReturnReasonImpl>
      get copyWith => throw _privateConstructorUsedError;
}

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'member_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ResponseMemberInfo _$ResponseMemberInfoFromJson(Map<String, dynamic> json) {
  return _ResponseMemberInfo.fromJson(json);
}

/// @nodoc
mixin _$ResponseMemberInfo {
  @JsonKey(name: "balance")
  double get balance => throw _privateConstructorUsedError;
  @JsonKey(name: "card")
  ResponseMemberCard get card => throw _privateConstructorUsedError;
  @JsonKey(name: "level")
  ResponseMemberLevel get level => throw _privateConstructorUsedError;
  @JsonKey(name: "nickname")
  String get nickname => throw _privateConstructorUsedError;
  @JsonKey(name: "points")
  double get points => throw _privateConstructorUsedError;
  @JsonKey(name: "uuid")
  int get uuid => throw _privateConstructorUsedError;

  /// Serializes this ResponseMemberInfo to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ResponseMemberInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ResponseMemberInfoCopyWith<ResponseMemberInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResponseMemberInfoCopyWith<$Res> {
  factory $ResponseMemberInfoCopyWith(
          ResponseMemberInfo value, $Res Function(ResponseMemberInfo) then) =
      _$ResponseMemberInfoCopyWithImpl<$Res, ResponseMemberInfo>;
  @useResult
  $Res call(
      {@JsonKey(name: "balance") double balance,
      @JsonKey(name: "card") ResponseMemberCard card,
      @JsonKey(name: "level") ResponseMemberLevel level,
      @JsonKey(name: "nickname") String nickname,
      @JsonKey(name: "points") double points,
      @JsonKey(name: "uuid") int uuid});

  $ResponseMemberCardCopyWith<$Res> get card;
  $ResponseMemberLevelCopyWith<$Res> get level;
}

/// @nodoc
class _$ResponseMemberInfoCopyWithImpl<$Res, $Val extends ResponseMemberInfo>
    implements $ResponseMemberInfoCopyWith<$Res> {
  _$ResponseMemberInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ResponseMemberInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? balance = null,
    Object? card = null,
    Object? level = null,
    Object? nickname = null,
    Object? points = null,
    Object? uuid = null,
  }) {
    return _then(_value.copyWith(
      balance: null == balance
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as double,
      card: null == card
          ? _value.card
          : card // ignore: cast_nullable_to_non_nullable
              as ResponseMemberCard,
      level: null == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as ResponseMemberLevel,
      nickname: null == nickname
          ? _value.nickname
          : nickname // ignore: cast_nullable_to_non_nullable
              as String,
      points: null == points
          ? _value.points
          : points // ignore: cast_nullable_to_non_nullable
              as double,
      uuid: null == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }

  /// Create a copy of ResponseMemberInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ResponseMemberCardCopyWith<$Res> get card {
    return $ResponseMemberCardCopyWith<$Res>(_value.card, (value) {
      return _then(_value.copyWith(card: value) as $Val);
    });
  }

  /// Create a copy of ResponseMemberInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ResponseMemberLevelCopyWith<$Res> get level {
    return $ResponseMemberLevelCopyWith<$Res>(_value.level, (value) {
      return _then(_value.copyWith(level: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ResponseMemberInfoImplCopyWith<$Res>
    implements $ResponseMemberInfoCopyWith<$Res> {
  factory _$$ResponseMemberInfoImplCopyWith(_$ResponseMemberInfoImpl value,
          $Res Function(_$ResponseMemberInfoImpl) then) =
      __$$ResponseMemberInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "balance") double balance,
      @JsonKey(name: "card") ResponseMemberCard card,
      @JsonKey(name: "level") ResponseMemberLevel level,
      @JsonKey(name: "nickname") String nickname,
      @JsonKey(name: "points") double points,
      @JsonKey(name: "uuid") int uuid});

  @override
  $ResponseMemberCardCopyWith<$Res> get card;
  @override
  $ResponseMemberLevelCopyWith<$Res> get level;
}

/// @nodoc
class __$$ResponseMemberInfoImplCopyWithImpl<$Res>
    extends _$ResponseMemberInfoCopyWithImpl<$Res, _$ResponseMemberInfoImpl>
    implements _$$ResponseMemberInfoImplCopyWith<$Res> {
  __$$ResponseMemberInfoImplCopyWithImpl(_$ResponseMemberInfoImpl _value,
      $Res Function(_$ResponseMemberInfoImpl) _then)
      : super(_value, _then);

  /// Create a copy of ResponseMemberInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? balance = null,
    Object? card = null,
    Object? level = null,
    Object? nickname = null,
    Object? points = null,
    Object? uuid = null,
  }) {
    return _then(_$ResponseMemberInfoImpl(
      balance: null == balance
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as double,
      card: null == card
          ? _value.card
          : card // ignore: cast_nullable_to_non_nullable
              as ResponseMemberCard,
      level: null == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as ResponseMemberLevel,
      nickname: null == nickname
          ? _value.nickname
          : nickname // ignore: cast_nullable_to_non_nullable
              as String,
      points: null == points
          ? _value.points
          : points // ignore: cast_nullable_to_non_nullable
              as double,
      uuid: null == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ResponseMemberInfoImpl implements _ResponseMemberInfo {
  const _$ResponseMemberInfoImpl(
      {@JsonKey(name: "balance") required this.balance,
      @JsonKey(name: "card") required this.card,
      @JsonKey(name: "level") required this.level,
      @JsonKey(name: "nickname") required this.nickname,
      @JsonKey(name: "points") required this.points,
      @JsonKey(name: "uuid") required this.uuid});

  factory _$ResponseMemberInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResponseMemberInfoImplFromJson(json);

  @override
  @JsonKey(name: "balance")
  final double balance;
  @override
  @JsonKey(name: "card")
  final ResponseMemberCard card;
  @override
  @JsonKey(name: "level")
  final ResponseMemberLevel level;
  @override
  @JsonKey(name: "nickname")
  final String nickname;
  @override
  @JsonKey(name: "points")
  final double points;
  @override
  @JsonKey(name: "uuid")
  final int uuid;

  @override
  String toString() {
    return 'ResponseMemberInfo(balance: $balance, card: $card, level: $level, nickname: $nickname, points: $points, uuid: $uuid)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResponseMemberInfoImpl &&
            (identical(other.balance, balance) || other.balance == balance) &&
            (identical(other.card, card) || other.card == card) &&
            (identical(other.level, level) || other.level == level) &&
            (identical(other.nickname, nickname) ||
                other.nickname == nickname) &&
            (identical(other.points, points) || other.points == points) &&
            (identical(other.uuid, uuid) || other.uuid == uuid));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, balance, card, level, nickname, points, uuid);

  /// Create a copy of ResponseMemberInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ResponseMemberInfoImplCopyWith<_$ResponseMemberInfoImpl> get copyWith =>
      __$$ResponseMemberInfoImplCopyWithImpl<_$ResponseMemberInfoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResponseMemberInfoImplToJson(
      this,
    );
  }
}

abstract class _ResponseMemberInfo implements ResponseMemberInfo {
  const factory _ResponseMemberInfo(
          {@JsonKey(name: "balance") required final double balance,
          @JsonKey(name: "card") required final ResponseMemberCard card,
          @JsonKey(name: "level") required final ResponseMemberLevel level,
          @JsonKey(name: "nickname") required final String nickname,
          @JsonKey(name: "points") required final double points,
          @JsonKey(name: "uuid") required final int uuid}) =
      _$ResponseMemberInfoImpl;

  factory _ResponseMemberInfo.fromJson(Map<String, dynamic> json) =
      _$ResponseMemberInfoImpl.fromJson;

  @override
  @JsonKey(name: "balance")
  double get balance;
  @override
  @JsonKey(name: "card")
  ResponseMemberCard get card;
  @override
  @JsonKey(name: "level")
  ResponseMemberLevel get level;
  @override
  @JsonKey(name: "nickname")
  String get nickname;
  @override
  @JsonKey(name: "points")
  double get points;
  @override
  @JsonKey(name: "uuid")
  int get uuid;

  /// Create a copy of ResponseMemberInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ResponseMemberInfoImplCopyWith<_$ResponseMemberInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

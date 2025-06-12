// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'member.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Member _$MemberFromJson(Map<String, dynamic> json) {
  return _Member.fromJson(json);
}

/// @nodoc
mixin _$Member {
  @JsonKey(name: "balance")
  SafetyNumber get balance => throw _privateConstructorUsedError;
  @JsonKey(name: "card")
  MemberCard get card => throw _privateConstructorUsedError;
  @JsonKey(name: "level")
  MemberLevel get level => throw _privateConstructorUsedError;
  @JsonKey(name: "nickname")
  String get nickname => throw _privateConstructorUsedError;
  @JsonKey(name: "phone")
  String? get phone => throw _privateConstructorUsedError;
  @JsonKey(name: "points")
  SafetyNumber get points => throw _privateConstructorUsedError;
  @JsonKey(name: "uuid")
  int get uuid => throw _privateConstructorUsedError;

  /// Serializes this Member to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Member
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MemberCopyWith<Member> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MemberCopyWith<$Res> {
  factory $MemberCopyWith(Member value, $Res Function(Member) then) =
      _$MemberCopyWithImpl<$Res, Member>;
  @useResult
  $Res call(
      {@JsonKey(name: "balance") SafetyNumber balance,
      @JsonKey(name: "card") MemberCard card,
      @JsonKey(name: "level") MemberLevel level,
      @JsonKey(name: "nickname") String nickname,
      @JsonKey(name: "phone") String? phone,
      @JsonKey(name: "points") SafetyNumber points,
      @JsonKey(name: "uuid") int uuid});

  $SafetyNumberCopyWith<$Res> get balance;
  $MemberCardCopyWith<$Res> get card;
  $MemberLevelCopyWith<$Res> get level;
  $SafetyNumberCopyWith<$Res> get points;
}

/// @nodoc
class _$MemberCopyWithImpl<$Res, $Val extends Member>
    implements $MemberCopyWith<$Res> {
  _$MemberCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Member
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? balance = null,
    Object? card = null,
    Object? level = null,
    Object? nickname = null,
    Object? phone = freezed,
    Object? points = null,
    Object? uuid = null,
  }) {
    return _then(_value.copyWith(
      balance: null == balance
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as SafetyNumber,
      card: null == card
          ? _value.card
          : card // ignore: cast_nullable_to_non_nullable
              as MemberCard,
      level: null == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as MemberLevel,
      nickname: null == nickname
          ? _value.nickname
          : nickname // ignore: cast_nullable_to_non_nullable
              as String,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      points: null == points
          ? _value.points
          : points // ignore: cast_nullable_to_non_nullable
              as SafetyNumber,
      uuid: null == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }

  /// Create a copy of Member
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SafetyNumberCopyWith<$Res> get balance {
    return $SafetyNumberCopyWith<$Res>(_value.balance, (value) {
      return _then(_value.copyWith(balance: value) as $Val);
    });
  }

  /// Create a copy of Member
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MemberCardCopyWith<$Res> get card {
    return $MemberCardCopyWith<$Res>(_value.card, (value) {
      return _then(_value.copyWith(card: value) as $Val);
    });
  }

  /// Create a copy of Member
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MemberLevelCopyWith<$Res> get level {
    return $MemberLevelCopyWith<$Res>(_value.level, (value) {
      return _then(_value.copyWith(level: value) as $Val);
    });
  }

  /// Create a copy of Member
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SafetyNumberCopyWith<$Res> get points {
    return $SafetyNumberCopyWith<$Res>(_value.points, (value) {
      return _then(_value.copyWith(points: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MemberImplCopyWith<$Res> implements $MemberCopyWith<$Res> {
  factory _$$MemberImplCopyWith(
          _$MemberImpl value, $Res Function(_$MemberImpl) then) =
      __$$MemberImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "balance") SafetyNumber balance,
      @JsonKey(name: "card") MemberCard card,
      @JsonKey(name: "level") MemberLevel level,
      @JsonKey(name: "nickname") String nickname,
      @JsonKey(name: "phone") String? phone,
      @JsonKey(name: "points") SafetyNumber points,
      @JsonKey(name: "uuid") int uuid});

  @override
  $SafetyNumberCopyWith<$Res> get balance;
  @override
  $MemberCardCopyWith<$Res> get card;
  @override
  $MemberLevelCopyWith<$Res> get level;
  @override
  $SafetyNumberCopyWith<$Res> get points;
}

/// @nodoc
class __$$MemberImplCopyWithImpl<$Res>
    extends _$MemberCopyWithImpl<$Res, _$MemberImpl>
    implements _$$MemberImplCopyWith<$Res> {
  __$$MemberImplCopyWithImpl(
      _$MemberImpl _value, $Res Function(_$MemberImpl) _then)
      : super(_value, _then);

  /// Create a copy of Member
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? balance = null,
    Object? card = null,
    Object? level = null,
    Object? nickname = null,
    Object? phone = freezed,
    Object? points = null,
    Object? uuid = null,
  }) {
    return _then(_$MemberImpl(
      balance: null == balance
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as SafetyNumber,
      card: null == card
          ? _value.card
          : card // ignore: cast_nullable_to_non_nullable
              as MemberCard,
      level: null == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as MemberLevel,
      nickname: null == nickname
          ? _value.nickname
          : nickname // ignore: cast_nullable_to_non_nullable
              as String,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      points: null == points
          ? _value.points
          : points // ignore: cast_nullable_to_non_nullable
              as SafetyNumber,
      uuid: null == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MemberImpl implements _Member {
  const _$MemberImpl(
      {@JsonKey(name: "balance") required this.balance,
      @JsonKey(name: "card") required this.card,
      @JsonKey(name: "level") required this.level,
      @JsonKey(name: "nickname") required this.nickname,
      @JsonKey(name: "phone") this.phone,
      @JsonKey(name: "points") required this.points,
      @JsonKey(name: "uuid") required this.uuid});

  factory _$MemberImpl.fromJson(Map<String, dynamic> json) =>
      _$$MemberImplFromJson(json);

  @override
  @JsonKey(name: "balance")
  final SafetyNumber balance;
  @override
  @JsonKey(name: "card")
  final MemberCard card;
  @override
  @JsonKey(name: "level")
  final MemberLevel level;
  @override
  @JsonKey(name: "nickname")
  final String nickname;
  @override
  @JsonKey(name: "phone")
  final String? phone;
  @override
  @JsonKey(name: "points")
  final SafetyNumber points;
  @override
  @JsonKey(name: "uuid")
  final int uuid;

  @override
  String toString() {
    return 'Member(balance: $balance, card: $card, level: $level, nickname: $nickname, phone: $phone, points: $points, uuid: $uuid)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MemberImpl &&
            (identical(other.balance, balance) || other.balance == balance) &&
            (identical(other.card, card) || other.card == card) &&
            (identical(other.level, level) || other.level == level) &&
            (identical(other.nickname, nickname) ||
                other.nickname == nickname) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.points, points) || other.points == points) &&
            (identical(other.uuid, uuid) || other.uuid == uuid));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, balance, card, level, nickname, phone, points, uuid);

  /// Create a copy of Member
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MemberImplCopyWith<_$MemberImpl> get copyWith =>
      __$$MemberImplCopyWithImpl<_$MemberImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MemberImplToJson(
      this,
    );
  }
}

abstract class _Member implements Member {
  const factory _Member(
      {@JsonKey(name: "balance") required final SafetyNumber balance,
      @JsonKey(name: "card") required final MemberCard card,
      @JsonKey(name: "level") required final MemberLevel level,
      @JsonKey(name: "nickname") required final String nickname,
      @JsonKey(name: "phone") final String? phone,
      @JsonKey(name: "points") required final SafetyNumber points,
      @JsonKey(name: "uuid") required final int uuid}) = _$MemberImpl;

  factory _Member.fromJson(Map<String, dynamic> json) = _$MemberImpl.fromJson;

  @override
  @JsonKey(name: "balance")
  SafetyNumber get balance;
  @override
  @JsonKey(name: "card")
  MemberCard get card;
  @override
  @JsonKey(name: "level")
  MemberLevel get level;
  @override
  @JsonKey(name: "nickname")
  String get nickname;
  @override
  @JsonKey(name: "phone")
  String? get phone;
  @override
  @JsonKey(name: "points")
  SafetyNumber get points;
  @override
  @JsonKey(name: "uuid")
  int get uuid;

  /// Create a copy of Member
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MemberImplCopyWith<_$MemberImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MemberCard _$MemberCardFromJson(Map<String, dynamic> json) {
  return _MemberCard.fromJson(json);
}

/// @nodoc
mixin _$MemberCard {
  @JsonKey(name: "name")
  String? get name => throw _privateConstructorUsedError;

  /// Serializes this MemberCard to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MemberCard
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MemberCardCopyWith<MemberCard> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MemberCardCopyWith<$Res> {
  factory $MemberCardCopyWith(
          MemberCard value, $Res Function(MemberCard) then) =
      _$MemberCardCopyWithImpl<$Res, MemberCard>;
  @useResult
  $Res call({@JsonKey(name: "name") String? name});
}

/// @nodoc
class _$MemberCardCopyWithImpl<$Res, $Val extends MemberCard>
    implements $MemberCardCopyWith<$Res> {
  _$MemberCardCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MemberCard
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MemberCardImplCopyWith<$Res>
    implements $MemberCardCopyWith<$Res> {
  factory _$$MemberCardImplCopyWith(
          _$MemberCardImpl value, $Res Function(_$MemberCardImpl) then) =
      __$$MemberCardImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: "name") String? name});
}

/// @nodoc
class __$$MemberCardImplCopyWithImpl<$Res>
    extends _$MemberCardCopyWithImpl<$Res, _$MemberCardImpl>
    implements _$$MemberCardImplCopyWith<$Res> {
  __$$MemberCardImplCopyWithImpl(
      _$MemberCardImpl _value, $Res Function(_$MemberCardImpl) _then)
      : super(_value, _then);

  /// Create a copy of MemberCard
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
  }) {
    return _then(_$MemberCardImpl(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MemberCardImpl implements _MemberCard {
  const _$MemberCardImpl({@JsonKey(name: "name") this.name});

  factory _$MemberCardImpl.fromJson(Map<String, dynamic> json) =>
      _$$MemberCardImplFromJson(json);

  @override
  @JsonKey(name: "name")
  final String? name;

  @override
  String toString() {
    return 'MemberCard(name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MemberCardImpl &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name);

  /// Create a copy of MemberCard
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MemberCardImplCopyWith<_$MemberCardImpl> get copyWith =>
      __$$MemberCardImplCopyWithImpl<_$MemberCardImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MemberCardImplToJson(
      this,
    );
  }
}

abstract class _MemberCard implements MemberCard {
  const factory _MemberCard({@JsonKey(name: "name") final String? name}) =
      _$MemberCardImpl;

  factory _MemberCard.fromJson(Map<String, dynamic> json) =
      _$MemberCardImpl.fromJson;

  @override
  @JsonKey(name: "name")
  String? get name;

  /// Create a copy of MemberCard
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MemberCardImplCopyWith<_$MemberCardImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MemberLevel _$MemberLevelFromJson(Map<String, dynamic> json) {
  return _MemberLevel.fromJson(json);
}

/// @nodoc
mixin _$MemberLevel {
  @JsonKey(name: "name")
  String? get name => throw _privateConstructorUsedError;

  /// Serializes this MemberLevel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MemberLevel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MemberLevelCopyWith<MemberLevel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MemberLevelCopyWith<$Res> {
  factory $MemberLevelCopyWith(
          MemberLevel value, $Res Function(MemberLevel) then) =
      _$MemberLevelCopyWithImpl<$Res, MemberLevel>;
  @useResult
  $Res call({@JsonKey(name: "name") String? name});
}

/// @nodoc
class _$MemberLevelCopyWithImpl<$Res, $Val extends MemberLevel>
    implements $MemberLevelCopyWith<$Res> {
  _$MemberLevelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MemberLevel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MemberLevelImplCopyWith<$Res>
    implements $MemberLevelCopyWith<$Res> {
  factory _$$MemberLevelImplCopyWith(
          _$MemberLevelImpl value, $Res Function(_$MemberLevelImpl) then) =
      __$$MemberLevelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: "name") String? name});
}

/// @nodoc
class __$$MemberLevelImplCopyWithImpl<$Res>
    extends _$MemberLevelCopyWithImpl<$Res, _$MemberLevelImpl>
    implements _$$MemberLevelImplCopyWith<$Res> {
  __$$MemberLevelImplCopyWithImpl(
      _$MemberLevelImpl _value, $Res Function(_$MemberLevelImpl) _then)
      : super(_value, _then);

  /// Create a copy of MemberLevel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
  }) {
    return _then(_$MemberLevelImpl(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MemberLevelImpl implements _MemberLevel {
  const _$MemberLevelImpl({@JsonKey(name: "name") this.name});

  factory _$MemberLevelImpl.fromJson(Map<String, dynamic> json) =>
      _$$MemberLevelImplFromJson(json);

  @override
  @JsonKey(name: "name")
  final String? name;

  @override
  String toString() {
    return 'MemberLevel(name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MemberLevelImpl &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name);

  /// Create a copy of MemberLevel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MemberLevelImplCopyWith<_$MemberLevelImpl> get copyWith =>
      __$$MemberLevelImplCopyWithImpl<_$MemberLevelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MemberLevelImplToJson(
      this,
    );
  }
}

abstract class _MemberLevel implements MemberLevel {
  const factory _MemberLevel({@JsonKey(name: "name") final String? name}) =
      _$MemberLevelImpl;

  factory _MemberLevel.fromJson(Map<String, dynamic> json) =
      _$MemberLevelImpl.fromJson;

  @override
  @JsonKey(name: "name")
  String? get name;

  /// Create a copy of MemberLevel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MemberLevelImplCopyWith<_$MemberLevelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

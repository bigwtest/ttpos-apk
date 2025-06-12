// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'top_up_reverse_settle_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TopUpReverseSettleInfo _$TopUpReverseSettleInfoFromJson(
    Map<String, dynamic> json) {
  return _TopUpReverseSettleInfo.fromJson(json);
}

/// @nodoc
mixin _$TopUpReverseSettleInfo {
  @JsonKey(name: "member_info")
  MemberInfo get memberInfo => throw _privateConstructorUsedError;
  @JsonKey(name: "member_info")
  set memberInfo(MemberInfo value) => throw _privateConstructorUsedError;
  @JsonKey(name: "message")
  String get message => throw _privateConstructorUsedError;
  @JsonKey(name: "message")
  set message(String value) => throw _privateConstructorUsedError;
  @JsonKey(name: "status")
  int get status => throw _privateConstructorUsedError;
  @JsonKey(name: "status")
  set status(int value) => throw _privateConstructorUsedError;

  /// Serializes this TopUpReverseSettleInfo to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TopUpReverseSettleInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TopUpReverseSettleInfoCopyWith<TopUpReverseSettleInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TopUpReverseSettleInfoCopyWith<$Res> {
  factory $TopUpReverseSettleInfoCopyWith(TopUpReverseSettleInfo value,
          $Res Function(TopUpReverseSettleInfo) then) =
      _$TopUpReverseSettleInfoCopyWithImpl<$Res, TopUpReverseSettleInfo>;
  @useResult
  $Res call(
      {@JsonKey(name: "member_info") MemberInfo memberInfo,
      @JsonKey(name: "message") String message,
      @JsonKey(name: "status") int status});

  $MemberInfoCopyWith<$Res> get memberInfo;
}

/// @nodoc
class _$TopUpReverseSettleInfoCopyWithImpl<$Res,
        $Val extends TopUpReverseSettleInfo>
    implements $TopUpReverseSettleInfoCopyWith<$Res> {
  _$TopUpReverseSettleInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TopUpReverseSettleInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? memberInfo = null,
    Object? message = null,
    Object? status = null,
  }) {
    return _then(_value.copyWith(
      memberInfo: null == memberInfo
          ? _value.memberInfo
          : memberInfo // ignore: cast_nullable_to_non_nullable
              as MemberInfo,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }

  /// Create a copy of TopUpReverseSettleInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MemberInfoCopyWith<$Res> get memberInfo {
    return $MemberInfoCopyWith<$Res>(_value.memberInfo, (value) {
      return _then(_value.copyWith(memberInfo: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TopUpReverseSettleInfoImplCopyWith<$Res>
    implements $TopUpReverseSettleInfoCopyWith<$Res> {
  factory _$$TopUpReverseSettleInfoImplCopyWith(
          _$TopUpReverseSettleInfoImpl value,
          $Res Function(_$TopUpReverseSettleInfoImpl) then) =
      __$$TopUpReverseSettleInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "member_info") MemberInfo memberInfo,
      @JsonKey(name: "message") String message,
      @JsonKey(name: "status") int status});

  @override
  $MemberInfoCopyWith<$Res> get memberInfo;
}

/// @nodoc
class __$$TopUpReverseSettleInfoImplCopyWithImpl<$Res>
    extends _$TopUpReverseSettleInfoCopyWithImpl<$Res,
        _$TopUpReverseSettleInfoImpl>
    implements _$$TopUpReverseSettleInfoImplCopyWith<$Res> {
  __$$TopUpReverseSettleInfoImplCopyWithImpl(
      _$TopUpReverseSettleInfoImpl _value,
      $Res Function(_$TopUpReverseSettleInfoImpl) _then)
      : super(_value, _then);

  /// Create a copy of TopUpReverseSettleInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? memberInfo = null,
    Object? message = null,
    Object? status = null,
  }) {
    return _then(_$TopUpReverseSettleInfoImpl(
      memberInfo: null == memberInfo
          ? _value.memberInfo
          : memberInfo // ignore: cast_nullable_to_non_nullable
              as MemberInfo,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TopUpReverseSettleInfoImpl implements _TopUpReverseSettleInfo {
  _$TopUpReverseSettleInfoImpl(
      {@JsonKey(name: "member_info") required this.memberInfo,
      @JsonKey(name: "message") required this.message,
      @JsonKey(name: "status") required this.status});

  factory _$TopUpReverseSettleInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$TopUpReverseSettleInfoImplFromJson(json);

  @override
  @JsonKey(name: "member_info")
  MemberInfo memberInfo;
  @override
  @JsonKey(name: "message")
  String message;
  @override
  @JsonKey(name: "status")
  int status;

  @override
  String toString() {
    return 'TopUpReverseSettleInfo(memberInfo: $memberInfo, message: $message, status: $status)';
  }

  /// Create a copy of TopUpReverseSettleInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TopUpReverseSettleInfoImplCopyWith<_$TopUpReverseSettleInfoImpl>
      get copyWith => __$$TopUpReverseSettleInfoImplCopyWithImpl<
          _$TopUpReverseSettleInfoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TopUpReverseSettleInfoImplToJson(
      this,
    );
  }
}

abstract class _TopUpReverseSettleInfo implements TopUpReverseSettleInfo {
  factory _TopUpReverseSettleInfo(
          {@JsonKey(name: "member_info") required MemberInfo memberInfo,
          @JsonKey(name: "message") required String message,
          @JsonKey(name: "status") required int status}) =
      _$TopUpReverseSettleInfoImpl;

  factory _TopUpReverseSettleInfo.fromJson(Map<String, dynamic> json) =
      _$TopUpReverseSettleInfoImpl.fromJson;

  @override
  @JsonKey(name: "member_info")
  MemberInfo get memberInfo;
  @JsonKey(name: "member_info")
  set memberInfo(MemberInfo value);
  @override
  @JsonKey(name: "message")
  String get message;
  @JsonKey(name: "message")
  set message(String value);
  @override
  @JsonKey(name: "status")
  int get status;
  @JsonKey(name: "status")
  set status(int value);

  /// Create a copy of TopUpReverseSettleInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TopUpReverseSettleInfoImplCopyWith<_$TopUpReverseSettleInfoImpl>
      get copyWith => throw _privateConstructorUsedError;
}

MemberInfo _$MemberInfoFromJson(Map<String, dynamic> json) {
  return _MemberInfo.fromJson(json);
}

/// @nodoc
mixin _$MemberInfo {
  @JsonKey(name: "balance")
  double get balance => throw _privateConstructorUsedError;
  @JsonKey(name: "gift_balance")
  double get giftBalance => throw _privateConstructorUsedError;
  @JsonKey(name: "nickname")
  String get nickname => throw _privateConstructorUsedError;
  @JsonKey(name: "points")
  double get points => throw _privateConstructorUsedError;
  @JsonKey(name: "uuid")
  int get uuid => throw _privateConstructorUsedError;

  /// Serializes this MemberInfo to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MemberInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MemberInfoCopyWith<MemberInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MemberInfoCopyWith<$Res> {
  factory $MemberInfoCopyWith(
          MemberInfo value, $Res Function(MemberInfo) then) =
      _$MemberInfoCopyWithImpl<$Res, MemberInfo>;
  @useResult
  $Res call(
      {@JsonKey(name: "balance") double balance,
      @JsonKey(name: "gift_balance") double giftBalance,
      @JsonKey(name: "nickname") String nickname,
      @JsonKey(name: "points") double points,
      @JsonKey(name: "uuid") int uuid});
}

/// @nodoc
class _$MemberInfoCopyWithImpl<$Res, $Val extends MemberInfo>
    implements $MemberInfoCopyWith<$Res> {
  _$MemberInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MemberInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? balance = null,
    Object? giftBalance = null,
    Object? nickname = null,
    Object? points = null,
    Object? uuid = null,
  }) {
    return _then(_value.copyWith(
      balance: null == balance
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as double,
      giftBalance: null == giftBalance
          ? _value.giftBalance
          : giftBalance // ignore: cast_nullable_to_non_nullable
              as double,
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
}

/// @nodoc
abstract class _$$MemberInfoImplCopyWith<$Res>
    implements $MemberInfoCopyWith<$Res> {
  factory _$$MemberInfoImplCopyWith(
          _$MemberInfoImpl value, $Res Function(_$MemberInfoImpl) then) =
      __$$MemberInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "balance") double balance,
      @JsonKey(name: "gift_balance") double giftBalance,
      @JsonKey(name: "nickname") String nickname,
      @JsonKey(name: "points") double points,
      @JsonKey(name: "uuid") int uuid});
}

/// @nodoc
class __$$MemberInfoImplCopyWithImpl<$Res>
    extends _$MemberInfoCopyWithImpl<$Res, _$MemberInfoImpl>
    implements _$$MemberInfoImplCopyWith<$Res> {
  __$$MemberInfoImplCopyWithImpl(
      _$MemberInfoImpl _value, $Res Function(_$MemberInfoImpl) _then)
      : super(_value, _then);

  /// Create a copy of MemberInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? balance = null,
    Object? giftBalance = null,
    Object? nickname = null,
    Object? points = null,
    Object? uuid = null,
  }) {
    return _then(_$MemberInfoImpl(
      balance: null == balance
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as double,
      giftBalance: null == giftBalance
          ? _value.giftBalance
          : giftBalance // ignore: cast_nullable_to_non_nullable
              as double,
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
class _$MemberInfoImpl implements _MemberInfo {
  const _$MemberInfoImpl(
      {@JsonKey(name: "balance") required this.balance,
      @JsonKey(name: "gift_balance") required this.giftBalance,
      @JsonKey(name: "nickname") required this.nickname,
      @JsonKey(name: "points") required this.points,
      @JsonKey(name: "uuid") required this.uuid});

  factory _$MemberInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$MemberInfoImplFromJson(json);

  @override
  @JsonKey(name: "balance")
  final double balance;
  @override
  @JsonKey(name: "gift_balance")
  final double giftBalance;
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
    return 'MemberInfo(balance: $balance, giftBalance: $giftBalance, nickname: $nickname, points: $points, uuid: $uuid)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MemberInfoImpl &&
            (identical(other.balance, balance) || other.balance == balance) &&
            (identical(other.giftBalance, giftBalance) ||
                other.giftBalance == giftBalance) &&
            (identical(other.nickname, nickname) ||
                other.nickname == nickname) &&
            (identical(other.points, points) || other.points == points) &&
            (identical(other.uuid, uuid) || other.uuid == uuid));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, balance, giftBalance, nickname, points, uuid);

  /// Create a copy of MemberInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MemberInfoImplCopyWith<_$MemberInfoImpl> get copyWith =>
      __$$MemberInfoImplCopyWithImpl<_$MemberInfoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MemberInfoImplToJson(
      this,
    );
  }
}

abstract class _MemberInfo implements MemberInfo {
  const factory _MemberInfo(
      {@JsonKey(name: "balance") required final double balance,
      @JsonKey(name: "gift_balance") required final double giftBalance,
      @JsonKey(name: "nickname") required final String nickname,
      @JsonKey(name: "points") required final double points,
      @JsonKey(name: "uuid") required final int uuid}) = _$MemberInfoImpl;

  factory _MemberInfo.fromJson(Map<String, dynamic> json) =
      _$MemberInfoImpl.fromJson;

  @override
  @JsonKey(name: "balance")
  double get balance;
  @override
  @JsonKey(name: "gift_balance")
  double get giftBalance;
  @override
  @JsonKey(name: "nickname")
  String get nickname;
  @override
  @JsonKey(name: "points")
  double get points;
  @override
  @JsonKey(name: "uuid")
  int get uuid;

  /// Create a copy of MemberInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MemberInfoImplCopyWith<_$MemberInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

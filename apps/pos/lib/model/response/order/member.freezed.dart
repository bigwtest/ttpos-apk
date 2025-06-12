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

ResponseMemberData _$ResponseMemberDataFromJson(Map<String, dynamic> json) {
  return _ResponseMemberData.fromJson(json);
}

/// @nodoc
mixin _$ResponseMemberData {
// 会员
  @JsonKey(name: "list")
  List<ResponseMember> get list => throw _privateConstructorUsedError; //
  @JsonKey(name: "extra")
  ResponseMemberExtra get extra => throw _privateConstructorUsedError;

  /// Serializes this ResponseMemberData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ResponseMemberData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ResponseMemberDataCopyWith<ResponseMemberData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResponseMemberDataCopyWith<$Res> {
  factory $ResponseMemberDataCopyWith(
          ResponseMemberData value, $Res Function(ResponseMemberData) then) =
      _$ResponseMemberDataCopyWithImpl<$Res, ResponseMemberData>;
  @useResult
  $Res call(
      {@JsonKey(name: "list") List<ResponseMember> list,
      @JsonKey(name: "extra") ResponseMemberExtra extra});

  $ResponseMemberExtraCopyWith<$Res> get extra;
}

/// @nodoc
class _$ResponseMemberDataCopyWithImpl<$Res, $Val extends ResponseMemberData>
    implements $ResponseMemberDataCopyWith<$Res> {
  _$ResponseMemberDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ResponseMemberData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? list = null,
    Object? extra = null,
  }) {
    return _then(_value.copyWith(
      list: null == list
          ? _value.list
          : list // ignore: cast_nullable_to_non_nullable
              as List<ResponseMember>,
      extra: null == extra
          ? _value.extra
          : extra // ignore: cast_nullable_to_non_nullable
              as ResponseMemberExtra,
    ) as $Val);
  }

  /// Create a copy of ResponseMemberData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ResponseMemberExtraCopyWith<$Res> get extra {
    return $ResponseMemberExtraCopyWith<$Res>(_value.extra, (value) {
      return _then(_value.copyWith(extra: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ResponseMemberDataImplCopyWith<$Res>
    implements $ResponseMemberDataCopyWith<$Res> {
  factory _$$ResponseMemberDataImplCopyWith(_$ResponseMemberDataImpl value,
          $Res Function(_$ResponseMemberDataImpl) then) =
      __$$ResponseMemberDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "list") List<ResponseMember> list,
      @JsonKey(name: "extra") ResponseMemberExtra extra});

  @override
  $ResponseMemberExtraCopyWith<$Res> get extra;
}

/// @nodoc
class __$$ResponseMemberDataImplCopyWithImpl<$Res>
    extends _$ResponseMemberDataCopyWithImpl<$Res, _$ResponseMemberDataImpl>
    implements _$$ResponseMemberDataImplCopyWith<$Res> {
  __$$ResponseMemberDataImplCopyWithImpl(_$ResponseMemberDataImpl _value,
      $Res Function(_$ResponseMemberDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of ResponseMemberData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? list = null,
    Object? extra = null,
  }) {
    return _then(_$ResponseMemberDataImpl(
      list: null == list
          ? _value._list
          : list // ignore: cast_nullable_to_non_nullable
              as List<ResponseMember>,
      extra: null == extra
          ? _value.extra
          : extra // ignore: cast_nullable_to_non_nullable
              as ResponseMemberExtra,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ResponseMemberDataImpl implements _ResponseMemberData {
  _$ResponseMemberDataImpl(
      {@JsonKey(name: "list") required final List<ResponseMember> list,
      @JsonKey(name: "extra") required this.extra})
      : _list = list;

  factory _$ResponseMemberDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResponseMemberDataImplFromJson(json);

// 会员
  final List<ResponseMember> _list;
// 会员
  @override
  @JsonKey(name: "list")
  List<ResponseMember> get list {
    if (_list is EqualUnmodifiableListView) return _list;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_list);
  }

//
  @override
  @JsonKey(name: "extra")
  final ResponseMemberExtra extra;

  @override
  String toString() {
    return 'ResponseMemberData(list: $list, extra: $extra)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResponseMemberDataImpl &&
            const DeepCollectionEquality().equals(other._list, _list) &&
            (identical(other.extra, extra) || other.extra == extra));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_list), extra);

  /// Create a copy of ResponseMemberData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ResponseMemberDataImplCopyWith<_$ResponseMemberDataImpl> get copyWith =>
      __$$ResponseMemberDataImplCopyWithImpl<_$ResponseMemberDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResponseMemberDataImplToJson(
      this,
    );
  }
}

abstract class _ResponseMemberData implements ResponseMemberData {
  factory _ResponseMemberData(
          {@JsonKey(name: "list") required final List<ResponseMember> list,
          @JsonKey(name: "extra") required final ResponseMemberExtra extra}) =
      _$ResponseMemberDataImpl;

  factory _ResponseMemberData.fromJson(Map<String, dynamic> json) =
      _$ResponseMemberDataImpl.fromJson;

// 会员
  @override
  @JsonKey(name: "list")
  List<ResponseMember> get list; //
  @override
  @JsonKey(name: "extra")
  ResponseMemberExtra get extra;

  /// Create a copy of ResponseMemberData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ResponseMemberDataImplCopyWith<_$ResponseMemberDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ResponseMember _$ResponseMemberFromJson(Map<String, dynamic> json) {
  return _ResponseMember.fromJson(json);
}

/// @nodoc
mixin _$ResponseMember {
// 会员UUID
  @JsonKey(name: "uuid")
  int get uuid => throw _privateConstructorUsedError; // 会员名称
  @JsonKey(name: "nickname")
  String get nickname => throw _privateConstructorUsedError; // 会员手机号
  @JsonKey(name: "phone")
  String get phone => throw _privateConstructorUsedError;

  /// Serializes this ResponseMember to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ResponseMember
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ResponseMemberCopyWith<ResponseMember> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResponseMemberCopyWith<$Res> {
  factory $ResponseMemberCopyWith(
          ResponseMember value, $Res Function(ResponseMember) then) =
      _$ResponseMemberCopyWithImpl<$Res, ResponseMember>;
  @useResult
  $Res call(
      {@JsonKey(name: "uuid") int uuid,
      @JsonKey(name: "nickname") String nickname,
      @JsonKey(name: "phone") String phone});
}

/// @nodoc
class _$ResponseMemberCopyWithImpl<$Res, $Val extends ResponseMember>
    implements $ResponseMemberCopyWith<$Res> {
  _$ResponseMemberCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ResponseMember
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uuid = null,
    Object? nickname = null,
    Object? phone = null,
  }) {
    return _then(_value.copyWith(
      uuid: null == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as int,
      nickname: null == nickname
          ? _value.nickname
          : nickname // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ResponseMemberImplCopyWith<$Res>
    implements $ResponseMemberCopyWith<$Res> {
  factory _$$ResponseMemberImplCopyWith(_$ResponseMemberImpl value,
          $Res Function(_$ResponseMemberImpl) then) =
      __$$ResponseMemberImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "uuid") int uuid,
      @JsonKey(name: "nickname") String nickname,
      @JsonKey(name: "phone") String phone});
}

/// @nodoc
class __$$ResponseMemberImplCopyWithImpl<$Res>
    extends _$ResponseMemberCopyWithImpl<$Res, _$ResponseMemberImpl>
    implements _$$ResponseMemberImplCopyWith<$Res> {
  __$$ResponseMemberImplCopyWithImpl(
      _$ResponseMemberImpl _value, $Res Function(_$ResponseMemberImpl) _then)
      : super(_value, _then);

  /// Create a copy of ResponseMember
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uuid = null,
    Object? nickname = null,
    Object? phone = null,
  }) {
    return _then(_$ResponseMemberImpl(
      uuid: null == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as int,
      nickname: null == nickname
          ? _value.nickname
          : nickname // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ResponseMemberImpl implements _ResponseMember {
  _$ResponseMemberImpl(
      {@JsonKey(name: "uuid") required this.uuid,
      @JsonKey(name: "nickname") required this.nickname,
      @JsonKey(name: "phone") required this.phone});

  factory _$ResponseMemberImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResponseMemberImplFromJson(json);

// 会员UUID
  @override
  @JsonKey(name: "uuid")
  final int uuid;
// 会员名称
  @override
  @JsonKey(name: "nickname")
  final String nickname;
// 会员手机号
  @override
  @JsonKey(name: "phone")
  final String phone;

  @override
  String toString() {
    return 'ResponseMember(uuid: $uuid, nickname: $nickname, phone: $phone)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResponseMemberImpl &&
            (identical(other.uuid, uuid) || other.uuid == uuid) &&
            (identical(other.nickname, nickname) ||
                other.nickname == nickname) &&
            (identical(other.phone, phone) || other.phone == phone));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, uuid, nickname, phone);

  /// Create a copy of ResponseMember
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ResponseMemberImplCopyWith<_$ResponseMemberImpl> get copyWith =>
      __$$ResponseMemberImplCopyWithImpl<_$ResponseMemberImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResponseMemberImplToJson(
      this,
    );
  }
}

abstract class _ResponseMember implements ResponseMember {
  factory _ResponseMember(
          {@JsonKey(name: "uuid") required final int uuid,
          @JsonKey(name: "nickname") required final String nickname,
          @JsonKey(name: "phone") required final String phone}) =
      _$ResponseMemberImpl;

  factory _ResponseMember.fromJson(Map<String, dynamic> json) =
      _$ResponseMemberImpl.fromJson;

// 会员UUID
  @override
  @JsonKey(name: "uuid")
  int get uuid; // 会员名称
  @override
  @JsonKey(name: "nickname")
  String get nickname; // 会员手机号
  @override
  @JsonKey(name: "phone")
  String get phone;

  /// Create a copy of ResponseMember
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ResponseMemberImplCopyWith<_$ResponseMemberImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ResponseMemberExtra _$ResponseMemberExtraFromJson(Map<String, dynamic> json) {
  return _ResponseMemberExtra.fromJson(json);
}

/// @nodoc
mixin _$ResponseMemberExtra {
// 是否结账
  @JsonKey(name: "is_checkout")
  bool get isCheckout => throw _privateConstructorUsedError; // 是否部分结账
  @JsonKey(name: "is_partial_checkout")
  bool get isPartialCheckout => throw _privateConstructorUsedError;

  /// Serializes this ResponseMemberExtra to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ResponseMemberExtra
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ResponseMemberExtraCopyWith<ResponseMemberExtra> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResponseMemberExtraCopyWith<$Res> {
  factory $ResponseMemberExtraCopyWith(
          ResponseMemberExtra value, $Res Function(ResponseMemberExtra) then) =
      _$ResponseMemberExtraCopyWithImpl<$Res, ResponseMemberExtra>;
  @useResult
  $Res call(
      {@JsonKey(name: "is_checkout") bool isCheckout,
      @JsonKey(name: "is_partial_checkout") bool isPartialCheckout});
}

/// @nodoc
class _$ResponseMemberExtraCopyWithImpl<$Res, $Val extends ResponseMemberExtra>
    implements $ResponseMemberExtraCopyWith<$Res> {
  _$ResponseMemberExtraCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ResponseMemberExtra
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isCheckout = null,
    Object? isPartialCheckout = null,
  }) {
    return _then(_value.copyWith(
      isCheckout: null == isCheckout
          ? _value.isCheckout
          : isCheckout // ignore: cast_nullable_to_non_nullable
              as bool,
      isPartialCheckout: null == isPartialCheckout
          ? _value.isPartialCheckout
          : isPartialCheckout // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ResponseMemberExtraImplCopyWith<$Res>
    implements $ResponseMemberExtraCopyWith<$Res> {
  factory _$$ResponseMemberExtraImplCopyWith(_$ResponseMemberExtraImpl value,
          $Res Function(_$ResponseMemberExtraImpl) then) =
      __$$ResponseMemberExtraImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "is_checkout") bool isCheckout,
      @JsonKey(name: "is_partial_checkout") bool isPartialCheckout});
}

/// @nodoc
class __$$ResponseMemberExtraImplCopyWithImpl<$Res>
    extends _$ResponseMemberExtraCopyWithImpl<$Res, _$ResponseMemberExtraImpl>
    implements _$$ResponseMemberExtraImplCopyWith<$Res> {
  __$$ResponseMemberExtraImplCopyWithImpl(_$ResponseMemberExtraImpl _value,
      $Res Function(_$ResponseMemberExtraImpl) _then)
      : super(_value, _then);

  /// Create a copy of ResponseMemberExtra
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isCheckout = null,
    Object? isPartialCheckout = null,
  }) {
    return _then(_$ResponseMemberExtraImpl(
      isCheckout: null == isCheckout
          ? _value.isCheckout
          : isCheckout // ignore: cast_nullable_to_non_nullable
              as bool,
      isPartialCheckout: null == isPartialCheckout
          ? _value.isPartialCheckout
          : isPartialCheckout // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ResponseMemberExtraImpl implements _ResponseMemberExtra {
  _$ResponseMemberExtraImpl(
      {@JsonKey(name: "is_checkout") required this.isCheckout,
      @JsonKey(name: "is_partial_checkout") required this.isPartialCheckout});

  factory _$ResponseMemberExtraImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResponseMemberExtraImplFromJson(json);

// 是否结账
  @override
  @JsonKey(name: "is_checkout")
  final bool isCheckout;
// 是否部分结账
  @override
  @JsonKey(name: "is_partial_checkout")
  final bool isPartialCheckout;

  @override
  String toString() {
    return 'ResponseMemberExtra(isCheckout: $isCheckout, isPartialCheckout: $isPartialCheckout)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResponseMemberExtraImpl &&
            (identical(other.isCheckout, isCheckout) ||
                other.isCheckout == isCheckout) &&
            (identical(other.isPartialCheckout, isPartialCheckout) ||
                other.isPartialCheckout == isPartialCheckout));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, isCheckout, isPartialCheckout);

  /// Create a copy of ResponseMemberExtra
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ResponseMemberExtraImplCopyWith<_$ResponseMemberExtraImpl> get copyWith =>
      __$$ResponseMemberExtraImplCopyWithImpl<_$ResponseMemberExtraImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResponseMemberExtraImplToJson(
      this,
    );
  }
}

abstract class _ResponseMemberExtra implements ResponseMemberExtra {
  factory _ResponseMemberExtra(
      {@JsonKey(name: "is_checkout") required final bool isCheckout,
      @JsonKey(name: "is_partial_checkout")
      required final bool isPartialCheckout}) = _$ResponseMemberExtraImpl;

  factory _ResponseMemberExtra.fromJson(Map<String, dynamic> json) =
      _$ResponseMemberExtraImpl.fromJson;

// 是否结账
  @override
  @JsonKey(name: "is_checkout")
  bool get isCheckout; // 是否部分结账
  @override
  @JsonKey(name: "is_partial_checkout")
  bool get isPartialCheckout;

  /// Create a copy of ResponseMemberExtra
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ResponseMemberExtraImplCopyWith<_$ResponseMemberExtraImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

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

RequestGetMemberDiscount _$RequestGetMemberDiscountFromJson(
    Map<String, dynamic> json) {
  return _RequestGetMemberDiscount.fromJson(json);
}

/// @nodoc
mixin _$RequestGetMemberDiscount {
  @JsonKey(name: "sale_bill_uuid")
  int get saleBillUuid => throw _privateConstructorUsedError;
  @JsonKey(name: "sale_bill_uuid")
  set saleBillUuid(int value) => throw _privateConstructorUsedError;
  @JsonKey(name: "sale_order_uuid")
  int get saleOrderUuid => throw _privateConstructorUsedError;
  @JsonKey(name: "sale_order_uuid")
  set saleOrderUuid(int value) => throw _privateConstructorUsedError;
  @JsonKey(name: "member_uuid")
  int get memberUuid => throw _privateConstructorUsedError;
  @JsonKey(name: "member_uuid")
  set memberUuid(int value) => throw _privateConstructorUsedError;

  /// Serializes this RequestGetMemberDiscount to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RequestGetMemberDiscount
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RequestGetMemberDiscountCopyWith<RequestGetMemberDiscount> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RequestGetMemberDiscountCopyWith<$Res> {
  factory $RequestGetMemberDiscountCopyWith(RequestGetMemberDiscount value,
          $Res Function(RequestGetMemberDiscount) then) =
      _$RequestGetMemberDiscountCopyWithImpl<$Res, RequestGetMemberDiscount>;
  @useResult
  $Res call(
      {@JsonKey(name: "sale_bill_uuid") int saleBillUuid,
      @JsonKey(name: "sale_order_uuid") int saleOrderUuid,
      @JsonKey(name: "member_uuid") int memberUuid});
}

/// @nodoc
class _$RequestGetMemberDiscountCopyWithImpl<$Res,
        $Val extends RequestGetMemberDiscount>
    implements $RequestGetMemberDiscountCopyWith<$Res> {
  _$RequestGetMemberDiscountCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RequestGetMemberDiscount
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? saleBillUuid = null,
    Object? saleOrderUuid = null,
    Object? memberUuid = null,
  }) {
    return _then(_value.copyWith(
      saleBillUuid: null == saleBillUuid
          ? _value.saleBillUuid
          : saleBillUuid // ignore: cast_nullable_to_non_nullable
              as int,
      saleOrderUuid: null == saleOrderUuid
          ? _value.saleOrderUuid
          : saleOrderUuid // ignore: cast_nullable_to_non_nullable
              as int,
      memberUuid: null == memberUuid
          ? _value.memberUuid
          : memberUuid // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RequestGetMemberDiscountImplCopyWith<$Res>
    implements $RequestGetMemberDiscountCopyWith<$Res> {
  factory _$$RequestGetMemberDiscountImplCopyWith(
          _$RequestGetMemberDiscountImpl value,
          $Res Function(_$RequestGetMemberDiscountImpl) then) =
      __$$RequestGetMemberDiscountImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "sale_bill_uuid") int saleBillUuid,
      @JsonKey(name: "sale_order_uuid") int saleOrderUuid,
      @JsonKey(name: "member_uuid") int memberUuid});
}

/// @nodoc
class __$$RequestGetMemberDiscountImplCopyWithImpl<$Res>
    extends _$RequestGetMemberDiscountCopyWithImpl<$Res,
        _$RequestGetMemberDiscountImpl>
    implements _$$RequestGetMemberDiscountImplCopyWith<$Res> {
  __$$RequestGetMemberDiscountImplCopyWithImpl(
      _$RequestGetMemberDiscountImpl _value,
      $Res Function(_$RequestGetMemberDiscountImpl) _then)
      : super(_value, _then);

  /// Create a copy of RequestGetMemberDiscount
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? saleBillUuid = null,
    Object? saleOrderUuid = null,
    Object? memberUuid = null,
  }) {
    return _then(_$RequestGetMemberDiscountImpl(
      saleBillUuid: null == saleBillUuid
          ? _value.saleBillUuid
          : saleBillUuid // ignore: cast_nullable_to_non_nullable
              as int,
      saleOrderUuid: null == saleOrderUuid
          ? _value.saleOrderUuid
          : saleOrderUuid // ignore: cast_nullable_to_non_nullable
              as int,
      memberUuid: null == memberUuid
          ? _value.memberUuid
          : memberUuid // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RequestGetMemberDiscountImpl implements _RequestGetMemberDiscount {
  _$RequestGetMemberDiscountImpl(
      {@JsonKey(name: "sale_bill_uuid") required this.saleBillUuid,
      @JsonKey(name: "sale_order_uuid") required this.saleOrderUuid,
      @JsonKey(name: "member_uuid") required this.memberUuid});

  factory _$RequestGetMemberDiscountImpl.fromJson(Map<String, dynamic> json) =>
      _$$RequestGetMemberDiscountImplFromJson(json);

  @override
  @JsonKey(name: "sale_bill_uuid")
  int saleBillUuid;
  @override
  @JsonKey(name: "sale_order_uuid")
  int saleOrderUuid;
  @override
  @JsonKey(name: "member_uuid")
  int memberUuid;

  @override
  String toString() {
    return 'RequestGetMemberDiscount(saleBillUuid: $saleBillUuid, saleOrderUuid: $saleOrderUuid, memberUuid: $memberUuid)';
  }

  /// Create a copy of RequestGetMemberDiscount
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RequestGetMemberDiscountImplCopyWith<_$RequestGetMemberDiscountImpl>
      get copyWith => __$$RequestGetMemberDiscountImplCopyWithImpl<
          _$RequestGetMemberDiscountImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RequestGetMemberDiscountImplToJson(
      this,
    );
  }
}

abstract class _RequestGetMemberDiscount implements RequestGetMemberDiscount {
  factory _RequestGetMemberDiscount(
          {@JsonKey(name: "sale_bill_uuid") required int saleBillUuid,
          @JsonKey(name: "sale_order_uuid") required int saleOrderUuid,
          @JsonKey(name: "member_uuid") required int memberUuid}) =
      _$RequestGetMemberDiscountImpl;

  factory _RequestGetMemberDiscount.fromJson(Map<String, dynamic> json) =
      _$RequestGetMemberDiscountImpl.fromJson;

  @override
  @JsonKey(name: "sale_bill_uuid")
  int get saleBillUuid;
  @JsonKey(name: "sale_bill_uuid")
  set saleBillUuid(int value);
  @override
  @JsonKey(name: "sale_order_uuid")
  int get saleOrderUuid;
  @JsonKey(name: "sale_order_uuid")
  set saleOrderUuid(int value);
  @override
  @JsonKey(name: "member_uuid")
  int get memberUuid;
  @JsonKey(name: "member_uuid")
  set memberUuid(int value);

  /// Create a copy of RequestGetMemberDiscount
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RequestGetMemberDiscountImplCopyWith<_$RequestGetMemberDiscountImpl>
      get copyWith => throw _privateConstructorUsedError;
}

RequestUseMemberDiscount _$RequestUseMemberDiscountFromJson(
    Map<String, dynamic> json) {
  return _RequestUseMemberDiscount.fromJson(json);
}

/// @nodoc
mixin _$RequestUseMemberDiscount {
  @JsonKey(name: "sale_bill_uuid")
  int get saleBillUuid => throw _privateConstructorUsedError;
  @JsonKey(name: "sale_bill_uuid")
  set saleBillUuid(int value) => throw _privateConstructorUsedError;
  @JsonKey(name: "sale_order_uuid")
  int get saleOrderUuid => throw _privateConstructorUsedError;
  @JsonKey(name: "sale_order_uuid")
  set saleOrderUuid(int value) => throw _privateConstructorUsedError;
  @JsonKey(name: "member_uuid")
  int get memberUuid => throw _privateConstructorUsedError;
  @JsonKey(name: "member_uuid")
  set memberUuid(int value) => throw _privateConstructorUsedError;
  @JsonKey(name: "password")
  String? get password => throw _privateConstructorUsedError;
  @JsonKey(name: "password")
  set password(String? value) => throw _privateConstructorUsedError;

  /// Serializes this RequestUseMemberDiscount to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RequestUseMemberDiscount
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RequestUseMemberDiscountCopyWith<RequestUseMemberDiscount> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RequestUseMemberDiscountCopyWith<$Res> {
  factory $RequestUseMemberDiscountCopyWith(RequestUseMemberDiscount value,
          $Res Function(RequestUseMemberDiscount) then) =
      _$RequestUseMemberDiscountCopyWithImpl<$Res, RequestUseMemberDiscount>;
  @useResult
  $Res call(
      {@JsonKey(name: "sale_bill_uuid") int saleBillUuid,
      @JsonKey(name: "sale_order_uuid") int saleOrderUuid,
      @JsonKey(name: "member_uuid") int memberUuid,
      @JsonKey(name: "password") String? password});
}

/// @nodoc
class _$RequestUseMemberDiscountCopyWithImpl<$Res,
        $Val extends RequestUseMemberDiscount>
    implements $RequestUseMemberDiscountCopyWith<$Res> {
  _$RequestUseMemberDiscountCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RequestUseMemberDiscount
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? saleBillUuid = null,
    Object? saleOrderUuid = null,
    Object? memberUuid = null,
    Object? password = freezed,
  }) {
    return _then(_value.copyWith(
      saleBillUuid: null == saleBillUuid
          ? _value.saleBillUuid
          : saleBillUuid // ignore: cast_nullable_to_non_nullable
              as int,
      saleOrderUuid: null == saleOrderUuid
          ? _value.saleOrderUuid
          : saleOrderUuid // ignore: cast_nullable_to_non_nullable
              as int,
      memberUuid: null == memberUuid
          ? _value.memberUuid
          : memberUuid // ignore: cast_nullable_to_non_nullable
              as int,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RequestUseMemberDiscountImplCopyWith<$Res>
    implements $RequestUseMemberDiscountCopyWith<$Res> {
  factory _$$RequestUseMemberDiscountImplCopyWith(
          _$RequestUseMemberDiscountImpl value,
          $Res Function(_$RequestUseMemberDiscountImpl) then) =
      __$$RequestUseMemberDiscountImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "sale_bill_uuid") int saleBillUuid,
      @JsonKey(name: "sale_order_uuid") int saleOrderUuid,
      @JsonKey(name: "member_uuid") int memberUuid,
      @JsonKey(name: "password") String? password});
}

/// @nodoc
class __$$RequestUseMemberDiscountImplCopyWithImpl<$Res>
    extends _$RequestUseMemberDiscountCopyWithImpl<$Res,
        _$RequestUseMemberDiscountImpl>
    implements _$$RequestUseMemberDiscountImplCopyWith<$Res> {
  __$$RequestUseMemberDiscountImplCopyWithImpl(
      _$RequestUseMemberDiscountImpl _value,
      $Res Function(_$RequestUseMemberDiscountImpl) _then)
      : super(_value, _then);

  /// Create a copy of RequestUseMemberDiscount
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? saleBillUuid = null,
    Object? saleOrderUuid = null,
    Object? memberUuid = null,
    Object? password = freezed,
  }) {
    return _then(_$RequestUseMemberDiscountImpl(
      saleBillUuid: null == saleBillUuid
          ? _value.saleBillUuid
          : saleBillUuid // ignore: cast_nullable_to_non_nullable
              as int,
      saleOrderUuid: null == saleOrderUuid
          ? _value.saleOrderUuid
          : saleOrderUuid // ignore: cast_nullable_to_non_nullable
              as int,
      memberUuid: null == memberUuid
          ? _value.memberUuid
          : memberUuid // ignore: cast_nullable_to_non_nullable
              as int,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RequestUseMemberDiscountImpl implements _RequestUseMemberDiscount {
  _$RequestUseMemberDiscountImpl(
      {@JsonKey(name: "sale_bill_uuid") required this.saleBillUuid,
      @JsonKey(name: "sale_order_uuid") required this.saleOrderUuid,
      @JsonKey(name: "member_uuid") required this.memberUuid,
      @JsonKey(name: "password") this.password});

  factory _$RequestUseMemberDiscountImpl.fromJson(Map<String, dynamic> json) =>
      _$$RequestUseMemberDiscountImplFromJson(json);

  @override
  @JsonKey(name: "sale_bill_uuid")
  int saleBillUuid;
  @override
  @JsonKey(name: "sale_order_uuid")
  int saleOrderUuid;
  @override
  @JsonKey(name: "member_uuid")
  int memberUuid;
  @override
  @JsonKey(name: "password")
  String? password;

  @override
  String toString() {
    return 'RequestUseMemberDiscount(saleBillUuid: $saleBillUuid, saleOrderUuid: $saleOrderUuid, memberUuid: $memberUuid, password: $password)';
  }

  /// Create a copy of RequestUseMemberDiscount
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RequestUseMemberDiscountImplCopyWith<_$RequestUseMemberDiscountImpl>
      get copyWith => __$$RequestUseMemberDiscountImplCopyWithImpl<
          _$RequestUseMemberDiscountImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RequestUseMemberDiscountImplToJson(
      this,
    );
  }
}

abstract class _RequestUseMemberDiscount implements RequestUseMemberDiscount {
  factory _RequestUseMemberDiscount(
          {@JsonKey(name: "sale_bill_uuid") required int saleBillUuid,
          @JsonKey(name: "sale_order_uuid") required int saleOrderUuid,
          @JsonKey(name: "member_uuid") required int memberUuid,
          @JsonKey(name: "password") String? password}) =
      _$RequestUseMemberDiscountImpl;

  factory _RequestUseMemberDiscount.fromJson(Map<String, dynamic> json) =
      _$RequestUseMemberDiscountImpl.fromJson;

  @override
  @JsonKey(name: "sale_bill_uuid")
  int get saleBillUuid;
  @JsonKey(name: "sale_bill_uuid")
  set saleBillUuid(int value);
  @override
  @JsonKey(name: "sale_order_uuid")
  int get saleOrderUuid;
  @JsonKey(name: "sale_order_uuid")
  set saleOrderUuid(int value);
  @override
  @JsonKey(name: "member_uuid")
  int get memberUuid;
  @JsonKey(name: "member_uuid")
  set memberUuid(int value);
  @override
  @JsonKey(name: "password")
  String? get password;
  @JsonKey(name: "password")
  set password(String? value);

  /// Create a copy of RequestUseMemberDiscount
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RequestUseMemberDiscountImplCopyWith<_$RequestUseMemberDiscountImpl>
      get copyWith => throw _privateConstructorUsedError;
}

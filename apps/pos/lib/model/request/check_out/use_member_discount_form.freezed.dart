// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'use_member_discount_form.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RequestUseMemberDiscountForm _$RequestUseMemberDiscountFormFromJson(
    Map<String, dynamic> json) {
  return _RequestUseMemberDiscountForm.fromJson(json);
}

/// @nodoc
mixin _$RequestUseMemberDiscountForm {
  @JsonKey(name: "member_uuid")
  int get memberUuid => throw _privateConstructorUsedError;
  @JsonKey(name: "password")
  String get password => throw _privateConstructorUsedError;
  @JsonKey(name: "sale_bill_uuid")
  int get saleBillUuid => throw _privateConstructorUsedError;
  @JsonKey(name: "sale_order_uuid")
  int get saleOrderUuid => throw _privateConstructorUsedError;

  /// Serializes this RequestUseMemberDiscountForm to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RequestUseMemberDiscountForm
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RequestUseMemberDiscountFormCopyWith<RequestUseMemberDiscountForm>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RequestUseMemberDiscountFormCopyWith<$Res> {
  factory $RequestUseMemberDiscountFormCopyWith(
          RequestUseMemberDiscountForm value,
          $Res Function(RequestUseMemberDiscountForm) then) =
      _$RequestUseMemberDiscountFormCopyWithImpl<$Res,
          RequestUseMemberDiscountForm>;
  @useResult
  $Res call(
      {@JsonKey(name: "member_uuid") int memberUuid,
      @JsonKey(name: "password") String password,
      @JsonKey(name: "sale_bill_uuid") int saleBillUuid,
      @JsonKey(name: "sale_order_uuid") int saleOrderUuid});
}

/// @nodoc
class _$RequestUseMemberDiscountFormCopyWithImpl<$Res,
        $Val extends RequestUseMemberDiscountForm>
    implements $RequestUseMemberDiscountFormCopyWith<$Res> {
  _$RequestUseMemberDiscountFormCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RequestUseMemberDiscountForm
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? memberUuid = null,
    Object? password = null,
    Object? saleBillUuid = null,
    Object? saleOrderUuid = null,
  }) {
    return _then(_value.copyWith(
      memberUuid: null == memberUuid
          ? _value.memberUuid
          : memberUuid // ignore: cast_nullable_to_non_nullable
              as int,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      saleBillUuid: null == saleBillUuid
          ? _value.saleBillUuid
          : saleBillUuid // ignore: cast_nullable_to_non_nullable
              as int,
      saleOrderUuid: null == saleOrderUuid
          ? _value.saleOrderUuid
          : saleOrderUuid // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RequestUseMemberDiscountFormImplCopyWith<$Res>
    implements $RequestUseMemberDiscountFormCopyWith<$Res> {
  factory _$$RequestUseMemberDiscountFormImplCopyWith(
          _$RequestUseMemberDiscountFormImpl value,
          $Res Function(_$RequestUseMemberDiscountFormImpl) then) =
      __$$RequestUseMemberDiscountFormImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "member_uuid") int memberUuid,
      @JsonKey(name: "password") String password,
      @JsonKey(name: "sale_bill_uuid") int saleBillUuid,
      @JsonKey(name: "sale_order_uuid") int saleOrderUuid});
}

/// @nodoc
class __$$RequestUseMemberDiscountFormImplCopyWithImpl<$Res>
    extends _$RequestUseMemberDiscountFormCopyWithImpl<$Res,
        _$RequestUseMemberDiscountFormImpl>
    implements _$$RequestUseMemberDiscountFormImplCopyWith<$Res> {
  __$$RequestUseMemberDiscountFormImplCopyWithImpl(
      _$RequestUseMemberDiscountFormImpl _value,
      $Res Function(_$RequestUseMemberDiscountFormImpl) _then)
      : super(_value, _then);

  /// Create a copy of RequestUseMemberDiscountForm
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? memberUuid = null,
    Object? password = null,
    Object? saleBillUuid = null,
    Object? saleOrderUuid = null,
  }) {
    return _then(_$RequestUseMemberDiscountFormImpl(
      memberUuid: null == memberUuid
          ? _value.memberUuid
          : memberUuid // ignore: cast_nullable_to_non_nullable
              as int,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      saleBillUuid: null == saleBillUuid
          ? _value.saleBillUuid
          : saleBillUuid // ignore: cast_nullable_to_non_nullable
              as int,
      saleOrderUuid: null == saleOrderUuid
          ? _value.saleOrderUuid
          : saleOrderUuid // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RequestUseMemberDiscountFormImpl
    implements _RequestUseMemberDiscountForm {
  const _$RequestUseMemberDiscountFormImpl(
      {@JsonKey(name: "member_uuid") required this.memberUuid,
      @JsonKey(name: "password") required this.password,
      @JsonKey(name: "sale_bill_uuid") required this.saleBillUuid,
      @JsonKey(name: "sale_order_uuid") required this.saleOrderUuid});

  factory _$RequestUseMemberDiscountFormImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$RequestUseMemberDiscountFormImplFromJson(json);

  @override
  @JsonKey(name: "member_uuid")
  final int memberUuid;
  @override
  @JsonKey(name: "password")
  final String password;
  @override
  @JsonKey(name: "sale_bill_uuid")
  final int saleBillUuid;
  @override
  @JsonKey(name: "sale_order_uuid")
  final int saleOrderUuid;

  @override
  String toString() {
    return 'RequestUseMemberDiscountForm(memberUuid: $memberUuid, password: $password, saleBillUuid: $saleBillUuid, saleOrderUuid: $saleOrderUuid)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RequestUseMemberDiscountFormImpl &&
            (identical(other.memberUuid, memberUuid) ||
                other.memberUuid == memberUuid) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.saleBillUuid, saleBillUuid) ||
                other.saleBillUuid == saleBillUuid) &&
            (identical(other.saleOrderUuid, saleOrderUuid) ||
                other.saleOrderUuid == saleOrderUuid));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, memberUuid, password, saleBillUuid, saleOrderUuid);

  /// Create a copy of RequestUseMemberDiscountForm
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RequestUseMemberDiscountFormImplCopyWith<
          _$RequestUseMemberDiscountFormImpl>
      get copyWith => __$$RequestUseMemberDiscountFormImplCopyWithImpl<
          _$RequestUseMemberDiscountFormImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RequestUseMemberDiscountFormImplToJson(
      this,
    );
  }
}

abstract class _RequestUseMemberDiscountForm
    implements RequestUseMemberDiscountForm {
  const factory _RequestUseMemberDiscountForm(
          {@JsonKey(name: "member_uuid") required final int memberUuid,
          @JsonKey(name: "password") required final String password,
          @JsonKey(name: "sale_bill_uuid") required final int saleBillUuid,
          @JsonKey(name: "sale_order_uuid") required final int saleOrderUuid}) =
      _$RequestUseMemberDiscountFormImpl;

  factory _RequestUseMemberDiscountForm.fromJson(Map<String, dynamic> json) =
      _$RequestUseMemberDiscountFormImpl.fromJson;

  @override
  @JsonKey(name: "member_uuid")
  int get memberUuid;
  @override
  @JsonKey(name: "password")
  String get password;
  @override
  @JsonKey(name: "sale_bill_uuid")
  int get saleBillUuid;
  @override
  @JsonKey(name: "sale_order_uuid")
  int get saleOrderUuid;

  /// Create a copy of RequestUseMemberDiscountForm
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RequestUseMemberDiscountFormImplCopyWith<
          _$RequestUseMemberDiscountFormImpl>
      get copyWith => throw _privateConstructorUsedError;
}

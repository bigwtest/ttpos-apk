// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'member_discount.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RequestMemberDiscount _$RequestMemberDiscountFromJson(
    Map<String, dynamic> json) {
  return _RequestMemberDiscount.fromJson(json);
}

/// @nodoc
mixin _$RequestMemberDiscount {
  @JsonKey(name: "member_uuid")
  int get memberUuid => throw _privateConstructorUsedError;
  @JsonKey(name: "sale_bill_uuid")
  int get saleBillUuid => throw _privateConstructorUsedError;
  @JsonKey(name: "sale_order_uuid")
  int get saleOrderUuid => throw _privateConstructorUsedError;

  /// Serializes this RequestMemberDiscount to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RequestMemberDiscount
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RequestMemberDiscountCopyWith<RequestMemberDiscount> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RequestMemberDiscountCopyWith<$Res> {
  factory $RequestMemberDiscountCopyWith(RequestMemberDiscount value,
          $Res Function(RequestMemberDiscount) then) =
      _$RequestMemberDiscountCopyWithImpl<$Res, RequestMemberDiscount>;
  @useResult
  $Res call(
      {@JsonKey(name: "member_uuid") int memberUuid,
      @JsonKey(name: "sale_bill_uuid") int saleBillUuid,
      @JsonKey(name: "sale_order_uuid") int saleOrderUuid});
}

/// @nodoc
class _$RequestMemberDiscountCopyWithImpl<$Res,
        $Val extends RequestMemberDiscount>
    implements $RequestMemberDiscountCopyWith<$Res> {
  _$RequestMemberDiscountCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RequestMemberDiscount
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? memberUuid = null,
    Object? saleBillUuid = null,
    Object? saleOrderUuid = null,
  }) {
    return _then(_value.copyWith(
      memberUuid: null == memberUuid
          ? _value.memberUuid
          : memberUuid // ignore: cast_nullable_to_non_nullable
              as int,
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
abstract class _$$RequestMemberDiscountImplCopyWith<$Res>
    implements $RequestMemberDiscountCopyWith<$Res> {
  factory _$$RequestMemberDiscountImplCopyWith(
          _$RequestMemberDiscountImpl value,
          $Res Function(_$RequestMemberDiscountImpl) then) =
      __$$RequestMemberDiscountImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "member_uuid") int memberUuid,
      @JsonKey(name: "sale_bill_uuid") int saleBillUuid,
      @JsonKey(name: "sale_order_uuid") int saleOrderUuid});
}

/// @nodoc
class __$$RequestMemberDiscountImplCopyWithImpl<$Res>
    extends _$RequestMemberDiscountCopyWithImpl<$Res,
        _$RequestMemberDiscountImpl>
    implements _$$RequestMemberDiscountImplCopyWith<$Res> {
  __$$RequestMemberDiscountImplCopyWithImpl(_$RequestMemberDiscountImpl _value,
      $Res Function(_$RequestMemberDiscountImpl) _then)
      : super(_value, _then);

  /// Create a copy of RequestMemberDiscount
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? memberUuid = null,
    Object? saleBillUuid = null,
    Object? saleOrderUuid = null,
  }) {
    return _then(_$RequestMemberDiscountImpl(
      memberUuid: null == memberUuid
          ? _value.memberUuid
          : memberUuid // ignore: cast_nullable_to_non_nullable
              as int,
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
class _$RequestMemberDiscountImpl implements _RequestMemberDiscount {
  const _$RequestMemberDiscountImpl(
      {@JsonKey(name: "member_uuid") required this.memberUuid,
      @JsonKey(name: "sale_bill_uuid") required this.saleBillUuid,
      @JsonKey(name: "sale_order_uuid") required this.saleOrderUuid});

  factory _$RequestMemberDiscountImpl.fromJson(Map<String, dynamic> json) =>
      _$$RequestMemberDiscountImplFromJson(json);

  @override
  @JsonKey(name: "member_uuid")
  final int memberUuid;
  @override
  @JsonKey(name: "sale_bill_uuid")
  final int saleBillUuid;
  @override
  @JsonKey(name: "sale_order_uuid")
  final int saleOrderUuid;

  @override
  String toString() {
    return 'RequestMemberDiscount(memberUuid: $memberUuid, saleBillUuid: $saleBillUuid, saleOrderUuid: $saleOrderUuid)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RequestMemberDiscountImpl &&
            (identical(other.memberUuid, memberUuid) ||
                other.memberUuid == memberUuid) &&
            (identical(other.saleBillUuid, saleBillUuid) ||
                other.saleBillUuid == saleBillUuid) &&
            (identical(other.saleOrderUuid, saleOrderUuid) ||
                other.saleOrderUuid == saleOrderUuid));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, memberUuid, saleBillUuid, saleOrderUuid);

  /// Create a copy of RequestMemberDiscount
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RequestMemberDiscountImplCopyWith<_$RequestMemberDiscountImpl>
      get copyWith => __$$RequestMemberDiscountImplCopyWithImpl<
          _$RequestMemberDiscountImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RequestMemberDiscountImplToJson(
      this,
    );
  }
}

abstract class _RequestMemberDiscount implements RequestMemberDiscount {
  const factory _RequestMemberDiscount(
          {@JsonKey(name: "member_uuid") required final int memberUuid,
          @JsonKey(name: "sale_bill_uuid") required final int saleBillUuid,
          @JsonKey(name: "sale_order_uuid") required final int saleOrderUuid}) =
      _$RequestMemberDiscountImpl;

  factory _RequestMemberDiscount.fromJson(Map<String, dynamic> json) =
      _$RequestMemberDiscountImpl.fromJson;

  @override
  @JsonKey(name: "member_uuid")
  int get memberUuid;
  @override
  @JsonKey(name: "sale_bill_uuid")
  int get saleBillUuid;
  @override
  @JsonKey(name: "sale_order_uuid")
  int get saleOrderUuid;

  /// Create a copy of RequestMemberDiscount
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RequestMemberDiscountImplCopyWith<_$RequestMemberDiscountImpl>
      get copyWith => throw _privateConstructorUsedError;
}

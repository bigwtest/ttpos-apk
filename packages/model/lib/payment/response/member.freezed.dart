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

MemberDiscount _$MemberDiscountFromJson(Map<String, dynamic> json) {
  return _MemberDiscount.fromJson(json);
}

/// @nodoc
mixin _$MemberDiscount {
  @JsonKey(name: "discounted_price")
  SafetyNumber get discountedPrice => throw _privateConstructorUsedError;
  @JsonKey(name: "has_password")
  bool get hasPassword => throw _privateConstructorUsedError;
  @JsonKey(name: "member")
  Member get member => throw _privateConstructorUsedError;

  /// Serializes this MemberDiscount to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MemberDiscount
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MemberDiscountCopyWith<MemberDiscount> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MemberDiscountCopyWith<$Res> {
  factory $MemberDiscountCopyWith(
          MemberDiscount value, $Res Function(MemberDiscount) then) =
      _$MemberDiscountCopyWithImpl<$Res, MemberDiscount>;
  @useResult
  $Res call(
      {@JsonKey(name: "discounted_price") SafetyNumber discountedPrice,
      @JsonKey(name: "has_password") bool hasPassword,
      @JsonKey(name: "member") Member member});

  $SafetyNumberCopyWith<$Res> get discountedPrice;
  $MemberCopyWith<$Res> get member;
}

/// @nodoc
class _$MemberDiscountCopyWithImpl<$Res, $Val extends MemberDiscount>
    implements $MemberDiscountCopyWith<$Res> {
  _$MemberDiscountCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MemberDiscount
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? discountedPrice = null,
    Object? hasPassword = null,
    Object? member = null,
  }) {
    return _then(_value.copyWith(
      discountedPrice: null == discountedPrice
          ? _value.discountedPrice
          : discountedPrice // ignore: cast_nullable_to_non_nullable
              as SafetyNumber,
      hasPassword: null == hasPassword
          ? _value.hasPassword
          : hasPassword // ignore: cast_nullable_to_non_nullable
              as bool,
      member: null == member
          ? _value.member
          : member // ignore: cast_nullable_to_non_nullable
              as Member,
    ) as $Val);
  }

  /// Create a copy of MemberDiscount
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SafetyNumberCopyWith<$Res> get discountedPrice {
    return $SafetyNumberCopyWith<$Res>(_value.discountedPrice, (value) {
      return _then(_value.copyWith(discountedPrice: value) as $Val);
    });
  }

  /// Create a copy of MemberDiscount
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MemberCopyWith<$Res> get member {
    return $MemberCopyWith<$Res>(_value.member, (value) {
      return _then(_value.copyWith(member: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MemberDiscountImplCopyWith<$Res>
    implements $MemberDiscountCopyWith<$Res> {
  factory _$$MemberDiscountImplCopyWith(_$MemberDiscountImpl value,
          $Res Function(_$MemberDiscountImpl) then) =
      __$$MemberDiscountImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "discounted_price") SafetyNumber discountedPrice,
      @JsonKey(name: "has_password") bool hasPassword,
      @JsonKey(name: "member") Member member});

  @override
  $SafetyNumberCopyWith<$Res> get discountedPrice;
  @override
  $MemberCopyWith<$Res> get member;
}

/// @nodoc
class __$$MemberDiscountImplCopyWithImpl<$Res>
    extends _$MemberDiscountCopyWithImpl<$Res, _$MemberDiscountImpl>
    implements _$$MemberDiscountImplCopyWith<$Res> {
  __$$MemberDiscountImplCopyWithImpl(
      _$MemberDiscountImpl _value, $Res Function(_$MemberDiscountImpl) _then)
      : super(_value, _then);

  /// Create a copy of MemberDiscount
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? discountedPrice = null,
    Object? hasPassword = null,
    Object? member = null,
  }) {
    return _then(_$MemberDiscountImpl(
      discountedPrice: null == discountedPrice
          ? _value.discountedPrice
          : discountedPrice // ignore: cast_nullable_to_non_nullable
              as SafetyNumber,
      hasPassword: null == hasPassword
          ? _value.hasPassword
          : hasPassword // ignore: cast_nullable_to_non_nullable
              as bool,
      member: null == member
          ? _value.member
          : member // ignore: cast_nullable_to_non_nullable
              as Member,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MemberDiscountImpl implements _MemberDiscount {
  const _$MemberDiscountImpl(
      {@JsonKey(name: "discounted_price") required this.discountedPrice,
      @JsonKey(name: "has_password") required this.hasPassword,
      @JsonKey(name: "member") required this.member});

  factory _$MemberDiscountImpl.fromJson(Map<String, dynamic> json) =>
      _$$MemberDiscountImplFromJson(json);

  @override
  @JsonKey(name: "discounted_price")
  final SafetyNumber discountedPrice;
  @override
  @JsonKey(name: "has_password")
  final bool hasPassword;
  @override
  @JsonKey(name: "member")
  final Member member;

  @override
  String toString() {
    return 'MemberDiscount(discountedPrice: $discountedPrice, hasPassword: $hasPassword, member: $member)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MemberDiscountImpl &&
            (identical(other.discountedPrice, discountedPrice) ||
                other.discountedPrice == discountedPrice) &&
            (identical(other.hasPassword, hasPassword) ||
                other.hasPassword == hasPassword) &&
            (identical(other.member, member) || other.member == member));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, discountedPrice, hasPassword, member);

  /// Create a copy of MemberDiscount
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MemberDiscountImplCopyWith<_$MemberDiscountImpl> get copyWith =>
      __$$MemberDiscountImplCopyWithImpl<_$MemberDiscountImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MemberDiscountImplToJson(
      this,
    );
  }
}

abstract class _MemberDiscount implements MemberDiscount {
  const factory _MemberDiscount(
          {@JsonKey(name: "discounted_price")
          required final SafetyNumber discountedPrice,
          @JsonKey(name: "has_password") required final bool hasPassword,
          @JsonKey(name: "member") required final Member member}) =
      _$MemberDiscountImpl;

  factory _MemberDiscount.fromJson(Map<String, dynamic> json) =
      _$MemberDiscountImpl.fromJson;

  @override
  @JsonKey(name: "discounted_price")
  SafetyNumber get discountedPrice;
  @override
  @JsonKey(name: "has_password")
  bool get hasPassword;
  @override
  @JsonKey(name: "member")
  Member get member;

  /// Create a copy of MemberDiscount
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MemberDiscountImplCopyWith<_$MemberDiscountImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

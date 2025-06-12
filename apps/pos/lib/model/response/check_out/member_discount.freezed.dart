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

ResponseMemberDiscount _$ResponseMemberDiscountFromJson(
    Map<String, dynamic> json) {
  return _ResponseMemberDiscount.fromJson(json);
}

/// @nodoc
mixin _$ResponseMemberDiscount {
  @JsonKey(name: "discounted_price")
  double get discountedPrice => throw _privateConstructorUsedError;
  @JsonKey(name: "has_password")
  bool get hasPassword => throw _privateConstructorUsedError;
  @JsonKey(name: "member")
  ResponseMemberInfo get member => throw _privateConstructorUsedError;

  /// Serializes this ResponseMemberDiscount to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ResponseMemberDiscount
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ResponseMemberDiscountCopyWith<ResponseMemberDiscount> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResponseMemberDiscountCopyWith<$Res> {
  factory $ResponseMemberDiscountCopyWith(ResponseMemberDiscount value,
          $Res Function(ResponseMemberDiscount) then) =
      _$ResponseMemberDiscountCopyWithImpl<$Res, ResponseMemberDiscount>;
  @useResult
  $Res call(
      {@JsonKey(name: "discounted_price") double discountedPrice,
      @JsonKey(name: "has_password") bool hasPassword,
      @JsonKey(name: "member") ResponseMemberInfo member});

  $ResponseMemberInfoCopyWith<$Res> get member;
}

/// @nodoc
class _$ResponseMemberDiscountCopyWithImpl<$Res,
        $Val extends ResponseMemberDiscount>
    implements $ResponseMemberDiscountCopyWith<$Res> {
  _$ResponseMemberDiscountCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ResponseMemberDiscount
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
              as double,
      hasPassword: null == hasPassword
          ? _value.hasPassword
          : hasPassword // ignore: cast_nullable_to_non_nullable
              as bool,
      member: null == member
          ? _value.member
          : member // ignore: cast_nullable_to_non_nullable
              as ResponseMemberInfo,
    ) as $Val);
  }

  /// Create a copy of ResponseMemberDiscount
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ResponseMemberInfoCopyWith<$Res> get member {
    return $ResponseMemberInfoCopyWith<$Res>(_value.member, (value) {
      return _then(_value.copyWith(member: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ResponseMemberDiscountImplCopyWith<$Res>
    implements $ResponseMemberDiscountCopyWith<$Res> {
  factory _$$ResponseMemberDiscountImplCopyWith(
          _$ResponseMemberDiscountImpl value,
          $Res Function(_$ResponseMemberDiscountImpl) then) =
      __$$ResponseMemberDiscountImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "discounted_price") double discountedPrice,
      @JsonKey(name: "has_password") bool hasPassword,
      @JsonKey(name: "member") ResponseMemberInfo member});

  @override
  $ResponseMemberInfoCopyWith<$Res> get member;
}

/// @nodoc
class __$$ResponseMemberDiscountImplCopyWithImpl<$Res>
    extends _$ResponseMemberDiscountCopyWithImpl<$Res,
        _$ResponseMemberDiscountImpl>
    implements _$$ResponseMemberDiscountImplCopyWith<$Res> {
  __$$ResponseMemberDiscountImplCopyWithImpl(
      _$ResponseMemberDiscountImpl _value,
      $Res Function(_$ResponseMemberDiscountImpl) _then)
      : super(_value, _then);

  /// Create a copy of ResponseMemberDiscount
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? discountedPrice = null,
    Object? hasPassword = null,
    Object? member = null,
  }) {
    return _then(_$ResponseMemberDiscountImpl(
      discountedPrice: null == discountedPrice
          ? _value.discountedPrice
          : discountedPrice // ignore: cast_nullable_to_non_nullable
              as double,
      hasPassword: null == hasPassword
          ? _value.hasPassword
          : hasPassword // ignore: cast_nullable_to_non_nullable
              as bool,
      member: null == member
          ? _value.member
          : member // ignore: cast_nullable_to_non_nullable
              as ResponseMemberInfo,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ResponseMemberDiscountImpl implements _ResponseMemberDiscount {
  const _$ResponseMemberDiscountImpl(
      {@JsonKey(name: "discounted_price") required this.discountedPrice,
      @JsonKey(name: "has_password") required this.hasPassword,
      @JsonKey(name: "member") required this.member});

  factory _$ResponseMemberDiscountImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResponseMemberDiscountImplFromJson(json);

  @override
  @JsonKey(name: "discounted_price")
  final double discountedPrice;
  @override
  @JsonKey(name: "has_password")
  final bool hasPassword;
  @override
  @JsonKey(name: "member")
  final ResponseMemberInfo member;

  @override
  String toString() {
    return 'ResponseMemberDiscount(discountedPrice: $discountedPrice, hasPassword: $hasPassword, member: $member)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResponseMemberDiscountImpl &&
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

  /// Create a copy of ResponseMemberDiscount
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ResponseMemberDiscountImplCopyWith<_$ResponseMemberDiscountImpl>
      get copyWith => __$$ResponseMemberDiscountImplCopyWithImpl<
          _$ResponseMemberDiscountImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResponseMemberDiscountImplToJson(
      this,
    );
  }
}

abstract class _ResponseMemberDiscount implements ResponseMemberDiscount {
  const factory _ResponseMemberDiscount(
      {@JsonKey(name: "discounted_price") required final double discountedPrice,
      @JsonKey(name: "has_password") required final bool hasPassword,
      @JsonKey(name: "member")
      required final ResponseMemberInfo member}) = _$ResponseMemberDiscountImpl;

  factory _ResponseMemberDiscount.fromJson(Map<String, dynamic> json) =
      _$ResponseMemberDiscountImpl.fromJson;

  @override
  @JsonKey(name: "discounted_price")
  double get discountedPrice;
  @override
  @JsonKey(name: "has_password")
  bool get hasPassword;
  @override
  @JsonKey(name: "member")
  ResponseMemberInfo get member;

  /// Create a copy of ResponseMemberDiscount
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ResponseMemberDiscountImplCopyWith<_$ResponseMemberDiscountImpl>
      get copyWith => throw _privateConstructorUsedError;
}

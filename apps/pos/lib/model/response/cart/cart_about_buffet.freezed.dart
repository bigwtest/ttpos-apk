// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cart_about_buffet.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ResponseCartAboutBuffet _$ResponseCartAboutBuffetFromJson(
    Map<String, dynamic> json) {
  return _ResponseCartAboutBuffet.fromJson(json);
}

/// @nodoc
mixin _$ResponseCartAboutBuffet {
// 是否是自助餐顾客
  @JsonKey(name: 'is_customer')
  bool get isCustomer => throw _privateConstructorUsedError; // 是否是加钟
  @JsonKey(name: 'is_delay')
  bool get isDelay => throw _privateConstructorUsedError; //  自助餐顾客类型uuid
  @JsonKey(name: 'customer_type_uuid')
  int get customerTypeUuid => throw _privateConstructorUsedError; // 自助餐Uuid
  @JsonKey(name: 'buffet_uuid')
  int get buffetUuid => throw _privateConstructorUsedError;

  /// Serializes this ResponseCartAboutBuffet to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ResponseCartAboutBuffet
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ResponseCartAboutBuffetCopyWith<ResponseCartAboutBuffet> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResponseCartAboutBuffetCopyWith<$Res> {
  factory $ResponseCartAboutBuffetCopyWith(ResponseCartAboutBuffet value,
          $Res Function(ResponseCartAboutBuffet) then) =
      _$ResponseCartAboutBuffetCopyWithImpl<$Res, ResponseCartAboutBuffet>;
  @useResult
  $Res call(
      {@JsonKey(name: 'is_customer') bool isCustomer,
      @JsonKey(name: 'is_delay') bool isDelay,
      @JsonKey(name: 'customer_type_uuid') int customerTypeUuid,
      @JsonKey(name: 'buffet_uuid') int buffetUuid});
}

/// @nodoc
class _$ResponseCartAboutBuffetCopyWithImpl<$Res,
        $Val extends ResponseCartAboutBuffet>
    implements $ResponseCartAboutBuffetCopyWith<$Res> {
  _$ResponseCartAboutBuffetCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ResponseCartAboutBuffet
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isCustomer = null,
    Object? isDelay = null,
    Object? customerTypeUuid = null,
    Object? buffetUuid = null,
  }) {
    return _then(_value.copyWith(
      isCustomer: null == isCustomer
          ? _value.isCustomer
          : isCustomer // ignore: cast_nullable_to_non_nullable
              as bool,
      isDelay: null == isDelay
          ? _value.isDelay
          : isDelay // ignore: cast_nullable_to_non_nullable
              as bool,
      customerTypeUuid: null == customerTypeUuid
          ? _value.customerTypeUuid
          : customerTypeUuid // ignore: cast_nullable_to_non_nullable
              as int,
      buffetUuid: null == buffetUuid
          ? _value.buffetUuid
          : buffetUuid // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ResponseCartAboutBuffetImplCopyWith<$Res>
    implements $ResponseCartAboutBuffetCopyWith<$Res> {
  factory _$$ResponseCartAboutBuffetImplCopyWith(
          _$ResponseCartAboutBuffetImpl value,
          $Res Function(_$ResponseCartAboutBuffetImpl) then) =
      __$$ResponseCartAboutBuffetImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'is_customer') bool isCustomer,
      @JsonKey(name: 'is_delay') bool isDelay,
      @JsonKey(name: 'customer_type_uuid') int customerTypeUuid,
      @JsonKey(name: 'buffet_uuid') int buffetUuid});
}

/// @nodoc
class __$$ResponseCartAboutBuffetImplCopyWithImpl<$Res>
    extends _$ResponseCartAboutBuffetCopyWithImpl<$Res,
        _$ResponseCartAboutBuffetImpl>
    implements _$$ResponseCartAboutBuffetImplCopyWith<$Res> {
  __$$ResponseCartAboutBuffetImplCopyWithImpl(
      _$ResponseCartAboutBuffetImpl _value,
      $Res Function(_$ResponseCartAboutBuffetImpl) _then)
      : super(_value, _then);

  /// Create a copy of ResponseCartAboutBuffet
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isCustomer = null,
    Object? isDelay = null,
    Object? customerTypeUuid = null,
    Object? buffetUuid = null,
  }) {
    return _then(_$ResponseCartAboutBuffetImpl(
      isCustomer: null == isCustomer
          ? _value.isCustomer
          : isCustomer // ignore: cast_nullable_to_non_nullable
              as bool,
      isDelay: null == isDelay
          ? _value.isDelay
          : isDelay // ignore: cast_nullable_to_non_nullable
              as bool,
      customerTypeUuid: null == customerTypeUuid
          ? _value.customerTypeUuid
          : customerTypeUuid // ignore: cast_nullable_to_non_nullable
              as int,
      buffetUuid: null == buffetUuid
          ? _value.buffetUuid
          : buffetUuid // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ResponseCartAboutBuffetImpl implements _ResponseCartAboutBuffet {
  _$ResponseCartAboutBuffetImpl(
      {@JsonKey(name: 'is_customer') required this.isCustomer,
      @JsonKey(name: 'is_delay') required this.isDelay,
      @JsonKey(name: 'customer_type_uuid') required this.customerTypeUuid,
      @JsonKey(name: 'buffet_uuid') required this.buffetUuid});

  factory _$ResponseCartAboutBuffetImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResponseCartAboutBuffetImplFromJson(json);

// 是否是自助餐顾客
  @override
  @JsonKey(name: 'is_customer')
  final bool isCustomer;
// 是否是加钟
  @override
  @JsonKey(name: 'is_delay')
  final bool isDelay;
//  自助餐顾客类型uuid
  @override
  @JsonKey(name: 'customer_type_uuid')
  final int customerTypeUuid;
// 自助餐Uuid
  @override
  @JsonKey(name: 'buffet_uuid')
  final int buffetUuid;

  @override
  String toString() {
    return 'ResponseCartAboutBuffet(isCustomer: $isCustomer, isDelay: $isDelay, customerTypeUuid: $customerTypeUuid, buffetUuid: $buffetUuid)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResponseCartAboutBuffetImpl &&
            (identical(other.isCustomer, isCustomer) ||
                other.isCustomer == isCustomer) &&
            (identical(other.isDelay, isDelay) || other.isDelay == isDelay) &&
            (identical(other.customerTypeUuid, customerTypeUuid) ||
                other.customerTypeUuid == customerTypeUuid) &&
            (identical(other.buffetUuid, buffetUuid) ||
                other.buffetUuid == buffetUuid));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, isCustomer, isDelay, customerTypeUuid, buffetUuid);

  /// Create a copy of ResponseCartAboutBuffet
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ResponseCartAboutBuffetImplCopyWith<_$ResponseCartAboutBuffetImpl>
      get copyWith => __$$ResponseCartAboutBuffetImplCopyWithImpl<
          _$ResponseCartAboutBuffetImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResponseCartAboutBuffetImplToJson(
      this,
    );
  }
}

abstract class _ResponseCartAboutBuffet implements ResponseCartAboutBuffet {
  factory _ResponseCartAboutBuffet(
      {@JsonKey(name: 'is_customer') required final bool isCustomer,
      @JsonKey(name: 'is_delay') required final bool isDelay,
      @JsonKey(name: 'customer_type_uuid') required final int customerTypeUuid,
      @JsonKey(name: 'buffet_uuid')
      required final int buffetUuid}) = _$ResponseCartAboutBuffetImpl;

  factory _ResponseCartAboutBuffet.fromJson(Map<String, dynamic> json) =
      _$ResponseCartAboutBuffetImpl.fromJson;

// 是否是自助餐顾客
  @override
  @JsonKey(name: 'is_customer')
  bool get isCustomer; // 是否是加钟
  @override
  @JsonKey(name: 'is_delay')
  bool get isDelay; //  自助餐顾客类型uuid
  @override
  @JsonKey(name: 'customer_type_uuid')
  int get customerTypeUuid; // 自助餐Uuid
  @override
  @JsonKey(name: 'buffet_uuid')
  int get buffetUuid;

  /// Create a copy of ResponseCartAboutBuffet
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ResponseCartAboutBuffetImplCopyWith<_$ResponseCartAboutBuffetImpl>
      get copyWith => throw _privateConstructorUsedError;
}

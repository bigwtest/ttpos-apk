// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Buffet _$BuffetFromJson(Map<String, dynamic> json) {
  return _Buffet.fromJson(json);
}

/// @nodoc
mixin _$Buffet {
  @JsonKey(name: "buffet_customer_type")
  BaseList<BuffetCustomerType> get buffetCustomerType =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "can_combined")
  bool get canCombined => throw _privateConstructorUsedError;
  @JsonKey(name: "is_limit_time")
  bool get isLimitTime => throw _privateConstructorUsedError;
  @JsonKey(name: "locale_name")
  LocaleName get localeName => throw _privateConstructorUsedError;
  @JsonKey(name: "non_ordering_time")
  int get nonOrderingTime => throw _privateConstructorUsedError;
  @JsonKey(name: "price")
  SafetyNumber get price => throw _privateConstructorUsedError;
  @JsonKey(name: "reminder_order_time")
  int get reminderOrderTime => throw _privateConstructorUsedError;
  @JsonKey(name: "uuid")
  int get uuid => throw _privateConstructorUsedError;

  /// Serializes this Buffet to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Buffet
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BuffetCopyWith<Buffet> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BuffetCopyWith<$Res> {
  factory $BuffetCopyWith(Buffet value, $Res Function(Buffet) then) =
      _$BuffetCopyWithImpl<$Res, Buffet>;
  @useResult
  $Res call(
      {@JsonKey(name: "buffet_customer_type")
      BaseList<BuffetCustomerType> buffetCustomerType,
      @JsonKey(name: "can_combined") bool canCombined,
      @JsonKey(name: "is_limit_time") bool isLimitTime,
      @JsonKey(name: "locale_name") LocaleName localeName,
      @JsonKey(name: "non_ordering_time") int nonOrderingTime,
      @JsonKey(name: "price") SafetyNumber price,
      @JsonKey(name: "reminder_order_time") int reminderOrderTime,
      @JsonKey(name: "uuid") int uuid});

  $BaseListCopyWith<BuffetCustomerType, $Res> get buffetCustomerType;
  $LocaleNameCopyWith<$Res> get localeName;
  $SafetyNumberCopyWith<$Res> get price;
}

/// @nodoc
class _$BuffetCopyWithImpl<$Res, $Val extends Buffet>
    implements $BuffetCopyWith<$Res> {
  _$BuffetCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Buffet
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? buffetCustomerType = null,
    Object? canCombined = null,
    Object? isLimitTime = null,
    Object? localeName = null,
    Object? nonOrderingTime = null,
    Object? price = null,
    Object? reminderOrderTime = null,
    Object? uuid = null,
  }) {
    return _then(_value.copyWith(
      buffetCustomerType: null == buffetCustomerType
          ? _value.buffetCustomerType
          : buffetCustomerType // ignore: cast_nullable_to_non_nullable
              as BaseList<BuffetCustomerType>,
      canCombined: null == canCombined
          ? _value.canCombined
          : canCombined // ignore: cast_nullable_to_non_nullable
              as bool,
      isLimitTime: null == isLimitTime
          ? _value.isLimitTime
          : isLimitTime // ignore: cast_nullable_to_non_nullable
              as bool,
      localeName: null == localeName
          ? _value.localeName
          : localeName // ignore: cast_nullable_to_non_nullable
              as LocaleName,
      nonOrderingTime: null == nonOrderingTime
          ? _value.nonOrderingTime
          : nonOrderingTime // ignore: cast_nullable_to_non_nullable
              as int,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as SafetyNumber,
      reminderOrderTime: null == reminderOrderTime
          ? _value.reminderOrderTime
          : reminderOrderTime // ignore: cast_nullable_to_non_nullable
              as int,
      uuid: null == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }

  /// Create a copy of Buffet
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BaseListCopyWith<BuffetCustomerType, $Res> get buffetCustomerType {
    return $BaseListCopyWith<BuffetCustomerType, $Res>(
        _value.buffetCustomerType, (value) {
      return _then(_value.copyWith(buffetCustomerType: value) as $Val);
    });
  }

  /// Create a copy of Buffet
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LocaleNameCopyWith<$Res> get localeName {
    return $LocaleNameCopyWith<$Res>(_value.localeName, (value) {
      return _then(_value.copyWith(localeName: value) as $Val);
    });
  }

  /// Create a copy of Buffet
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SafetyNumberCopyWith<$Res> get price {
    return $SafetyNumberCopyWith<$Res>(_value.price, (value) {
      return _then(_value.copyWith(price: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$BuffetImplCopyWith<$Res> implements $BuffetCopyWith<$Res> {
  factory _$$BuffetImplCopyWith(
          _$BuffetImpl value, $Res Function(_$BuffetImpl) then) =
      __$$BuffetImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "buffet_customer_type")
      BaseList<BuffetCustomerType> buffetCustomerType,
      @JsonKey(name: "can_combined") bool canCombined,
      @JsonKey(name: "is_limit_time") bool isLimitTime,
      @JsonKey(name: "locale_name") LocaleName localeName,
      @JsonKey(name: "non_ordering_time") int nonOrderingTime,
      @JsonKey(name: "price") SafetyNumber price,
      @JsonKey(name: "reminder_order_time") int reminderOrderTime,
      @JsonKey(name: "uuid") int uuid});

  @override
  $BaseListCopyWith<BuffetCustomerType, $Res> get buffetCustomerType;
  @override
  $LocaleNameCopyWith<$Res> get localeName;
  @override
  $SafetyNumberCopyWith<$Res> get price;
}

/// @nodoc
class __$$BuffetImplCopyWithImpl<$Res>
    extends _$BuffetCopyWithImpl<$Res, _$BuffetImpl>
    implements _$$BuffetImplCopyWith<$Res> {
  __$$BuffetImplCopyWithImpl(
      _$BuffetImpl _value, $Res Function(_$BuffetImpl) _then)
      : super(_value, _then);

  /// Create a copy of Buffet
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? buffetCustomerType = null,
    Object? canCombined = null,
    Object? isLimitTime = null,
    Object? localeName = null,
    Object? nonOrderingTime = null,
    Object? price = null,
    Object? reminderOrderTime = null,
    Object? uuid = null,
  }) {
    return _then(_$BuffetImpl(
      buffetCustomerType: null == buffetCustomerType
          ? _value.buffetCustomerType
          : buffetCustomerType // ignore: cast_nullable_to_non_nullable
              as BaseList<BuffetCustomerType>,
      canCombined: null == canCombined
          ? _value.canCombined
          : canCombined // ignore: cast_nullable_to_non_nullable
              as bool,
      isLimitTime: null == isLimitTime
          ? _value.isLimitTime
          : isLimitTime // ignore: cast_nullable_to_non_nullable
              as bool,
      localeName: null == localeName
          ? _value.localeName
          : localeName // ignore: cast_nullable_to_non_nullable
              as LocaleName,
      nonOrderingTime: null == nonOrderingTime
          ? _value.nonOrderingTime
          : nonOrderingTime // ignore: cast_nullable_to_non_nullable
              as int,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as SafetyNumber,
      reminderOrderTime: null == reminderOrderTime
          ? _value.reminderOrderTime
          : reminderOrderTime // ignore: cast_nullable_to_non_nullable
              as int,
      uuid: null == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BuffetImpl implements _Buffet {
  const _$BuffetImpl(
      {@JsonKey(name: "buffet_customer_type") required this.buffetCustomerType,
      @JsonKey(name: "can_combined") required this.canCombined,
      @JsonKey(name: "is_limit_time") required this.isLimitTime,
      @JsonKey(name: "locale_name") required this.localeName,
      @JsonKey(name: "non_ordering_time") required this.nonOrderingTime,
      @JsonKey(name: "price") required this.price,
      @JsonKey(name: "reminder_order_time") required this.reminderOrderTime,
      @JsonKey(name: "uuid") required this.uuid});

  factory _$BuffetImpl.fromJson(Map<String, dynamic> json) =>
      _$$BuffetImplFromJson(json);

  @override
  @JsonKey(name: "buffet_customer_type")
  final BaseList<BuffetCustomerType> buffetCustomerType;
  @override
  @JsonKey(name: "can_combined")
  final bool canCombined;
  @override
  @JsonKey(name: "is_limit_time")
  final bool isLimitTime;
  @override
  @JsonKey(name: "locale_name")
  final LocaleName localeName;
  @override
  @JsonKey(name: "non_ordering_time")
  final int nonOrderingTime;
  @override
  @JsonKey(name: "price")
  final SafetyNumber price;
  @override
  @JsonKey(name: "reminder_order_time")
  final int reminderOrderTime;
  @override
  @JsonKey(name: "uuid")
  final int uuid;

  @override
  String toString() {
    return 'Buffet(buffetCustomerType: $buffetCustomerType, canCombined: $canCombined, isLimitTime: $isLimitTime, localeName: $localeName, nonOrderingTime: $nonOrderingTime, price: $price, reminderOrderTime: $reminderOrderTime, uuid: $uuid)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BuffetImpl &&
            (identical(other.buffetCustomerType, buffetCustomerType) ||
                other.buffetCustomerType == buffetCustomerType) &&
            (identical(other.canCombined, canCombined) ||
                other.canCombined == canCombined) &&
            (identical(other.isLimitTime, isLimitTime) ||
                other.isLimitTime == isLimitTime) &&
            (identical(other.localeName, localeName) ||
                other.localeName == localeName) &&
            (identical(other.nonOrderingTime, nonOrderingTime) ||
                other.nonOrderingTime == nonOrderingTime) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.reminderOrderTime, reminderOrderTime) ||
                other.reminderOrderTime == reminderOrderTime) &&
            (identical(other.uuid, uuid) || other.uuid == uuid));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, buffetCustomerType, canCombined,
      isLimitTime, localeName, nonOrderingTime, price, reminderOrderTime, uuid);

  /// Create a copy of Buffet
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BuffetImplCopyWith<_$BuffetImpl> get copyWith =>
      __$$BuffetImplCopyWithImpl<_$BuffetImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BuffetImplToJson(
      this,
    );
  }
}

abstract class _Buffet implements Buffet {
  const factory _Buffet(
      {@JsonKey(name: "buffet_customer_type")
      required final BaseList<BuffetCustomerType> buffetCustomerType,
      @JsonKey(name: "can_combined") required final bool canCombined,
      @JsonKey(name: "is_limit_time") required final bool isLimitTime,
      @JsonKey(name: "locale_name") required final LocaleName localeName,
      @JsonKey(name: "non_ordering_time") required final int nonOrderingTime,
      @JsonKey(name: "price") required final SafetyNumber price,
      @JsonKey(name: "reminder_order_time")
      required final int reminderOrderTime,
      @JsonKey(name: "uuid") required final int uuid}) = _$BuffetImpl;

  factory _Buffet.fromJson(Map<String, dynamic> json) = _$BuffetImpl.fromJson;

  @override
  @JsonKey(name: "buffet_customer_type")
  BaseList<BuffetCustomerType> get buffetCustomerType;
  @override
  @JsonKey(name: "can_combined")
  bool get canCombined;
  @override
  @JsonKey(name: "is_limit_time")
  bool get isLimitTime;
  @override
  @JsonKey(name: "locale_name")
  LocaleName get localeName;
  @override
  @JsonKey(name: "non_ordering_time")
  int get nonOrderingTime;
  @override
  @JsonKey(name: "price")
  SafetyNumber get price;
  @override
  @JsonKey(name: "reminder_order_time")
  int get reminderOrderTime;
  @override
  @JsonKey(name: "uuid")
  int get uuid;

  /// Create a copy of Buffet
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BuffetImplCopyWith<_$BuffetImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

BuffetCustomerType _$BuffetCustomerTypeFromJson(Map<String, dynamic> json) {
  return _BuffetCustomerType.fromJson(json);
}

/// @nodoc
mixin _$BuffetCustomerType {
  @JsonKey(name: "name")
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: "name")
  set name(String value) => throw _privateConstructorUsedError;
  @JsonKey(name: "uuid")
  int get uuid => throw _privateConstructorUsedError;
  @JsonKey(name: "uuid")
  set uuid(int value) => throw _privateConstructorUsedError;

  /// Serializes this BuffetCustomerType to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BuffetCustomerType
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BuffetCustomerTypeCopyWith<BuffetCustomerType> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BuffetCustomerTypeCopyWith<$Res> {
  factory $BuffetCustomerTypeCopyWith(
          BuffetCustomerType value, $Res Function(BuffetCustomerType) then) =
      _$BuffetCustomerTypeCopyWithImpl<$Res, BuffetCustomerType>;
  @useResult
  $Res call(
      {@JsonKey(name: "name") String name, @JsonKey(name: "uuid") int uuid});
}

/// @nodoc
class _$BuffetCustomerTypeCopyWithImpl<$Res, $Val extends BuffetCustomerType>
    implements $BuffetCustomerTypeCopyWith<$Res> {
  _$BuffetCustomerTypeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BuffetCustomerType
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? uuid = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      uuid: null == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BuffetCustomerTypeImplCopyWith<$Res>
    implements $BuffetCustomerTypeCopyWith<$Res> {
  factory _$$BuffetCustomerTypeImplCopyWith(_$BuffetCustomerTypeImpl value,
          $Res Function(_$BuffetCustomerTypeImpl) then) =
      __$$BuffetCustomerTypeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "name") String name, @JsonKey(name: "uuid") int uuid});
}

/// @nodoc
class __$$BuffetCustomerTypeImplCopyWithImpl<$Res>
    extends _$BuffetCustomerTypeCopyWithImpl<$Res, _$BuffetCustomerTypeImpl>
    implements _$$BuffetCustomerTypeImplCopyWith<$Res> {
  __$$BuffetCustomerTypeImplCopyWithImpl(_$BuffetCustomerTypeImpl _value,
      $Res Function(_$BuffetCustomerTypeImpl) _then)
      : super(_value, _then);

  /// Create a copy of BuffetCustomerType
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? uuid = null,
  }) {
    return _then(_$BuffetCustomerTypeImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      uuid: null == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BuffetCustomerTypeImpl implements _BuffetCustomerType {
  _$BuffetCustomerTypeImpl(
      {@JsonKey(name: "name") required this.name,
      @JsonKey(name: "uuid") required this.uuid});

  factory _$BuffetCustomerTypeImpl.fromJson(Map<String, dynamic> json) =>
      _$$BuffetCustomerTypeImplFromJson(json);

  @override
  @JsonKey(name: "name")
  String name;
  @override
  @JsonKey(name: "uuid")
  int uuid;

  @override
  String toString() {
    return 'BuffetCustomerType(name: $name, uuid: $uuid)';
  }

  /// Create a copy of BuffetCustomerType
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BuffetCustomerTypeImplCopyWith<_$BuffetCustomerTypeImpl> get copyWith =>
      __$$BuffetCustomerTypeImplCopyWithImpl<_$BuffetCustomerTypeImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BuffetCustomerTypeImplToJson(
      this,
    );
  }
}

abstract class _BuffetCustomerType implements BuffetCustomerType {
  factory _BuffetCustomerType(
      {@JsonKey(name: "name") required String name,
      @JsonKey(name: "uuid") required int uuid}) = _$BuffetCustomerTypeImpl;

  factory _BuffetCustomerType.fromJson(Map<String, dynamic> json) =
      _$BuffetCustomerTypeImpl.fromJson;

  @override
  @JsonKey(name: "name")
  String get name;
  @JsonKey(name: "name")
  set name(String value);
  @override
  @JsonKey(name: "uuid")
  int get uuid;
  @JsonKey(name: "uuid")
  set uuid(int value);

  /// Create a copy of BuffetCustomerType
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BuffetCustomerTypeImplCopyWith<_$BuffetCustomerTypeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

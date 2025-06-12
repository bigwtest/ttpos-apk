// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'company.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Company _$CompanyFromJson(Map<String, dynamic> json) {
  return _Company.fromJson(json);
}

/// @nodoc
mixin _$Company {
  @JsonKey(name: "name")
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: "uuid")
  int get uuid => throw _privateConstructorUsedError;
  @JsonKey(name: "time_zone")
  String? get timeZone => throw _privateConstructorUsedError;
  @JsonKey(name: "logo")
  String? get logo => throw _privateConstructorUsedError;
  @JsonKey(name: "expire_time")
  int? get expiredAt => throw _privateConstructorUsedError;
  @JsonKey(name: "is_open_member")
  SafetyNumber? get isModuleAvailableMember =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "is_open_buffet")
  SafetyNumber? get isModuleAvailableBuffet =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "is_open_h5_order")
  SafetyNumber? get isModuleAvailableH5Order =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "is_open_old_order")
  SafetyNumber? get isModuleAvailableOldOrder =>
      throw _privateConstructorUsedError;

  /// Serializes this Company to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Company
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CompanyCopyWith<Company> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CompanyCopyWith<$Res> {
  factory $CompanyCopyWith(Company value, $Res Function(Company) then) =
      _$CompanyCopyWithImpl<$Res, Company>;
  @useResult
  $Res call(
      {@JsonKey(name: "name") String name,
      @JsonKey(name: "uuid") int uuid,
      @JsonKey(name: "time_zone") String? timeZone,
      @JsonKey(name: "logo") String? logo,
      @JsonKey(name: "expire_time") int? expiredAt,
      @JsonKey(name: "is_open_member") SafetyNumber? isModuleAvailableMember,
      @JsonKey(name: "is_open_buffet") SafetyNumber? isModuleAvailableBuffet,
      @JsonKey(name: "is_open_h5_order") SafetyNumber? isModuleAvailableH5Order,
      @JsonKey(name: "is_open_old_order")
      SafetyNumber? isModuleAvailableOldOrder});

  $SafetyNumberCopyWith<$Res>? get isModuleAvailableMember;
  $SafetyNumberCopyWith<$Res>? get isModuleAvailableBuffet;
  $SafetyNumberCopyWith<$Res>? get isModuleAvailableH5Order;
  $SafetyNumberCopyWith<$Res>? get isModuleAvailableOldOrder;
}

/// @nodoc
class _$CompanyCopyWithImpl<$Res, $Val extends Company>
    implements $CompanyCopyWith<$Res> {
  _$CompanyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Company
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? uuid = null,
    Object? timeZone = freezed,
    Object? logo = freezed,
    Object? expiredAt = freezed,
    Object? isModuleAvailableMember = freezed,
    Object? isModuleAvailableBuffet = freezed,
    Object? isModuleAvailableH5Order = freezed,
    Object? isModuleAvailableOldOrder = freezed,
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
      timeZone: freezed == timeZone
          ? _value.timeZone
          : timeZone // ignore: cast_nullable_to_non_nullable
              as String?,
      logo: freezed == logo
          ? _value.logo
          : logo // ignore: cast_nullable_to_non_nullable
              as String?,
      expiredAt: freezed == expiredAt
          ? _value.expiredAt
          : expiredAt // ignore: cast_nullable_to_non_nullable
              as int?,
      isModuleAvailableMember: freezed == isModuleAvailableMember
          ? _value.isModuleAvailableMember
          : isModuleAvailableMember // ignore: cast_nullable_to_non_nullable
              as SafetyNumber?,
      isModuleAvailableBuffet: freezed == isModuleAvailableBuffet
          ? _value.isModuleAvailableBuffet
          : isModuleAvailableBuffet // ignore: cast_nullable_to_non_nullable
              as SafetyNumber?,
      isModuleAvailableH5Order: freezed == isModuleAvailableH5Order
          ? _value.isModuleAvailableH5Order
          : isModuleAvailableH5Order // ignore: cast_nullable_to_non_nullable
              as SafetyNumber?,
      isModuleAvailableOldOrder: freezed == isModuleAvailableOldOrder
          ? _value.isModuleAvailableOldOrder
          : isModuleAvailableOldOrder // ignore: cast_nullable_to_non_nullable
              as SafetyNumber?,
    ) as $Val);
  }

  /// Create a copy of Company
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SafetyNumberCopyWith<$Res>? get isModuleAvailableMember {
    if (_value.isModuleAvailableMember == null) {
      return null;
    }

    return $SafetyNumberCopyWith<$Res>(_value.isModuleAvailableMember!,
        (value) {
      return _then(_value.copyWith(isModuleAvailableMember: value) as $Val);
    });
  }

  /// Create a copy of Company
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SafetyNumberCopyWith<$Res>? get isModuleAvailableBuffet {
    if (_value.isModuleAvailableBuffet == null) {
      return null;
    }

    return $SafetyNumberCopyWith<$Res>(_value.isModuleAvailableBuffet!,
        (value) {
      return _then(_value.copyWith(isModuleAvailableBuffet: value) as $Val);
    });
  }

  /// Create a copy of Company
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SafetyNumberCopyWith<$Res>? get isModuleAvailableH5Order {
    if (_value.isModuleAvailableH5Order == null) {
      return null;
    }

    return $SafetyNumberCopyWith<$Res>(_value.isModuleAvailableH5Order!,
        (value) {
      return _then(_value.copyWith(isModuleAvailableH5Order: value) as $Val);
    });
  }

  /// Create a copy of Company
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SafetyNumberCopyWith<$Res>? get isModuleAvailableOldOrder {
    if (_value.isModuleAvailableOldOrder == null) {
      return null;
    }

    return $SafetyNumberCopyWith<$Res>(_value.isModuleAvailableOldOrder!,
        (value) {
      return _then(_value.copyWith(isModuleAvailableOldOrder: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CompanyImplCopyWith<$Res> implements $CompanyCopyWith<$Res> {
  factory _$$CompanyImplCopyWith(
          _$CompanyImpl value, $Res Function(_$CompanyImpl) then) =
      __$$CompanyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "name") String name,
      @JsonKey(name: "uuid") int uuid,
      @JsonKey(name: "time_zone") String? timeZone,
      @JsonKey(name: "logo") String? logo,
      @JsonKey(name: "expire_time") int? expiredAt,
      @JsonKey(name: "is_open_member") SafetyNumber? isModuleAvailableMember,
      @JsonKey(name: "is_open_buffet") SafetyNumber? isModuleAvailableBuffet,
      @JsonKey(name: "is_open_h5_order") SafetyNumber? isModuleAvailableH5Order,
      @JsonKey(name: "is_open_old_order")
      SafetyNumber? isModuleAvailableOldOrder});

  @override
  $SafetyNumberCopyWith<$Res>? get isModuleAvailableMember;
  @override
  $SafetyNumberCopyWith<$Res>? get isModuleAvailableBuffet;
  @override
  $SafetyNumberCopyWith<$Res>? get isModuleAvailableH5Order;
  @override
  $SafetyNumberCopyWith<$Res>? get isModuleAvailableOldOrder;
}

/// @nodoc
class __$$CompanyImplCopyWithImpl<$Res>
    extends _$CompanyCopyWithImpl<$Res, _$CompanyImpl>
    implements _$$CompanyImplCopyWith<$Res> {
  __$$CompanyImplCopyWithImpl(
      _$CompanyImpl _value, $Res Function(_$CompanyImpl) _then)
      : super(_value, _then);

  /// Create a copy of Company
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? uuid = null,
    Object? timeZone = freezed,
    Object? logo = freezed,
    Object? expiredAt = freezed,
    Object? isModuleAvailableMember = freezed,
    Object? isModuleAvailableBuffet = freezed,
    Object? isModuleAvailableH5Order = freezed,
    Object? isModuleAvailableOldOrder = freezed,
  }) {
    return _then(_$CompanyImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      uuid: null == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as int,
      timeZone: freezed == timeZone
          ? _value.timeZone
          : timeZone // ignore: cast_nullable_to_non_nullable
              as String?,
      logo: freezed == logo
          ? _value.logo
          : logo // ignore: cast_nullable_to_non_nullable
              as String?,
      expiredAt: freezed == expiredAt
          ? _value.expiredAt
          : expiredAt // ignore: cast_nullable_to_non_nullable
              as int?,
      isModuleAvailableMember: freezed == isModuleAvailableMember
          ? _value.isModuleAvailableMember
          : isModuleAvailableMember // ignore: cast_nullable_to_non_nullable
              as SafetyNumber?,
      isModuleAvailableBuffet: freezed == isModuleAvailableBuffet
          ? _value.isModuleAvailableBuffet
          : isModuleAvailableBuffet // ignore: cast_nullable_to_non_nullable
              as SafetyNumber?,
      isModuleAvailableH5Order: freezed == isModuleAvailableH5Order
          ? _value.isModuleAvailableH5Order
          : isModuleAvailableH5Order // ignore: cast_nullable_to_non_nullable
              as SafetyNumber?,
      isModuleAvailableOldOrder: freezed == isModuleAvailableOldOrder
          ? _value.isModuleAvailableOldOrder
          : isModuleAvailableOldOrder // ignore: cast_nullable_to_non_nullable
              as SafetyNumber?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CompanyImpl implements _Company {
  const _$CompanyImpl(
      {@JsonKey(name: "name") required this.name,
      @JsonKey(name: "uuid") required this.uuid,
      @JsonKey(name: "time_zone") this.timeZone,
      @JsonKey(name: "logo") this.logo,
      @JsonKey(name: "expire_time") this.expiredAt,
      @JsonKey(name: "is_open_member") this.isModuleAvailableMember,
      @JsonKey(name: "is_open_buffet") this.isModuleAvailableBuffet,
      @JsonKey(name: "is_open_h5_order") this.isModuleAvailableH5Order,
      @JsonKey(name: "is_open_old_order") this.isModuleAvailableOldOrder});

  factory _$CompanyImpl.fromJson(Map<String, dynamic> json) =>
      _$$CompanyImplFromJson(json);

  @override
  @JsonKey(name: "name")
  final String name;
  @override
  @JsonKey(name: "uuid")
  final int uuid;
  @override
  @JsonKey(name: "time_zone")
  final String? timeZone;
  @override
  @JsonKey(name: "logo")
  final String? logo;
  @override
  @JsonKey(name: "expire_time")
  final int? expiredAt;
  @override
  @JsonKey(name: "is_open_member")
  final SafetyNumber? isModuleAvailableMember;
  @override
  @JsonKey(name: "is_open_buffet")
  final SafetyNumber? isModuleAvailableBuffet;
  @override
  @JsonKey(name: "is_open_h5_order")
  final SafetyNumber? isModuleAvailableH5Order;
  @override
  @JsonKey(name: "is_open_old_order")
  final SafetyNumber? isModuleAvailableOldOrder;

  @override
  String toString() {
    return 'Company(name: $name, uuid: $uuid, timeZone: $timeZone, logo: $logo, expiredAt: $expiredAt, isModuleAvailableMember: $isModuleAvailableMember, isModuleAvailableBuffet: $isModuleAvailableBuffet, isModuleAvailableH5Order: $isModuleAvailableH5Order, isModuleAvailableOldOrder: $isModuleAvailableOldOrder)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CompanyImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.uuid, uuid) || other.uuid == uuid) &&
            (identical(other.timeZone, timeZone) ||
                other.timeZone == timeZone) &&
            (identical(other.logo, logo) || other.logo == logo) &&
            (identical(other.expiredAt, expiredAt) ||
                other.expiredAt == expiredAt) &&
            (identical(
                    other.isModuleAvailableMember, isModuleAvailableMember) ||
                other.isModuleAvailableMember == isModuleAvailableMember) &&
            (identical(
                    other.isModuleAvailableBuffet, isModuleAvailableBuffet) ||
                other.isModuleAvailableBuffet == isModuleAvailableBuffet) &&
            (identical(
                    other.isModuleAvailableH5Order, isModuleAvailableH5Order) ||
                other.isModuleAvailableH5Order == isModuleAvailableH5Order) &&
            (identical(other.isModuleAvailableOldOrder,
                    isModuleAvailableOldOrder) ||
                other.isModuleAvailableOldOrder == isModuleAvailableOldOrder));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      name,
      uuid,
      timeZone,
      logo,
      expiredAt,
      isModuleAvailableMember,
      isModuleAvailableBuffet,
      isModuleAvailableH5Order,
      isModuleAvailableOldOrder);

  /// Create a copy of Company
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CompanyImplCopyWith<_$CompanyImpl> get copyWith =>
      __$$CompanyImplCopyWithImpl<_$CompanyImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CompanyImplToJson(
      this,
    );
  }
}

abstract class _Company implements Company {
  const factory _Company(
      {@JsonKey(name: "name") required final String name,
      @JsonKey(name: "uuid") required final int uuid,
      @JsonKey(name: "time_zone") final String? timeZone,
      @JsonKey(name: "logo") final String? logo,
      @JsonKey(name: "expire_time") final int? expiredAt,
      @JsonKey(name: "is_open_member")
      final SafetyNumber? isModuleAvailableMember,
      @JsonKey(name: "is_open_buffet")
      final SafetyNumber? isModuleAvailableBuffet,
      @JsonKey(name: "is_open_h5_order")
      final SafetyNumber? isModuleAvailableH5Order,
      @JsonKey(name: "is_open_old_order")
      final SafetyNumber? isModuleAvailableOldOrder}) = _$CompanyImpl;

  factory _Company.fromJson(Map<String, dynamic> json) = _$CompanyImpl.fromJson;

  @override
  @JsonKey(name: "name")
  String get name;
  @override
  @JsonKey(name: "uuid")
  int get uuid;
  @override
  @JsonKey(name: "time_zone")
  String? get timeZone;
  @override
  @JsonKey(name: "logo")
  String? get logo;
  @override
  @JsonKey(name: "expire_time")
  int? get expiredAt;
  @override
  @JsonKey(name: "is_open_member")
  SafetyNumber? get isModuleAvailableMember;
  @override
  @JsonKey(name: "is_open_buffet")
  SafetyNumber? get isModuleAvailableBuffet;
  @override
  @JsonKey(name: "is_open_h5_order")
  SafetyNumber? get isModuleAvailableH5Order;
  @override
  @JsonKey(name: "is_open_old_order")
  SafetyNumber? get isModuleAvailableOldOrder;

  /// Create a copy of Company
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CompanyImplCopyWith<_$CompanyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

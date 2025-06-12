// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'base_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BaseInfo _$BaseInfoFromJson(Map<String, dynamic> json) {
  return _BaseInfo.fromJson(json);
}

/// @nodoc
mixin _$BaseInfo {
  /// NOTE: 基础数据
  @JsonKey(name: "buffet")
  Buffet get buffet => throw _privateConstructorUsedError;
  @JsonKey(name: "business")
  Business get business => throw _privateConstructorUsedError;
  @JsonKey(name: "cloud")
  Cloud get cloud => throw _privateConstructorUsedError;
  @JsonKey(name: "company")
  Company get company => throw _privateConstructorUsedError;
  @JsonKey(name: "currency")
  Currency get currency => throw _privateConstructorUsedError;

  /// NOTE: 更新时间
  @JsonKey(name: "update_time")
  int? get updateTime => throw _privateConstructorUsedError;

  /// NOTE: 独占数据
  @JsonKey(name: "system_version")
  String? get systemVersion => throw _privateConstructorUsedError;
  @JsonKey(name: "real_name")
  String? get realName => throw _privateConstructorUsedError;
  @JsonKey(name: "tablet")
  Tablet get tablet => throw _privateConstructorUsedError;
  @JsonKey(name: "kitchen")
  Kitchen get kitchen => throw _privateConstructorUsedError;

  /// Serializes this BaseInfo to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BaseInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BaseInfoCopyWith<BaseInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BaseInfoCopyWith<$Res> {
  factory $BaseInfoCopyWith(BaseInfo value, $Res Function(BaseInfo) then) =
      _$BaseInfoCopyWithImpl<$Res, BaseInfo>;
  @useResult
  $Res call(
      {@JsonKey(name: "buffet") Buffet buffet,
      @JsonKey(name: "business") Business business,
      @JsonKey(name: "cloud") Cloud cloud,
      @JsonKey(name: "company") Company company,
      @JsonKey(name: "currency") Currency currency,
      @JsonKey(name: "update_time") int? updateTime,
      @JsonKey(name: "system_version") String? systemVersion,
      @JsonKey(name: "real_name") String? realName,
      @JsonKey(name: "tablet") Tablet tablet,
      @JsonKey(name: "kitchen") Kitchen kitchen});

  $BuffetCopyWith<$Res> get buffet;
  $BusinessCopyWith<$Res> get business;
  $CloudCopyWith<$Res> get cloud;
  $CompanyCopyWith<$Res> get company;
  $CurrencyCopyWith<$Res> get currency;
  $TabletCopyWith<$Res> get tablet;
  $KitchenCopyWith<$Res> get kitchen;
}

/// @nodoc
class _$BaseInfoCopyWithImpl<$Res, $Val extends BaseInfo>
    implements $BaseInfoCopyWith<$Res> {
  _$BaseInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BaseInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? buffet = null,
    Object? business = null,
    Object? cloud = null,
    Object? company = null,
    Object? currency = null,
    Object? updateTime = freezed,
    Object? systemVersion = freezed,
    Object? realName = freezed,
    Object? tablet = null,
    Object? kitchen = null,
  }) {
    return _then(_value.copyWith(
      buffet: null == buffet
          ? _value.buffet
          : buffet // ignore: cast_nullable_to_non_nullable
              as Buffet,
      business: null == business
          ? _value.business
          : business // ignore: cast_nullable_to_non_nullable
              as Business,
      cloud: null == cloud
          ? _value.cloud
          : cloud // ignore: cast_nullable_to_non_nullable
              as Cloud,
      company: null == company
          ? _value.company
          : company // ignore: cast_nullable_to_non_nullable
              as Company,
      currency: null == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as Currency,
      updateTime: freezed == updateTime
          ? _value.updateTime
          : updateTime // ignore: cast_nullable_to_non_nullable
              as int?,
      systemVersion: freezed == systemVersion
          ? _value.systemVersion
          : systemVersion // ignore: cast_nullable_to_non_nullable
              as String?,
      realName: freezed == realName
          ? _value.realName
          : realName // ignore: cast_nullable_to_non_nullable
              as String?,
      tablet: null == tablet
          ? _value.tablet
          : tablet // ignore: cast_nullable_to_non_nullable
              as Tablet,
      kitchen: null == kitchen
          ? _value.kitchen
          : kitchen // ignore: cast_nullable_to_non_nullable
              as Kitchen,
    ) as $Val);
  }

  /// Create a copy of BaseInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BuffetCopyWith<$Res> get buffet {
    return $BuffetCopyWith<$Res>(_value.buffet, (value) {
      return _then(_value.copyWith(buffet: value) as $Val);
    });
  }

  /// Create a copy of BaseInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BusinessCopyWith<$Res> get business {
    return $BusinessCopyWith<$Res>(_value.business, (value) {
      return _then(_value.copyWith(business: value) as $Val);
    });
  }

  /// Create a copy of BaseInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CloudCopyWith<$Res> get cloud {
    return $CloudCopyWith<$Res>(_value.cloud, (value) {
      return _then(_value.copyWith(cloud: value) as $Val);
    });
  }

  /// Create a copy of BaseInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CompanyCopyWith<$Res> get company {
    return $CompanyCopyWith<$Res>(_value.company, (value) {
      return _then(_value.copyWith(company: value) as $Val);
    });
  }

  /// Create a copy of BaseInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CurrencyCopyWith<$Res> get currency {
    return $CurrencyCopyWith<$Res>(_value.currency, (value) {
      return _then(_value.copyWith(currency: value) as $Val);
    });
  }

  /// Create a copy of BaseInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TabletCopyWith<$Res> get tablet {
    return $TabletCopyWith<$Res>(_value.tablet, (value) {
      return _then(_value.copyWith(tablet: value) as $Val);
    });
  }

  /// Create a copy of BaseInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $KitchenCopyWith<$Res> get kitchen {
    return $KitchenCopyWith<$Res>(_value.kitchen, (value) {
      return _then(_value.copyWith(kitchen: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$BaseInfoImplCopyWith<$Res>
    implements $BaseInfoCopyWith<$Res> {
  factory _$$BaseInfoImplCopyWith(
          _$BaseInfoImpl value, $Res Function(_$BaseInfoImpl) then) =
      __$$BaseInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "buffet") Buffet buffet,
      @JsonKey(name: "business") Business business,
      @JsonKey(name: "cloud") Cloud cloud,
      @JsonKey(name: "company") Company company,
      @JsonKey(name: "currency") Currency currency,
      @JsonKey(name: "update_time") int? updateTime,
      @JsonKey(name: "system_version") String? systemVersion,
      @JsonKey(name: "real_name") String? realName,
      @JsonKey(name: "tablet") Tablet tablet,
      @JsonKey(name: "kitchen") Kitchen kitchen});

  @override
  $BuffetCopyWith<$Res> get buffet;
  @override
  $BusinessCopyWith<$Res> get business;
  @override
  $CloudCopyWith<$Res> get cloud;
  @override
  $CompanyCopyWith<$Res> get company;
  @override
  $CurrencyCopyWith<$Res> get currency;
  @override
  $TabletCopyWith<$Res> get tablet;
  @override
  $KitchenCopyWith<$Res> get kitchen;
}

/// @nodoc
class __$$BaseInfoImplCopyWithImpl<$Res>
    extends _$BaseInfoCopyWithImpl<$Res, _$BaseInfoImpl>
    implements _$$BaseInfoImplCopyWith<$Res> {
  __$$BaseInfoImplCopyWithImpl(
      _$BaseInfoImpl _value, $Res Function(_$BaseInfoImpl) _then)
      : super(_value, _then);

  /// Create a copy of BaseInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? buffet = null,
    Object? business = null,
    Object? cloud = null,
    Object? company = null,
    Object? currency = null,
    Object? updateTime = freezed,
    Object? systemVersion = freezed,
    Object? realName = freezed,
    Object? tablet = null,
    Object? kitchen = null,
  }) {
    return _then(_$BaseInfoImpl(
      buffet: null == buffet
          ? _value.buffet
          : buffet // ignore: cast_nullable_to_non_nullable
              as Buffet,
      business: null == business
          ? _value.business
          : business // ignore: cast_nullable_to_non_nullable
              as Business,
      cloud: null == cloud
          ? _value.cloud
          : cloud // ignore: cast_nullable_to_non_nullable
              as Cloud,
      company: null == company
          ? _value.company
          : company // ignore: cast_nullable_to_non_nullable
              as Company,
      currency: null == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as Currency,
      updateTime: freezed == updateTime
          ? _value.updateTime
          : updateTime // ignore: cast_nullable_to_non_nullable
              as int?,
      systemVersion: freezed == systemVersion
          ? _value.systemVersion
          : systemVersion // ignore: cast_nullable_to_non_nullable
              as String?,
      realName: freezed == realName
          ? _value.realName
          : realName // ignore: cast_nullable_to_non_nullable
              as String?,
      tablet: null == tablet
          ? _value.tablet
          : tablet // ignore: cast_nullable_to_non_nullable
              as Tablet,
      kitchen: null == kitchen
          ? _value.kitchen
          : kitchen // ignore: cast_nullable_to_non_nullable
              as Kitchen,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BaseInfoImpl implements _BaseInfo {
  const _$BaseInfoImpl(
      {@JsonKey(name: "buffet") required this.buffet,
      @JsonKey(name: "business") required this.business,
      @JsonKey(name: "cloud") required this.cloud,
      @JsonKey(name: "company") required this.company,
      @JsonKey(name: "currency") required this.currency,
      @JsonKey(name: "update_time") this.updateTime = 0,
      @JsonKey(name: "system_version") this.systemVersion,
      @JsonKey(name: "real_name") this.realName,
      @JsonKey(name: "tablet") required this.tablet,
      @JsonKey(name: "kitchen") required this.kitchen});

  factory _$BaseInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$BaseInfoImplFromJson(json);

  /// NOTE: 基础数据
  @override
  @JsonKey(name: "buffet")
  final Buffet buffet;
  @override
  @JsonKey(name: "business")
  final Business business;
  @override
  @JsonKey(name: "cloud")
  final Cloud cloud;
  @override
  @JsonKey(name: "company")
  final Company company;
  @override
  @JsonKey(name: "currency")
  final Currency currency;

  /// NOTE: 更新时间
  @override
  @JsonKey(name: "update_time")
  final int? updateTime;

  /// NOTE: 独占数据
  @override
  @JsonKey(name: "system_version")
  final String? systemVersion;
  @override
  @JsonKey(name: "real_name")
  final String? realName;
  @override
  @JsonKey(name: "tablet")
  final Tablet tablet;
  @override
  @JsonKey(name: "kitchen")
  final Kitchen kitchen;

  @override
  String toString() {
    return 'BaseInfo(buffet: $buffet, business: $business, cloud: $cloud, company: $company, currency: $currency, updateTime: $updateTime, systemVersion: $systemVersion, realName: $realName, tablet: $tablet, kitchen: $kitchen)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BaseInfoImpl &&
            (identical(other.buffet, buffet) || other.buffet == buffet) &&
            (identical(other.business, business) ||
                other.business == business) &&
            (identical(other.cloud, cloud) || other.cloud == cloud) &&
            (identical(other.company, company) || other.company == company) &&
            (identical(other.currency, currency) ||
                other.currency == currency) &&
            (identical(other.updateTime, updateTime) ||
                other.updateTime == updateTime) &&
            (identical(other.systemVersion, systemVersion) ||
                other.systemVersion == systemVersion) &&
            (identical(other.realName, realName) ||
                other.realName == realName) &&
            (identical(other.tablet, tablet) || other.tablet == tablet) &&
            (identical(other.kitchen, kitchen) || other.kitchen == kitchen));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, buffet, business, cloud, company,
      currency, updateTime, systemVersion, realName, tablet, kitchen);

  /// Create a copy of BaseInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BaseInfoImplCopyWith<_$BaseInfoImpl> get copyWith =>
      __$$BaseInfoImplCopyWithImpl<_$BaseInfoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BaseInfoImplToJson(
      this,
    );
  }
}

abstract class _BaseInfo implements BaseInfo {
  const factory _BaseInfo(
          {@JsonKey(name: "buffet") required final Buffet buffet,
          @JsonKey(name: "business") required final Business business,
          @JsonKey(name: "cloud") required final Cloud cloud,
          @JsonKey(name: "company") required final Company company,
          @JsonKey(name: "currency") required final Currency currency,
          @JsonKey(name: "update_time") final int? updateTime,
          @JsonKey(name: "system_version") final String? systemVersion,
          @JsonKey(name: "real_name") final String? realName,
          @JsonKey(name: "tablet") required final Tablet tablet,
          @JsonKey(name: "kitchen") required final Kitchen kitchen}) =
      _$BaseInfoImpl;

  factory _BaseInfo.fromJson(Map<String, dynamic> json) =
      _$BaseInfoImpl.fromJson;

  /// NOTE: 基础数据
  @override
  @JsonKey(name: "buffet")
  Buffet get buffet;
  @override
  @JsonKey(name: "business")
  Business get business;
  @override
  @JsonKey(name: "cloud")
  Cloud get cloud;
  @override
  @JsonKey(name: "company")
  Company get company;
  @override
  @JsonKey(name: "currency")
  Currency get currency;

  /// NOTE: 更新时间
  @override
  @JsonKey(name: "update_time")
  int? get updateTime;

  /// NOTE: 独占数据
  @override
  @JsonKey(name: "system_version")
  String? get systemVersion;
  @override
  @JsonKey(name: "real_name")
  String? get realName;
  @override
  @JsonKey(name: "tablet")
  Tablet get tablet;
  @override
  @JsonKey(name: "kitchen")
  Kitchen get kitchen;

  /// Create a copy of BaseInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BaseInfoImplCopyWith<_$BaseInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

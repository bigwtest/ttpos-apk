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
  @JsonKey(name: "cashier")
  Cashier get cashier => throw _privateConstructorUsedError;
  @JsonKey(name: "cashier_uuid")
  int get cashierUuid => throw _privateConstructorUsedError;
  @JsonKey(name: "device_id")
  String get deviceId => throw _privateConstructorUsedError;
  @JsonKey(name: "device_remark")
  String get deviceRemark => throw _privateConstructorUsedError;
  @JsonKey(name: "permissions")
  List<Permission> get permissions => throw _privateConstructorUsedError;
  @JsonKey(name: "username")
  String get username => throw _privateConstructorUsedError;
  @JsonKey(name: "printer")
  Printer get printer => throw _privateConstructorUsedError;

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
      @JsonKey(name: "cashier") Cashier cashier,
      @JsonKey(name: "cashier_uuid") int cashierUuid,
      @JsonKey(name: "device_id") String deviceId,
      @JsonKey(name: "device_remark") String deviceRemark,
      @JsonKey(name: "permissions") List<Permission> permissions,
      @JsonKey(name: "username") String username,
      @JsonKey(name: "printer") Printer printer});

  $BuffetCopyWith<$Res> get buffet;
  $BusinessCopyWith<$Res> get business;
  $CloudCopyWith<$Res> get cloud;
  $CompanyCopyWith<$Res> get company;
  $CurrencyCopyWith<$Res> get currency;
  $CashierCopyWith<$Res> get cashier;
  $PrinterCopyWith<$Res> get printer;
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
    Object? cashier = null,
    Object? cashierUuid = null,
    Object? deviceId = null,
    Object? deviceRemark = null,
    Object? permissions = null,
    Object? username = null,
    Object? printer = null,
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
      cashier: null == cashier
          ? _value.cashier
          : cashier // ignore: cast_nullable_to_non_nullable
              as Cashier,
      cashierUuid: null == cashierUuid
          ? _value.cashierUuid
          : cashierUuid // ignore: cast_nullable_to_non_nullable
              as int,
      deviceId: null == deviceId
          ? _value.deviceId
          : deviceId // ignore: cast_nullable_to_non_nullable
              as String,
      deviceRemark: null == deviceRemark
          ? _value.deviceRemark
          : deviceRemark // ignore: cast_nullable_to_non_nullable
              as String,
      permissions: null == permissions
          ? _value.permissions
          : permissions // ignore: cast_nullable_to_non_nullable
              as List<Permission>,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      printer: null == printer
          ? _value.printer
          : printer // ignore: cast_nullable_to_non_nullable
              as Printer,
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
  $CashierCopyWith<$Res> get cashier {
    return $CashierCopyWith<$Res>(_value.cashier, (value) {
      return _then(_value.copyWith(cashier: value) as $Val);
    });
  }

  /// Create a copy of BaseInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PrinterCopyWith<$Res> get printer {
    return $PrinterCopyWith<$Res>(_value.printer, (value) {
      return _then(_value.copyWith(printer: value) as $Val);
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
      @JsonKey(name: "cashier") Cashier cashier,
      @JsonKey(name: "cashier_uuid") int cashierUuid,
      @JsonKey(name: "device_id") String deviceId,
      @JsonKey(name: "device_remark") String deviceRemark,
      @JsonKey(name: "permissions") List<Permission> permissions,
      @JsonKey(name: "username") String username,
      @JsonKey(name: "printer") Printer printer});

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
  $CashierCopyWith<$Res> get cashier;
  @override
  $PrinterCopyWith<$Res> get printer;
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
    Object? cashier = null,
    Object? cashierUuid = null,
    Object? deviceId = null,
    Object? deviceRemark = null,
    Object? permissions = null,
    Object? username = null,
    Object? printer = null,
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
      cashier: null == cashier
          ? _value.cashier
          : cashier // ignore: cast_nullable_to_non_nullable
              as Cashier,
      cashierUuid: null == cashierUuid
          ? _value.cashierUuid
          : cashierUuid // ignore: cast_nullable_to_non_nullable
              as int,
      deviceId: null == deviceId
          ? _value.deviceId
          : deviceId // ignore: cast_nullable_to_non_nullable
              as String,
      deviceRemark: null == deviceRemark
          ? _value.deviceRemark
          : deviceRemark // ignore: cast_nullable_to_non_nullable
              as String,
      permissions: null == permissions
          ? _value._permissions
          : permissions // ignore: cast_nullable_to_non_nullable
              as List<Permission>,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      printer: null == printer
          ? _value.printer
          : printer // ignore: cast_nullable_to_non_nullable
              as Printer,
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
      @JsonKey(name: "cashier") required this.cashier,
      @JsonKey(name: "cashier_uuid") required this.cashierUuid,
      @JsonKey(name: "device_id") required this.deviceId,
      @JsonKey(name: "device_remark") required this.deviceRemark,
      @JsonKey(name: "permissions") required final List<Permission> permissions,
      @JsonKey(name: "username") required this.username,
      @JsonKey(name: "printer") required this.printer})
      : _permissions = permissions;

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
  @JsonKey(name: "cashier")
  final Cashier cashier;
  @override
  @JsonKey(name: "cashier_uuid")
  final int cashierUuid;
  @override
  @JsonKey(name: "device_id")
  final String deviceId;
  @override
  @JsonKey(name: "device_remark")
  final String deviceRemark;
  final List<Permission> _permissions;
  @override
  @JsonKey(name: "permissions")
  List<Permission> get permissions {
    if (_permissions is EqualUnmodifiableListView) return _permissions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_permissions);
  }

  @override
  @JsonKey(name: "username")
  final String username;
  @override
  @JsonKey(name: "printer")
  final Printer printer;

  @override
  String toString() {
    return 'BaseInfo(buffet: $buffet, business: $business, cloud: $cloud, company: $company, currency: $currency, updateTime: $updateTime, cashier: $cashier, cashierUuid: $cashierUuid, deviceId: $deviceId, deviceRemark: $deviceRemark, permissions: $permissions, username: $username, printer: $printer)';
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
            (identical(other.cashier, cashier) || other.cashier == cashier) &&
            (identical(other.cashierUuid, cashierUuid) ||
                other.cashierUuid == cashierUuid) &&
            (identical(other.deviceId, deviceId) ||
                other.deviceId == deviceId) &&
            (identical(other.deviceRemark, deviceRemark) ||
                other.deviceRemark == deviceRemark) &&
            const DeepCollectionEquality()
                .equals(other._permissions, _permissions) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.printer, printer) || other.printer == printer));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      buffet,
      business,
      cloud,
      company,
      currency,
      updateTime,
      cashier,
      cashierUuid,
      deviceId,
      deviceRemark,
      const DeepCollectionEquality().hash(_permissions),
      username,
      printer);

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
      @JsonKey(name: "cashier") required final Cashier cashier,
      @JsonKey(name: "cashier_uuid") required final int cashierUuid,
      @JsonKey(name: "device_id") required final String deviceId,
      @JsonKey(name: "device_remark") required final String deviceRemark,
      @JsonKey(name: "permissions") required final List<Permission> permissions,
      @JsonKey(name: "username") required final String username,
      @JsonKey(name: "printer")
      required final Printer printer}) = _$BaseInfoImpl;

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
  @JsonKey(name: "cashier")
  Cashier get cashier;
  @override
  @JsonKey(name: "cashier_uuid")
  int get cashierUuid;
  @override
  @JsonKey(name: "device_id")
  String get deviceId;
  @override
  @JsonKey(name: "device_remark")
  String get deviceRemark;
  @override
  @JsonKey(name: "permissions")
  List<Permission> get permissions;
  @override
  @JsonKey(name: "username")
  String get username;
  @override
  @JsonKey(name: "printer")
  Printer get printer;

  /// Create a copy of BaseInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BaseInfoImplCopyWith<_$BaseInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

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
  @JsonKey(name: "permissions")
  List<String> get permissions => throw _privateConstructorUsedError;
  @JsonKey(name: "assistant_staff")
  AssistantStaff get assistantStaff => throw _privateConstructorUsedError;
  @JsonKey(name: "cashier_staff")
  CashierStaff get cashierStaff => throw _privateConstructorUsedError;
  @JsonKey(name: "assistant")
  Assistant get assistant => throw _privateConstructorUsedError;
  @JsonKey(name: "kitchen")
  Kitchen get kitchen => throw _privateConstructorUsedError;
  @JsonKey(name: "server_version")
  String? get serverVersion => throw _privateConstructorUsedError;
  @JsonKey(name: "printer")
  Printer get printer => throw _privateConstructorUsedError;

  /// Serializes this BaseInfo to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BaseInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BaseInfoCopyWith<BaseInfo> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BaseInfoCopyWith<$Res> {
  factory $BaseInfoCopyWith(BaseInfo value, $Res Function(BaseInfo) then) = _$BaseInfoCopyWithImpl<$Res, BaseInfo>;
  @useResult
  $Res call(
      {@JsonKey(name: "buffet") Buffet buffet,
      @JsonKey(name: "business") Business business,
      @JsonKey(name: "cloud") Cloud cloud,
      @JsonKey(name: "company") Company company,
      @JsonKey(name: "currency") Currency currency,
      @JsonKey(name: "update_time") int? updateTime,
      @JsonKey(name: "permissions") List<String> permissions,
      @JsonKey(name: "assistant_staff") AssistantStaff assistantStaff,
      @JsonKey(name: "cashier_staff") CashierStaff cashierStaff,
      @JsonKey(name: "assistant") Assistant assistant,
      @JsonKey(name: "kitchen") Kitchen kitchen,
      @JsonKey(name: "server_version") String? serverVersion,
      @JsonKey(name: "printer") Printer printer});

  $BuffetCopyWith<$Res> get buffet;
  $BusinessCopyWith<$Res> get business;
  $CloudCopyWith<$Res> get cloud;
  $CompanyCopyWith<$Res> get company;
  $CurrencyCopyWith<$Res> get currency;
  $AssistantStaffCopyWith<$Res> get assistantStaff;
  $CashierStaffCopyWith<$Res> get cashierStaff;
  $AssistantCopyWith<$Res> get assistant;
  $KitchenCopyWith<$Res> get kitchen;
  $PrinterCopyWith<$Res> get printer;
}

/// @nodoc
class _$BaseInfoCopyWithImpl<$Res, $Val extends BaseInfo> implements $BaseInfoCopyWith<$Res> {
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
    Object? permissions = null,
    Object? assistantStaff = null,
    Object? cashierStaff = null,
    Object? assistant = null,
    Object? kitchen = null,
    Object? serverVersion = freezed,
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
      permissions: null == permissions
          ? _value.permissions
          : permissions // ignore: cast_nullable_to_non_nullable
              as List<String>,
      assistantStaff: null == assistantStaff
          ? _value.assistantStaff
          : assistantStaff // ignore: cast_nullable_to_non_nullable
              as AssistantStaff,
      cashierStaff: null == cashierStaff
          ? _value.cashierStaff
          : cashierStaff // ignore: cast_nullable_to_non_nullable
              as CashierStaff,
      assistant: null == assistant
          ? _value.assistant
          : assistant // ignore: cast_nullable_to_non_nullable
              as Assistant,
      kitchen: null == kitchen
          ? _value.kitchen
          : kitchen // ignore: cast_nullable_to_non_nullable
              as Kitchen,
      serverVersion: freezed == serverVersion
          ? _value.serverVersion
          : serverVersion // ignore: cast_nullable_to_non_nullable
              as String?,
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
  $AssistantStaffCopyWith<$Res> get assistantStaff {
    return $AssistantStaffCopyWith<$Res>(_value.assistantStaff, (value) {
      return _then(_value.copyWith(assistantStaff: value) as $Val);
    });
  }

  /// Create a copy of BaseInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CashierStaffCopyWith<$Res> get cashierStaff {
    return $CashierStaffCopyWith<$Res>(_value.cashierStaff, (value) {
      return _then(_value.copyWith(cashierStaff: value) as $Val);
    });
  }

  /// Create a copy of BaseInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AssistantCopyWith<$Res> get assistant {
    return $AssistantCopyWith<$Res>(_value.assistant, (value) {
      return _then(_value.copyWith(assistant: value) as $Val);
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
abstract class _$$BaseInfoImplCopyWith<$Res> implements $BaseInfoCopyWith<$Res> {
  factory _$$BaseInfoImplCopyWith(_$BaseInfoImpl value, $Res Function(_$BaseInfoImpl) then) =
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
      @JsonKey(name: "permissions") List<String> permissions,
      @JsonKey(name: "assistant_staff") AssistantStaff assistantStaff,
      @JsonKey(name: "cashier_staff") CashierStaff cashierStaff,
      @JsonKey(name: "assistant") Assistant assistant,
      @JsonKey(name: "kitchen") Kitchen kitchen,
      @JsonKey(name: "server_version") String? serverVersion,
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
  $AssistantStaffCopyWith<$Res> get assistantStaff;
  @override
  $CashierStaffCopyWith<$Res> get cashierStaff;
  @override
  $AssistantCopyWith<$Res> get assistant;
  @override
  $KitchenCopyWith<$Res> get kitchen;
  @override
  $PrinterCopyWith<$Res> get printer;
}

/// @nodoc
class __$$BaseInfoImplCopyWithImpl<$Res> extends _$BaseInfoCopyWithImpl<$Res, _$BaseInfoImpl>
    implements _$$BaseInfoImplCopyWith<$Res> {
  __$$BaseInfoImplCopyWithImpl(_$BaseInfoImpl _value, $Res Function(_$BaseInfoImpl) _then) : super(_value, _then);

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
    Object? permissions = null,
    Object? assistantStaff = null,
    Object? cashierStaff = null,
    Object? assistant = null,
    Object? kitchen = null,
    Object? serverVersion = freezed,
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
      permissions: null == permissions
          ? _value._permissions
          : permissions // ignore: cast_nullable_to_non_nullable
              as List<String>,
      assistantStaff: null == assistantStaff
          ? _value.assistantStaff
          : assistantStaff // ignore: cast_nullable_to_non_nullable
              as AssistantStaff,
      cashierStaff: null == cashierStaff
          ? _value.cashierStaff
          : cashierStaff // ignore: cast_nullable_to_non_nullable
              as CashierStaff,
      assistant: null == assistant
          ? _value.assistant
          : assistant // ignore: cast_nullable_to_non_nullable
              as Assistant,
      kitchen: null == kitchen
          ? _value.kitchen
          : kitchen // ignore: cast_nullable_to_non_nullable
              as Kitchen,
      serverVersion: freezed == serverVersion
          ? _value.serverVersion
          : serverVersion // ignore: cast_nullable_to_non_nullable
              as String?,
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
      @JsonKey(name: "permissions") required final List<String> permissions,
      @JsonKey(name: "assistant_staff") required this.assistantStaff,
      @JsonKey(name: "cashier_staff") required this.cashierStaff,
      @JsonKey(name: "assistant") required this.assistant,
      @JsonKey(name: "kitchen") required this.kitchen,
      @JsonKey(name: "server_version") this.serverVersion,
      @JsonKey(name: "printer") required this.printer})
      : _permissions = permissions;

  factory _$BaseInfoImpl.fromJson(Map<String, dynamic> json) => _$$BaseInfoImplFromJson(json);

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
  final List<String> _permissions;

  /// NOTE: 独占数据
  @override
  @JsonKey(name: "permissions")
  List<String> get permissions {
    if (_permissions is EqualUnmodifiableListView) return _permissions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_permissions);
  }

  @override
  @JsonKey(name: "assistant_staff")
  final AssistantStaff assistantStaff;
  @override
  @JsonKey(name: "cashier_staff")
  final CashierStaff cashierStaff;
  @override
  @JsonKey(name: "assistant")
  final Assistant assistant;
  @override
  @JsonKey(name: "kitchen")
  final Kitchen kitchen;
  @override
  @JsonKey(name: "server_version")
  final String? serverVersion;
  @override
  @JsonKey(name: "printer")
  final Printer printer;

  @override
  String toString() {
    return 'BaseInfo(buffet: $buffet, business: $business, cloud: $cloud, company: $company, currency: $currency, updateTime: $updateTime, permissions: $permissions, assistantStaff: $assistantStaff, cashierStaff: $cashierStaff, assistant: $assistant, kitchen: $kitchen, serverVersion: $serverVersion, printer: $printer)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BaseInfoImpl &&
            (identical(other.buffet, buffet) || other.buffet == buffet) &&
            (identical(other.business, business) || other.business == business) &&
            (identical(other.cloud, cloud) || other.cloud == cloud) &&
            (identical(other.company, company) || other.company == company) &&
            (identical(other.currency, currency) || other.currency == currency) &&
            (identical(other.updateTime, updateTime) || other.updateTime == updateTime) &&
            const DeepCollectionEquality().equals(other._permissions, _permissions) &&
            (identical(other.assistantStaff, assistantStaff) || other.assistantStaff == assistantStaff) &&
            (identical(other.cashierStaff, cashierStaff) || other.cashierStaff == cashierStaff) &&
            (identical(other.assistant, assistant) || other.assistant == assistant) &&
            (identical(other.kitchen, kitchen) || other.kitchen == kitchen) &&
            (identical(other.serverVersion, serverVersion) || other.serverVersion == serverVersion) &&
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
      const DeepCollectionEquality().hash(_permissions),
      assistantStaff,
      cashierStaff,
      assistant,
      kitchen,
      serverVersion,
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
      @JsonKey(name: "permissions") required final List<String> permissions,
      @JsonKey(name: "assistant_staff") required final AssistantStaff assistantStaff,
      @JsonKey(name: "cashier_staff") required final CashierStaff cashierStaff,
      @JsonKey(name: "assistant") required final Assistant assistant,
      @JsonKey(name: "kitchen") required final Kitchen kitchen,
      @JsonKey(name: "server_version") final String? serverVersion,
      @JsonKey(name: "printer") required final Printer printer}) = _$BaseInfoImpl;

  factory _BaseInfo.fromJson(Map<String, dynamic> json) = _$BaseInfoImpl.fromJson;

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
  @JsonKey(name: "permissions")
  List<String> get permissions;
  @override
  @JsonKey(name: "assistant_staff")
  AssistantStaff get assistantStaff;
  @override
  @JsonKey(name: "cashier_staff")
  CashierStaff get cashierStaff;
  @override
  @JsonKey(name: "assistant")
  Assistant get assistant;
  @override
  @JsonKey(name: "kitchen")
  Kitchen get kitchen;
  @override
  @JsonKey(name: "server_version")
  String? get serverVersion;
  @override
  @JsonKey(name: "printer")
  Printer get printer;

  /// Create a copy of BaseInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BaseInfoImplCopyWith<_$BaseInfoImpl> get copyWith => throw _privateConstructorUsedError;
}

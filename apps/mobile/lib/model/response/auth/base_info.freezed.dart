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

  /// NOTE: 独占数据
  @JsonKey(name: "h5")
  H5 get h5 => throw _privateConstructorUsedError;
  @JsonKey(name: "desk")
  Desk get desk => throw _privateConstructorUsedError;
  @JsonKey(name: "kitchen")
  Kitchen get kitchen => throw _privateConstructorUsedError;
  @JsonKey(name: "is_open_h5_order")
  int get isOpenH5Order => throw _privateConstructorUsedError;

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
      @JsonKey(name: "h5") H5 h5,
      @JsonKey(name: "desk") Desk desk,
      @JsonKey(name: "kitchen") Kitchen kitchen,
      @JsonKey(name: "is_open_h5_order") int isOpenH5Order});

  $BuffetCopyWith<$Res> get buffet;
  $BusinessCopyWith<$Res> get business;
  $CloudCopyWith<$Res> get cloud;
  $CompanyCopyWith<$Res> get company;
  $CurrencyCopyWith<$Res> get currency;
  $H5CopyWith<$Res> get h5;
  $DeskCopyWith<$Res> get desk;
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
    Object? h5 = null,
    Object? desk = null,
    Object? kitchen = null,
    Object? isOpenH5Order = null,
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
      h5: null == h5
          ? _value.h5
          : h5 // ignore: cast_nullable_to_non_nullable
              as H5,
      desk: null == desk
          ? _value.desk
          : desk // ignore: cast_nullable_to_non_nullable
              as Desk,
      kitchen: null == kitchen
          ? _value.kitchen
          : kitchen // ignore: cast_nullable_to_non_nullable
              as Kitchen,
      isOpenH5Order: null == isOpenH5Order
          ? _value.isOpenH5Order
          : isOpenH5Order // ignore: cast_nullable_to_non_nullable
              as int,
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
  $H5CopyWith<$Res> get h5 {
    return $H5CopyWith<$Res>(_value.h5, (value) {
      return _then(_value.copyWith(h5: value) as $Val);
    });
  }

  /// Create a copy of BaseInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DeskCopyWith<$Res> get desk {
    return $DeskCopyWith<$Res>(_value.desk, (value) {
      return _then(_value.copyWith(desk: value) as $Val);
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
      @JsonKey(name: "h5") H5 h5,
      @JsonKey(name: "desk") Desk desk,
      @JsonKey(name: "kitchen") Kitchen kitchen,
      @JsonKey(name: "is_open_h5_order") int isOpenH5Order});

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
  $H5CopyWith<$Res> get h5;
  @override
  $DeskCopyWith<$Res> get desk;
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
    Object? h5 = null,
    Object? desk = null,
    Object? kitchen = null,
    Object? isOpenH5Order = null,
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
      h5: null == h5
          ? _value.h5
          : h5 // ignore: cast_nullable_to_non_nullable
              as H5,
      desk: null == desk
          ? _value.desk
          : desk // ignore: cast_nullable_to_non_nullable
              as Desk,
      kitchen: null == kitchen
          ? _value.kitchen
          : kitchen // ignore: cast_nullable_to_non_nullable
              as Kitchen,
      isOpenH5Order: null == isOpenH5Order
          ? _value.isOpenH5Order
          : isOpenH5Order // ignore: cast_nullable_to_non_nullable
              as int,
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
      @JsonKey(name: "h5") required this.h5,
      @JsonKey(name: "desk") required this.desk,
      @JsonKey(name: "kitchen") required this.kitchen,
      @JsonKey(name: "is_open_h5_order") required this.isOpenH5Order});

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

  /// NOTE: 独占数据
  @override
  @JsonKey(name: "h5")
  final H5 h5;
  @override
  @JsonKey(name: "desk")
  final Desk desk;
  @override
  @JsonKey(name: "kitchen")
  final Kitchen kitchen;
  @override
  @JsonKey(name: "is_open_h5_order")
  final int isOpenH5Order;

  @override
  String toString() {
    return 'BaseInfo(buffet: $buffet, business: $business, cloud: $cloud, company: $company, currency: $currency, h5: $h5, desk: $desk, kitchen: $kitchen, isOpenH5Order: $isOpenH5Order)';
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
            (identical(other.h5, h5) || other.h5 == h5) &&
            (identical(other.desk, desk) || other.desk == desk) &&
            (identical(other.kitchen, kitchen) || other.kitchen == kitchen) &&
            (identical(other.isOpenH5Order, isOpenH5Order) ||
                other.isOpenH5Order == isOpenH5Order));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, buffet, business, cloud, company,
      currency, h5, desk, kitchen, isOpenH5Order);

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
      @JsonKey(name: "h5") required final H5 h5,
      @JsonKey(name: "desk") required final Desk desk,
      @JsonKey(name: "kitchen") required final Kitchen kitchen,
      @JsonKey(name: "is_open_h5_order")
      required final int isOpenH5Order}) = _$BaseInfoImpl;

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

  /// NOTE: 独占数据
  @override
  @JsonKey(name: "h5")
  H5 get h5;
  @override
  @JsonKey(name: "desk")
  Desk get desk;
  @override
  @JsonKey(name: "kitchen")
  Kitchen get kitchen;
  @override
  @JsonKey(name: "is_open_h5_order")
  int get isOpenH5Order;

  /// Create a copy of BaseInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BaseInfoImplCopyWith<_$BaseInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

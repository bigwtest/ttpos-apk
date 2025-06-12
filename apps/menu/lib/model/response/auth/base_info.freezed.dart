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
  @JsonKey(name: "cloud")
  Cloud get cloud => throw _privateConstructorUsedError;
  @JsonKey(name: "company")
  Company get company => throw _privateConstructorUsedError;
  @JsonKey(name: "currency")
  Currency get currency => throw _privateConstructorUsedError;

  /// NOTE: 是否显示已售罄商品
  @JsonKey(name: "is_show_sold_out")
  bool? get isShowSoldOut => throw _privateConstructorUsedError;

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
      {@JsonKey(name: "cloud") Cloud cloud,
      @JsonKey(name: "company") Company company,
      @JsonKey(name: "currency") Currency currency,
      @JsonKey(name: "is_show_sold_out") bool? isShowSoldOut});

  $CloudCopyWith<$Res> get cloud;
  $CompanyCopyWith<$Res> get company;
  $CurrencyCopyWith<$Res> get currency;
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
    Object? cloud = null,
    Object? company = null,
    Object? currency = null,
    Object? isShowSoldOut = freezed,
  }) {
    return _then(_value.copyWith(
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
      isShowSoldOut: freezed == isShowSoldOut
          ? _value.isShowSoldOut
          : isShowSoldOut // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
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
      {@JsonKey(name: "cloud") Cloud cloud,
      @JsonKey(name: "company") Company company,
      @JsonKey(name: "currency") Currency currency,
      @JsonKey(name: "is_show_sold_out") bool? isShowSoldOut});

  @override
  $CloudCopyWith<$Res> get cloud;
  @override
  $CompanyCopyWith<$Res> get company;
  @override
  $CurrencyCopyWith<$Res> get currency;
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
    Object? cloud = null,
    Object? company = null,
    Object? currency = null,
    Object? isShowSoldOut = freezed,
  }) {
    return _then(_$BaseInfoImpl(
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
      isShowSoldOut: freezed == isShowSoldOut
          ? _value.isShowSoldOut
          : isShowSoldOut // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BaseInfoImpl implements _BaseInfo {
  const _$BaseInfoImpl(
      {@JsonKey(name: "cloud") required this.cloud,
      @JsonKey(name: "company") required this.company,
      @JsonKey(name: "currency") required this.currency,
      @JsonKey(name: "is_show_sold_out") this.isShowSoldOut});

  factory _$BaseInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$BaseInfoImplFromJson(json);

  /// NOTE: 基础数据
  @override
  @JsonKey(name: "cloud")
  final Cloud cloud;
  @override
  @JsonKey(name: "company")
  final Company company;
  @override
  @JsonKey(name: "currency")
  final Currency currency;

  /// NOTE: 是否显示已售罄商品
  @override
  @JsonKey(name: "is_show_sold_out")
  final bool? isShowSoldOut;

  @override
  String toString() {
    return 'BaseInfo(cloud: $cloud, company: $company, currency: $currency, isShowSoldOut: $isShowSoldOut)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BaseInfoImpl &&
            (identical(other.cloud, cloud) || other.cloud == cloud) &&
            (identical(other.company, company) || other.company == company) &&
            (identical(other.currency, currency) ||
                other.currency == currency) &&
            (identical(other.isShowSoldOut, isShowSoldOut) ||
                other.isShowSoldOut == isShowSoldOut));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, cloud, company, currency, isShowSoldOut);

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
          {@JsonKey(name: "cloud") required final Cloud cloud,
          @JsonKey(name: "company") required final Company company,
          @JsonKey(name: "currency") required final Currency currency,
          @JsonKey(name: "is_show_sold_out") final bool? isShowSoldOut}) =
      _$BaseInfoImpl;

  factory _BaseInfo.fromJson(Map<String, dynamic> json) =
      _$BaseInfoImpl.fromJson;

  /// NOTE: 基础数据
  @override
  @JsonKey(name: "cloud")
  Cloud get cloud;
  @override
  @JsonKey(name: "company")
  Company get company;
  @override
  @JsonKey(name: "currency")
  Currency get currency;

  /// NOTE: 是否显示已售罄商品
  @override
  @JsonKey(name: "is_show_sold_out")
  bool? get isShowSoldOut;

  /// Create a copy of BaseInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BaseInfoImplCopyWith<_$BaseInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

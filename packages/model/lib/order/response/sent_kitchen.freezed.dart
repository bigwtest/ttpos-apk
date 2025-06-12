// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sent_kitchen.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SentKitchen _$SentKitchenFromJson(Map<String, dynamic> json) {
  return _SentKitchen.fromJson(json);
}

/// @nodoc
mixin _$SentKitchen {
// 金额信息
  @JsonKey(name: "amount_info")
  SentKitchenAmountInfo? get amountInfo =>
      throw _privateConstructorUsedError; // 商品列表
  @JsonKey(name: "groups")
  BaseList<SentKitchenItem> get groups => throw _privateConstructorUsedError;

  /// Serializes this SentKitchen to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SentKitchen
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SentKitchenCopyWith<SentKitchen> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SentKitchenCopyWith<$Res> {
  factory $SentKitchenCopyWith(
          SentKitchen value, $Res Function(SentKitchen) then) =
      _$SentKitchenCopyWithImpl<$Res, SentKitchen>;
  @useResult
  $Res call(
      {@JsonKey(name: "amount_info") SentKitchenAmountInfo? amountInfo,
      @JsonKey(name: "groups") BaseList<SentKitchenItem> groups});

  $SentKitchenAmountInfoCopyWith<$Res>? get amountInfo;
  $BaseListCopyWith<SentKitchenItem, $Res> get groups;
}

/// @nodoc
class _$SentKitchenCopyWithImpl<$Res, $Val extends SentKitchen>
    implements $SentKitchenCopyWith<$Res> {
  _$SentKitchenCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SentKitchen
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? amountInfo = freezed,
    Object? groups = null,
  }) {
    return _then(_value.copyWith(
      amountInfo: freezed == amountInfo
          ? _value.amountInfo
          : amountInfo // ignore: cast_nullable_to_non_nullable
              as SentKitchenAmountInfo?,
      groups: null == groups
          ? _value.groups
          : groups // ignore: cast_nullable_to_non_nullable
              as BaseList<SentKitchenItem>,
    ) as $Val);
  }

  /// Create a copy of SentKitchen
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SentKitchenAmountInfoCopyWith<$Res>? get amountInfo {
    if (_value.amountInfo == null) {
      return null;
    }

    return $SentKitchenAmountInfoCopyWith<$Res>(_value.amountInfo!, (value) {
      return _then(_value.copyWith(amountInfo: value) as $Val);
    });
  }

  /// Create a copy of SentKitchen
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BaseListCopyWith<SentKitchenItem, $Res> get groups {
    return $BaseListCopyWith<SentKitchenItem, $Res>(_value.groups, (value) {
      return _then(_value.copyWith(groups: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SentKitchenImplCopyWith<$Res>
    implements $SentKitchenCopyWith<$Res> {
  factory _$$SentKitchenImplCopyWith(
          _$SentKitchenImpl value, $Res Function(_$SentKitchenImpl) then) =
      __$$SentKitchenImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "amount_info") SentKitchenAmountInfo? amountInfo,
      @JsonKey(name: "groups") BaseList<SentKitchenItem> groups});

  @override
  $SentKitchenAmountInfoCopyWith<$Res>? get amountInfo;
  @override
  $BaseListCopyWith<SentKitchenItem, $Res> get groups;
}

/// @nodoc
class __$$SentKitchenImplCopyWithImpl<$Res>
    extends _$SentKitchenCopyWithImpl<$Res, _$SentKitchenImpl>
    implements _$$SentKitchenImplCopyWith<$Res> {
  __$$SentKitchenImplCopyWithImpl(
      _$SentKitchenImpl _value, $Res Function(_$SentKitchenImpl) _then)
      : super(_value, _then);

  /// Create a copy of SentKitchen
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? amountInfo = freezed,
    Object? groups = null,
  }) {
    return _then(_$SentKitchenImpl(
      amountInfo: freezed == amountInfo
          ? _value.amountInfo
          : amountInfo // ignore: cast_nullable_to_non_nullable
              as SentKitchenAmountInfo?,
      groups: null == groups
          ? _value.groups
          : groups // ignore: cast_nullable_to_non_nullable
              as BaseList<SentKitchenItem>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SentKitchenImpl implements _SentKitchen {
  const _$SentKitchenImpl(
      {@JsonKey(name: "amount_info") this.amountInfo,
      @JsonKey(name: "groups") required this.groups});

  factory _$SentKitchenImpl.fromJson(Map<String, dynamic> json) =>
      _$$SentKitchenImplFromJson(json);

// 金额信息
  @override
  @JsonKey(name: "amount_info")
  final SentKitchenAmountInfo? amountInfo;
// 商品列表
  @override
  @JsonKey(name: "groups")
  final BaseList<SentKitchenItem> groups;

  @override
  String toString() {
    return 'SentKitchen(amountInfo: $amountInfo, groups: $groups)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SentKitchenImpl &&
            (identical(other.amountInfo, amountInfo) ||
                other.amountInfo == amountInfo) &&
            (identical(other.groups, groups) || other.groups == groups));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, amountInfo, groups);

  /// Create a copy of SentKitchen
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SentKitchenImplCopyWith<_$SentKitchenImpl> get copyWith =>
      __$$SentKitchenImplCopyWithImpl<_$SentKitchenImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SentKitchenImplToJson(
      this,
    );
  }
}

abstract class _SentKitchen implements SentKitchen {
  const factory _SentKitchen(
      {@JsonKey(name: "amount_info") final SentKitchenAmountInfo? amountInfo,
      @JsonKey(name: "groups")
      required final BaseList<SentKitchenItem> groups}) = _$SentKitchenImpl;

  factory _SentKitchen.fromJson(Map<String, dynamic> json) =
      _$SentKitchenImpl.fromJson;

// 金额信息
  @override
  @JsonKey(name: "amount_info")
  SentKitchenAmountInfo? get amountInfo; // 商品列表
  @override
  @JsonKey(name: "groups")
  BaseList<SentKitchenItem> get groups;

  /// Create a copy of SentKitchen
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SentKitchenImplCopyWith<_$SentKitchenImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SentKitchenAmountInfo _$SentKitchenAmountInfoFromJson(
    Map<String, dynamic> json) {
  return _SentKitchenAmountInfo.fromJson(json);
}

/// @nodoc
mixin _$SentKitchenAmountInfo {
// 总金额。商品未含税时，总金额=商品金额(折后)+服务费+税费。商品已含税时，总金额=商品金额（折后，含商品消费税）+服务费+税费（只有服务费税）
  @JsonKey(name: "amount")
  SafetyNumber get amount =>
      throw _privateConstructorUsedError; // 优惠折扣金额(整单打折优惠金额+订单抹零金额)
  @JsonKey(name: "discount_amount")
  SafetyNumber get discountAmount =>
      throw _privateConstructorUsedError; // 会员优惠折扣金额
  @JsonKey(name: "member_discount_amount")
  SafetyNumber get memberDiscountAmount =>
      throw _privateConstructorUsedError; // 商品金额(折后价)
  @JsonKey(name: "product_amount")
  SafetyNumber get productAmount =>
      throw _privateConstructorUsedError; // 总数量，用于点餐助手、平板端、h5
  @JsonKey(name: "product_num")
  int get productNum => throw _privateConstructorUsedError; // 商品金额(原价)
  @JsonKey(name: "product_origin_amount")
  SafetyNumber get productOriginAmount =>
      throw _privateConstructorUsedError; // 服务费
  @JsonKey(name: "service_amount")
  SafetyNumber get serviceAmount =>
      throw _privateConstructorUsedError; // 税费（商品税费+服务费税费）
  @JsonKey(name: "tax_amount")
  SafetyNumber get taxAmount => throw _privateConstructorUsedError;

  /// Serializes this SentKitchenAmountInfo to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SentKitchenAmountInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SentKitchenAmountInfoCopyWith<SentKitchenAmountInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SentKitchenAmountInfoCopyWith<$Res> {
  factory $SentKitchenAmountInfoCopyWith(SentKitchenAmountInfo value,
          $Res Function(SentKitchenAmountInfo) then) =
      _$SentKitchenAmountInfoCopyWithImpl<$Res, SentKitchenAmountInfo>;
  @useResult
  $Res call(
      {@JsonKey(name: "amount") SafetyNumber amount,
      @JsonKey(name: "discount_amount") SafetyNumber discountAmount,
      @JsonKey(name: "member_discount_amount")
      SafetyNumber memberDiscountAmount,
      @JsonKey(name: "product_amount") SafetyNumber productAmount,
      @JsonKey(name: "product_num") int productNum,
      @JsonKey(name: "product_origin_amount") SafetyNumber productOriginAmount,
      @JsonKey(name: "service_amount") SafetyNumber serviceAmount,
      @JsonKey(name: "tax_amount") SafetyNumber taxAmount});

  $SafetyNumberCopyWith<$Res> get amount;
  $SafetyNumberCopyWith<$Res> get discountAmount;
  $SafetyNumberCopyWith<$Res> get memberDiscountAmount;
  $SafetyNumberCopyWith<$Res> get productAmount;
  $SafetyNumberCopyWith<$Res> get productOriginAmount;
  $SafetyNumberCopyWith<$Res> get serviceAmount;
  $SafetyNumberCopyWith<$Res> get taxAmount;
}

/// @nodoc
class _$SentKitchenAmountInfoCopyWithImpl<$Res,
        $Val extends SentKitchenAmountInfo>
    implements $SentKitchenAmountInfoCopyWith<$Res> {
  _$SentKitchenAmountInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SentKitchenAmountInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? amount = null,
    Object? discountAmount = null,
    Object? memberDiscountAmount = null,
    Object? productAmount = null,
    Object? productNum = null,
    Object? productOriginAmount = null,
    Object? serviceAmount = null,
    Object? taxAmount = null,
  }) {
    return _then(_value.copyWith(
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as SafetyNumber,
      discountAmount: null == discountAmount
          ? _value.discountAmount
          : discountAmount // ignore: cast_nullable_to_non_nullable
              as SafetyNumber,
      memberDiscountAmount: null == memberDiscountAmount
          ? _value.memberDiscountAmount
          : memberDiscountAmount // ignore: cast_nullable_to_non_nullable
              as SafetyNumber,
      productAmount: null == productAmount
          ? _value.productAmount
          : productAmount // ignore: cast_nullable_to_non_nullable
              as SafetyNumber,
      productNum: null == productNum
          ? _value.productNum
          : productNum // ignore: cast_nullable_to_non_nullable
              as int,
      productOriginAmount: null == productOriginAmount
          ? _value.productOriginAmount
          : productOriginAmount // ignore: cast_nullable_to_non_nullable
              as SafetyNumber,
      serviceAmount: null == serviceAmount
          ? _value.serviceAmount
          : serviceAmount // ignore: cast_nullable_to_non_nullable
              as SafetyNumber,
      taxAmount: null == taxAmount
          ? _value.taxAmount
          : taxAmount // ignore: cast_nullable_to_non_nullable
              as SafetyNumber,
    ) as $Val);
  }

  /// Create a copy of SentKitchenAmountInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SafetyNumberCopyWith<$Res> get amount {
    return $SafetyNumberCopyWith<$Res>(_value.amount, (value) {
      return _then(_value.copyWith(amount: value) as $Val);
    });
  }

  /// Create a copy of SentKitchenAmountInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SafetyNumberCopyWith<$Res> get discountAmount {
    return $SafetyNumberCopyWith<$Res>(_value.discountAmount, (value) {
      return _then(_value.copyWith(discountAmount: value) as $Val);
    });
  }

  /// Create a copy of SentKitchenAmountInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SafetyNumberCopyWith<$Res> get memberDiscountAmount {
    return $SafetyNumberCopyWith<$Res>(_value.memberDiscountAmount, (value) {
      return _then(_value.copyWith(memberDiscountAmount: value) as $Val);
    });
  }

  /// Create a copy of SentKitchenAmountInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SafetyNumberCopyWith<$Res> get productAmount {
    return $SafetyNumberCopyWith<$Res>(_value.productAmount, (value) {
      return _then(_value.copyWith(productAmount: value) as $Val);
    });
  }

  /// Create a copy of SentKitchenAmountInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SafetyNumberCopyWith<$Res> get productOriginAmount {
    return $SafetyNumberCopyWith<$Res>(_value.productOriginAmount, (value) {
      return _then(_value.copyWith(productOriginAmount: value) as $Val);
    });
  }

  /// Create a copy of SentKitchenAmountInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SafetyNumberCopyWith<$Res> get serviceAmount {
    return $SafetyNumberCopyWith<$Res>(_value.serviceAmount, (value) {
      return _then(_value.copyWith(serviceAmount: value) as $Val);
    });
  }

  /// Create a copy of SentKitchenAmountInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SafetyNumberCopyWith<$Res> get taxAmount {
    return $SafetyNumberCopyWith<$Res>(_value.taxAmount, (value) {
      return _then(_value.copyWith(taxAmount: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SentKitchenAmountInfoImplCopyWith<$Res>
    implements $SentKitchenAmountInfoCopyWith<$Res> {
  factory _$$SentKitchenAmountInfoImplCopyWith(
          _$SentKitchenAmountInfoImpl value,
          $Res Function(_$SentKitchenAmountInfoImpl) then) =
      __$$SentKitchenAmountInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "amount") SafetyNumber amount,
      @JsonKey(name: "discount_amount") SafetyNumber discountAmount,
      @JsonKey(name: "member_discount_amount")
      SafetyNumber memberDiscountAmount,
      @JsonKey(name: "product_amount") SafetyNumber productAmount,
      @JsonKey(name: "product_num") int productNum,
      @JsonKey(name: "product_origin_amount") SafetyNumber productOriginAmount,
      @JsonKey(name: "service_amount") SafetyNumber serviceAmount,
      @JsonKey(name: "tax_amount") SafetyNumber taxAmount});

  @override
  $SafetyNumberCopyWith<$Res> get amount;
  @override
  $SafetyNumberCopyWith<$Res> get discountAmount;
  @override
  $SafetyNumberCopyWith<$Res> get memberDiscountAmount;
  @override
  $SafetyNumberCopyWith<$Res> get productAmount;
  @override
  $SafetyNumberCopyWith<$Res> get productOriginAmount;
  @override
  $SafetyNumberCopyWith<$Res> get serviceAmount;
  @override
  $SafetyNumberCopyWith<$Res> get taxAmount;
}

/// @nodoc
class __$$SentKitchenAmountInfoImplCopyWithImpl<$Res>
    extends _$SentKitchenAmountInfoCopyWithImpl<$Res,
        _$SentKitchenAmountInfoImpl>
    implements _$$SentKitchenAmountInfoImplCopyWith<$Res> {
  __$$SentKitchenAmountInfoImplCopyWithImpl(_$SentKitchenAmountInfoImpl _value,
      $Res Function(_$SentKitchenAmountInfoImpl) _then)
      : super(_value, _then);

  /// Create a copy of SentKitchenAmountInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? amount = null,
    Object? discountAmount = null,
    Object? memberDiscountAmount = null,
    Object? productAmount = null,
    Object? productNum = null,
    Object? productOriginAmount = null,
    Object? serviceAmount = null,
    Object? taxAmount = null,
  }) {
    return _then(_$SentKitchenAmountInfoImpl(
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as SafetyNumber,
      discountAmount: null == discountAmount
          ? _value.discountAmount
          : discountAmount // ignore: cast_nullable_to_non_nullable
              as SafetyNumber,
      memberDiscountAmount: null == memberDiscountAmount
          ? _value.memberDiscountAmount
          : memberDiscountAmount // ignore: cast_nullable_to_non_nullable
              as SafetyNumber,
      productAmount: null == productAmount
          ? _value.productAmount
          : productAmount // ignore: cast_nullable_to_non_nullable
              as SafetyNumber,
      productNum: null == productNum
          ? _value.productNum
          : productNum // ignore: cast_nullable_to_non_nullable
              as int,
      productOriginAmount: null == productOriginAmount
          ? _value.productOriginAmount
          : productOriginAmount // ignore: cast_nullable_to_non_nullable
              as SafetyNumber,
      serviceAmount: null == serviceAmount
          ? _value.serviceAmount
          : serviceAmount // ignore: cast_nullable_to_non_nullable
              as SafetyNumber,
      taxAmount: null == taxAmount
          ? _value.taxAmount
          : taxAmount // ignore: cast_nullable_to_non_nullable
              as SafetyNumber,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SentKitchenAmountInfoImpl implements _SentKitchenAmountInfo {
  const _$SentKitchenAmountInfoImpl(
      {@JsonKey(name: "amount") required this.amount,
      @JsonKey(name: "discount_amount") required this.discountAmount,
      @JsonKey(name: "member_discount_amount")
      required this.memberDiscountAmount,
      @JsonKey(name: "product_amount") required this.productAmount,
      @JsonKey(name: "product_num") required this.productNum,
      @JsonKey(name: "product_origin_amount") required this.productOriginAmount,
      @JsonKey(name: "service_amount") required this.serviceAmount,
      @JsonKey(name: "tax_amount") required this.taxAmount});

  factory _$SentKitchenAmountInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$SentKitchenAmountInfoImplFromJson(json);

// 总金额。商品未含税时，总金额=商品金额(折后)+服务费+税费。商品已含税时，总金额=商品金额（折后，含商品消费税）+服务费+税费（只有服务费税）
  @override
  @JsonKey(name: "amount")
  final SafetyNumber amount;
// 优惠折扣金额(整单打折优惠金额+订单抹零金额)
  @override
  @JsonKey(name: "discount_amount")
  final SafetyNumber discountAmount;
// 会员优惠折扣金额
  @override
  @JsonKey(name: "member_discount_amount")
  final SafetyNumber memberDiscountAmount;
// 商品金额(折后价)
  @override
  @JsonKey(name: "product_amount")
  final SafetyNumber productAmount;
// 总数量，用于点餐助手、平板端、h5
  @override
  @JsonKey(name: "product_num")
  final int productNum;
// 商品金额(原价)
  @override
  @JsonKey(name: "product_origin_amount")
  final SafetyNumber productOriginAmount;
// 服务费
  @override
  @JsonKey(name: "service_amount")
  final SafetyNumber serviceAmount;
// 税费（商品税费+服务费税费）
  @override
  @JsonKey(name: "tax_amount")
  final SafetyNumber taxAmount;

  @override
  String toString() {
    return 'SentKitchenAmountInfo(amount: $amount, discountAmount: $discountAmount, memberDiscountAmount: $memberDiscountAmount, productAmount: $productAmount, productNum: $productNum, productOriginAmount: $productOriginAmount, serviceAmount: $serviceAmount, taxAmount: $taxAmount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SentKitchenAmountInfoImpl &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.discountAmount, discountAmount) ||
                other.discountAmount == discountAmount) &&
            (identical(other.memberDiscountAmount, memberDiscountAmount) ||
                other.memberDiscountAmount == memberDiscountAmount) &&
            (identical(other.productAmount, productAmount) ||
                other.productAmount == productAmount) &&
            (identical(other.productNum, productNum) ||
                other.productNum == productNum) &&
            (identical(other.productOriginAmount, productOriginAmount) ||
                other.productOriginAmount == productOriginAmount) &&
            (identical(other.serviceAmount, serviceAmount) ||
                other.serviceAmount == serviceAmount) &&
            (identical(other.taxAmount, taxAmount) ||
                other.taxAmount == taxAmount));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      amount,
      discountAmount,
      memberDiscountAmount,
      productAmount,
      productNum,
      productOriginAmount,
      serviceAmount,
      taxAmount);

  /// Create a copy of SentKitchenAmountInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SentKitchenAmountInfoImplCopyWith<_$SentKitchenAmountInfoImpl>
      get copyWith => __$$SentKitchenAmountInfoImplCopyWithImpl<
          _$SentKitchenAmountInfoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SentKitchenAmountInfoImplToJson(
      this,
    );
  }
}

abstract class _SentKitchenAmountInfo implements SentKitchenAmountInfo {
  const factory _SentKitchenAmountInfo(
          {@JsonKey(name: "amount") required final SafetyNumber amount,
          @JsonKey(name: "discount_amount")
          required final SafetyNumber discountAmount,
          @JsonKey(name: "member_discount_amount")
          required final SafetyNumber memberDiscountAmount,
          @JsonKey(name: "product_amount")
          required final SafetyNumber productAmount,
          @JsonKey(name: "product_num") required final int productNum,
          @JsonKey(name: "product_origin_amount")
          required final SafetyNumber productOriginAmount,
          @JsonKey(name: "service_amount")
          required final SafetyNumber serviceAmount,
          @JsonKey(name: "tax_amount") required final SafetyNumber taxAmount}) =
      _$SentKitchenAmountInfoImpl;

  factory _SentKitchenAmountInfo.fromJson(Map<String, dynamic> json) =
      _$SentKitchenAmountInfoImpl.fromJson;

// 总金额。商品未含税时，总金额=商品金额(折后)+服务费+税费。商品已含税时，总金额=商品金额（折后，含商品消费税）+服务费+税费（只有服务费税）
  @override
  @JsonKey(name: "amount")
  SafetyNumber get amount; // 优惠折扣金额(整单打折优惠金额+订单抹零金额)
  @override
  @JsonKey(name: "discount_amount")
  SafetyNumber get discountAmount; // 会员优惠折扣金额
  @override
  @JsonKey(name: "member_discount_amount")
  SafetyNumber get memberDiscountAmount; // 商品金额(折后价)
  @override
  @JsonKey(name: "product_amount")
  SafetyNumber get productAmount; // 总数量，用于点餐助手、平板端、h5
  @override
  @JsonKey(name: "product_num")
  int get productNum; // 商品金额(原价)
  @override
  @JsonKey(name: "product_origin_amount")
  SafetyNumber get productOriginAmount; // 服务费
  @override
  @JsonKey(name: "service_amount")
  SafetyNumber get serviceAmount; // 税费（商品税费+服务费税费）
  @override
  @JsonKey(name: "tax_amount")
  SafetyNumber get taxAmount;

  /// Create a copy of SentKitchenAmountInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SentKitchenAmountInfoImplCopyWith<_$SentKitchenAmountInfoImpl>
      get copyWith => throw _privateConstructorUsedError;
}

SentKitchenItem _$SentKitchenItemFromJson(Map<String, dynamic> json) {
  return _SentKitchenItem.fromJson(json);
}

/// @nodoc
mixin _$SentKitchenItem {
// 组商品列表
  @JsonKey(name: "products")
  BaseList<Product> get products =>
      throw _privateConstructorUsedError; // 送厨时间. “17:20:01 下单”
  @JsonKey(name: "send_kitchen_time")
  int get sendKitchenTime =>
      throw _privateConstructorUsedError; // 接单时间. “17:20:01 接单”。值为0时不显示
  @JsonKey(name: "accept_time")
  int? get acceptTime =>
      throw _privateConstructorUsedError; // 接单状态. false：拒单，true：接单
  @JsonKey(name: "is_accept")
  bool? get isAccept => throw _privateConstructorUsedError; // h5下单时间
  @JsonKey(name: "h5_order_time")
  int? get h5OrderTime =>
      throw _privateConstructorUsedError; // h5订单是否需要审核，是则需要显示接单/拒单时间
  @JsonKey(name: "is_h5_order_need_audit")
  bool? get isH5OrderNeedAudit => throw _privateConstructorUsedError;

  /// Serializes this SentKitchenItem to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SentKitchenItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SentKitchenItemCopyWith<SentKitchenItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SentKitchenItemCopyWith<$Res> {
  factory $SentKitchenItemCopyWith(
          SentKitchenItem value, $Res Function(SentKitchenItem) then) =
      _$SentKitchenItemCopyWithImpl<$Res, SentKitchenItem>;
  @useResult
  $Res call(
      {@JsonKey(name: "products") BaseList<Product> products,
      @JsonKey(name: "send_kitchen_time") int sendKitchenTime,
      @JsonKey(name: "accept_time") int? acceptTime,
      @JsonKey(name: "is_accept") bool? isAccept,
      @JsonKey(name: "h5_order_time") int? h5OrderTime,
      @JsonKey(name: "is_h5_order_need_audit") bool? isH5OrderNeedAudit});

  $BaseListCopyWith<Product, $Res> get products;
}

/// @nodoc
class _$SentKitchenItemCopyWithImpl<$Res, $Val extends SentKitchenItem>
    implements $SentKitchenItemCopyWith<$Res> {
  _$SentKitchenItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SentKitchenItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? products = null,
    Object? sendKitchenTime = null,
    Object? acceptTime = freezed,
    Object? isAccept = freezed,
    Object? h5OrderTime = freezed,
    Object? isH5OrderNeedAudit = freezed,
  }) {
    return _then(_value.copyWith(
      products: null == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as BaseList<Product>,
      sendKitchenTime: null == sendKitchenTime
          ? _value.sendKitchenTime
          : sendKitchenTime // ignore: cast_nullable_to_non_nullable
              as int,
      acceptTime: freezed == acceptTime
          ? _value.acceptTime
          : acceptTime // ignore: cast_nullable_to_non_nullable
              as int?,
      isAccept: freezed == isAccept
          ? _value.isAccept
          : isAccept // ignore: cast_nullable_to_non_nullable
              as bool?,
      h5OrderTime: freezed == h5OrderTime
          ? _value.h5OrderTime
          : h5OrderTime // ignore: cast_nullable_to_non_nullable
              as int?,
      isH5OrderNeedAudit: freezed == isH5OrderNeedAudit
          ? _value.isH5OrderNeedAudit
          : isH5OrderNeedAudit // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }

  /// Create a copy of SentKitchenItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BaseListCopyWith<Product, $Res> get products {
    return $BaseListCopyWith<Product, $Res>(_value.products, (value) {
      return _then(_value.copyWith(products: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SentKitchenItemImplCopyWith<$Res>
    implements $SentKitchenItemCopyWith<$Res> {
  factory _$$SentKitchenItemImplCopyWith(_$SentKitchenItemImpl value,
          $Res Function(_$SentKitchenItemImpl) then) =
      __$$SentKitchenItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "products") BaseList<Product> products,
      @JsonKey(name: "send_kitchen_time") int sendKitchenTime,
      @JsonKey(name: "accept_time") int? acceptTime,
      @JsonKey(name: "is_accept") bool? isAccept,
      @JsonKey(name: "h5_order_time") int? h5OrderTime,
      @JsonKey(name: "is_h5_order_need_audit") bool? isH5OrderNeedAudit});

  @override
  $BaseListCopyWith<Product, $Res> get products;
}

/// @nodoc
class __$$SentKitchenItemImplCopyWithImpl<$Res>
    extends _$SentKitchenItemCopyWithImpl<$Res, _$SentKitchenItemImpl>
    implements _$$SentKitchenItemImplCopyWith<$Res> {
  __$$SentKitchenItemImplCopyWithImpl(
      _$SentKitchenItemImpl _value, $Res Function(_$SentKitchenItemImpl) _then)
      : super(_value, _then);

  /// Create a copy of SentKitchenItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? products = null,
    Object? sendKitchenTime = null,
    Object? acceptTime = freezed,
    Object? isAccept = freezed,
    Object? h5OrderTime = freezed,
    Object? isH5OrderNeedAudit = freezed,
  }) {
    return _then(_$SentKitchenItemImpl(
      products: null == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as BaseList<Product>,
      sendKitchenTime: null == sendKitchenTime
          ? _value.sendKitchenTime
          : sendKitchenTime // ignore: cast_nullable_to_non_nullable
              as int,
      acceptTime: freezed == acceptTime
          ? _value.acceptTime
          : acceptTime // ignore: cast_nullable_to_non_nullable
              as int?,
      isAccept: freezed == isAccept
          ? _value.isAccept
          : isAccept // ignore: cast_nullable_to_non_nullable
              as bool?,
      h5OrderTime: freezed == h5OrderTime
          ? _value.h5OrderTime
          : h5OrderTime // ignore: cast_nullable_to_non_nullable
              as int?,
      isH5OrderNeedAudit: freezed == isH5OrderNeedAudit
          ? _value.isH5OrderNeedAudit
          : isH5OrderNeedAudit // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SentKitchenItemImpl implements _SentKitchenItem {
  const _$SentKitchenItemImpl(
      {@JsonKey(name: "products") required this.products,
      @JsonKey(name: "send_kitchen_time") required this.sendKitchenTime,
      @JsonKey(name: "accept_time") this.acceptTime,
      @JsonKey(name: "is_accept") this.isAccept,
      @JsonKey(name: "h5_order_time") this.h5OrderTime,
      @JsonKey(name: "is_h5_order_need_audit") this.isH5OrderNeedAudit});

  factory _$SentKitchenItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$SentKitchenItemImplFromJson(json);

// 组商品列表
  @override
  @JsonKey(name: "products")
  final BaseList<Product> products;
// 送厨时间. “17:20:01 下单”
  @override
  @JsonKey(name: "send_kitchen_time")
  final int sendKitchenTime;
// 接单时间. “17:20:01 接单”。值为0时不显示
  @override
  @JsonKey(name: "accept_time")
  final int? acceptTime;
// 接单状态. false：拒单，true：接单
  @override
  @JsonKey(name: "is_accept")
  final bool? isAccept;
// h5下单时间
  @override
  @JsonKey(name: "h5_order_time")
  final int? h5OrderTime;
// h5订单是否需要审核，是则需要显示接单/拒单时间
  @override
  @JsonKey(name: "is_h5_order_need_audit")
  final bool? isH5OrderNeedAudit;

  @override
  String toString() {
    return 'SentKitchenItem(products: $products, sendKitchenTime: $sendKitchenTime, acceptTime: $acceptTime, isAccept: $isAccept, h5OrderTime: $h5OrderTime, isH5OrderNeedAudit: $isH5OrderNeedAudit)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SentKitchenItemImpl &&
            (identical(other.products, products) ||
                other.products == products) &&
            (identical(other.sendKitchenTime, sendKitchenTime) ||
                other.sendKitchenTime == sendKitchenTime) &&
            (identical(other.acceptTime, acceptTime) ||
                other.acceptTime == acceptTime) &&
            (identical(other.isAccept, isAccept) ||
                other.isAccept == isAccept) &&
            (identical(other.h5OrderTime, h5OrderTime) ||
                other.h5OrderTime == h5OrderTime) &&
            (identical(other.isH5OrderNeedAudit, isH5OrderNeedAudit) ||
                other.isH5OrderNeedAudit == isH5OrderNeedAudit));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, products, sendKitchenTime,
      acceptTime, isAccept, h5OrderTime, isH5OrderNeedAudit);

  /// Create a copy of SentKitchenItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SentKitchenItemImplCopyWith<_$SentKitchenItemImpl> get copyWith =>
      __$$SentKitchenItemImplCopyWithImpl<_$SentKitchenItemImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SentKitchenItemImplToJson(
      this,
    );
  }
}

abstract class _SentKitchenItem implements SentKitchenItem {
  const factory _SentKitchenItem(
      {@JsonKey(name: "products") required final BaseList<Product> products,
      @JsonKey(name: "send_kitchen_time") required final int sendKitchenTime,
      @JsonKey(name: "accept_time") final int? acceptTime,
      @JsonKey(name: "is_accept") final bool? isAccept,
      @JsonKey(name: "h5_order_time") final int? h5OrderTime,
      @JsonKey(name: "is_h5_order_need_audit")
      final bool? isH5OrderNeedAudit}) = _$SentKitchenItemImpl;

  factory _SentKitchenItem.fromJson(Map<String, dynamic> json) =
      _$SentKitchenItemImpl.fromJson;

// 组商品列表
  @override
  @JsonKey(name: "products")
  BaseList<Product> get products; // 送厨时间. “17:20:01 下单”
  @override
  @JsonKey(name: "send_kitchen_time")
  int get sendKitchenTime; // 接单时间. “17:20:01 接单”。值为0时不显示
  @override
  @JsonKey(name: "accept_time")
  int? get acceptTime; // 接单状态. false：拒单，true：接单
  @override
  @JsonKey(name: "is_accept")
  bool? get isAccept; // h5下单时间
  @override
  @JsonKey(name: "h5_order_time")
  int? get h5OrderTime; // h5订单是否需要审核，是则需要显示接单/拒单时间
  @override
  @JsonKey(name: "is_h5_order_need_audit")
  bool? get isH5OrderNeedAudit;

  /// Create a copy of SentKitchenItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SentKitchenItemImplCopyWith<_$SentKitchenItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

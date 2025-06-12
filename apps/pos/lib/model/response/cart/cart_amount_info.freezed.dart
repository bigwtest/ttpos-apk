// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cart_amount_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ResponseCartAmountInfo _$ResponseCartAmountInfoFromJson(
    Map<String, dynamic> json) {
  return _ResponseCartAmountInfo.fromJson(json);
}

/// @nodoc
mixin _$ResponseCartAmountInfo {
// 商品原价总额
  @JsonKey(name: 'product_origin_amount')
  SafetyNumber get productOriginAmount =>
      throw _privateConstructorUsedError; // 商品实际总额
  @JsonKey(name: 'product_amount')
  SafetyNumber get productAmount => throw _privateConstructorUsedError; // 服务费
  @JsonKey(name: 'service_amount')
  SafetyNumber get serviceAmount => throw _privateConstructorUsedError; // 税费
  @JsonKey(name: 'tax_amount')
  SafetyNumber get taxAmount => throw _privateConstructorUsedError; // 折扣金额
  @JsonKey(name: 'discount_amount')
  SafetyNumber get discountAmount =>
      throw _privateConstructorUsedError; // 会员折扣金额
  @JsonKey(name: 'member_discount_amount')
  SafetyNumber get memberDiscountAmount =>
      throw _privateConstructorUsedError; // 实付金额
  @JsonKey(name: 'amount')
  SafetyNumber get amount => throw _privateConstructorUsedError;

  /// Serializes this ResponseCartAmountInfo to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ResponseCartAmountInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ResponseCartAmountInfoCopyWith<ResponseCartAmountInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResponseCartAmountInfoCopyWith<$Res> {
  factory $ResponseCartAmountInfoCopyWith(ResponseCartAmountInfo value,
          $Res Function(ResponseCartAmountInfo) then) =
      _$ResponseCartAmountInfoCopyWithImpl<$Res, ResponseCartAmountInfo>;
  @useResult
  $Res call(
      {@JsonKey(name: 'product_origin_amount') SafetyNumber productOriginAmount,
      @JsonKey(name: 'product_amount') SafetyNumber productAmount,
      @JsonKey(name: 'service_amount') SafetyNumber serviceAmount,
      @JsonKey(name: 'tax_amount') SafetyNumber taxAmount,
      @JsonKey(name: 'discount_amount') SafetyNumber discountAmount,
      @JsonKey(name: 'member_discount_amount')
      SafetyNumber memberDiscountAmount,
      @JsonKey(name: 'amount') SafetyNumber amount});

  $SafetyNumberCopyWith<$Res> get productOriginAmount;
  $SafetyNumberCopyWith<$Res> get productAmount;
  $SafetyNumberCopyWith<$Res> get serviceAmount;
  $SafetyNumberCopyWith<$Res> get taxAmount;
  $SafetyNumberCopyWith<$Res> get discountAmount;
  $SafetyNumberCopyWith<$Res> get memberDiscountAmount;
  $SafetyNumberCopyWith<$Res> get amount;
}

/// @nodoc
class _$ResponseCartAmountInfoCopyWithImpl<$Res,
        $Val extends ResponseCartAmountInfo>
    implements $ResponseCartAmountInfoCopyWith<$Res> {
  _$ResponseCartAmountInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ResponseCartAmountInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productOriginAmount = null,
    Object? productAmount = null,
    Object? serviceAmount = null,
    Object? taxAmount = null,
    Object? discountAmount = null,
    Object? memberDiscountAmount = null,
    Object? amount = null,
  }) {
    return _then(_value.copyWith(
      productOriginAmount: null == productOriginAmount
          ? _value.productOriginAmount
          : productOriginAmount // ignore: cast_nullable_to_non_nullable
              as SafetyNumber,
      productAmount: null == productAmount
          ? _value.productAmount
          : productAmount // ignore: cast_nullable_to_non_nullable
              as SafetyNumber,
      serviceAmount: null == serviceAmount
          ? _value.serviceAmount
          : serviceAmount // ignore: cast_nullable_to_non_nullable
              as SafetyNumber,
      taxAmount: null == taxAmount
          ? _value.taxAmount
          : taxAmount // ignore: cast_nullable_to_non_nullable
              as SafetyNumber,
      discountAmount: null == discountAmount
          ? _value.discountAmount
          : discountAmount // ignore: cast_nullable_to_non_nullable
              as SafetyNumber,
      memberDiscountAmount: null == memberDiscountAmount
          ? _value.memberDiscountAmount
          : memberDiscountAmount // ignore: cast_nullable_to_non_nullable
              as SafetyNumber,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as SafetyNumber,
    ) as $Val);
  }

  /// Create a copy of ResponseCartAmountInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SafetyNumberCopyWith<$Res> get productOriginAmount {
    return $SafetyNumberCopyWith<$Res>(_value.productOriginAmount, (value) {
      return _then(_value.copyWith(productOriginAmount: value) as $Val);
    });
  }

  /// Create a copy of ResponseCartAmountInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SafetyNumberCopyWith<$Res> get productAmount {
    return $SafetyNumberCopyWith<$Res>(_value.productAmount, (value) {
      return _then(_value.copyWith(productAmount: value) as $Val);
    });
  }

  /// Create a copy of ResponseCartAmountInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SafetyNumberCopyWith<$Res> get serviceAmount {
    return $SafetyNumberCopyWith<$Res>(_value.serviceAmount, (value) {
      return _then(_value.copyWith(serviceAmount: value) as $Val);
    });
  }

  /// Create a copy of ResponseCartAmountInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SafetyNumberCopyWith<$Res> get taxAmount {
    return $SafetyNumberCopyWith<$Res>(_value.taxAmount, (value) {
      return _then(_value.copyWith(taxAmount: value) as $Val);
    });
  }

  /// Create a copy of ResponseCartAmountInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SafetyNumberCopyWith<$Res> get discountAmount {
    return $SafetyNumberCopyWith<$Res>(_value.discountAmount, (value) {
      return _then(_value.copyWith(discountAmount: value) as $Val);
    });
  }

  /// Create a copy of ResponseCartAmountInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SafetyNumberCopyWith<$Res> get memberDiscountAmount {
    return $SafetyNumberCopyWith<$Res>(_value.memberDiscountAmount, (value) {
      return _then(_value.copyWith(memberDiscountAmount: value) as $Val);
    });
  }

  /// Create a copy of ResponseCartAmountInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SafetyNumberCopyWith<$Res> get amount {
    return $SafetyNumberCopyWith<$Res>(_value.amount, (value) {
      return _then(_value.copyWith(amount: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ResponseCartAmountInfoImplCopyWith<$Res>
    implements $ResponseCartAmountInfoCopyWith<$Res> {
  factory _$$ResponseCartAmountInfoImplCopyWith(
          _$ResponseCartAmountInfoImpl value,
          $Res Function(_$ResponseCartAmountInfoImpl) then) =
      __$$ResponseCartAmountInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'product_origin_amount') SafetyNumber productOriginAmount,
      @JsonKey(name: 'product_amount') SafetyNumber productAmount,
      @JsonKey(name: 'service_amount') SafetyNumber serviceAmount,
      @JsonKey(name: 'tax_amount') SafetyNumber taxAmount,
      @JsonKey(name: 'discount_amount') SafetyNumber discountAmount,
      @JsonKey(name: 'member_discount_amount')
      SafetyNumber memberDiscountAmount,
      @JsonKey(name: 'amount') SafetyNumber amount});

  @override
  $SafetyNumberCopyWith<$Res> get productOriginAmount;
  @override
  $SafetyNumberCopyWith<$Res> get productAmount;
  @override
  $SafetyNumberCopyWith<$Res> get serviceAmount;
  @override
  $SafetyNumberCopyWith<$Res> get taxAmount;
  @override
  $SafetyNumberCopyWith<$Res> get discountAmount;
  @override
  $SafetyNumberCopyWith<$Res> get memberDiscountAmount;
  @override
  $SafetyNumberCopyWith<$Res> get amount;
}

/// @nodoc
class __$$ResponseCartAmountInfoImplCopyWithImpl<$Res>
    extends _$ResponseCartAmountInfoCopyWithImpl<$Res,
        _$ResponseCartAmountInfoImpl>
    implements _$$ResponseCartAmountInfoImplCopyWith<$Res> {
  __$$ResponseCartAmountInfoImplCopyWithImpl(
      _$ResponseCartAmountInfoImpl _value,
      $Res Function(_$ResponseCartAmountInfoImpl) _then)
      : super(_value, _then);

  /// Create a copy of ResponseCartAmountInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productOriginAmount = null,
    Object? productAmount = null,
    Object? serviceAmount = null,
    Object? taxAmount = null,
    Object? discountAmount = null,
    Object? memberDiscountAmount = null,
    Object? amount = null,
  }) {
    return _then(_$ResponseCartAmountInfoImpl(
      productOriginAmount: null == productOriginAmount
          ? _value.productOriginAmount
          : productOriginAmount // ignore: cast_nullable_to_non_nullable
              as SafetyNumber,
      productAmount: null == productAmount
          ? _value.productAmount
          : productAmount // ignore: cast_nullable_to_non_nullable
              as SafetyNumber,
      serviceAmount: null == serviceAmount
          ? _value.serviceAmount
          : serviceAmount // ignore: cast_nullable_to_non_nullable
              as SafetyNumber,
      taxAmount: null == taxAmount
          ? _value.taxAmount
          : taxAmount // ignore: cast_nullable_to_non_nullable
              as SafetyNumber,
      discountAmount: null == discountAmount
          ? _value.discountAmount
          : discountAmount // ignore: cast_nullable_to_non_nullable
              as SafetyNumber,
      memberDiscountAmount: null == memberDiscountAmount
          ? _value.memberDiscountAmount
          : memberDiscountAmount // ignore: cast_nullable_to_non_nullable
              as SafetyNumber,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as SafetyNumber,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ResponseCartAmountInfoImpl implements _ResponseCartAmountInfo {
  _$ResponseCartAmountInfoImpl(
      {@JsonKey(name: 'product_origin_amount')
      required this.productOriginAmount,
      @JsonKey(name: 'product_amount') required this.productAmount,
      @JsonKey(name: 'service_amount') required this.serviceAmount,
      @JsonKey(name: 'tax_amount') required this.taxAmount,
      @JsonKey(name: 'discount_amount') required this.discountAmount,
      @JsonKey(name: 'member_discount_amount')
      required this.memberDiscountAmount,
      @JsonKey(name: 'amount') required this.amount});

  factory _$ResponseCartAmountInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResponseCartAmountInfoImplFromJson(json);

// 商品原价总额
  @override
  @JsonKey(name: 'product_origin_amount')
  final SafetyNumber productOriginAmount;
// 商品实际总额
  @override
  @JsonKey(name: 'product_amount')
  final SafetyNumber productAmount;
// 服务费
  @override
  @JsonKey(name: 'service_amount')
  final SafetyNumber serviceAmount;
// 税费
  @override
  @JsonKey(name: 'tax_amount')
  final SafetyNumber taxAmount;
// 折扣金额
  @override
  @JsonKey(name: 'discount_amount')
  final SafetyNumber discountAmount;
// 会员折扣金额
  @override
  @JsonKey(name: 'member_discount_amount')
  final SafetyNumber memberDiscountAmount;
// 实付金额
  @override
  @JsonKey(name: 'amount')
  final SafetyNumber amount;

  @override
  String toString() {
    return 'ResponseCartAmountInfo(productOriginAmount: $productOriginAmount, productAmount: $productAmount, serviceAmount: $serviceAmount, taxAmount: $taxAmount, discountAmount: $discountAmount, memberDiscountAmount: $memberDiscountAmount, amount: $amount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResponseCartAmountInfoImpl &&
            (identical(other.productOriginAmount, productOriginAmount) ||
                other.productOriginAmount == productOriginAmount) &&
            (identical(other.productAmount, productAmount) ||
                other.productAmount == productAmount) &&
            (identical(other.serviceAmount, serviceAmount) ||
                other.serviceAmount == serviceAmount) &&
            (identical(other.taxAmount, taxAmount) ||
                other.taxAmount == taxAmount) &&
            (identical(other.discountAmount, discountAmount) ||
                other.discountAmount == discountAmount) &&
            (identical(other.memberDiscountAmount, memberDiscountAmount) ||
                other.memberDiscountAmount == memberDiscountAmount) &&
            (identical(other.amount, amount) || other.amount == amount));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      productOriginAmount,
      productAmount,
      serviceAmount,
      taxAmount,
      discountAmount,
      memberDiscountAmount,
      amount);

  /// Create a copy of ResponseCartAmountInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ResponseCartAmountInfoImplCopyWith<_$ResponseCartAmountInfoImpl>
      get copyWith => __$$ResponseCartAmountInfoImplCopyWithImpl<
          _$ResponseCartAmountInfoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResponseCartAmountInfoImplToJson(
      this,
    );
  }
}

abstract class _ResponseCartAmountInfo implements ResponseCartAmountInfo {
  factory _ResponseCartAmountInfo(
          {@JsonKey(name: 'product_origin_amount')
          required final SafetyNumber productOriginAmount,
          @JsonKey(name: 'product_amount')
          required final SafetyNumber productAmount,
          @JsonKey(name: 'service_amount')
          required final SafetyNumber serviceAmount,
          @JsonKey(name: 'tax_amount') required final SafetyNumber taxAmount,
          @JsonKey(name: 'discount_amount')
          required final SafetyNumber discountAmount,
          @JsonKey(name: 'member_discount_amount')
          required final SafetyNumber memberDiscountAmount,
          @JsonKey(name: 'amount') required final SafetyNumber amount}) =
      _$ResponseCartAmountInfoImpl;

  factory _ResponseCartAmountInfo.fromJson(Map<String, dynamic> json) =
      _$ResponseCartAmountInfoImpl.fromJson;

// 商品原价总额
  @override
  @JsonKey(name: 'product_origin_amount')
  SafetyNumber get productOriginAmount; // 商品实际总额
  @override
  @JsonKey(name: 'product_amount')
  SafetyNumber get productAmount; // 服务费
  @override
  @JsonKey(name: 'service_amount')
  SafetyNumber get serviceAmount; // 税费
  @override
  @JsonKey(name: 'tax_amount')
  SafetyNumber get taxAmount; // 折扣金额
  @override
  @JsonKey(name: 'discount_amount')
  SafetyNumber get discountAmount; // 会员折扣金额
  @override
  @JsonKey(name: 'member_discount_amount')
  SafetyNumber get memberDiscountAmount; // 实付金额
  @override
  @JsonKey(name: 'amount')
  SafetyNumber get amount;

  /// Create a copy of ResponseCartAmountInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ResponseCartAmountInfoImplCopyWith<_$ResponseCartAmountInfoImpl>
      get copyWith => throw _privateConstructorUsedError;
}

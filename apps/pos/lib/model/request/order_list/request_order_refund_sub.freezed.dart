// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'request_order_refund_sub.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RequestOrderRefundSub _$RequestOrderRefundSubFromJson(
    Map<String, dynamic> json) {
  return _RequestOrderRefundSub.fromJson(json);
}

/// @nodoc
mixin _$RequestOrderRefundSub {
  @JsonKey(name: "account_name")
  String? get accountName => throw _privateConstructorUsedError;
  @JsonKey(name: "account_no")
  String? get accountNo => throw _privateConstructorUsedError;
  @JsonKey(name: "bank_code")
  String? get bankCode => throw _privateConstructorUsedError;
  @JsonKey(name: "products")
  List<ReqOrderReturnProduct> get products =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "sale_bill_uuid")
  int get saleBillUuid => throw _privateConstructorUsedError;
  @JsonKey(name: "sale_order_uuid")
  int get saleOrderUuid => throw _privateConstructorUsedError;

  /// Serializes this RequestOrderRefundSub to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RequestOrderRefundSub
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RequestOrderRefundSubCopyWith<RequestOrderRefundSub> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RequestOrderRefundSubCopyWith<$Res> {
  factory $RequestOrderRefundSubCopyWith(RequestOrderRefundSub value,
          $Res Function(RequestOrderRefundSub) then) =
      _$RequestOrderRefundSubCopyWithImpl<$Res, RequestOrderRefundSub>;
  @useResult
  $Res call(
      {@JsonKey(name: "account_name") String? accountName,
      @JsonKey(name: "account_no") String? accountNo,
      @JsonKey(name: "bank_code") String? bankCode,
      @JsonKey(name: "products") List<ReqOrderReturnProduct> products,
      @JsonKey(name: "sale_bill_uuid") int saleBillUuid,
      @JsonKey(name: "sale_order_uuid") int saleOrderUuid});
}

/// @nodoc
class _$RequestOrderRefundSubCopyWithImpl<$Res,
        $Val extends RequestOrderRefundSub>
    implements $RequestOrderRefundSubCopyWith<$Res> {
  _$RequestOrderRefundSubCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RequestOrderRefundSub
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accountName = freezed,
    Object? accountNo = freezed,
    Object? bankCode = freezed,
    Object? products = null,
    Object? saleBillUuid = null,
    Object? saleOrderUuid = null,
  }) {
    return _then(_value.copyWith(
      accountName: freezed == accountName
          ? _value.accountName
          : accountName // ignore: cast_nullable_to_non_nullable
              as String?,
      accountNo: freezed == accountNo
          ? _value.accountNo
          : accountNo // ignore: cast_nullable_to_non_nullable
              as String?,
      bankCode: freezed == bankCode
          ? _value.bankCode
          : bankCode // ignore: cast_nullable_to_non_nullable
              as String?,
      products: null == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<ReqOrderReturnProduct>,
      saleBillUuid: null == saleBillUuid
          ? _value.saleBillUuid
          : saleBillUuid // ignore: cast_nullable_to_non_nullable
              as int,
      saleOrderUuid: null == saleOrderUuid
          ? _value.saleOrderUuid
          : saleOrderUuid // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RequestOrderRefundSubImplCopyWith<$Res>
    implements $RequestOrderRefundSubCopyWith<$Res> {
  factory _$$RequestOrderRefundSubImplCopyWith(
          _$RequestOrderRefundSubImpl value,
          $Res Function(_$RequestOrderRefundSubImpl) then) =
      __$$RequestOrderRefundSubImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "account_name") String? accountName,
      @JsonKey(name: "account_no") String? accountNo,
      @JsonKey(name: "bank_code") String? bankCode,
      @JsonKey(name: "products") List<ReqOrderReturnProduct> products,
      @JsonKey(name: "sale_bill_uuid") int saleBillUuid,
      @JsonKey(name: "sale_order_uuid") int saleOrderUuid});
}

/// @nodoc
class __$$RequestOrderRefundSubImplCopyWithImpl<$Res>
    extends _$RequestOrderRefundSubCopyWithImpl<$Res,
        _$RequestOrderRefundSubImpl>
    implements _$$RequestOrderRefundSubImplCopyWith<$Res> {
  __$$RequestOrderRefundSubImplCopyWithImpl(_$RequestOrderRefundSubImpl _value,
      $Res Function(_$RequestOrderRefundSubImpl) _then)
      : super(_value, _then);

  /// Create a copy of RequestOrderRefundSub
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accountName = freezed,
    Object? accountNo = freezed,
    Object? bankCode = freezed,
    Object? products = null,
    Object? saleBillUuid = null,
    Object? saleOrderUuid = null,
  }) {
    return _then(_$RequestOrderRefundSubImpl(
      accountName: freezed == accountName
          ? _value.accountName
          : accountName // ignore: cast_nullable_to_non_nullable
              as String?,
      accountNo: freezed == accountNo
          ? _value.accountNo
          : accountNo // ignore: cast_nullable_to_non_nullable
              as String?,
      bankCode: freezed == bankCode
          ? _value.bankCode
          : bankCode // ignore: cast_nullable_to_non_nullable
              as String?,
      products: null == products
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<ReqOrderReturnProduct>,
      saleBillUuid: null == saleBillUuid
          ? _value.saleBillUuid
          : saleBillUuid // ignore: cast_nullable_to_non_nullable
              as int,
      saleOrderUuid: null == saleOrderUuid
          ? _value.saleOrderUuid
          : saleOrderUuid // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RequestOrderRefundSubImpl implements _RequestOrderRefundSub {
  _$RequestOrderRefundSubImpl(
      {@JsonKey(name: "account_name") this.accountName,
      @JsonKey(name: "account_no") this.accountNo,
      @JsonKey(name: "bank_code") this.bankCode,
      @JsonKey(name: "products")
      required final List<ReqOrderReturnProduct> products,
      @JsonKey(name: "sale_bill_uuid") required this.saleBillUuid,
      @JsonKey(name: "sale_order_uuid") required this.saleOrderUuid})
      : _products = products;

  factory _$RequestOrderRefundSubImpl.fromJson(Map<String, dynamic> json) =>
      _$$RequestOrderRefundSubImplFromJson(json);

  @override
  @JsonKey(name: "account_name")
  final String? accountName;
  @override
  @JsonKey(name: "account_no")
  final String? accountNo;
  @override
  @JsonKey(name: "bank_code")
  final String? bankCode;
  final List<ReqOrderReturnProduct> _products;
  @override
  @JsonKey(name: "products")
  List<ReqOrderReturnProduct> get products {
    if (_products is EqualUnmodifiableListView) return _products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_products);
  }

  @override
  @JsonKey(name: "sale_bill_uuid")
  final int saleBillUuid;
  @override
  @JsonKey(name: "sale_order_uuid")
  final int saleOrderUuid;

  @override
  String toString() {
    return 'RequestOrderRefundSub(accountName: $accountName, accountNo: $accountNo, bankCode: $bankCode, products: $products, saleBillUuid: $saleBillUuid, saleOrderUuid: $saleOrderUuid)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RequestOrderRefundSubImpl &&
            (identical(other.accountName, accountName) ||
                other.accountName == accountName) &&
            (identical(other.accountNo, accountNo) ||
                other.accountNo == accountNo) &&
            (identical(other.bankCode, bankCode) ||
                other.bankCode == bankCode) &&
            const DeepCollectionEquality().equals(other._products, _products) &&
            (identical(other.saleBillUuid, saleBillUuid) ||
                other.saleBillUuid == saleBillUuid) &&
            (identical(other.saleOrderUuid, saleOrderUuid) ||
                other.saleOrderUuid == saleOrderUuid));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      accountName,
      accountNo,
      bankCode,
      const DeepCollectionEquality().hash(_products),
      saleBillUuid,
      saleOrderUuid);

  /// Create a copy of RequestOrderRefundSub
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RequestOrderRefundSubImplCopyWith<_$RequestOrderRefundSubImpl>
      get copyWith => __$$RequestOrderRefundSubImplCopyWithImpl<
          _$RequestOrderRefundSubImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RequestOrderRefundSubImplToJson(
      this,
    );
  }
}

abstract class _RequestOrderRefundSub implements RequestOrderRefundSub {
  factory _RequestOrderRefundSub(
          {@JsonKey(name: "account_name") final String? accountName,
          @JsonKey(name: "account_no") final String? accountNo,
          @JsonKey(name: "bank_code") final String? bankCode,
          @JsonKey(name: "products")
          required final List<ReqOrderReturnProduct> products,
          @JsonKey(name: "sale_bill_uuid") required final int saleBillUuid,
          @JsonKey(name: "sale_order_uuid") required final int saleOrderUuid}) =
      _$RequestOrderRefundSubImpl;

  factory _RequestOrderRefundSub.fromJson(Map<String, dynamic> json) =
      _$RequestOrderRefundSubImpl.fromJson;

  @override
  @JsonKey(name: "account_name")
  String? get accountName;
  @override
  @JsonKey(name: "account_no")
  String? get accountNo;
  @override
  @JsonKey(name: "bank_code")
  String? get bankCode;
  @override
  @JsonKey(name: "products")
  List<ReqOrderReturnProduct> get products;
  @override
  @JsonKey(name: "sale_bill_uuid")
  int get saleBillUuid;
  @override
  @JsonKey(name: "sale_order_uuid")
  int get saleOrderUuid;

  /// Create a copy of RequestOrderRefundSub
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RequestOrderRefundSubImplCopyWith<_$RequestOrderRefundSubImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ReqOrderReturnProduct _$ReqOrderReturnProductFromJson(
    Map<String, dynamic> json) {
  return _ReqOrderReturnProduct.fromJson(json);
}

/// @nodoc
mixin _$ReqOrderReturnProduct {
  @JsonKey(name: "num")
  int get num => throw _privateConstructorUsedError;
  @JsonKey(name: "sale_order_product_uuid")
  int get saleOrderProductUuid => throw _privateConstructorUsedError;

  /// Serializes this ReqOrderReturnProduct to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ReqOrderReturnProduct
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ReqOrderReturnProductCopyWith<ReqOrderReturnProduct> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReqOrderReturnProductCopyWith<$Res> {
  factory $ReqOrderReturnProductCopyWith(ReqOrderReturnProduct value,
          $Res Function(ReqOrderReturnProduct) then) =
      _$ReqOrderReturnProductCopyWithImpl<$Res, ReqOrderReturnProduct>;
  @useResult
  $Res call(
      {@JsonKey(name: "num") int num,
      @JsonKey(name: "sale_order_product_uuid") int saleOrderProductUuid});
}

/// @nodoc
class _$ReqOrderReturnProductCopyWithImpl<$Res,
        $Val extends ReqOrderReturnProduct>
    implements $ReqOrderReturnProductCopyWith<$Res> {
  _$ReqOrderReturnProductCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ReqOrderReturnProduct
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? num = null,
    Object? saleOrderProductUuid = null,
  }) {
    return _then(_value.copyWith(
      num: null == num
          ? _value.num
          : num // ignore: cast_nullable_to_non_nullable
              as int,
      saleOrderProductUuid: null == saleOrderProductUuid
          ? _value.saleOrderProductUuid
          : saleOrderProductUuid // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ReqOrderReturnProductImplCopyWith<$Res>
    implements $ReqOrderReturnProductCopyWith<$Res> {
  factory _$$ReqOrderReturnProductImplCopyWith(
          _$ReqOrderReturnProductImpl value,
          $Res Function(_$ReqOrderReturnProductImpl) then) =
      __$$ReqOrderReturnProductImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "num") int num,
      @JsonKey(name: "sale_order_product_uuid") int saleOrderProductUuid});
}

/// @nodoc
class __$$ReqOrderReturnProductImplCopyWithImpl<$Res>
    extends _$ReqOrderReturnProductCopyWithImpl<$Res,
        _$ReqOrderReturnProductImpl>
    implements _$$ReqOrderReturnProductImplCopyWith<$Res> {
  __$$ReqOrderReturnProductImplCopyWithImpl(_$ReqOrderReturnProductImpl _value,
      $Res Function(_$ReqOrderReturnProductImpl) _then)
      : super(_value, _then);

  /// Create a copy of ReqOrderReturnProduct
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? num = null,
    Object? saleOrderProductUuid = null,
  }) {
    return _then(_$ReqOrderReturnProductImpl(
      num: null == num
          ? _value.num
          : num // ignore: cast_nullable_to_non_nullable
              as int,
      saleOrderProductUuid: null == saleOrderProductUuid
          ? _value.saleOrderProductUuid
          : saleOrderProductUuid // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ReqOrderReturnProductImpl implements _ReqOrderReturnProduct {
  const _$ReqOrderReturnProductImpl(
      {@JsonKey(name: "num") required this.num,
      @JsonKey(name: "sale_order_product_uuid")
      required this.saleOrderProductUuid});

  factory _$ReqOrderReturnProductImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReqOrderReturnProductImplFromJson(json);

  @override
  @JsonKey(name: "num")
  final int num;
  @override
  @JsonKey(name: "sale_order_product_uuid")
  final int saleOrderProductUuid;

  @override
  String toString() {
    return 'ReqOrderReturnProduct(num: $num, saleOrderProductUuid: $saleOrderProductUuid)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReqOrderReturnProductImpl &&
            (identical(other.num, num) || other.num == num) &&
            (identical(other.saleOrderProductUuid, saleOrderProductUuid) ||
                other.saleOrderProductUuid == saleOrderProductUuid));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, num, saleOrderProductUuid);

  /// Create a copy of ReqOrderReturnProduct
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ReqOrderReturnProductImplCopyWith<_$ReqOrderReturnProductImpl>
      get copyWith => __$$ReqOrderReturnProductImplCopyWithImpl<
          _$ReqOrderReturnProductImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReqOrderReturnProductImplToJson(
      this,
    );
  }
}

abstract class _ReqOrderReturnProduct implements ReqOrderReturnProduct {
  const factory _ReqOrderReturnProduct(
      {@JsonKey(name: "num") required final int num,
      @JsonKey(name: "sale_order_product_uuid")
      required final int saleOrderProductUuid}) = _$ReqOrderReturnProductImpl;

  factory _ReqOrderReturnProduct.fromJson(Map<String, dynamic> json) =
      _$ReqOrderReturnProductImpl.fromJson;

  @override
  @JsonKey(name: "num")
  int get num;
  @override
  @JsonKey(name: "sale_order_product_uuid")
  int get saleOrderProductUuid;

  /// Create a copy of ReqOrderReturnProduct
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ReqOrderReturnProductImplCopyWith<_$ReqOrderReturnProductImpl>
      get copyWith => throw _privateConstructorUsedError;
}

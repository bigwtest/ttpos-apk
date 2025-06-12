// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'returning_product.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RequestReturningProduct _$RequestReturningProductFromJson(
    Map<String, dynamic> json) {
  return _RequestReturningProduct.fromJson(json);
}

/// @nodoc
mixin _$RequestReturningProduct {
// 销售账单ID
  @JsonKey(name: 'sale_bill_uuid')
  int get saleBillUuid => throw _privateConstructorUsedError; // 销售订单ID
  @JsonKey(name: 'sale_order_uuid')
  int get saleOrderUuid => throw _privateConstructorUsedError; // 销售订单商品ID
  @JsonKey(name: 'sale_order_product_uuid')
  int get saleOrderProductUuid => throw _privateConstructorUsedError; // 退菜数量
  @JsonKey(name: 'num')
  int get num => throw _privateConstructorUsedError; // 退菜原因
  @JsonKey(name: 'reason')
  String? get reason => throw _privateConstructorUsedError; // 高级密码 后台开启的时候才传
  @JsonKey(name: 'password')
  String? get password => throw _privateConstructorUsedError; // 退菜标签ids
  @JsonKey(name: 'return_ids')
  List<int>? get returnIds => throw _privateConstructorUsedError;

  /// Serializes this RequestReturningProduct to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RequestReturningProduct
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RequestReturningProductCopyWith<RequestReturningProduct> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RequestReturningProductCopyWith<$Res> {
  factory $RequestReturningProductCopyWith(RequestReturningProduct value,
          $Res Function(RequestReturningProduct) then) =
      _$RequestReturningProductCopyWithImpl<$Res, RequestReturningProduct>;
  @useResult
  $Res call(
      {@JsonKey(name: 'sale_bill_uuid') int saleBillUuid,
      @JsonKey(name: 'sale_order_uuid') int saleOrderUuid,
      @JsonKey(name: 'sale_order_product_uuid') int saleOrderProductUuid,
      @JsonKey(name: 'num') int num,
      @JsonKey(name: 'reason') String? reason,
      @JsonKey(name: 'password') String? password,
      @JsonKey(name: 'return_ids') List<int>? returnIds});
}

/// @nodoc
class _$RequestReturningProductCopyWithImpl<$Res,
        $Val extends RequestReturningProduct>
    implements $RequestReturningProductCopyWith<$Res> {
  _$RequestReturningProductCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RequestReturningProduct
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? saleBillUuid = null,
    Object? saleOrderUuid = null,
    Object? saleOrderProductUuid = null,
    Object? num = null,
    Object? reason = freezed,
    Object? password = freezed,
    Object? returnIds = freezed,
  }) {
    return _then(_value.copyWith(
      saleBillUuid: null == saleBillUuid
          ? _value.saleBillUuid
          : saleBillUuid // ignore: cast_nullable_to_non_nullable
              as int,
      saleOrderUuid: null == saleOrderUuid
          ? _value.saleOrderUuid
          : saleOrderUuid // ignore: cast_nullable_to_non_nullable
              as int,
      saleOrderProductUuid: null == saleOrderProductUuid
          ? _value.saleOrderProductUuid
          : saleOrderProductUuid // ignore: cast_nullable_to_non_nullable
              as int,
      num: null == num
          ? _value.num
          : num // ignore: cast_nullable_to_non_nullable
              as int,
      reason: freezed == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String?,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      returnIds: freezed == returnIds
          ? _value.returnIds
          : returnIds // ignore: cast_nullable_to_non_nullable
              as List<int>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RequestReturningProductImplCopyWith<$Res>
    implements $RequestReturningProductCopyWith<$Res> {
  factory _$$RequestReturningProductImplCopyWith(
          _$RequestReturningProductImpl value,
          $Res Function(_$RequestReturningProductImpl) then) =
      __$$RequestReturningProductImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'sale_bill_uuid') int saleBillUuid,
      @JsonKey(name: 'sale_order_uuid') int saleOrderUuid,
      @JsonKey(name: 'sale_order_product_uuid') int saleOrderProductUuid,
      @JsonKey(name: 'num') int num,
      @JsonKey(name: 'reason') String? reason,
      @JsonKey(name: 'password') String? password,
      @JsonKey(name: 'return_ids') List<int>? returnIds});
}

/// @nodoc
class __$$RequestReturningProductImplCopyWithImpl<$Res>
    extends _$RequestReturningProductCopyWithImpl<$Res,
        _$RequestReturningProductImpl>
    implements _$$RequestReturningProductImplCopyWith<$Res> {
  __$$RequestReturningProductImplCopyWithImpl(
      _$RequestReturningProductImpl _value,
      $Res Function(_$RequestReturningProductImpl) _then)
      : super(_value, _then);

  /// Create a copy of RequestReturningProduct
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? saleBillUuid = null,
    Object? saleOrderUuid = null,
    Object? saleOrderProductUuid = null,
    Object? num = null,
    Object? reason = freezed,
    Object? password = freezed,
    Object? returnIds = freezed,
  }) {
    return _then(_$RequestReturningProductImpl(
      saleBillUuid: null == saleBillUuid
          ? _value.saleBillUuid
          : saleBillUuid // ignore: cast_nullable_to_non_nullable
              as int,
      saleOrderUuid: null == saleOrderUuid
          ? _value.saleOrderUuid
          : saleOrderUuid // ignore: cast_nullable_to_non_nullable
              as int,
      saleOrderProductUuid: null == saleOrderProductUuid
          ? _value.saleOrderProductUuid
          : saleOrderProductUuid // ignore: cast_nullable_to_non_nullable
              as int,
      num: null == num
          ? _value.num
          : num // ignore: cast_nullable_to_non_nullable
              as int,
      reason: freezed == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String?,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      returnIds: freezed == returnIds
          ? _value._returnIds
          : returnIds // ignore: cast_nullable_to_non_nullable
              as List<int>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RequestReturningProductImpl extends _RequestReturningProduct {
  const _$RequestReturningProductImpl(
      {@JsonKey(name: 'sale_bill_uuid') required this.saleBillUuid,
      @JsonKey(name: 'sale_order_uuid') required this.saleOrderUuid,
      @JsonKey(name: 'sale_order_product_uuid')
      required this.saleOrderProductUuid,
      @JsonKey(name: 'num') required this.num,
      @JsonKey(name: 'reason') this.reason,
      @JsonKey(name: 'password') this.password,
      @JsonKey(name: 'return_ids') final List<int>? returnIds})
      : _returnIds = returnIds,
        super._();

  factory _$RequestReturningProductImpl.fromJson(Map<String, dynamic> json) =>
      _$$RequestReturningProductImplFromJson(json);

// 销售账单ID
  @override
  @JsonKey(name: 'sale_bill_uuid')
  final int saleBillUuid;
// 销售订单ID
  @override
  @JsonKey(name: 'sale_order_uuid')
  final int saleOrderUuid;
// 销售订单商品ID
  @override
  @JsonKey(name: 'sale_order_product_uuid')
  final int saleOrderProductUuid;
// 退菜数量
  @override
  @JsonKey(name: 'num')
  final int num;
// 退菜原因
  @override
  @JsonKey(name: 'reason')
  final String? reason;
// 高级密码 后台开启的时候才传
  @override
  @JsonKey(name: 'password')
  final String? password;
// 退菜标签ids
  final List<int>? _returnIds;
// 退菜标签ids
  @override
  @JsonKey(name: 'return_ids')
  List<int>? get returnIds {
    final value = _returnIds;
    if (value == null) return null;
    if (_returnIds is EqualUnmodifiableListView) return _returnIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'RequestReturningProduct(saleBillUuid: $saleBillUuid, saleOrderUuid: $saleOrderUuid, saleOrderProductUuid: $saleOrderProductUuid, num: $num, reason: $reason, password: $password, returnIds: $returnIds)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RequestReturningProductImpl &&
            (identical(other.saleBillUuid, saleBillUuid) ||
                other.saleBillUuid == saleBillUuid) &&
            (identical(other.saleOrderUuid, saleOrderUuid) ||
                other.saleOrderUuid == saleOrderUuid) &&
            (identical(other.saleOrderProductUuid, saleOrderProductUuid) ||
                other.saleOrderProductUuid == saleOrderProductUuid) &&
            (identical(other.num, num) || other.num == num) &&
            (identical(other.reason, reason) || other.reason == reason) &&
            (identical(other.password, password) ||
                other.password == password) &&
            const DeepCollectionEquality()
                .equals(other._returnIds, _returnIds));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      saleBillUuid,
      saleOrderUuid,
      saleOrderProductUuid,
      num,
      reason,
      password,
      const DeepCollectionEquality().hash(_returnIds));

  /// Create a copy of RequestReturningProduct
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RequestReturningProductImplCopyWith<_$RequestReturningProductImpl>
      get copyWith => __$$RequestReturningProductImplCopyWithImpl<
          _$RequestReturningProductImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RequestReturningProductImplToJson(
      this,
    );
  }
}

abstract class _RequestReturningProduct extends RequestReturningProduct {
  const factory _RequestReturningProduct(
          {@JsonKey(name: 'sale_bill_uuid') required final int saleBillUuid,
          @JsonKey(name: 'sale_order_uuid') required final int saleOrderUuid,
          @JsonKey(name: 'sale_order_product_uuid')
          required final int saleOrderProductUuid,
          @JsonKey(name: 'num') required final int num,
          @JsonKey(name: 'reason') final String? reason,
          @JsonKey(name: 'password') final String? password,
          @JsonKey(name: 'return_ids') final List<int>? returnIds}) =
      _$RequestReturningProductImpl;
  const _RequestReturningProduct._() : super._();

  factory _RequestReturningProduct.fromJson(Map<String, dynamic> json) =
      _$RequestReturningProductImpl.fromJson;

// 销售账单ID
  @override
  @JsonKey(name: 'sale_bill_uuid')
  int get saleBillUuid; // 销售订单ID
  @override
  @JsonKey(name: 'sale_order_uuid')
  int get saleOrderUuid; // 销售订单商品ID
  @override
  @JsonKey(name: 'sale_order_product_uuid')
  int get saleOrderProductUuid; // 退菜数量
  @override
  @JsonKey(name: 'num')
  int get num; // 退菜原因
  @override
  @JsonKey(name: 'reason')
  String? get reason; // 高级密码 后台开启的时候才传
  @override
  @JsonKey(name: 'password')
  String? get password; // 退菜标签ids
  @override
  @JsonKey(name: 'return_ids')
  List<int>? get returnIds;

  /// Create a copy of RequestReturningProduct
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RequestReturningProductImplCopyWith<_$RequestReturningProductImpl>
      get copyWith => throw _privateConstructorUsedError;
}

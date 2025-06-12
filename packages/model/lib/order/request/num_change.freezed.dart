// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'num_change.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RequestNumChange _$RequestNumChangeFromJson(Map<String, dynamic> json) {
  return _RequestNumChange.fromJson(json);
}

/// @nodoc
mixin _$RequestNumChange {
// 数量
  @JsonKey(name: "num")
  int get num => throw _privateConstructorUsedError; // 数量
  @JsonKey(name: "num")
  set num(int value) => throw _privateConstructorUsedError; // 销售账单ID
  @JsonKey(name: "sale_bill_uuid")
  int get saleBillUuid => throw _privateConstructorUsedError; // 销售账单ID
  @JsonKey(name: "sale_bill_uuid")
  set saleBillUuid(int value) => throw _privateConstructorUsedError; // 销售订单商品ID
  @JsonKey(name: "sale_order_product_uuid")
  int get saleOrderProductUuid =>
      throw _privateConstructorUsedError; // 销售订单商品ID
  @JsonKey(name: "sale_order_product_uuid")
  set saleOrderProductUuid(int value) =>
      throw _privateConstructorUsedError; // 销售订单ID
  @JsonKey(name: "sale_order_uuid")
  int get saleOrderUuid => throw _privateConstructorUsedError; // 销售订单ID
  @JsonKey(name: "sale_order_uuid")
  set saleOrderUuid(int value) => throw _privateConstructorUsedError;

  /// Serializes this RequestNumChange to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RequestNumChange
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RequestNumChangeCopyWith<RequestNumChange> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RequestNumChangeCopyWith<$Res> {
  factory $RequestNumChangeCopyWith(
          RequestNumChange value, $Res Function(RequestNumChange) then) =
      _$RequestNumChangeCopyWithImpl<$Res, RequestNumChange>;
  @useResult
  $Res call(
      {@JsonKey(name: "num") int num,
      @JsonKey(name: "sale_bill_uuid") int saleBillUuid,
      @JsonKey(name: "sale_order_product_uuid") int saleOrderProductUuid,
      @JsonKey(name: "sale_order_uuid") int saleOrderUuid});
}

/// @nodoc
class _$RequestNumChangeCopyWithImpl<$Res, $Val extends RequestNumChange>
    implements $RequestNumChangeCopyWith<$Res> {
  _$RequestNumChangeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RequestNumChange
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? num = null,
    Object? saleBillUuid = null,
    Object? saleOrderProductUuid = null,
    Object? saleOrderUuid = null,
  }) {
    return _then(_value.copyWith(
      num: null == num
          ? _value.num
          : num // ignore: cast_nullable_to_non_nullable
              as int,
      saleBillUuid: null == saleBillUuid
          ? _value.saleBillUuid
          : saleBillUuid // ignore: cast_nullable_to_non_nullable
              as int,
      saleOrderProductUuid: null == saleOrderProductUuid
          ? _value.saleOrderProductUuid
          : saleOrderProductUuid // ignore: cast_nullable_to_non_nullable
              as int,
      saleOrderUuid: null == saleOrderUuid
          ? _value.saleOrderUuid
          : saleOrderUuid // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RequestNumChangeImplCopyWith<$Res>
    implements $RequestNumChangeCopyWith<$Res> {
  factory _$$RequestNumChangeImplCopyWith(_$RequestNumChangeImpl value,
          $Res Function(_$RequestNumChangeImpl) then) =
      __$$RequestNumChangeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "num") int num,
      @JsonKey(name: "sale_bill_uuid") int saleBillUuid,
      @JsonKey(name: "sale_order_product_uuid") int saleOrderProductUuid,
      @JsonKey(name: "sale_order_uuid") int saleOrderUuid});
}

/// @nodoc
class __$$RequestNumChangeImplCopyWithImpl<$Res>
    extends _$RequestNumChangeCopyWithImpl<$Res, _$RequestNumChangeImpl>
    implements _$$RequestNumChangeImplCopyWith<$Res> {
  __$$RequestNumChangeImplCopyWithImpl(_$RequestNumChangeImpl _value,
      $Res Function(_$RequestNumChangeImpl) _then)
      : super(_value, _then);

  /// Create a copy of RequestNumChange
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? num = null,
    Object? saleBillUuid = null,
    Object? saleOrderProductUuid = null,
    Object? saleOrderUuid = null,
  }) {
    return _then(_$RequestNumChangeImpl(
      num: null == num
          ? _value.num
          : num // ignore: cast_nullable_to_non_nullable
              as int,
      saleBillUuid: null == saleBillUuid
          ? _value.saleBillUuid
          : saleBillUuid // ignore: cast_nullable_to_non_nullable
              as int,
      saleOrderProductUuid: null == saleOrderProductUuid
          ? _value.saleOrderProductUuid
          : saleOrderProductUuid // ignore: cast_nullable_to_non_nullable
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
class _$RequestNumChangeImpl implements _RequestNumChange {
  _$RequestNumChangeImpl(
      {@JsonKey(name: "num") required this.num,
      @JsonKey(name: "sale_bill_uuid") required this.saleBillUuid,
      @JsonKey(name: "sale_order_product_uuid")
      required this.saleOrderProductUuid,
      @JsonKey(name: "sale_order_uuid") required this.saleOrderUuid});

  factory _$RequestNumChangeImpl.fromJson(Map<String, dynamic> json) =>
      _$$RequestNumChangeImplFromJson(json);

// 数量
  @override
  @JsonKey(name: "num")
  int num;
// 销售账单ID
  @override
  @JsonKey(name: "sale_bill_uuid")
  int saleBillUuid;
// 销售订单商品ID
  @override
  @JsonKey(name: "sale_order_product_uuid")
  int saleOrderProductUuid;
// 销售订单ID
  @override
  @JsonKey(name: "sale_order_uuid")
  int saleOrderUuid;

  @override
  String toString() {
    return 'RequestNumChange(num: $num, saleBillUuid: $saleBillUuid, saleOrderProductUuid: $saleOrderProductUuid, saleOrderUuid: $saleOrderUuid)';
  }

  /// Create a copy of RequestNumChange
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RequestNumChangeImplCopyWith<_$RequestNumChangeImpl> get copyWith =>
      __$$RequestNumChangeImplCopyWithImpl<_$RequestNumChangeImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RequestNumChangeImplToJson(
      this,
    );
  }
}

abstract class _RequestNumChange implements RequestNumChange {
  factory _RequestNumChange(
          {@JsonKey(name: "num") required int num,
          @JsonKey(name: "sale_bill_uuid") required int saleBillUuid,
          @JsonKey(name: "sale_order_product_uuid")
          required int saleOrderProductUuid,
          @JsonKey(name: "sale_order_uuid") required int saleOrderUuid}) =
      _$RequestNumChangeImpl;

  factory _RequestNumChange.fromJson(Map<String, dynamic> json) =
      _$RequestNumChangeImpl.fromJson;

// 数量
  @override
  @JsonKey(name: "num")
  int get num; // 数量
  @JsonKey(name: "num")
  set num(int value); // 销售账单ID
  @override
  @JsonKey(name: "sale_bill_uuid")
  int get saleBillUuid; // 销售账单ID
  @JsonKey(name: "sale_bill_uuid")
  set saleBillUuid(int value); // 销售订单商品ID
  @override
  @JsonKey(name: "sale_order_product_uuid")
  int get saleOrderProductUuid; // 销售订单商品ID
  @JsonKey(name: "sale_order_product_uuid")
  set saleOrderProductUuid(int value); // 销售订单ID
  @override
  @JsonKey(name: "sale_order_uuid")
  int get saleOrderUuid; // 销售订单ID
  @JsonKey(name: "sale_order_uuid")
  set saleOrderUuid(int value);

  /// Create a copy of RequestNumChange
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RequestNumChangeImplCopyWith<_$RequestNumChangeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

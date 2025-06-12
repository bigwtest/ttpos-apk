// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AcceptOrder _$AcceptOrderFromJson(Map<String, dynamic> json) {
  return _AcceptOrder.fromJson(json);
}

/// @nodoc
mixin _$AcceptOrder {
  @JsonKey(name: "desk_no")
  String get deskNo => throw _privateConstructorUsedError;
  @JsonKey(name: "desk_region_uuid")
  int get deskRegionUuid => throw _privateConstructorUsedError;
  @JsonKey(name: "h5_order_uuid")
  int get h5OrderUuid => throw _privateConstructorUsedError;
  @JsonKey(name: "handle_time")
  int get handleTime => throw _privateConstructorUsedError;
  @JsonKey(name: "num")
  int get num => throw _privateConstructorUsedError;
  @JsonKey(name: "order_time")
  int get orderTime => throw _privateConstructorUsedError;
  @JsonKey(name: "price")
  double get price => throw _privateConstructorUsedError;
  @JsonKey(name: "sale_bill_uuid")
  int get saleBillUuid => throw _privateConstructorUsedError;
  @JsonKey(name: "status")
  int get status => throw _privateConstructorUsedError;
  @JsonKey(name: "wait_time")
  int get waitTime => throw _privateConstructorUsedError;

  /// Serializes this AcceptOrder to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AcceptOrder
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AcceptOrderCopyWith<AcceptOrder> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AcceptOrderCopyWith<$Res> {
  factory $AcceptOrderCopyWith(
          AcceptOrder value, $Res Function(AcceptOrder) then) =
      _$AcceptOrderCopyWithImpl<$Res, AcceptOrder>;
  @useResult
  $Res call(
      {@JsonKey(name: "desk_no") String deskNo,
      @JsonKey(name: "desk_region_uuid") int deskRegionUuid,
      @JsonKey(name: "h5_order_uuid") int h5OrderUuid,
      @JsonKey(name: "handle_time") int handleTime,
      @JsonKey(name: "num") int num,
      @JsonKey(name: "order_time") int orderTime,
      @JsonKey(name: "price") double price,
      @JsonKey(name: "sale_bill_uuid") int saleBillUuid,
      @JsonKey(name: "status") int status,
      @JsonKey(name: "wait_time") int waitTime});
}

/// @nodoc
class _$AcceptOrderCopyWithImpl<$Res, $Val extends AcceptOrder>
    implements $AcceptOrderCopyWith<$Res> {
  _$AcceptOrderCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AcceptOrder
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? deskNo = null,
    Object? deskRegionUuid = null,
    Object? h5OrderUuid = null,
    Object? handleTime = null,
    Object? num = null,
    Object? orderTime = null,
    Object? price = null,
    Object? saleBillUuid = null,
    Object? status = null,
    Object? waitTime = null,
  }) {
    return _then(_value.copyWith(
      deskNo: null == deskNo
          ? _value.deskNo
          : deskNo // ignore: cast_nullable_to_non_nullable
              as String,
      deskRegionUuid: null == deskRegionUuid
          ? _value.deskRegionUuid
          : deskRegionUuid // ignore: cast_nullable_to_non_nullable
              as int,
      h5OrderUuid: null == h5OrderUuid
          ? _value.h5OrderUuid
          : h5OrderUuid // ignore: cast_nullable_to_non_nullable
              as int,
      handleTime: null == handleTime
          ? _value.handleTime
          : handleTime // ignore: cast_nullable_to_non_nullable
              as int,
      num: null == num
          ? _value.num
          : num // ignore: cast_nullable_to_non_nullable
              as int,
      orderTime: null == orderTime
          ? _value.orderTime
          : orderTime // ignore: cast_nullable_to_non_nullable
              as int,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      saleBillUuid: null == saleBillUuid
          ? _value.saleBillUuid
          : saleBillUuid // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
      waitTime: null == waitTime
          ? _value.waitTime
          : waitTime // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AcceptOrderImplCopyWith<$Res>
    implements $AcceptOrderCopyWith<$Res> {
  factory _$$AcceptOrderImplCopyWith(
          _$AcceptOrderImpl value, $Res Function(_$AcceptOrderImpl) then) =
      __$$AcceptOrderImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "desk_no") String deskNo,
      @JsonKey(name: "desk_region_uuid") int deskRegionUuid,
      @JsonKey(name: "h5_order_uuid") int h5OrderUuid,
      @JsonKey(name: "handle_time") int handleTime,
      @JsonKey(name: "num") int num,
      @JsonKey(name: "order_time") int orderTime,
      @JsonKey(name: "price") double price,
      @JsonKey(name: "sale_bill_uuid") int saleBillUuid,
      @JsonKey(name: "status") int status,
      @JsonKey(name: "wait_time") int waitTime});
}

/// @nodoc
class __$$AcceptOrderImplCopyWithImpl<$Res>
    extends _$AcceptOrderCopyWithImpl<$Res, _$AcceptOrderImpl>
    implements _$$AcceptOrderImplCopyWith<$Res> {
  __$$AcceptOrderImplCopyWithImpl(
      _$AcceptOrderImpl _value, $Res Function(_$AcceptOrderImpl) _then)
      : super(_value, _then);

  /// Create a copy of AcceptOrder
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? deskNo = null,
    Object? deskRegionUuid = null,
    Object? h5OrderUuid = null,
    Object? handleTime = null,
    Object? num = null,
    Object? orderTime = null,
    Object? price = null,
    Object? saleBillUuid = null,
    Object? status = null,
    Object? waitTime = null,
  }) {
    return _then(_$AcceptOrderImpl(
      deskNo: null == deskNo
          ? _value.deskNo
          : deskNo // ignore: cast_nullable_to_non_nullable
              as String,
      deskRegionUuid: null == deskRegionUuid
          ? _value.deskRegionUuid
          : deskRegionUuid // ignore: cast_nullable_to_non_nullable
              as int,
      h5OrderUuid: null == h5OrderUuid
          ? _value.h5OrderUuid
          : h5OrderUuid // ignore: cast_nullable_to_non_nullable
              as int,
      handleTime: null == handleTime
          ? _value.handleTime
          : handleTime // ignore: cast_nullable_to_non_nullable
              as int,
      num: null == num
          ? _value.num
          : num // ignore: cast_nullable_to_non_nullable
              as int,
      orderTime: null == orderTime
          ? _value.orderTime
          : orderTime // ignore: cast_nullable_to_non_nullable
              as int,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      saleBillUuid: null == saleBillUuid
          ? _value.saleBillUuid
          : saleBillUuid // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
      waitTime: null == waitTime
          ? _value.waitTime
          : waitTime // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AcceptOrderImpl implements _AcceptOrder {
  _$AcceptOrderImpl(
      {@JsonKey(name: "desk_no") required this.deskNo,
      @JsonKey(name: "desk_region_uuid") required this.deskRegionUuid,
      @JsonKey(name: "h5_order_uuid") required this.h5OrderUuid,
      @JsonKey(name: "handle_time") required this.handleTime,
      @JsonKey(name: "num") required this.num,
      @JsonKey(name: "order_time") required this.orderTime,
      @JsonKey(name: "price") required this.price,
      @JsonKey(name: "sale_bill_uuid") required this.saleBillUuid,
      @JsonKey(name: "status") required this.status,
      @JsonKey(name: "wait_time") required this.waitTime});

  factory _$AcceptOrderImpl.fromJson(Map<String, dynamic> json) =>
      _$$AcceptOrderImplFromJson(json);

  @override
  @JsonKey(name: "desk_no")
  final String deskNo;
  @override
  @JsonKey(name: "desk_region_uuid")
  final int deskRegionUuid;
  @override
  @JsonKey(name: "h5_order_uuid")
  final int h5OrderUuid;
  @override
  @JsonKey(name: "handle_time")
  final int handleTime;
  @override
  @JsonKey(name: "num")
  final int num;
  @override
  @JsonKey(name: "order_time")
  final int orderTime;
  @override
  @JsonKey(name: "price")
  final double price;
  @override
  @JsonKey(name: "sale_bill_uuid")
  final int saleBillUuid;
  @override
  @JsonKey(name: "status")
  final int status;
  @override
  @JsonKey(name: "wait_time")
  final int waitTime;

  @override
  String toString() {
    return 'AcceptOrder(deskNo: $deskNo, deskRegionUuid: $deskRegionUuid, h5OrderUuid: $h5OrderUuid, handleTime: $handleTime, num: $num, orderTime: $orderTime, price: $price, saleBillUuid: $saleBillUuid, status: $status, waitTime: $waitTime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AcceptOrderImpl &&
            (identical(other.deskNo, deskNo) || other.deskNo == deskNo) &&
            (identical(other.deskRegionUuid, deskRegionUuid) ||
                other.deskRegionUuid == deskRegionUuid) &&
            (identical(other.h5OrderUuid, h5OrderUuid) ||
                other.h5OrderUuid == h5OrderUuid) &&
            (identical(other.handleTime, handleTime) ||
                other.handleTime == handleTime) &&
            (identical(other.num, num) || other.num == num) &&
            (identical(other.orderTime, orderTime) ||
                other.orderTime == orderTime) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.saleBillUuid, saleBillUuid) ||
                other.saleBillUuid == saleBillUuid) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.waitTime, waitTime) ||
                other.waitTime == waitTime));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      deskNo,
      deskRegionUuid,
      h5OrderUuid,
      handleTime,
      num,
      orderTime,
      price,
      saleBillUuid,
      status,
      waitTime);

  /// Create a copy of AcceptOrder
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AcceptOrderImplCopyWith<_$AcceptOrderImpl> get copyWith =>
      __$$AcceptOrderImplCopyWithImpl<_$AcceptOrderImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AcceptOrderImplToJson(
      this,
    );
  }
}

abstract class _AcceptOrder implements AcceptOrder {
  factory _AcceptOrder(
          {@JsonKey(name: "desk_no") required final String deskNo,
          @JsonKey(name: "desk_region_uuid") required final int deskRegionUuid,
          @JsonKey(name: "h5_order_uuid") required final int h5OrderUuid,
          @JsonKey(name: "handle_time") required final int handleTime,
          @JsonKey(name: "num") required final int num,
          @JsonKey(name: "order_time") required final int orderTime,
          @JsonKey(name: "price") required final double price,
          @JsonKey(name: "sale_bill_uuid") required final int saleBillUuid,
          @JsonKey(name: "status") required final int status,
          @JsonKey(name: "wait_time") required final int waitTime}) =
      _$AcceptOrderImpl;

  factory _AcceptOrder.fromJson(Map<String, dynamic> json) =
      _$AcceptOrderImpl.fromJson;

  @override
  @JsonKey(name: "desk_no")
  String get deskNo;
  @override
  @JsonKey(name: "desk_region_uuid")
  int get deskRegionUuid;
  @override
  @JsonKey(name: "h5_order_uuid")
  int get h5OrderUuid;
  @override
  @JsonKey(name: "handle_time")
  int get handleTime;
  @override
  @JsonKey(name: "num")
  int get num;
  @override
  @JsonKey(name: "order_time")
  int get orderTime;
  @override
  @JsonKey(name: "price")
  double get price;
  @override
  @JsonKey(name: "sale_bill_uuid")
  int get saleBillUuid;
  @override
  @JsonKey(name: "status")
  int get status;
  @override
  @JsonKey(name: "wait_time")
  int get waitTime;

  /// Create a copy of AcceptOrder
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AcceptOrderImplCopyWith<_$AcceptOrderImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

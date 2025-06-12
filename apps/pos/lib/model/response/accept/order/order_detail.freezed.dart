// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_detail.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AcceptOrderDetail _$AcceptOrderDetailFromJson(Map<String, dynamic> json) {
  return _AcceptOrderDetail.fromJson(json);
}

/// @nodoc
mixin _$AcceptOrderDetail {
  @JsonKey(name: "cashier")
  String get cashier => throw _privateConstructorUsedError;
  @JsonKey(name: "desk_no")
  String get deskNo => throw _privateConstructorUsedError;
  @JsonKey(name: "desk_uuid")
  int get deskUuid => throw _privateConstructorUsedError;
  @JsonKey(name: "h5_order_uuid")
  int get h5OrderUuid => throw _privateConstructorUsedError;
  @JsonKey(name: "handle_time")
  int get handleTime => throw _privateConstructorUsedError;
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

  /// Serializes this AcceptOrderDetail to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AcceptOrderDetail
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AcceptOrderDetailCopyWith<AcceptOrderDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AcceptOrderDetailCopyWith<$Res> {
  factory $AcceptOrderDetailCopyWith(
          AcceptOrderDetail value, $Res Function(AcceptOrderDetail) then) =
      _$AcceptOrderDetailCopyWithImpl<$Res, AcceptOrderDetail>;
  @useResult
  $Res call(
      {@JsonKey(name: "cashier") String cashier,
      @JsonKey(name: "desk_no") String deskNo,
      @JsonKey(name: "desk_uuid") int deskUuid,
      @JsonKey(name: "h5_order_uuid") int h5OrderUuid,
      @JsonKey(name: "handle_time") int handleTime,
      @JsonKey(name: "order_time") int orderTime,
      @JsonKey(name: "price") double price,
      @JsonKey(name: "sale_bill_uuid") int saleBillUuid,
      @JsonKey(name: "status") int status,
      @JsonKey(name: "wait_time") int waitTime});
}

/// @nodoc
class _$AcceptOrderDetailCopyWithImpl<$Res, $Val extends AcceptOrderDetail>
    implements $AcceptOrderDetailCopyWith<$Res> {
  _$AcceptOrderDetailCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AcceptOrderDetail
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cashier = null,
    Object? deskNo = null,
    Object? deskUuid = null,
    Object? h5OrderUuid = null,
    Object? handleTime = null,
    Object? orderTime = null,
    Object? price = null,
    Object? saleBillUuid = null,
    Object? status = null,
    Object? waitTime = null,
  }) {
    return _then(_value.copyWith(
      cashier: null == cashier
          ? _value.cashier
          : cashier // ignore: cast_nullable_to_non_nullable
              as String,
      deskNo: null == deskNo
          ? _value.deskNo
          : deskNo // ignore: cast_nullable_to_non_nullable
              as String,
      deskUuid: null == deskUuid
          ? _value.deskUuid
          : deskUuid // ignore: cast_nullable_to_non_nullable
              as int,
      h5OrderUuid: null == h5OrderUuid
          ? _value.h5OrderUuid
          : h5OrderUuid // ignore: cast_nullable_to_non_nullable
              as int,
      handleTime: null == handleTime
          ? _value.handleTime
          : handleTime // ignore: cast_nullable_to_non_nullable
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
abstract class _$$AcceptOrderDetailImplCopyWith<$Res>
    implements $AcceptOrderDetailCopyWith<$Res> {
  factory _$$AcceptOrderDetailImplCopyWith(_$AcceptOrderDetailImpl value,
          $Res Function(_$AcceptOrderDetailImpl) then) =
      __$$AcceptOrderDetailImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "cashier") String cashier,
      @JsonKey(name: "desk_no") String deskNo,
      @JsonKey(name: "desk_uuid") int deskUuid,
      @JsonKey(name: "h5_order_uuid") int h5OrderUuid,
      @JsonKey(name: "handle_time") int handleTime,
      @JsonKey(name: "order_time") int orderTime,
      @JsonKey(name: "price") double price,
      @JsonKey(name: "sale_bill_uuid") int saleBillUuid,
      @JsonKey(name: "status") int status,
      @JsonKey(name: "wait_time") int waitTime});
}

/// @nodoc
class __$$AcceptOrderDetailImplCopyWithImpl<$Res>
    extends _$AcceptOrderDetailCopyWithImpl<$Res, _$AcceptOrderDetailImpl>
    implements _$$AcceptOrderDetailImplCopyWith<$Res> {
  __$$AcceptOrderDetailImplCopyWithImpl(_$AcceptOrderDetailImpl _value,
      $Res Function(_$AcceptOrderDetailImpl) _then)
      : super(_value, _then);

  /// Create a copy of AcceptOrderDetail
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cashier = null,
    Object? deskNo = null,
    Object? deskUuid = null,
    Object? h5OrderUuid = null,
    Object? handleTime = null,
    Object? orderTime = null,
    Object? price = null,
    Object? saleBillUuid = null,
    Object? status = null,
    Object? waitTime = null,
  }) {
    return _then(_$AcceptOrderDetailImpl(
      cashier: null == cashier
          ? _value.cashier
          : cashier // ignore: cast_nullable_to_non_nullable
              as String,
      deskNo: null == deskNo
          ? _value.deskNo
          : deskNo // ignore: cast_nullable_to_non_nullable
              as String,
      deskUuid: null == deskUuid
          ? _value.deskUuid
          : deskUuid // ignore: cast_nullable_to_non_nullable
              as int,
      h5OrderUuid: null == h5OrderUuid
          ? _value.h5OrderUuid
          : h5OrderUuid // ignore: cast_nullable_to_non_nullable
              as int,
      handleTime: null == handleTime
          ? _value.handleTime
          : handleTime // ignore: cast_nullable_to_non_nullable
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
class _$AcceptOrderDetailImpl implements _AcceptOrderDetail {
  const _$AcceptOrderDetailImpl(
      {@JsonKey(name: "cashier") required this.cashier,
      @JsonKey(name: "desk_no") required this.deskNo,
      @JsonKey(name: "desk_uuid") required this.deskUuid,
      @JsonKey(name: "h5_order_uuid") required this.h5OrderUuid,
      @JsonKey(name: "handle_time") required this.handleTime,
      @JsonKey(name: "order_time") required this.orderTime,
      @JsonKey(name: "price") required this.price,
      @JsonKey(name: "sale_bill_uuid") required this.saleBillUuid,
      @JsonKey(name: "status") required this.status,
      @JsonKey(name: "wait_time") required this.waitTime});

  factory _$AcceptOrderDetailImpl.fromJson(Map<String, dynamic> json) =>
      _$$AcceptOrderDetailImplFromJson(json);

  @override
  @JsonKey(name: "cashier")
  final String cashier;
  @override
  @JsonKey(name: "desk_no")
  final String deskNo;
  @override
  @JsonKey(name: "desk_uuid")
  final int deskUuid;
  @override
  @JsonKey(name: "h5_order_uuid")
  final int h5OrderUuid;
  @override
  @JsonKey(name: "handle_time")
  final int handleTime;
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
    return 'AcceptOrderDetail(cashier: $cashier, deskNo: $deskNo, deskUuid: $deskUuid, h5OrderUuid: $h5OrderUuid, handleTime: $handleTime, orderTime: $orderTime, price: $price, saleBillUuid: $saleBillUuid, status: $status, waitTime: $waitTime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AcceptOrderDetailImpl &&
            (identical(other.cashier, cashier) || other.cashier == cashier) &&
            (identical(other.deskNo, deskNo) || other.deskNo == deskNo) &&
            (identical(other.deskUuid, deskUuid) ||
                other.deskUuid == deskUuid) &&
            (identical(other.h5OrderUuid, h5OrderUuid) ||
                other.h5OrderUuid == h5OrderUuid) &&
            (identical(other.handleTime, handleTime) ||
                other.handleTime == handleTime) &&
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
      cashier,
      deskNo,
      deskUuid,
      h5OrderUuid,
      handleTime,
      orderTime,
      price,
      saleBillUuid,
      status,
      waitTime);

  /// Create a copy of AcceptOrderDetail
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AcceptOrderDetailImplCopyWith<_$AcceptOrderDetailImpl> get copyWith =>
      __$$AcceptOrderDetailImplCopyWithImpl<_$AcceptOrderDetailImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AcceptOrderDetailImplToJson(
      this,
    );
  }
}

abstract class _AcceptOrderDetail implements AcceptOrderDetail {
  const factory _AcceptOrderDetail(
          {@JsonKey(name: "cashier") required final String cashier,
          @JsonKey(name: "desk_no") required final String deskNo,
          @JsonKey(name: "desk_uuid") required final int deskUuid,
          @JsonKey(name: "h5_order_uuid") required final int h5OrderUuid,
          @JsonKey(name: "handle_time") required final int handleTime,
          @JsonKey(name: "order_time") required final int orderTime,
          @JsonKey(name: "price") required final double price,
          @JsonKey(name: "sale_bill_uuid") required final int saleBillUuid,
          @JsonKey(name: "status") required final int status,
          @JsonKey(name: "wait_time") required final int waitTime}) =
      _$AcceptOrderDetailImpl;

  factory _AcceptOrderDetail.fromJson(Map<String, dynamic> json) =
      _$AcceptOrderDetailImpl.fromJson;

  @override
  @JsonKey(name: "cashier")
  String get cashier;
  @override
  @JsonKey(name: "desk_no")
  String get deskNo;
  @override
  @JsonKey(name: "desk_uuid")
  int get deskUuid;
  @override
  @JsonKey(name: "h5_order_uuid")
  int get h5OrderUuid;
  @override
  @JsonKey(name: "handle_time")
  int get handleTime;
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

  /// Create a copy of AcceptOrderDetail
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AcceptOrderDetailImplCopyWith<_$AcceptOrderDetailImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_reverse_settle_details.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

OrderReverseSettleDetails _$OrderReverseSettleDetailsFromJson(
    Map<String, dynamic> json) {
  return _OrderReverseSettleDetails.fromJson(json);
}

/// @nodoc
mixin _$OrderReverseSettleDetails {
  @JsonKey(name: "desks")
  Desks? get desks => throw _privateConstructorUsedError;
  @JsonKey(name: "has_instant_order")
  bool? get hasInstantOrder => throw _privateConstructorUsedError;
  @JsonKey(name: "order_amount")
  double get orderAmount => throw _privateConstructorUsedError;
  @JsonKey(name: "pay_methods")
  List<String> get payMethods => throw _privateConstructorUsedError;
  @JsonKey(name: "payment_amount")
  double get paymentAmount => throw _privateConstructorUsedError;
  @JsonKey(name: "sale_bill_no")
  String get saleBillNo => throw _privateConstructorUsedError;
  @JsonKey(name: "sale_bill_type")
  int get saleBillType => throw _privateConstructorUsedError;
  @JsonKey(name: "sale_bill_uuid")
  int get saleBillUuid => throw _privateConstructorUsedError;

  /// Serializes this OrderReverseSettleDetails to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OrderReverseSettleDetails
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OrderReverseSettleDetailsCopyWith<OrderReverseSettleDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderReverseSettleDetailsCopyWith<$Res> {
  factory $OrderReverseSettleDetailsCopyWith(OrderReverseSettleDetails value,
          $Res Function(OrderReverseSettleDetails) then) =
      _$OrderReverseSettleDetailsCopyWithImpl<$Res, OrderReverseSettleDetails>;
  @useResult
  $Res call(
      {@JsonKey(name: "desks") Desks? desks,
      @JsonKey(name: "has_instant_order") bool? hasInstantOrder,
      @JsonKey(name: "order_amount") double orderAmount,
      @JsonKey(name: "pay_methods") List<String> payMethods,
      @JsonKey(name: "payment_amount") double paymentAmount,
      @JsonKey(name: "sale_bill_no") String saleBillNo,
      @JsonKey(name: "sale_bill_type") int saleBillType,
      @JsonKey(name: "sale_bill_uuid") int saleBillUuid});

  $DesksCopyWith<$Res>? get desks;
}

/// @nodoc
class _$OrderReverseSettleDetailsCopyWithImpl<$Res,
        $Val extends OrderReverseSettleDetails>
    implements $OrderReverseSettleDetailsCopyWith<$Res> {
  _$OrderReverseSettleDetailsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OrderReverseSettleDetails
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? desks = freezed,
    Object? hasInstantOrder = freezed,
    Object? orderAmount = null,
    Object? payMethods = null,
    Object? paymentAmount = null,
    Object? saleBillNo = null,
    Object? saleBillType = null,
    Object? saleBillUuid = null,
  }) {
    return _then(_value.copyWith(
      desks: freezed == desks
          ? _value.desks
          : desks // ignore: cast_nullable_to_non_nullable
              as Desks?,
      hasInstantOrder: freezed == hasInstantOrder
          ? _value.hasInstantOrder
          : hasInstantOrder // ignore: cast_nullable_to_non_nullable
              as bool?,
      orderAmount: null == orderAmount
          ? _value.orderAmount
          : orderAmount // ignore: cast_nullable_to_non_nullable
              as double,
      payMethods: null == payMethods
          ? _value.payMethods
          : payMethods // ignore: cast_nullable_to_non_nullable
              as List<String>,
      paymentAmount: null == paymentAmount
          ? _value.paymentAmount
          : paymentAmount // ignore: cast_nullable_to_non_nullable
              as double,
      saleBillNo: null == saleBillNo
          ? _value.saleBillNo
          : saleBillNo // ignore: cast_nullable_to_non_nullable
              as String,
      saleBillType: null == saleBillType
          ? _value.saleBillType
          : saleBillType // ignore: cast_nullable_to_non_nullable
              as int,
      saleBillUuid: null == saleBillUuid
          ? _value.saleBillUuid
          : saleBillUuid // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }

  /// Create a copy of OrderReverseSettleDetails
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DesksCopyWith<$Res>? get desks {
    if (_value.desks == null) {
      return null;
    }

    return $DesksCopyWith<$Res>(_value.desks!, (value) {
      return _then(_value.copyWith(desks: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$OrderReverseSettleDetailsImplCopyWith<$Res>
    implements $OrderReverseSettleDetailsCopyWith<$Res> {
  factory _$$OrderReverseSettleDetailsImplCopyWith(
          _$OrderReverseSettleDetailsImpl value,
          $Res Function(_$OrderReverseSettleDetailsImpl) then) =
      __$$OrderReverseSettleDetailsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "desks") Desks? desks,
      @JsonKey(name: "has_instant_order") bool? hasInstantOrder,
      @JsonKey(name: "order_amount") double orderAmount,
      @JsonKey(name: "pay_methods") List<String> payMethods,
      @JsonKey(name: "payment_amount") double paymentAmount,
      @JsonKey(name: "sale_bill_no") String saleBillNo,
      @JsonKey(name: "sale_bill_type") int saleBillType,
      @JsonKey(name: "sale_bill_uuid") int saleBillUuid});

  @override
  $DesksCopyWith<$Res>? get desks;
}

/// @nodoc
class __$$OrderReverseSettleDetailsImplCopyWithImpl<$Res>
    extends _$OrderReverseSettleDetailsCopyWithImpl<$Res,
        _$OrderReverseSettleDetailsImpl>
    implements _$$OrderReverseSettleDetailsImplCopyWith<$Res> {
  __$$OrderReverseSettleDetailsImplCopyWithImpl(
      _$OrderReverseSettleDetailsImpl _value,
      $Res Function(_$OrderReverseSettleDetailsImpl) _then)
      : super(_value, _then);

  /// Create a copy of OrderReverseSettleDetails
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? desks = freezed,
    Object? hasInstantOrder = freezed,
    Object? orderAmount = null,
    Object? payMethods = null,
    Object? paymentAmount = null,
    Object? saleBillNo = null,
    Object? saleBillType = null,
    Object? saleBillUuid = null,
  }) {
    return _then(_$OrderReverseSettleDetailsImpl(
      desks: freezed == desks
          ? _value.desks
          : desks // ignore: cast_nullable_to_non_nullable
              as Desks?,
      hasInstantOrder: freezed == hasInstantOrder
          ? _value.hasInstantOrder
          : hasInstantOrder // ignore: cast_nullable_to_non_nullable
              as bool?,
      orderAmount: null == orderAmount
          ? _value.orderAmount
          : orderAmount // ignore: cast_nullable_to_non_nullable
              as double,
      payMethods: null == payMethods
          ? _value._payMethods
          : payMethods // ignore: cast_nullable_to_non_nullable
              as List<String>,
      paymentAmount: null == paymentAmount
          ? _value.paymentAmount
          : paymentAmount // ignore: cast_nullable_to_non_nullable
              as double,
      saleBillNo: null == saleBillNo
          ? _value.saleBillNo
          : saleBillNo // ignore: cast_nullable_to_non_nullable
              as String,
      saleBillType: null == saleBillType
          ? _value.saleBillType
          : saleBillType // ignore: cast_nullable_to_non_nullable
              as int,
      saleBillUuid: null == saleBillUuid
          ? _value.saleBillUuid
          : saleBillUuid // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OrderReverseSettleDetailsImpl implements _OrderReverseSettleDetails {
  _$OrderReverseSettleDetailsImpl(
      {@JsonKey(name: "desks") this.desks,
      @JsonKey(name: "has_instant_order") this.hasInstantOrder,
      @JsonKey(name: "order_amount") required this.orderAmount,
      @JsonKey(name: "pay_methods") required final List<String> payMethods,
      @JsonKey(name: "payment_amount") required this.paymentAmount,
      @JsonKey(name: "sale_bill_no") required this.saleBillNo,
      @JsonKey(name: "sale_bill_type") required this.saleBillType,
      @JsonKey(name: "sale_bill_uuid") required this.saleBillUuid})
      : _payMethods = payMethods;

  factory _$OrderReverseSettleDetailsImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrderReverseSettleDetailsImplFromJson(json);

  @override
  @JsonKey(name: "desks")
  final Desks? desks;
  @override
  @JsonKey(name: "has_instant_order")
  final bool? hasInstantOrder;
  @override
  @JsonKey(name: "order_amount")
  final double orderAmount;
  final List<String> _payMethods;
  @override
  @JsonKey(name: "pay_methods")
  List<String> get payMethods {
    if (_payMethods is EqualUnmodifiableListView) return _payMethods;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_payMethods);
  }

  @override
  @JsonKey(name: "payment_amount")
  final double paymentAmount;
  @override
  @JsonKey(name: "sale_bill_no")
  final String saleBillNo;
  @override
  @JsonKey(name: "sale_bill_type")
  final int saleBillType;
  @override
  @JsonKey(name: "sale_bill_uuid")
  final int saleBillUuid;

  @override
  String toString() {
    return 'OrderReverseSettleDetails(desks: $desks, hasInstantOrder: $hasInstantOrder, orderAmount: $orderAmount, payMethods: $payMethods, paymentAmount: $paymentAmount, saleBillNo: $saleBillNo, saleBillType: $saleBillType, saleBillUuid: $saleBillUuid)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderReverseSettleDetailsImpl &&
            (identical(other.desks, desks) || other.desks == desks) &&
            (identical(other.hasInstantOrder, hasInstantOrder) ||
                other.hasInstantOrder == hasInstantOrder) &&
            (identical(other.orderAmount, orderAmount) ||
                other.orderAmount == orderAmount) &&
            const DeepCollectionEquality()
                .equals(other._payMethods, _payMethods) &&
            (identical(other.paymentAmount, paymentAmount) ||
                other.paymentAmount == paymentAmount) &&
            (identical(other.saleBillNo, saleBillNo) ||
                other.saleBillNo == saleBillNo) &&
            (identical(other.saleBillType, saleBillType) ||
                other.saleBillType == saleBillType) &&
            (identical(other.saleBillUuid, saleBillUuid) ||
                other.saleBillUuid == saleBillUuid));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      desks,
      hasInstantOrder,
      orderAmount,
      const DeepCollectionEquality().hash(_payMethods),
      paymentAmount,
      saleBillNo,
      saleBillType,
      saleBillUuid);

  /// Create a copy of OrderReverseSettleDetails
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderReverseSettleDetailsImplCopyWith<_$OrderReverseSettleDetailsImpl>
      get copyWith => __$$OrderReverseSettleDetailsImplCopyWithImpl<
          _$OrderReverseSettleDetailsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OrderReverseSettleDetailsImplToJson(
      this,
    );
  }
}

abstract class _OrderReverseSettleDetails implements OrderReverseSettleDetails {
  factory _OrderReverseSettleDetails(
          {@JsonKey(name: "desks") final Desks? desks,
          @JsonKey(name: "has_instant_order") final bool? hasInstantOrder,
          @JsonKey(name: "order_amount") required final double orderAmount,
          @JsonKey(name: "pay_methods") required final List<String> payMethods,
          @JsonKey(name: "payment_amount") required final double paymentAmount,
          @JsonKey(name: "sale_bill_no") required final String saleBillNo,
          @JsonKey(name: "sale_bill_type") required final int saleBillType,
          @JsonKey(name: "sale_bill_uuid") required final int saleBillUuid}) =
      _$OrderReverseSettleDetailsImpl;

  factory _OrderReverseSettleDetails.fromJson(Map<String, dynamic> json) =
      _$OrderReverseSettleDetailsImpl.fromJson;

  @override
  @JsonKey(name: "desks")
  Desks? get desks;
  @override
  @JsonKey(name: "has_instant_order")
  bool? get hasInstantOrder;
  @override
  @JsonKey(name: "order_amount")
  double get orderAmount;
  @override
  @JsonKey(name: "pay_methods")
  List<String> get payMethods;
  @override
  @JsonKey(name: "payment_amount")
  double get paymentAmount;
  @override
  @JsonKey(name: "sale_bill_no")
  String get saleBillNo;
  @override
  @JsonKey(name: "sale_bill_type")
  int get saleBillType;
  @override
  @JsonKey(name: "sale_bill_uuid")
  int get saleBillUuid;

  /// Create a copy of OrderReverseSettleDetails
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OrderReverseSettleDetailsImplCopyWith<_$OrderReverseSettleDetailsImpl>
      get copyWith => throw _privateConstructorUsedError;
}

Desks _$DesksFromJson(Map<String, dynamic> json) {
  return _Desks.fromJson(json);
}

/// @nodoc
mixin _$Desks {
  @JsonKey(name: "list")
  List<RespOrderReverseSettleDesk> get list =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "origin_desk_available")
  bool get originDeskAvailable => throw _privateConstructorUsedError;

  /// Serializes this Desks to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Desks
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DesksCopyWith<Desks> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DesksCopyWith<$Res> {
  factory $DesksCopyWith(Desks value, $Res Function(Desks) then) =
      _$DesksCopyWithImpl<$Res, Desks>;
  @useResult
  $Res call(
      {@JsonKey(name: "list") List<RespOrderReverseSettleDesk> list,
      @JsonKey(name: "origin_desk_available") bool originDeskAvailable});
}

/// @nodoc
class _$DesksCopyWithImpl<$Res, $Val extends Desks>
    implements $DesksCopyWith<$Res> {
  _$DesksCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Desks
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? list = null,
    Object? originDeskAvailable = null,
  }) {
    return _then(_value.copyWith(
      list: null == list
          ? _value.list
          : list // ignore: cast_nullable_to_non_nullable
              as List<RespOrderReverseSettleDesk>,
      originDeskAvailable: null == originDeskAvailable
          ? _value.originDeskAvailable
          : originDeskAvailable // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DesksImplCopyWith<$Res> implements $DesksCopyWith<$Res> {
  factory _$$DesksImplCopyWith(
          _$DesksImpl value, $Res Function(_$DesksImpl) then) =
      __$$DesksImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "list") List<RespOrderReverseSettleDesk> list,
      @JsonKey(name: "origin_desk_available") bool originDeskAvailable});
}

/// @nodoc
class __$$DesksImplCopyWithImpl<$Res>
    extends _$DesksCopyWithImpl<$Res, _$DesksImpl>
    implements _$$DesksImplCopyWith<$Res> {
  __$$DesksImplCopyWithImpl(
      _$DesksImpl _value, $Res Function(_$DesksImpl) _then)
      : super(_value, _then);

  /// Create a copy of Desks
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? list = null,
    Object? originDeskAvailable = null,
  }) {
    return _then(_$DesksImpl(
      list: null == list
          ? _value._list
          : list // ignore: cast_nullable_to_non_nullable
              as List<RespOrderReverseSettleDesk>,
      originDeskAvailable: null == originDeskAvailable
          ? _value.originDeskAvailable
          : originDeskAvailable // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DesksImpl implements _Desks {
  const _$DesksImpl(
      {@JsonKey(name: "list")
      required final List<RespOrderReverseSettleDesk> list,
      @JsonKey(name: "origin_desk_available")
      required this.originDeskAvailable})
      : _list = list;

  factory _$DesksImpl.fromJson(Map<String, dynamic> json) =>
      _$$DesksImplFromJson(json);

  final List<RespOrderReverseSettleDesk> _list;
  @override
  @JsonKey(name: "list")
  List<RespOrderReverseSettleDesk> get list {
    if (_list is EqualUnmodifiableListView) return _list;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_list);
  }

  @override
  @JsonKey(name: "origin_desk_available")
  final bool originDeskAvailable;

  @override
  String toString() {
    return 'Desks(list: $list, originDeskAvailable: $originDeskAvailable)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DesksImpl &&
            const DeepCollectionEquality().equals(other._list, _list) &&
            (identical(other.originDeskAvailable, originDeskAvailable) ||
                other.originDeskAvailable == originDeskAvailable));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_list), originDeskAvailable);

  /// Create a copy of Desks
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DesksImplCopyWith<_$DesksImpl> get copyWith =>
      __$$DesksImplCopyWithImpl<_$DesksImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DesksImplToJson(
      this,
    );
  }
}

abstract class _Desks implements Desks {
  const factory _Desks(
      {@JsonKey(name: "list")
      required final List<RespOrderReverseSettleDesk> list,
      @JsonKey(name: "origin_desk_available")
      required final bool originDeskAvailable}) = _$DesksImpl;

  factory _Desks.fromJson(Map<String, dynamic> json) = _$DesksImpl.fromJson;

  @override
  @JsonKey(name: "list")
  List<RespOrderReverseSettleDesk> get list;
  @override
  @JsonKey(name: "origin_desk_available")
  bool get originDeskAvailable;

  /// Create a copy of Desks
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DesksImplCopyWith<_$DesksImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

RespOrderReverseSettleDesk _$RespOrderReverseSettleDeskFromJson(
    Map<String, dynamic> json) {
  return _RespOrderReverseSettleDesk.fromJson(json);
}

/// @nodoc
mixin _$RespOrderReverseSettleDesk {
  @JsonKey(name: "serial_no")
  String get serialNo => throw _privateConstructorUsedError;
  @JsonKey(name: "uuid")
  int get uuid => throw _privateConstructorUsedError;

  /// Serializes this RespOrderReverseSettleDesk to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RespOrderReverseSettleDesk
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RespOrderReverseSettleDeskCopyWith<RespOrderReverseSettleDesk>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RespOrderReverseSettleDeskCopyWith<$Res> {
  factory $RespOrderReverseSettleDeskCopyWith(RespOrderReverseSettleDesk value,
          $Res Function(RespOrderReverseSettleDesk) then) =
      _$RespOrderReverseSettleDeskCopyWithImpl<$Res,
          RespOrderReverseSettleDesk>;
  @useResult
  $Res call(
      {@JsonKey(name: "serial_no") String serialNo,
      @JsonKey(name: "uuid") int uuid});
}

/// @nodoc
class _$RespOrderReverseSettleDeskCopyWithImpl<$Res,
        $Val extends RespOrderReverseSettleDesk>
    implements $RespOrderReverseSettleDeskCopyWith<$Res> {
  _$RespOrderReverseSettleDeskCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RespOrderReverseSettleDesk
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? serialNo = null,
    Object? uuid = null,
  }) {
    return _then(_value.copyWith(
      serialNo: null == serialNo
          ? _value.serialNo
          : serialNo // ignore: cast_nullable_to_non_nullable
              as String,
      uuid: null == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RespOrderReverseSettleDeskImplCopyWith<$Res>
    implements $RespOrderReverseSettleDeskCopyWith<$Res> {
  factory _$$RespOrderReverseSettleDeskImplCopyWith(
          _$RespOrderReverseSettleDeskImpl value,
          $Res Function(_$RespOrderReverseSettleDeskImpl) then) =
      __$$RespOrderReverseSettleDeskImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "serial_no") String serialNo,
      @JsonKey(name: "uuid") int uuid});
}

/// @nodoc
class __$$RespOrderReverseSettleDeskImplCopyWithImpl<$Res>
    extends _$RespOrderReverseSettleDeskCopyWithImpl<$Res,
        _$RespOrderReverseSettleDeskImpl>
    implements _$$RespOrderReverseSettleDeskImplCopyWith<$Res> {
  __$$RespOrderReverseSettleDeskImplCopyWithImpl(
      _$RespOrderReverseSettleDeskImpl _value,
      $Res Function(_$RespOrderReverseSettleDeskImpl) _then)
      : super(_value, _then);

  /// Create a copy of RespOrderReverseSettleDesk
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? serialNo = null,
    Object? uuid = null,
  }) {
    return _then(_$RespOrderReverseSettleDeskImpl(
      serialNo: null == serialNo
          ? _value.serialNo
          : serialNo // ignore: cast_nullable_to_non_nullable
              as String,
      uuid: null == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RespOrderReverseSettleDeskImpl implements _RespOrderReverseSettleDesk {
  const _$RespOrderReverseSettleDeskImpl(
      {@JsonKey(name: "serial_no") required this.serialNo,
      @JsonKey(name: "uuid") required this.uuid});

  factory _$RespOrderReverseSettleDeskImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$RespOrderReverseSettleDeskImplFromJson(json);

  @override
  @JsonKey(name: "serial_no")
  final String serialNo;
  @override
  @JsonKey(name: "uuid")
  final int uuid;

  @override
  String toString() {
    return 'RespOrderReverseSettleDesk(serialNo: $serialNo, uuid: $uuid)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RespOrderReverseSettleDeskImpl &&
            (identical(other.serialNo, serialNo) ||
                other.serialNo == serialNo) &&
            (identical(other.uuid, uuid) || other.uuid == uuid));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, serialNo, uuid);

  /// Create a copy of RespOrderReverseSettleDesk
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RespOrderReverseSettleDeskImplCopyWith<_$RespOrderReverseSettleDeskImpl>
      get copyWith => __$$RespOrderReverseSettleDeskImplCopyWithImpl<
          _$RespOrderReverseSettleDeskImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RespOrderReverseSettleDeskImplToJson(
      this,
    );
  }
}

abstract class _RespOrderReverseSettleDesk
    implements RespOrderReverseSettleDesk {
  const factory _RespOrderReverseSettleDesk(
          {@JsonKey(name: "serial_no") required final String serialNo,
          @JsonKey(name: "uuid") required final int uuid}) =
      _$RespOrderReverseSettleDeskImpl;

  factory _RespOrderReverseSettleDesk.fromJson(Map<String, dynamic> json) =
      _$RespOrderReverseSettleDeskImpl.fromJson;

  @override
  @JsonKey(name: "serial_no")
  String get serialNo;
  @override
  @JsonKey(name: "uuid")
  int get uuid;

  /// Create a copy of RespOrderReverseSettleDesk
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RespOrderReverseSettleDeskImplCopyWith<_$RespOrderReverseSettleDeskImpl>
      get copyWith => throw _privateConstructorUsedError;
}

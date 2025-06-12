// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_finish.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ResponseOrderFinish _$ResponseOrderFinishFromJson(Map<String, dynamic> json) {
  return _ResponseOrderFinish.fromJson(json);
}

/// @nodoc
mixin _$ResponseOrderFinish {
  @JsonKey(name: "amount_info")
  AmountInfo get amountInfo => throw _privateConstructorUsedError;
  @JsonKey(name: "pay_methods")
  BaseList<PayMethodItem> get payMethods => throw _privateConstructorUsedError;
  @JsonKey(name: "sale_bill_uuid")
  int get saleBillUuid => throw _privateConstructorUsedError;
  @JsonKey(name: "sale_order_uuid")
  int get saleOrderUuid => throw _privateConstructorUsedError;

  /// Serializes this ResponseOrderFinish to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ResponseOrderFinish
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ResponseOrderFinishCopyWith<ResponseOrderFinish> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResponseOrderFinishCopyWith<$Res> {
  factory $ResponseOrderFinishCopyWith(
          ResponseOrderFinish value, $Res Function(ResponseOrderFinish) then) =
      _$ResponseOrderFinishCopyWithImpl<$Res, ResponseOrderFinish>;
  @useResult
  $Res call(
      {@JsonKey(name: "amount_info") AmountInfo amountInfo,
      @JsonKey(name: "pay_methods") BaseList<PayMethodItem> payMethods,
      @JsonKey(name: "sale_bill_uuid") int saleBillUuid,
      @JsonKey(name: "sale_order_uuid") int saleOrderUuid});

  $AmountInfoCopyWith<$Res> get amountInfo;
  $BaseListCopyWith<PayMethodItem, $Res> get payMethods;
}

/// @nodoc
class _$ResponseOrderFinishCopyWithImpl<$Res, $Val extends ResponseOrderFinish>
    implements $ResponseOrderFinishCopyWith<$Res> {
  _$ResponseOrderFinishCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ResponseOrderFinish
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? amountInfo = null,
    Object? payMethods = null,
    Object? saleBillUuid = null,
    Object? saleOrderUuid = null,
  }) {
    return _then(_value.copyWith(
      amountInfo: null == amountInfo
          ? _value.amountInfo
          : amountInfo // ignore: cast_nullable_to_non_nullable
              as AmountInfo,
      payMethods: null == payMethods
          ? _value.payMethods
          : payMethods // ignore: cast_nullable_to_non_nullable
              as BaseList<PayMethodItem>,
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

  /// Create a copy of ResponseOrderFinish
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AmountInfoCopyWith<$Res> get amountInfo {
    return $AmountInfoCopyWith<$Res>(_value.amountInfo, (value) {
      return _then(_value.copyWith(amountInfo: value) as $Val);
    });
  }

  /// Create a copy of ResponseOrderFinish
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BaseListCopyWith<PayMethodItem, $Res> get payMethods {
    return $BaseListCopyWith<PayMethodItem, $Res>(_value.payMethods, (value) {
      return _then(_value.copyWith(payMethods: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ResponseOrderFinishImplCopyWith<$Res>
    implements $ResponseOrderFinishCopyWith<$Res> {
  factory _$$ResponseOrderFinishImplCopyWith(_$ResponseOrderFinishImpl value,
          $Res Function(_$ResponseOrderFinishImpl) then) =
      __$$ResponseOrderFinishImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "amount_info") AmountInfo amountInfo,
      @JsonKey(name: "pay_methods") BaseList<PayMethodItem> payMethods,
      @JsonKey(name: "sale_bill_uuid") int saleBillUuid,
      @JsonKey(name: "sale_order_uuid") int saleOrderUuid});

  @override
  $AmountInfoCopyWith<$Res> get amountInfo;
  @override
  $BaseListCopyWith<PayMethodItem, $Res> get payMethods;
}

/// @nodoc
class __$$ResponseOrderFinishImplCopyWithImpl<$Res>
    extends _$ResponseOrderFinishCopyWithImpl<$Res, _$ResponseOrderFinishImpl>
    implements _$$ResponseOrderFinishImplCopyWith<$Res> {
  __$$ResponseOrderFinishImplCopyWithImpl(_$ResponseOrderFinishImpl _value,
      $Res Function(_$ResponseOrderFinishImpl) _then)
      : super(_value, _then);

  /// Create a copy of ResponseOrderFinish
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? amountInfo = null,
    Object? payMethods = null,
    Object? saleBillUuid = null,
    Object? saleOrderUuid = null,
  }) {
    return _then(_$ResponseOrderFinishImpl(
      amountInfo: null == amountInfo
          ? _value.amountInfo
          : amountInfo // ignore: cast_nullable_to_non_nullable
              as AmountInfo,
      payMethods: null == payMethods
          ? _value.payMethods
          : payMethods // ignore: cast_nullable_to_non_nullable
              as BaseList<PayMethodItem>,
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
class _$ResponseOrderFinishImpl implements _ResponseOrderFinish {
  const _$ResponseOrderFinishImpl(
      {@JsonKey(name: "amount_info") required this.amountInfo,
      @JsonKey(name: "pay_methods") required this.payMethods,
      @JsonKey(name: "sale_bill_uuid") required this.saleBillUuid,
      @JsonKey(name: "sale_order_uuid") required this.saleOrderUuid});

  factory _$ResponseOrderFinishImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResponseOrderFinishImplFromJson(json);

  @override
  @JsonKey(name: "amount_info")
  final AmountInfo amountInfo;
  @override
  @JsonKey(name: "pay_methods")
  final BaseList<PayMethodItem> payMethods;
  @override
  @JsonKey(name: "sale_bill_uuid")
  final int saleBillUuid;
  @override
  @JsonKey(name: "sale_order_uuid")
  final int saleOrderUuid;

  @override
  String toString() {
    return 'ResponseOrderFinish(amountInfo: $amountInfo, payMethods: $payMethods, saleBillUuid: $saleBillUuid, saleOrderUuid: $saleOrderUuid)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResponseOrderFinishImpl &&
            (identical(other.amountInfo, amountInfo) ||
                other.amountInfo == amountInfo) &&
            (identical(other.payMethods, payMethods) ||
                other.payMethods == payMethods) &&
            (identical(other.saleBillUuid, saleBillUuid) ||
                other.saleBillUuid == saleBillUuid) &&
            (identical(other.saleOrderUuid, saleOrderUuid) ||
                other.saleOrderUuid == saleOrderUuid));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, amountInfo, payMethods, saleBillUuid, saleOrderUuid);

  /// Create a copy of ResponseOrderFinish
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ResponseOrderFinishImplCopyWith<_$ResponseOrderFinishImpl> get copyWith =>
      __$$ResponseOrderFinishImplCopyWithImpl<_$ResponseOrderFinishImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResponseOrderFinishImplToJson(
      this,
    );
  }
}

abstract class _ResponseOrderFinish implements ResponseOrderFinish {
  const factory _ResponseOrderFinish(
          {@JsonKey(name: "amount_info") required final AmountInfo amountInfo,
          @JsonKey(name: "pay_methods")
          required final BaseList<PayMethodItem> payMethods,
          @JsonKey(name: "sale_bill_uuid") required final int saleBillUuid,
          @JsonKey(name: "sale_order_uuid") required final int saleOrderUuid}) =
      _$ResponseOrderFinishImpl;

  factory _ResponseOrderFinish.fromJson(Map<String, dynamic> json) =
      _$ResponseOrderFinishImpl.fromJson;

  @override
  @JsonKey(name: "amount_info")
  AmountInfo get amountInfo;
  @override
  @JsonKey(name: "pay_methods")
  BaseList<PayMethodItem> get payMethods;
  @override
  @JsonKey(name: "sale_bill_uuid")
  int get saleBillUuid;
  @override
  @JsonKey(name: "sale_order_uuid")
  int get saleOrderUuid;

  /// Create a copy of ResponseOrderFinish
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ResponseOrderFinishImplCopyWith<_$ResponseOrderFinishImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AmountInfo _$AmountInfoFromJson(Map<String, dynamic> json) {
  return _AmountInfo.fromJson(json);
}

/// @nodoc
mixin _$AmountInfo {
  @JsonKey(name: "change_amount")
  double get changeAmount => throw _privateConstructorUsedError;
  @JsonKey(name: "order_amount")
  double get orderAmount => throw _privateConstructorUsedError;
  @JsonKey(name: "pay_amount")
  double get payAmount => throw _privateConstructorUsedError;

  /// Serializes this AmountInfo to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AmountInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AmountInfoCopyWith<AmountInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AmountInfoCopyWith<$Res> {
  factory $AmountInfoCopyWith(
          AmountInfo value, $Res Function(AmountInfo) then) =
      _$AmountInfoCopyWithImpl<$Res, AmountInfo>;
  @useResult
  $Res call(
      {@JsonKey(name: "change_amount") double changeAmount,
      @JsonKey(name: "order_amount") double orderAmount,
      @JsonKey(name: "pay_amount") double payAmount});
}

/// @nodoc
class _$AmountInfoCopyWithImpl<$Res, $Val extends AmountInfo>
    implements $AmountInfoCopyWith<$Res> {
  _$AmountInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AmountInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? changeAmount = null,
    Object? orderAmount = null,
    Object? payAmount = null,
  }) {
    return _then(_value.copyWith(
      changeAmount: null == changeAmount
          ? _value.changeAmount
          : changeAmount // ignore: cast_nullable_to_non_nullable
              as double,
      orderAmount: null == orderAmount
          ? _value.orderAmount
          : orderAmount // ignore: cast_nullable_to_non_nullable
              as double,
      payAmount: null == payAmount
          ? _value.payAmount
          : payAmount // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AmountInfoImplCopyWith<$Res>
    implements $AmountInfoCopyWith<$Res> {
  factory _$$AmountInfoImplCopyWith(
          _$AmountInfoImpl value, $Res Function(_$AmountInfoImpl) then) =
      __$$AmountInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "change_amount") double changeAmount,
      @JsonKey(name: "order_amount") double orderAmount,
      @JsonKey(name: "pay_amount") double payAmount});
}

/// @nodoc
class __$$AmountInfoImplCopyWithImpl<$Res>
    extends _$AmountInfoCopyWithImpl<$Res, _$AmountInfoImpl>
    implements _$$AmountInfoImplCopyWith<$Res> {
  __$$AmountInfoImplCopyWithImpl(
      _$AmountInfoImpl _value, $Res Function(_$AmountInfoImpl) _then)
      : super(_value, _then);

  /// Create a copy of AmountInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? changeAmount = null,
    Object? orderAmount = null,
    Object? payAmount = null,
  }) {
    return _then(_$AmountInfoImpl(
      changeAmount: null == changeAmount
          ? _value.changeAmount
          : changeAmount // ignore: cast_nullable_to_non_nullable
              as double,
      orderAmount: null == orderAmount
          ? _value.orderAmount
          : orderAmount // ignore: cast_nullable_to_non_nullable
              as double,
      payAmount: null == payAmount
          ? _value.payAmount
          : payAmount // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AmountInfoImpl implements _AmountInfo {
  const _$AmountInfoImpl(
      {@JsonKey(name: "change_amount") required this.changeAmount,
      @JsonKey(name: "order_amount") required this.orderAmount,
      @JsonKey(name: "pay_amount") required this.payAmount});

  factory _$AmountInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$AmountInfoImplFromJson(json);

  @override
  @JsonKey(name: "change_amount")
  final double changeAmount;
  @override
  @JsonKey(name: "order_amount")
  final double orderAmount;
  @override
  @JsonKey(name: "pay_amount")
  final double payAmount;

  @override
  String toString() {
    return 'AmountInfo(changeAmount: $changeAmount, orderAmount: $orderAmount, payAmount: $payAmount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AmountInfoImpl &&
            (identical(other.changeAmount, changeAmount) ||
                other.changeAmount == changeAmount) &&
            (identical(other.orderAmount, orderAmount) ||
                other.orderAmount == orderAmount) &&
            (identical(other.payAmount, payAmount) ||
                other.payAmount == payAmount));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, changeAmount, orderAmount, payAmount);

  /// Create a copy of AmountInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AmountInfoImplCopyWith<_$AmountInfoImpl> get copyWith =>
      __$$AmountInfoImplCopyWithImpl<_$AmountInfoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AmountInfoImplToJson(
      this,
    );
  }
}

abstract class _AmountInfo implements AmountInfo {
  const factory _AmountInfo(
          {@JsonKey(name: "change_amount") required final double changeAmount,
          @JsonKey(name: "order_amount") required final double orderAmount,
          @JsonKey(name: "pay_amount") required final double payAmount}) =
      _$AmountInfoImpl;

  factory _AmountInfo.fromJson(Map<String, dynamic> json) =
      _$AmountInfoImpl.fromJson;

  @override
  @JsonKey(name: "change_amount")
  double get changeAmount;
  @override
  @JsonKey(name: "order_amount")
  double get orderAmount;
  @override
  @JsonKey(name: "pay_amount")
  double get payAmount;

  /// Create a copy of AmountInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AmountInfoImplCopyWith<_$AmountInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PayMethodItem _$PayMethodItemFromJson(Map<String, dynamic> json) {
  return _PayMethodItem.fromJson(json);
}

/// @nodoc
mixin _$PayMethodItem {
  @JsonKey(name: "name")
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: "uuid")
  int get uuid => throw _privateConstructorUsedError;

  /// Serializes this PayMethodItem to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PayMethodItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PayMethodItemCopyWith<PayMethodItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PayMethodItemCopyWith<$Res> {
  factory $PayMethodItemCopyWith(
          PayMethodItem value, $Res Function(PayMethodItem) then) =
      _$PayMethodItemCopyWithImpl<$Res, PayMethodItem>;
  @useResult
  $Res call(
      {@JsonKey(name: "name") String name, @JsonKey(name: "uuid") int uuid});
}

/// @nodoc
class _$PayMethodItemCopyWithImpl<$Res, $Val extends PayMethodItem>
    implements $PayMethodItemCopyWith<$Res> {
  _$PayMethodItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PayMethodItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? uuid = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      uuid: null == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PayMethodItemImplCopyWith<$Res>
    implements $PayMethodItemCopyWith<$Res> {
  factory _$$PayMethodItemImplCopyWith(
          _$PayMethodItemImpl value, $Res Function(_$PayMethodItemImpl) then) =
      __$$PayMethodItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "name") String name, @JsonKey(name: "uuid") int uuid});
}

/// @nodoc
class __$$PayMethodItemImplCopyWithImpl<$Res>
    extends _$PayMethodItemCopyWithImpl<$Res, _$PayMethodItemImpl>
    implements _$$PayMethodItemImplCopyWith<$Res> {
  __$$PayMethodItemImplCopyWithImpl(
      _$PayMethodItemImpl _value, $Res Function(_$PayMethodItemImpl) _then)
      : super(_value, _then);

  /// Create a copy of PayMethodItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? uuid = null,
  }) {
    return _then(_$PayMethodItemImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
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
class _$PayMethodItemImpl implements _PayMethodItem {
  const _$PayMethodItemImpl(
      {@JsonKey(name: "name") required this.name,
      @JsonKey(name: "uuid") required this.uuid});

  factory _$PayMethodItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$PayMethodItemImplFromJson(json);

  @override
  @JsonKey(name: "name")
  final String name;
  @override
  @JsonKey(name: "uuid")
  final int uuid;

  @override
  String toString() {
    return 'PayMethodItem(name: $name, uuid: $uuid)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PayMethodItemImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.uuid, uuid) || other.uuid == uuid));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, uuid);

  /// Create a copy of PayMethodItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PayMethodItemImplCopyWith<_$PayMethodItemImpl> get copyWith =>
      __$$PayMethodItemImplCopyWithImpl<_$PayMethodItemImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PayMethodItemImplToJson(
      this,
    );
  }
}

abstract class _PayMethodItem implements PayMethodItem {
  const factory _PayMethodItem(
      {@JsonKey(name: "name") required final String name,
      @JsonKey(name: "uuid") required final int uuid}) = _$PayMethodItemImpl;

  factory _PayMethodItem.fromJson(Map<String, dynamic> json) =
      _$PayMethodItemImpl.fromJson;

  @override
  @JsonKey(name: "name")
  String get name;
  @override
  @JsonKey(name: "uuid")
  int get uuid;

  /// Create a copy of PayMethodItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PayMethodItemImplCopyWith<_$PayMethodItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

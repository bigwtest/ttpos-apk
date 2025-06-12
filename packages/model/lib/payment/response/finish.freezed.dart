// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'finish.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PaymentFinish _$PaymentFinishFromJson(Map<String, dynamic> json) {
  return _PaymentFinish.fromJson(json);
}

/// @nodoc
mixin _$PaymentFinish {
  @JsonKey(name: "amount_info")
  PaymentFinishAmountInfo get amountInfo => throw _privateConstructorUsedError;
  @JsonKey(name: "pay_methods")
  BaseList<PaymentFinishPayMethod> get payMethods =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "sale_bill_uuid")
  int get saleBillUuid => throw _privateConstructorUsedError;
  @JsonKey(name: "sale_order_uuid")
  int get saleOrderUuid => throw _privateConstructorUsedError;

  /// Serializes this PaymentFinish to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PaymentFinish
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PaymentFinishCopyWith<PaymentFinish> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentFinishCopyWith<$Res> {
  factory $PaymentFinishCopyWith(
          PaymentFinish value, $Res Function(PaymentFinish) then) =
      _$PaymentFinishCopyWithImpl<$Res, PaymentFinish>;
  @useResult
  $Res call(
      {@JsonKey(name: "amount_info") PaymentFinishAmountInfo amountInfo,
      @JsonKey(name: "pay_methods") BaseList<PaymentFinishPayMethod> payMethods,
      @JsonKey(name: "sale_bill_uuid") int saleBillUuid,
      @JsonKey(name: "sale_order_uuid") int saleOrderUuid});

  $PaymentFinishAmountInfoCopyWith<$Res> get amountInfo;
  $BaseListCopyWith<PaymentFinishPayMethod, $Res> get payMethods;
}

/// @nodoc
class _$PaymentFinishCopyWithImpl<$Res, $Val extends PaymentFinish>
    implements $PaymentFinishCopyWith<$Res> {
  _$PaymentFinishCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PaymentFinish
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
              as PaymentFinishAmountInfo,
      payMethods: null == payMethods
          ? _value.payMethods
          : payMethods // ignore: cast_nullable_to_non_nullable
              as BaseList<PaymentFinishPayMethod>,
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

  /// Create a copy of PaymentFinish
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PaymentFinishAmountInfoCopyWith<$Res> get amountInfo {
    return $PaymentFinishAmountInfoCopyWith<$Res>(_value.amountInfo, (value) {
      return _then(_value.copyWith(amountInfo: value) as $Val);
    });
  }

  /// Create a copy of PaymentFinish
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BaseListCopyWith<PaymentFinishPayMethod, $Res> get payMethods {
    return $BaseListCopyWith<PaymentFinishPayMethod, $Res>(_value.payMethods,
        (value) {
      return _then(_value.copyWith(payMethods: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PaymentFinishImplCopyWith<$Res>
    implements $PaymentFinishCopyWith<$Res> {
  factory _$$PaymentFinishImplCopyWith(
          _$PaymentFinishImpl value, $Res Function(_$PaymentFinishImpl) then) =
      __$$PaymentFinishImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "amount_info") PaymentFinishAmountInfo amountInfo,
      @JsonKey(name: "pay_methods") BaseList<PaymentFinishPayMethod> payMethods,
      @JsonKey(name: "sale_bill_uuid") int saleBillUuid,
      @JsonKey(name: "sale_order_uuid") int saleOrderUuid});

  @override
  $PaymentFinishAmountInfoCopyWith<$Res> get amountInfo;
  @override
  $BaseListCopyWith<PaymentFinishPayMethod, $Res> get payMethods;
}

/// @nodoc
class __$$PaymentFinishImplCopyWithImpl<$Res>
    extends _$PaymentFinishCopyWithImpl<$Res, _$PaymentFinishImpl>
    implements _$$PaymentFinishImplCopyWith<$Res> {
  __$$PaymentFinishImplCopyWithImpl(
      _$PaymentFinishImpl _value, $Res Function(_$PaymentFinishImpl) _then)
      : super(_value, _then);

  /// Create a copy of PaymentFinish
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? amountInfo = null,
    Object? payMethods = null,
    Object? saleBillUuid = null,
    Object? saleOrderUuid = null,
  }) {
    return _then(_$PaymentFinishImpl(
      amountInfo: null == amountInfo
          ? _value.amountInfo
          : amountInfo // ignore: cast_nullable_to_non_nullable
              as PaymentFinishAmountInfo,
      payMethods: null == payMethods
          ? _value.payMethods
          : payMethods // ignore: cast_nullable_to_non_nullable
              as BaseList<PaymentFinishPayMethod>,
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
class _$PaymentFinishImpl implements _PaymentFinish {
  const _$PaymentFinishImpl(
      {@JsonKey(name: "amount_info") required this.amountInfo,
      @JsonKey(name: "pay_methods") required this.payMethods,
      @JsonKey(name: "sale_bill_uuid") required this.saleBillUuid,
      @JsonKey(name: "sale_order_uuid") required this.saleOrderUuid});

  factory _$PaymentFinishImpl.fromJson(Map<String, dynamic> json) =>
      _$$PaymentFinishImplFromJson(json);

  @override
  @JsonKey(name: "amount_info")
  final PaymentFinishAmountInfo amountInfo;
  @override
  @JsonKey(name: "pay_methods")
  final BaseList<PaymentFinishPayMethod> payMethods;
  @override
  @JsonKey(name: "sale_bill_uuid")
  final int saleBillUuid;
  @override
  @JsonKey(name: "sale_order_uuid")
  final int saleOrderUuid;

  @override
  String toString() {
    return 'PaymentFinish(amountInfo: $amountInfo, payMethods: $payMethods, saleBillUuid: $saleBillUuid, saleOrderUuid: $saleOrderUuid)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaymentFinishImpl &&
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

  /// Create a copy of PaymentFinish
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PaymentFinishImplCopyWith<_$PaymentFinishImpl> get copyWith =>
      __$$PaymentFinishImplCopyWithImpl<_$PaymentFinishImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PaymentFinishImplToJson(
      this,
    );
  }
}

abstract class _PaymentFinish implements PaymentFinish {
  const factory _PaymentFinish(
          {@JsonKey(name: "amount_info")
          required final PaymentFinishAmountInfo amountInfo,
          @JsonKey(name: "pay_methods")
          required final BaseList<PaymentFinishPayMethod> payMethods,
          @JsonKey(name: "sale_bill_uuid") required final int saleBillUuid,
          @JsonKey(name: "sale_order_uuid") required final int saleOrderUuid}) =
      _$PaymentFinishImpl;

  factory _PaymentFinish.fromJson(Map<String, dynamic> json) =
      _$PaymentFinishImpl.fromJson;

  @override
  @JsonKey(name: "amount_info")
  PaymentFinishAmountInfo get amountInfo;
  @override
  @JsonKey(name: "pay_methods")
  BaseList<PaymentFinishPayMethod> get payMethods;
  @override
  @JsonKey(name: "sale_bill_uuid")
  int get saleBillUuid;
  @override
  @JsonKey(name: "sale_order_uuid")
  int get saleOrderUuid;

  /// Create a copy of PaymentFinish
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PaymentFinishImplCopyWith<_$PaymentFinishImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PaymentFinishAmountInfo _$PaymentFinishAmountInfoFromJson(
    Map<String, dynamic> json) {
  return _PaymentFinishAmountInfo.fromJson(json);
}

/// @nodoc
mixin _$PaymentFinishAmountInfo {
  @JsonKey(name: "change_amount")
  SafetyNumber get changeAmount => throw _privateConstructorUsedError;
  @JsonKey(name: "order_amount")
  SafetyNumber get orderAmount => throw _privateConstructorUsedError;
  @JsonKey(name: "pay_amount")
  SafetyNumber get payAmount => throw _privateConstructorUsedError;

  /// Serializes this PaymentFinishAmountInfo to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PaymentFinishAmountInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PaymentFinishAmountInfoCopyWith<PaymentFinishAmountInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentFinishAmountInfoCopyWith<$Res> {
  factory $PaymentFinishAmountInfoCopyWith(PaymentFinishAmountInfo value,
          $Res Function(PaymentFinishAmountInfo) then) =
      _$PaymentFinishAmountInfoCopyWithImpl<$Res, PaymentFinishAmountInfo>;
  @useResult
  $Res call(
      {@JsonKey(name: "change_amount") SafetyNumber changeAmount,
      @JsonKey(name: "order_amount") SafetyNumber orderAmount,
      @JsonKey(name: "pay_amount") SafetyNumber payAmount});

  $SafetyNumberCopyWith<$Res> get changeAmount;
  $SafetyNumberCopyWith<$Res> get orderAmount;
  $SafetyNumberCopyWith<$Res> get payAmount;
}

/// @nodoc
class _$PaymentFinishAmountInfoCopyWithImpl<$Res,
        $Val extends PaymentFinishAmountInfo>
    implements $PaymentFinishAmountInfoCopyWith<$Res> {
  _$PaymentFinishAmountInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PaymentFinishAmountInfo
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
              as SafetyNumber,
      orderAmount: null == orderAmount
          ? _value.orderAmount
          : orderAmount // ignore: cast_nullable_to_non_nullable
              as SafetyNumber,
      payAmount: null == payAmount
          ? _value.payAmount
          : payAmount // ignore: cast_nullable_to_non_nullable
              as SafetyNumber,
    ) as $Val);
  }

  /// Create a copy of PaymentFinishAmountInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SafetyNumberCopyWith<$Res> get changeAmount {
    return $SafetyNumberCopyWith<$Res>(_value.changeAmount, (value) {
      return _then(_value.copyWith(changeAmount: value) as $Val);
    });
  }

  /// Create a copy of PaymentFinishAmountInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SafetyNumberCopyWith<$Res> get orderAmount {
    return $SafetyNumberCopyWith<$Res>(_value.orderAmount, (value) {
      return _then(_value.copyWith(orderAmount: value) as $Val);
    });
  }

  /// Create a copy of PaymentFinishAmountInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SafetyNumberCopyWith<$Res> get payAmount {
    return $SafetyNumberCopyWith<$Res>(_value.payAmount, (value) {
      return _then(_value.copyWith(payAmount: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PaymentFinishAmountInfoImplCopyWith<$Res>
    implements $PaymentFinishAmountInfoCopyWith<$Res> {
  factory _$$PaymentFinishAmountInfoImplCopyWith(
          _$PaymentFinishAmountInfoImpl value,
          $Res Function(_$PaymentFinishAmountInfoImpl) then) =
      __$$PaymentFinishAmountInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "change_amount") SafetyNumber changeAmount,
      @JsonKey(name: "order_amount") SafetyNumber orderAmount,
      @JsonKey(name: "pay_amount") SafetyNumber payAmount});

  @override
  $SafetyNumberCopyWith<$Res> get changeAmount;
  @override
  $SafetyNumberCopyWith<$Res> get orderAmount;
  @override
  $SafetyNumberCopyWith<$Res> get payAmount;
}

/// @nodoc
class __$$PaymentFinishAmountInfoImplCopyWithImpl<$Res>
    extends _$PaymentFinishAmountInfoCopyWithImpl<$Res,
        _$PaymentFinishAmountInfoImpl>
    implements _$$PaymentFinishAmountInfoImplCopyWith<$Res> {
  __$$PaymentFinishAmountInfoImplCopyWithImpl(
      _$PaymentFinishAmountInfoImpl _value,
      $Res Function(_$PaymentFinishAmountInfoImpl) _then)
      : super(_value, _then);

  /// Create a copy of PaymentFinishAmountInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? changeAmount = null,
    Object? orderAmount = null,
    Object? payAmount = null,
  }) {
    return _then(_$PaymentFinishAmountInfoImpl(
      changeAmount: null == changeAmount
          ? _value.changeAmount
          : changeAmount // ignore: cast_nullable_to_non_nullable
              as SafetyNumber,
      orderAmount: null == orderAmount
          ? _value.orderAmount
          : orderAmount // ignore: cast_nullable_to_non_nullable
              as SafetyNumber,
      payAmount: null == payAmount
          ? _value.payAmount
          : payAmount // ignore: cast_nullable_to_non_nullable
              as SafetyNumber,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PaymentFinishAmountInfoImpl implements _PaymentFinishAmountInfo {
  const _$PaymentFinishAmountInfoImpl(
      {@JsonKey(name: "change_amount") required this.changeAmount,
      @JsonKey(name: "order_amount") required this.orderAmount,
      @JsonKey(name: "pay_amount") required this.payAmount});

  factory _$PaymentFinishAmountInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$PaymentFinishAmountInfoImplFromJson(json);

  @override
  @JsonKey(name: "change_amount")
  final SafetyNumber changeAmount;
  @override
  @JsonKey(name: "order_amount")
  final SafetyNumber orderAmount;
  @override
  @JsonKey(name: "pay_amount")
  final SafetyNumber payAmount;

  @override
  String toString() {
    return 'PaymentFinishAmountInfo(changeAmount: $changeAmount, orderAmount: $orderAmount, payAmount: $payAmount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaymentFinishAmountInfoImpl &&
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

  /// Create a copy of PaymentFinishAmountInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PaymentFinishAmountInfoImplCopyWith<_$PaymentFinishAmountInfoImpl>
      get copyWith => __$$PaymentFinishAmountInfoImplCopyWithImpl<
          _$PaymentFinishAmountInfoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PaymentFinishAmountInfoImplToJson(
      this,
    );
  }
}

abstract class _PaymentFinishAmountInfo implements PaymentFinishAmountInfo {
  const factory _PaymentFinishAmountInfo(
      {@JsonKey(name: "change_amount") required final SafetyNumber changeAmount,
      @JsonKey(name: "order_amount") required final SafetyNumber orderAmount,
      @JsonKey(name: "pay_amount")
      required final SafetyNumber payAmount}) = _$PaymentFinishAmountInfoImpl;

  factory _PaymentFinishAmountInfo.fromJson(Map<String, dynamic> json) =
      _$PaymentFinishAmountInfoImpl.fromJson;

  @override
  @JsonKey(name: "change_amount")
  SafetyNumber get changeAmount;
  @override
  @JsonKey(name: "order_amount")
  SafetyNumber get orderAmount;
  @override
  @JsonKey(name: "pay_amount")
  SafetyNumber get payAmount;

  /// Create a copy of PaymentFinishAmountInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PaymentFinishAmountInfoImplCopyWith<_$PaymentFinishAmountInfoImpl>
      get copyWith => throw _privateConstructorUsedError;
}

PaymentFinishPayMethod _$PaymentFinishPayMethodFromJson(
    Map<String, dynamic> json) {
  return _PaymentFinishPayMethod.fromJson(json);
}

/// @nodoc
mixin _$PaymentFinishPayMethod {
  @JsonKey(name: "name")
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: "uuid")
  int get uuid => throw _privateConstructorUsedError;

  /// Serializes this PaymentFinishPayMethod to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PaymentFinishPayMethod
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PaymentFinishPayMethodCopyWith<PaymentFinishPayMethod> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentFinishPayMethodCopyWith<$Res> {
  factory $PaymentFinishPayMethodCopyWith(PaymentFinishPayMethod value,
          $Res Function(PaymentFinishPayMethod) then) =
      _$PaymentFinishPayMethodCopyWithImpl<$Res, PaymentFinishPayMethod>;
  @useResult
  $Res call(
      {@JsonKey(name: "name") String name, @JsonKey(name: "uuid") int uuid});
}

/// @nodoc
class _$PaymentFinishPayMethodCopyWithImpl<$Res,
        $Val extends PaymentFinishPayMethod>
    implements $PaymentFinishPayMethodCopyWith<$Res> {
  _$PaymentFinishPayMethodCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PaymentFinishPayMethod
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
abstract class _$$PaymentFinishPayMethodImplCopyWith<$Res>
    implements $PaymentFinishPayMethodCopyWith<$Res> {
  factory _$$PaymentFinishPayMethodImplCopyWith(
          _$PaymentFinishPayMethodImpl value,
          $Res Function(_$PaymentFinishPayMethodImpl) then) =
      __$$PaymentFinishPayMethodImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "name") String name, @JsonKey(name: "uuid") int uuid});
}

/// @nodoc
class __$$PaymentFinishPayMethodImplCopyWithImpl<$Res>
    extends _$PaymentFinishPayMethodCopyWithImpl<$Res,
        _$PaymentFinishPayMethodImpl>
    implements _$$PaymentFinishPayMethodImplCopyWith<$Res> {
  __$$PaymentFinishPayMethodImplCopyWithImpl(
      _$PaymentFinishPayMethodImpl _value,
      $Res Function(_$PaymentFinishPayMethodImpl) _then)
      : super(_value, _then);

  /// Create a copy of PaymentFinishPayMethod
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? uuid = null,
  }) {
    return _then(_$PaymentFinishPayMethodImpl(
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
class _$PaymentFinishPayMethodImpl implements _PaymentFinishPayMethod {
  const _$PaymentFinishPayMethodImpl(
      {@JsonKey(name: "name") required this.name,
      @JsonKey(name: "uuid") required this.uuid});

  factory _$PaymentFinishPayMethodImpl.fromJson(Map<String, dynamic> json) =>
      _$$PaymentFinishPayMethodImplFromJson(json);

  @override
  @JsonKey(name: "name")
  final String name;
  @override
  @JsonKey(name: "uuid")
  final int uuid;

  @override
  String toString() {
    return 'PaymentFinishPayMethod(name: $name, uuid: $uuid)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaymentFinishPayMethodImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.uuid, uuid) || other.uuid == uuid));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, uuid);

  /// Create a copy of PaymentFinishPayMethod
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PaymentFinishPayMethodImplCopyWith<_$PaymentFinishPayMethodImpl>
      get copyWith => __$$PaymentFinishPayMethodImplCopyWithImpl<
          _$PaymentFinishPayMethodImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PaymentFinishPayMethodImplToJson(
      this,
    );
  }
}

abstract class _PaymentFinishPayMethod implements PaymentFinishPayMethod {
  const factory _PaymentFinishPayMethod(
          {@JsonKey(name: "name") required final String name,
          @JsonKey(name: "uuid") required final int uuid}) =
      _$PaymentFinishPayMethodImpl;

  factory _PaymentFinishPayMethod.fromJson(Map<String, dynamic> json) =
      _$PaymentFinishPayMethodImpl.fromJson;

  @override
  @JsonKey(name: "name")
  String get name;
  @override
  @JsonKey(name: "uuid")
  int get uuid;

  /// Create a copy of PaymentFinishPayMethod
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PaymentFinishPayMethodImplCopyWith<_$PaymentFinishPayMethodImpl>
      get copyWith => throw _privateConstructorUsedError;
}

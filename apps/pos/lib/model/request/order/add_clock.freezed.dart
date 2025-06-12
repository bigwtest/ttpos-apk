// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_clock.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RequestOrderAddClock _$RequestOrderAddClockFromJson(Map<String, dynamic> json) {
  return _RequestOrderAddClock.fromJson(json);
}

/// @nodoc
mixin _$RequestOrderAddClock {
// 销售单UUID
  @JsonKey(name: 'sale_bill_uuid')
  int get saleBillUuid => throw _privateConstructorUsedError; // 销售单UUID
  @JsonKey(name: 'sale_bill_uuid')
  set saleBillUuid(int value) => throw _privateConstructorUsedError; // 销售订单UUID
  @JsonKey(name: 'sale_order_uuid')
  int get saleOrderUuid => throw _privateConstructorUsedError; // 销售订单UUID
  @JsonKey(name: 'sale_order_uuid')
  set saleOrderUuid(int value) =>
      throw _privateConstructorUsedError; // 延迟UUID列表
  @JsonKey(name: 'delay_uuids')
  List<int> get delayUuids => throw _privateConstructorUsedError; // 延迟UUID列表
  @JsonKey(name: 'delay_uuids')
  set delayUuids(List<int> value) => throw _privateConstructorUsedError;

  /// Serializes this RequestOrderAddClock to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RequestOrderAddClock
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RequestOrderAddClockCopyWith<RequestOrderAddClock> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RequestOrderAddClockCopyWith<$Res> {
  factory $RequestOrderAddClockCopyWith(RequestOrderAddClock value,
          $Res Function(RequestOrderAddClock) then) =
      _$RequestOrderAddClockCopyWithImpl<$Res, RequestOrderAddClock>;
  @useResult
  $Res call(
      {@JsonKey(name: 'sale_bill_uuid') int saleBillUuid,
      @JsonKey(name: 'sale_order_uuid') int saleOrderUuid,
      @JsonKey(name: 'delay_uuids') List<int> delayUuids});
}

/// @nodoc
class _$RequestOrderAddClockCopyWithImpl<$Res,
        $Val extends RequestOrderAddClock>
    implements $RequestOrderAddClockCopyWith<$Res> {
  _$RequestOrderAddClockCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RequestOrderAddClock
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? saleBillUuid = null,
    Object? saleOrderUuid = null,
    Object? delayUuids = null,
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
      delayUuids: null == delayUuids
          ? _value.delayUuids
          : delayUuids // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RequestOrderAddClockImplCopyWith<$Res>
    implements $RequestOrderAddClockCopyWith<$Res> {
  factory _$$RequestOrderAddClockImplCopyWith(_$RequestOrderAddClockImpl value,
          $Res Function(_$RequestOrderAddClockImpl) then) =
      __$$RequestOrderAddClockImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'sale_bill_uuid') int saleBillUuid,
      @JsonKey(name: 'sale_order_uuid') int saleOrderUuid,
      @JsonKey(name: 'delay_uuids') List<int> delayUuids});
}

/// @nodoc
class __$$RequestOrderAddClockImplCopyWithImpl<$Res>
    extends _$RequestOrderAddClockCopyWithImpl<$Res, _$RequestOrderAddClockImpl>
    implements _$$RequestOrderAddClockImplCopyWith<$Res> {
  __$$RequestOrderAddClockImplCopyWithImpl(_$RequestOrderAddClockImpl _value,
      $Res Function(_$RequestOrderAddClockImpl) _then)
      : super(_value, _then);

  /// Create a copy of RequestOrderAddClock
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? saleBillUuid = null,
    Object? saleOrderUuid = null,
    Object? delayUuids = null,
  }) {
    return _then(_$RequestOrderAddClockImpl(
      saleBillUuid: null == saleBillUuid
          ? _value.saleBillUuid
          : saleBillUuid // ignore: cast_nullable_to_non_nullable
              as int,
      saleOrderUuid: null == saleOrderUuid
          ? _value.saleOrderUuid
          : saleOrderUuid // ignore: cast_nullable_to_non_nullable
              as int,
      delayUuids: null == delayUuids
          ? _value.delayUuids
          : delayUuids // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RequestOrderAddClockImpl implements _RequestOrderAddClock {
  _$RequestOrderAddClockImpl(
      {@JsonKey(name: 'sale_bill_uuid') required this.saleBillUuid,
      @JsonKey(name: 'sale_order_uuid') required this.saleOrderUuid,
      @JsonKey(name: 'delay_uuids') required this.delayUuids});

  factory _$RequestOrderAddClockImpl.fromJson(Map<String, dynamic> json) =>
      _$$RequestOrderAddClockImplFromJson(json);

// 销售单UUID
  @override
  @JsonKey(name: 'sale_bill_uuid')
  int saleBillUuid;
// 销售订单UUID
  @override
  @JsonKey(name: 'sale_order_uuid')
  int saleOrderUuid;
// 延迟UUID列表
  @override
  @JsonKey(name: 'delay_uuids')
  List<int> delayUuids;

  @override
  String toString() {
    return 'RequestOrderAddClock(saleBillUuid: $saleBillUuid, saleOrderUuid: $saleOrderUuid, delayUuids: $delayUuids)';
  }

  /// Create a copy of RequestOrderAddClock
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RequestOrderAddClockImplCopyWith<_$RequestOrderAddClockImpl>
      get copyWith =>
          __$$RequestOrderAddClockImplCopyWithImpl<_$RequestOrderAddClockImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RequestOrderAddClockImplToJson(
      this,
    );
  }
}

abstract class _RequestOrderAddClock implements RequestOrderAddClock {
  factory _RequestOrderAddClock(
          {@JsonKey(name: 'sale_bill_uuid') required int saleBillUuid,
          @JsonKey(name: 'sale_order_uuid') required int saleOrderUuid,
          @JsonKey(name: 'delay_uuids') required List<int> delayUuids}) =
      _$RequestOrderAddClockImpl;

  factory _RequestOrderAddClock.fromJson(Map<String, dynamic> json) =
      _$RequestOrderAddClockImpl.fromJson;

// 销售单UUID
  @override
  @JsonKey(name: 'sale_bill_uuid')
  int get saleBillUuid; // 销售单UUID
  @JsonKey(name: 'sale_bill_uuid')
  set saleBillUuid(int value); // 销售订单UUID
  @override
  @JsonKey(name: 'sale_order_uuid')
  int get saleOrderUuid; // 销售订单UUID
  @JsonKey(name: 'sale_order_uuid')
  set saleOrderUuid(int value); // 延迟UUID列表
  @override
  @JsonKey(name: 'delay_uuids')
  List<int> get delayUuids; // 延迟UUID列表
  @JsonKey(name: 'delay_uuids')
  set delayUuids(List<int> value);

  /// Create a copy of RequestOrderAddClock
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RequestOrderAddClockImplCopyWith<_$RequestOrderAddClockImpl>
      get copyWith => throw _privateConstructorUsedError;
}

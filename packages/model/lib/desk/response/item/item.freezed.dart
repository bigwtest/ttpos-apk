// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Desk _$DeskFromJson(Map<String, dynamic> json) {
  return _Desk.fromJson(json);
}

/// @nodoc
mixin _$Desk {
  @JsonKey(name: "uuid")
  int get uuid => throw _privateConstructorUsedError;
  @JsonKey(name: "uuid")
  set uuid(int value) => throw _privateConstructorUsedError;
  @JsonKey(name: "desk_no")
  String get deskNo => throw _privateConstructorUsedError;
  @JsonKey(name: "desk_no")
  set deskNo(String value) => throw _privateConstructorUsedError;
  @JsonKey(name: "customer_count")
  int get customerCount => throw _privateConstructorUsedError;
  @JsonKey(name: "customer_count")
  set customerCount(int value) => throw _privateConstructorUsedError;
  @JsonKey(name: "status")
  int get status => throw _privateConstructorUsedError;
  @JsonKey(name: "status")
  set status(int value) => throw _privateConstructorUsedError;
  @JsonKey(name: "is_lock")
  bool get isLock => throw _privateConstructorUsedError;
  @JsonKey(name: "is_lock")
  set isLock(bool value) => throw _privateConstructorUsedError;
  @JsonKey(name: "is_buffet")
  bool get isBuffet => throw _privateConstructorUsedError;
  @JsonKey(name: "is_buffet")
  set isBuffet(bool value) => throw _privateConstructorUsedError;
  @JsonKey(name: "is_wait")
  bool get isWait => throw _privateConstructorUsedError;
  @JsonKey(name: "is_wait")
  set isWait(bool value) => throw _privateConstructorUsedError;
  @JsonKey(name: "time")
  int get time => throw _privateConstructorUsedError;
  @JsonKey(name: "time")
  set time(int value) => throw _privateConstructorUsedError;
  @JsonKey(name: "lock_time")
  int? get lockTime => throw _privateConstructorUsedError;
  @JsonKey(name: "lock_time")
  set lockTime(int? value) => throw _privateConstructorUsedError;
  @JsonKey(name: "price")
  SafetyNumber get price => throw _privateConstructorUsedError;
  @JsonKey(name: "price")
  set price(SafetyNumber value) => throw _privateConstructorUsedError;
  @JsonKey(name: "remark")
  String get remark => throw _privateConstructorUsedError;
  @JsonKey(name: "remark")
  set remark(String value) => throw _privateConstructorUsedError;
  @JsonKey(name: "region_uuid")
  int get regionUuid => throw _privateConstructorUsedError;
  @JsonKey(name: "region_uuid")
  set regionUuid(int value) => throw _privateConstructorUsedError;
  @JsonKey(name: "type_uuid")
  int get typeUuid => throw _privateConstructorUsedError;
  @JsonKey(name: "type_uuid")
  set typeUuid(int value) =>
      throw _privateConstructorUsedError; // NOTE: 详情接口和列表接口其实就这一个字段的差异
  @JsonKey(name: "sale_bill_uuid")
  int? get saleBillUuid =>
      throw _privateConstructorUsedError; // NOTE: 详情接口和列表接口其实就这一个字段的差异
  @JsonKey(name: "sale_bill_uuid")
  set saleBillUuid(int? value) => throw _privateConstructorUsedError; // 是否拆单
  @JsonKey(name: "is_split_order")
  bool? get isSplitOrder => throw _privateConstructorUsedError; // 是否拆单
  @JsonKey(name: "is_split_order")
  set isSplitOrder(bool? value) =>
      throw _privateConstructorUsedError; // 销售订单ID。可选，参数不填时默认加购到第一个销售订单中
  @JsonKey(name: 'sale_order_uuid')
  int? get saleOrderUuid =>
      throw _privateConstructorUsedError; // 销售订单ID。可选，参数不填时默认加购到第一个销售订单中
  @JsonKey(name: 'sale_order_uuid')
  set saleOrderUuid(int? value) => throw _privateConstructorUsedError;

  /// NOTE: 更新时间
  @JsonKey(name: "update_time")
  int? get updateTime => throw _privateConstructorUsedError;

  /// NOTE: 更新时间
  @JsonKey(name: "update_time")
  set updateTime(int? value) => throw _privateConstructorUsedError;

  /// NOTE: 2.1 新增字段
  @JsonKey(name: "is_open_default_people_num")
  bool? get isOpenDefaultPeopleNum => throw _privateConstructorUsedError;

  /// NOTE: 2.1 新增字段
  @JsonKey(name: "is_open_default_people_num")
  set isOpenDefaultPeopleNum(bool? value) => throw _privateConstructorUsedError;
  @JsonKey(name: "default_people_num")
  int? get defaultPeopleNum => throw _privateConstructorUsedError;
  @JsonKey(name: "default_people_num")
  set defaultPeopleNum(int? value) => throw _privateConstructorUsedError;

  /// Serializes this Desk to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Desk
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DeskCopyWith<Desk> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeskCopyWith<$Res> {
  factory $DeskCopyWith(Desk value, $Res Function(Desk) then) =
      _$DeskCopyWithImpl<$Res, Desk>;
  @useResult
  $Res call(
      {@JsonKey(name: "uuid") int uuid,
      @JsonKey(name: "desk_no") String deskNo,
      @JsonKey(name: "customer_count") int customerCount,
      @JsonKey(name: "status") int status,
      @JsonKey(name: "is_lock") bool isLock,
      @JsonKey(name: "is_buffet") bool isBuffet,
      @JsonKey(name: "is_wait") bool isWait,
      @JsonKey(name: "time") int time,
      @JsonKey(name: "lock_time") int? lockTime,
      @JsonKey(name: "price") SafetyNumber price,
      @JsonKey(name: "remark") String remark,
      @JsonKey(name: "region_uuid") int regionUuid,
      @JsonKey(name: "type_uuid") int typeUuid,
      @JsonKey(name: "sale_bill_uuid") int? saleBillUuid,
      @JsonKey(name: "is_split_order") bool? isSplitOrder,
      @JsonKey(name: 'sale_order_uuid') int? saleOrderUuid,
      @JsonKey(name: "update_time") int? updateTime,
      @JsonKey(name: "is_open_default_people_num") bool? isOpenDefaultPeopleNum,
      @JsonKey(name: "default_people_num") int? defaultPeopleNum});

  $SafetyNumberCopyWith<$Res> get price;
}

/// @nodoc
class _$DeskCopyWithImpl<$Res, $Val extends Desk>
    implements $DeskCopyWith<$Res> {
  _$DeskCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Desk
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uuid = null,
    Object? deskNo = null,
    Object? customerCount = null,
    Object? status = null,
    Object? isLock = null,
    Object? isBuffet = null,
    Object? isWait = null,
    Object? time = null,
    Object? lockTime = freezed,
    Object? price = null,
    Object? remark = null,
    Object? regionUuid = null,
    Object? typeUuid = null,
    Object? saleBillUuid = freezed,
    Object? isSplitOrder = freezed,
    Object? saleOrderUuid = freezed,
    Object? updateTime = freezed,
    Object? isOpenDefaultPeopleNum = freezed,
    Object? defaultPeopleNum = freezed,
  }) {
    return _then(_value.copyWith(
      uuid: null == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as int,
      deskNo: null == deskNo
          ? _value.deskNo
          : deskNo // ignore: cast_nullable_to_non_nullable
              as String,
      customerCount: null == customerCount
          ? _value.customerCount
          : customerCount // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
      isLock: null == isLock
          ? _value.isLock
          : isLock // ignore: cast_nullable_to_non_nullable
              as bool,
      isBuffet: null == isBuffet
          ? _value.isBuffet
          : isBuffet // ignore: cast_nullable_to_non_nullable
              as bool,
      isWait: null == isWait
          ? _value.isWait
          : isWait // ignore: cast_nullable_to_non_nullable
              as bool,
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as int,
      lockTime: freezed == lockTime
          ? _value.lockTime
          : lockTime // ignore: cast_nullable_to_non_nullable
              as int?,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as SafetyNumber,
      remark: null == remark
          ? _value.remark
          : remark // ignore: cast_nullable_to_non_nullable
              as String,
      regionUuid: null == regionUuid
          ? _value.regionUuid
          : regionUuid // ignore: cast_nullable_to_non_nullable
              as int,
      typeUuid: null == typeUuid
          ? _value.typeUuid
          : typeUuid // ignore: cast_nullable_to_non_nullable
              as int,
      saleBillUuid: freezed == saleBillUuid
          ? _value.saleBillUuid
          : saleBillUuid // ignore: cast_nullable_to_non_nullable
              as int?,
      isSplitOrder: freezed == isSplitOrder
          ? _value.isSplitOrder
          : isSplitOrder // ignore: cast_nullable_to_non_nullable
              as bool?,
      saleOrderUuid: freezed == saleOrderUuid
          ? _value.saleOrderUuid
          : saleOrderUuid // ignore: cast_nullable_to_non_nullable
              as int?,
      updateTime: freezed == updateTime
          ? _value.updateTime
          : updateTime // ignore: cast_nullable_to_non_nullable
              as int?,
      isOpenDefaultPeopleNum: freezed == isOpenDefaultPeopleNum
          ? _value.isOpenDefaultPeopleNum
          : isOpenDefaultPeopleNum // ignore: cast_nullable_to_non_nullable
              as bool?,
      defaultPeopleNum: freezed == defaultPeopleNum
          ? _value.defaultPeopleNum
          : defaultPeopleNum // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }

  /// Create a copy of Desk
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SafetyNumberCopyWith<$Res> get price {
    return $SafetyNumberCopyWith<$Res>(_value.price, (value) {
      return _then(_value.copyWith(price: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DeskImplCopyWith<$Res> implements $DeskCopyWith<$Res> {
  factory _$$DeskImplCopyWith(
          _$DeskImpl value, $Res Function(_$DeskImpl) then) =
      __$$DeskImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "uuid") int uuid,
      @JsonKey(name: "desk_no") String deskNo,
      @JsonKey(name: "customer_count") int customerCount,
      @JsonKey(name: "status") int status,
      @JsonKey(name: "is_lock") bool isLock,
      @JsonKey(name: "is_buffet") bool isBuffet,
      @JsonKey(name: "is_wait") bool isWait,
      @JsonKey(name: "time") int time,
      @JsonKey(name: "lock_time") int? lockTime,
      @JsonKey(name: "price") SafetyNumber price,
      @JsonKey(name: "remark") String remark,
      @JsonKey(name: "region_uuid") int regionUuid,
      @JsonKey(name: "type_uuid") int typeUuid,
      @JsonKey(name: "sale_bill_uuid") int? saleBillUuid,
      @JsonKey(name: "is_split_order") bool? isSplitOrder,
      @JsonKey(name: 'sale_order_uuid') int? saleOrderUuid,
      @JsonKey(name: "update_time") int? updateTime,
      @JsonKey(name: "is_open_default_people_num") bool? isOpenDefaultPeopleNum,
      @JsonKey(name: "default_people_num") int? defaultPeopleNum});

  @override
  $SafetyNumberCopyWith<$Res> get price;
}

/// @nodoc
class __$$DeskImplCopyWithImpl<$Res>
    extends _$DeskCopyWithImpl<$Res, _$DeskImpl>
    implements _$$DeskImplCopyWith<$Res> {
  __$$DeskImplCopyWithImpl(_$DeskImpl _value, $Res Function(_$DeskImpl) _then)
      : super(_value, _then);

  /// Create a copy of Desk
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uuid = null,
    Object? deskNo = null,
    Object? customerCount = null,
    Object? status = null,
    Object? isLock = null,
    Object? isBuffet = null,
    Object? isWait = null,
    Object? time = null,
    Object? lockTime = freezed,
    Object? price = null,
    Object? remark = null,
    Object? regionUuid = null,
    Object? typeUuid = null,
    Object? saleBillUuid = freezed,
    Object? isSplitOrder = freezed,
    Object? saleOrderUuid = freezed,
    Object? updateTime = freezed,
    Object? isOpenDefaultPeopleNum = freezed,
    Object? defaultPeopleNum = freezed,
  }) {
    return _then(_$DeskImpl(
      uuid: null == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as int,
      deskNo: null == deskNo
          ? _value.deskNo
          : deskNo // ignore: cast_nullable_to_non_nullable
              as String,
      customerCount: null == customerCount
          ? _value.customerCount
          : customerCount // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
      isLock: null == isLock
          ? _value.isLock
          : isLock // ignore: cast_nullable_to_non_nullable
              as bool,
      isBuffet: null == isBuffet
          ? _value.isBuffet
          : isBuffet // ignore: cast_nullable_to_non_nullable
              as bool,
      isWait: null == isWait
          ? _value.isWait
          : isWait // ignore: cast_nullable_to_non_nullable
              as bool,
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as int,
      lockTime: freezed == lockTime
          ? _value.lockTime
          : lockTime // ignore: cast_nullable_to_non_nullable
              as int?,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as SafetyNumber,
      remark: null == remark
          ? _value.remark
          : remark // ignore: cast_nullable_to_non_nullable
              as String,
      regionUuid: null == regionUuid
          ? _value.regionUuid
          : regionUuid // ignore: cast_nullable_to_non_nullable
              as int,
      typeUuid: null == typeUuid
          ? _value.typeUuid
          : typeUuid // ignore: cast_nullable_to_non_nullable
              as int,
      saleBillUuid: freezed == saleBillUuid
          ? _value.saleBillUuid
          : saleBillUuid // ignore: cast_nullable_to_non_nullable
              as int?,
      isSplitOrder: freezed == isSplitOrder
          ? _value.isSplitOrder
          : isSplitOrder // ignore: cast_nullable_to_non_nullable
              as bool?,
      saleOrderUuid: freezed == saleOrderUuid
          ? _value.saleOrderUuid
          : saleOrderUuid // ignore: cast_nullable_to_non_nullable
              as int?,
      updateTime: freezed == updateTime
          ? _value.updateTime
          : updateTime // ignore: cast_nullable_to_non_nullable
              as int?,
      isOpenDefaultPeopleNum: freezed == isOpenDefaultPeopleNum
          ? _value.isOpenDefaultPeopleNum
          : isOpenDefaultPeopleNum // ignore: cast_nullable_to_non_nullable
              as bool?,
      defaultPeopleNum: freezed == defaultPeopleNum
          ? _value.defaultPeopleNum
          : defaultPeopleNum // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DeskImpl implements _Desk {
  _$DeskImpl(
      {@JsonKey(name: "uuid") required this.uuid,
      @JsonKey(name: "desk_no") required this.deskNo,
      @JsonKey(name: "customer_count") required this.customerCount,
      @JsonKey(name: "status") required this.status,
      @JsonKey(name: "is_lock") required this.isLock,
      @JsonKey(name: "is_buffet") required this.isBuffet,
      @JsonKey(name: "is_wait") required this.isWait,
      @JsonKey(name: "time") required this.time,
      @JsonKey(name: "lock_time") this.lockTime,
      @JsonKey(name: "price") required this.price,
      @JsonKey(name: "remark") required this.remark,
      @JsonKey(name: "region_uuid") required this.regionUuid,
      @JsonKey(name: "type_uuid") required this.typeUuid,
      @JsonKey(name: "sale_bill_uuid") this.saleBillUuid,
      @JsonKey(name: "is_split_order") this.isSplitOrder,
      @JsonKey(name: 'sale_order_uuid') this.saleOrderUuid,
      @JsonKey(name: "update_time") this.updateTime = 0,
      @JsonKey(name: "is_open_default_people_num")
      this.isOpenDefaultPeopleNum = false,
      @JsonKey(name: "default_people_num") this.defaultPeopleNum = 0});

  factory _$DeskImpl.fromJson(Map<String, dynamic> json) =>
      _$$DeskImplFromJson(json);

  @override
  @JsonKey(name: "uuid")
  int uuid;
  @override
  @JsonKey(name: "desk_no")
  String deskNo;
  @override
  @JsonKey(name: "customer_count")
  int customerCount;
  @override
  @JsonKey(name: "status")
  int status;
  @override
  @JsonKey(name: "is_lock")
  bool isLock;
  @override
  @JsonKey(name: "is_buffet")
  bool isBuffet;
  @override
  @JsonKey(name: "is_wait")
  bool isWait;
  @override
  @JsonKey(name: "time")
  int time;
  @override
  @JsonKey(name: "lock_time")
  int? lockTime;
  @override
  @JsonKey(name: "price")
  SafetyNumber price;
  @override
  @JsonKey(name: "remark")
  String remark;
  @override
  @JsonKey(name: "region_uuid")
  int regionUuid;
  @override
  @JsonKey(name: "type_uuid")
  int typeUuid;
// NOTE: 详情接口和列表接口其实就这一个字段的差异
  @override
  @JsonKey(name: "sale_bill_uuid")
  int? saleBillUuid;
// 是否拆单
  @override
  @JsonKey(name: "is_split_order")
  bool? isSplitOrder;
// 销售订单ID。可选，参数不填时默认加购到第一个销售订单中
  @override
  @JsonKey(name: 'sale_order_uuid')
  int? saleOrderUuid;

  /// NOTE: 更新时间
  @override
  @JsonKey(name: "update_time")
  int? updateTime;

  /// NOTE: 2.1 新增字段
  @override
  @JsonKey(name: "is_open_default_people_num")
  bool? isOpenDefaultPeopleNum;
  @override
  @JsonKey(name: "default_people_num")
  int? defaultPeopleNum;

  @override
  String toString() {
    return 'Desk(uuid: $uuid, deskNo: $deskNo, customerCount: $customerCount, status: $status, isLock: $isLock, isBuffet: $isBuffet, isWait: $isWait, time: $time, lockTime: $lockTime, price: $price, remark: $remark, regionUuid: $regionUuid, typeUuid: $typeUuid, saleBillUuid: $saleBillUuid, isSplitOrder: $isSplitOrder, saleOrderUuid: $saleOrderUuid, updateTime: $updateTime, isOpenDefaultPeopleNum: $isOpenDefaultPeopleNum, defaultPeopleNum: $defaultPeopleNum)';
  }

  /// Create a copy of Desk
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeskImplCopyWith<_$DeskImpl> get copyWith =>
      __$$DeskImplCopyWithImpl<_$DeskImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DeskImplToJson(
      this,
    );
  }
}

abstract class _Desk implements Desk {
  factory _Desk(
      {@JsonKey(name: "uuid") required int uuid,
      @JsonKey(name: "desk_no") required String deskNo,
      @JsonKey(name: "customer_count") required int customerCount,
      @JsonKey(name: "status") required int status,
      @JsonKey(name: "is_lock") required bool isLock,
      @JsonKey(name: "is_buffet") required bool isBuffet,
      @JsonKey(name: "is_wait") required bool isWait,
      @JsonKey(name: "time") required int time,
      @JsonKey(name: "lock_time") int? lockTime,
      @JsonKey(name: "price") required SafetyNumber price,
      @JsonKey(name: "remark") required String remark,
      @JsonKey(name: "region_uuid") required int regionUuid,
      @JsonKey(name: "type_uuid") required int typeUuid,
      @JsonKey(name: "sale_bill_uuid") int? saleBillUuid,
      @JsonKey(name: "is_split_order") bool? isSplitOrder,
      @JsonKey(name: 'sale_order_uuid') int? saleOrderUuid,
      @JsonKey(name: "update_time") int? updateTime,
      @JsonKey(name: "is_open_default_people_num") bool? isOpenDefaultPeopleNum,
      @JsonKey(name: "default_people_num") int? defaultPeopleNum}) = _$DeskImpl;

  factory _Desk.fromJson(Map<String, dynamic> json) = _$DeskImpl.fromJson;

  @override
  @JsonKey(name: "uuid")
  int get uuid;
  @JsonKey(name: "uuid")
  set uuid(int value);
  @override
  @JsonKey(name: "desk_no")
  String get deskNo;
  @JsonKey(name: "desk_no")
  set deskNo(String value);
  @override
  @JsonKey(name: "customer_count")
  int get customerCount;
  @JsonKey(name: "customer_count")
  set customerCount(int value);
  @override
  @JsonKey(name: "status")
  int get status;
  @JsonKey(name: "status")
  set status(int value);
  @override
  @JsonKey(name: "is_lock")
  bool get isLock;
  @JsonKey(name: "is_lock")
  set isLock(bool value);
  @override
  @JsonKey(name: "is_buffet")
  bool get isBuffet;
  @JsonKey(name: "is_buffet")
  set isBuffet(bool value);
  @override
  @JsonKey(name: "is_wait")
  bool get isWait;
  @JsonKey(name: "is_wait")
  set isWait(bool value);
  @override
  @JsonKey(name: "time")
  int get time;
  @JsonKey(name: "time")
  set time(int value);
  @override
  @JsonKey(name: "lock_time")
  int? get lockTime;
  @JsonKey(name: "lock_time")
  set lockTime(int? value);
  @override
  @JsonKey(name: "price")
  SafetyNumber get price;
  @JsonKey(name: "price")
  set price(SafetyNumber value);
  @override
  @JsonKey(name: "remark")
  String get remark;
  @JsonKey(name: "remark")
  set remark(String value);
  @override
  @JsonKey(name: "region_uuid")
  int get regionUuid;
  @JsonKey(name: "region_uuid")
  set regionUuid(int value);
  @override
  @JsonKey(name: "type_uuid")
  int get typeUuid;
  @JsonKey(name: "type_uuid")
  set typeUuid(int value); // NOTE: 详情接口和列表接口其实就这一个字段的差异
  @override
  @JsonKey(name: "sale_bill_uuid")
  int? get saleBillUuid; // NOTE: 详情接口和列表接口其实就这一个字段的差异
  @JsonKey(name: "sale_bill_uuid")
  set saleBillUuid(int? value); // 是否拆单
  @override
  @JsonKey(name: "is_split_order")
  bool? get isSplitOrder; // 是否拆单
  @JsonKey(name: "is_split_order")
  set isSplitOrder(bool? value); // 销售订单ID。可选，参数不填时默认加购到第一个销售订单中
  @override
  @JsonKey(name: 'sale_order_uuid')
  int? get saleOrderUuid; // 销售订单ID。可选，参数不填时默认加购到第一个销售订单中
  @JsonKey(name: 'sale_order_uuid')
  set saleOrderUuid(int? value);

  /// NOTE: 更新时间
  @override
  @JsonKey(name: "update_time")
  int? get updateTime;

  /// NOTE: 更新时间
  @JsonKey(name: "update_time")
  set updateTime(int? value);

  /// NOTE: 2.1 新增字段
  @override
  @JsonKey(name: "is_open_default_people_num")
  bool? get isOpenDefaultPeopleNum;

  /// NOTE: 2.1 新增字段
  @JsonKey(name: "is_open_default_people_num")
  set isOpenDefaultPeopleNum(bool? value);
  @override
  @JsonKey(name: "default_people_num")
  int? get defaultPeopleNum;
  @JsonKey(name: "default_people_num")
  set defaultPeopleNum(int? value);

  /// Create a copy of Desk
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeskImplCopyWith<_$DeskImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SimpleDesk _$SimpleDeskFromJson(Map<String, dynamic> json) {
  return _SimpleDesk.fromJson(json);
}

/// @nodoc
mixin _$SimpleDesk {
  @JsonKey(name: "uuid")
  int get uuid => throw _privateConstructorUsedError;
  @JsonKey(name: "desk_no")
  String get deskNo => throw _privateConstructorUsedError;

  /// Serializes this SimpleDesk to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SimpleDesk
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SimpleDeskCopyWith<SimpleDesk> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SimpleDeskCopyWith<$Res> {
  factory $SimpleDeskCopyWith(
          SimpleDesk value, $Res Function(SimpleDesk) then) =
      _$SimpleDeskCopyWithImpl<$Res, SimpleDesk>;
  @useResult
  $Res call(
      {@JsonKey(name: "uuid") int uuid,
      @JsonKey(name: "desk_no") String deskNo});
}

/// @nodoc
class _$SimpleDeskCopyWithImpl<$Res, $Val extends SimpleDesk>
    implements $SimpleDeskCopyWith<$Res> {
  _$SimpleDeskCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SimpleDesk
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uuid = null,
    Object? deskNo = null,
  }) {
    return _then(_value.copyWith(
      uuid: null == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as int,
      deskNo: null == deskNo
          ? _value.deskNo
          : deskNo // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SimpleDeskImplCopyWith<$Res>
    implements $SimpleDeskCopyWith<$Res> {
  factory _$$SimpleDeskImplCopyWith(
          _$SimpleDeskImpl value, $Res Function(_$SimpleDeskImpl) then) =
      __$$SimpleDeskImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "uuid") int uuid,
      @JsonKey(name: "desk_no") String deskNo});
}

/// @nodoc
class __$$SimpleDeskImplCopyWithImpl<$Res>
    extends _$SimpleDeskCopyWithImpl<$Res, _$SimpleDeskImpl>
    implements _$$SimpleDeskImplCopyWith<$Res> {
  __$$SimpleDeskImplCopyWithImpl(
      _$SimpleDeskImpl _value, $Res Function(_$SimpleDeskImpl) _then)
      : super(_value, _then);

  /// Create a copy of SimpleDesk
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uuid = null,
    Object? deskNo = null,
  }) {
    return _then(_$SimpleDeskImpl(
      uuid: null == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as int,
      deskNo: null == deskNo
          ? _value.deskNo
          : deskNo // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SimpleDeskImpl implements _SimpleDesk {
  const _$SimpleDeskImpl(
      {@JsonKey(name: "uuid") required this.uuid,
      @JsonKey(name: "desk_no") required this.deskNo});

  factory _$SimpleDeskImpl.fromJson(Map<String, dynamic> json) =>
      _$$SimpleDeskImplFromJson(json);

  @override
  @JsonKey(name: "uuid")
  final int uuid;
  @override
  @JsonKey(name: "desk_no")
  final String deskNo;

  @override
  String toString() {
    return 'SimpleDesk(uuid: $uuid, deskNo: $deskNo)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SimpleDeskImpl &&
            (identical(other.uuid, uuid) || other.uuid == uuid) &&
            (identical(other.deskNo, deskNo) || other.deskNo == deskNo));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, uuid, deskNo);

  /// Create a copy of SimpleDesk
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SimpleDeskImplCopyWith<_$SimpleDeskImpl> get copyWith =>
      __$$SimpleDeskImplCopyWithImpl<_$SimpleDeskImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SimpleDeskImplToJson(
      this,
    );
  }
}

abstract class _SimpleDesk implements SimpleDesk {
  const factory _SimpleDesk(
          {@JsonKey(name: "uuid") required final int uuid,
          @JsonKey(name: "desk_no") required final String deskNo}) =
      _$SimpleDeskImpl;

  factory _SimpleDesk.fromJson(Map<String, dynamic> json) =
      _$SimpleDeskImpl.fromJson;

  @override
  @JsonKey(name: "uuid")
  int get uuid;
  @override
  @JsonKey(name: "desk_no")
  String get deskNo;

  /// Create a copy of SimpleDesk
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SimpleDeskImplCopyWith<_$SimpleDeskImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

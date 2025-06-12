// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DeskImpl _$$DeskImplFromJson(Map<String, dynamic> json) => _$DeskImpl(
      uuid: (json['uuid'] as num).toInt(),
      deskNo: json['desk_no'] as String,
      customerCount: (json['customer_count'] as num).toInt(),
      status: (json['status'] as num).toInt(),
      isLock: json['is_lock'] as bool,
      isBuffet: json['is_buffet'] as bool,
      isWait: json['is_wait'] as bool,
      time: (json['time'] as num).toInt(),
      lockTime: (json['lock_time'] as num?)?.toInt(),
      price: SafetyNumber.fromJson(json['price']),
      remark: json['remark'] as String,
      regionUuid: (json['region_uuid'] as num).toInt(),
      typeUuid: (json['type_uuid'] as num).toInt(),
      saleBillUuid: (json['sale_bill_uuid'] as num?)?.toInt(),
      isSplitOrder: json['is_split_order'] as bool?,
      saleOrderUuid: (json['sale_order_uuid'] as num?)?.toInt(),
      updateTime: (json['update_time'] as num?)?.toInt() ?? 0,
      isOpenDefaultPeopleNum:
          json['is_open_default_people_num'] as bool? ?? false,
      defaultPeopleNum: (json['default_people_num'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$$DeskImplToJson(_$DeskImpl instance) =>
    <String, dynamic>{
      'uuid': instance.uuid,
      'desk_no': instance.deskNo,
      'customer_count': instance.customerCount,
      'status': instance.status,
      'is_lock': instance.isLock,
      'is_buffet': instance.isBuffet,
      'is_wait': instance.isWait,
      'time': instance.time,
      'lock_time': instance.lockTime,
      'price': instance.price,
      'remark': instance.remark,
      'region_uuid': instance.regionUuid,
      'type_uuid': instance.typeUuid,
      'sale_bill_uuid': instance.saleBillUuid,
      'is_split_order': instance.isSplitOrder,
      'sale_order_uuid': instance.saleOrderUuid,
      'update_time': instance.updateTime,
      'is_open_default_people_num': instance.isOpenDefaultPeopleNum,
      'default_people_num': instance.defaultPeopleNum,
    };

_$SimpleDeskImpl _$$SimpleDeskImplFromJson(Map<String, dynamic> json) =>
    _$SimpleDeskImpl(
      uuid: (json['uuid'] as num).toInt(),
      deskNo: json['desk_no'] as String,
    );

Map<String, dynamic> _$$SimpleDeskImplToJson(_$SimpleDeskImpl instance) =>
    <String, dynamic>{
      'uuid': instance.uuid,
      'desk_no': instance.deskNo,
    };

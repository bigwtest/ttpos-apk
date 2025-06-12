// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'buffet.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BuffetImpl _$$BuffetImplFromJson(Map<String, dynamic> json) => _$BuffetImpl(
      addClock: (json['add_clock'] as List<dynamic>)
          .map((e) => SettingAddClockItem.fromJson(e as Map<String, dynamic>))
          .toList(),
      isAddClock: json['is_add_clock'] as String,
      isBuffetDiscount: json['is_buffet_discount'] as String,
      isBuyContinue: json['is_buy_continue'] as String,
      isOpen: json['is_open'] as String,
      isRemainContinue: json['is_remain_continue'] as String,
      remainContinueNoticeTime: json['remain_continue_notice_time'] as String,
      remainContinueTime: json['remain_continue_time'] as String,
      tabletEndTime: (json['tablet_end_time'] as num).toInt(),
    );

Map<String, dynamic> _$$BuffetImplToJson(_$BuffetImpl instance) =>
    <String, dynamic>{
      'add_clock': instance.addClock,
      'is_add_clock': instance.isAddClock,
      'is_buffet_discount': instance.isBuffetDiscount,
      'is_buy_continue': instance.isBuyContinue,
      'is_open': instance.isOpen,
      'is_remain_continue': instance.isRemainContinue,
      'remain_continue_notice_time': instance.remainContinueNoticeTime,
      'remain_continue_time': instance.remainContinueTime,
      'tablet_end_time': instance.tabletEndTime,
    };

_$SettingAddClockItemImpl _$$SettingAddClockItemImplFromJson(
        Map<String, dynamic> json) =>
    _$SettingAddClockItemImpl(
      action: json['action'] as String,
      delayTime: json['delay_time'] as String,
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      price: json['price'] as String,
    );

Map<String, dynamic> _$$SettingAddClockItemImplToJson(
        _$SettingAddClockItemImpl instance) =>
    <String, dynamic>{
      'action': instance.action,
      'delay_time': instance.delayTime,
      'id': instance.id,
      'name': instance.name,
      'price': instance.price,
    };

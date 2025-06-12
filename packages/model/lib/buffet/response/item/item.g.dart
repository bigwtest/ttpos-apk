// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BuffetImpl _$$BuffetImplFromJson(Map<String, dynamic> json) => _$BuffetImpl(
      buffetCustomerType: BaseList<BuffetCustomerType>.fromJson(
          json['buffet_customer_type'] as Map<String, dynamic>,
          (value) =>
              BuffetCustomerType.fromJson(value as Map<String, dynamic>)),
      canCombined: json['can_combined'] as bool,
      isLimitTime: json['is_limit_time'] as bool,
      localeName:
          LocaleName.fromJson(json['locale_name'] as Map<String, dynamic>),
      nonOrderingTime: (json['non_ordering_time'] as num).toInt(),
      price: SafetyNumber.fromJson(json['price']),
      reminderOrderTime: (json['reminder_order_time'] as num).toInt(),
      uuid: (json['uuid'] as num).toInt(),
    );

Map<String, dynamic> _$$BuffetImplToJson(_$BuffetImpl instance) =>
    <String, dynamic>{
      'buffet_customer_type': instance.buffetCustomerType,
      'can_combined': instance.canCombined,
      'is_limit_time': instance.isLimitTime,
      'locale_name': instance.localeName,
      'non_ordering_time': instance.nonOrderingTime,
      'price': instance.price,
      'reminder_order_time': instance.reminderOrderTime,
      'uuid': instance.uuid,
    };

_$BuffetCustomerTypeImpl _$$BuffetCustomerTypeImplFromJson(
        Map<String, dynamic> json) =>
    _$BuffetCustomerTypeImpl(
      name: json['name'] as String,
      uuid: (json['uuid'] as num).toInt(),
    );

Map<String, dynamic> _$$BuffetCustomerTypeImplToJson(
        _$BuffetCustomerTypeImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'uuid': instance.uuid,
    };

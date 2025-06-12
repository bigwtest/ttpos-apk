// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_about_buffet.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ResponseCartAboutBuffetImpl _$$ResponseCartAboutBuffetImplFromJson(
        Map<String, dynamic> json) =>
    _$ResponseCartAboutBuffetImpl(
      isCustomer: json['is_customer'] as bool,
      isDelay: json['is_delay'] as bool,
      customerTypeUuid: (json['customer_type_uuid'] as num).toInt(),
      buffetUuid: (json['buffet_uuid'] as num).toInt(),
    );

Map<String, dynamic> _$$ResponseCartAboutBuffetImplToJson(
        _$ResponseCartAboutBuffetImpl instance) =>
    <String, dynamic>{
      'is_customer': instance.isCustomer,
      'is_delay': instance.isDelay,
      'customer_type_uuid': instance.customerTypeUuid,
      'buffet_uuid': instance.buffetUuid,
    };

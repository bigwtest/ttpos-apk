// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductImpl _$$ProductImplFromJson(Map<String, dynamic> json) =>
    _$ProductImpl(
      aboutBuffet:
          AboutBuffet.fromJson(json['about_buffet'] as Map<String, dynamic>),
      discountPrice: (json['discount_price'] as num).toDouble(),
      finishedNum: (json['finished_num'] as num?)?.toInt(),
      isBuffet: json['is_buffet'] as bool,
      isCancel: json['is_cancel'] as bool,
      isGift: json['is_gift'] as bool,
      isMust: json['is_must'] as bool,
      mustPlanUuid: (json['must_plan_uuid'] as num?)?.toInt() ?? 0,
      localeAttributeName: LocaleName.fromJson(
          json['locale_attribute_name'] as Map<String, dynamic>),
      localeName:
          LocaleName.fromJson(json['locale_name'] as Map<String, dynamic>),
      num: (json['num'] as num).toInt(),
      price: (json['price'] as num).toDouble(),
      unitPrice: (json['unit_price'] as num?)?.toDouble(),
      remark: json['remark'] as String,
      status: (json['status'] as num).toInt(),
      uuid: (json['uuid'] as num).toInt(),
      productPackageUuid: (json['product_package_uuid'] as num?)?.toInt(),
      isShowKitchen: (json['is_show_kitchen'] as num?)?.toInt(),
      canChangeNum: json['can_change_num'] as bool? ?? true,
      limitNum: (json['limit_num'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$ProductImplToJson(_$ProductImpl instance) =>
    <String, dynamic>{
      'about_buffet': instance.aboutBuffet,
      'discount_price': instance.discountPrice,
      'finished_num': instance.finishedNum,
      'is_buffet': instance.isBuffet,
      'is_cancel': instance.isCancel,
      'is_gift': instance.isGift,
      'is_must': instance.isMust,
      'must_plan_uuid': instance.mustPlanUuid,
      'locale_attribute_name': instance.localeAttributeName,
      'locale_name': instance.localeName,
      'num': instance.num,
      'price': instance.price,
      'unit_price': instance.unitPrice,
      'remark': instance.remark,
      'status': instance.status,
      'uuid': instance.uuid,
      'product_package_uuid': instance.productPackageUuid,
      'is_show_kitchen': instance.isShowKitchen,
      'can_change_num': instance.canChangeNum,
      'limit_num': instance.limitNum,
    };

_$AboutBuffetImpl _$$AboutBuffetImplFromJson(Map<String, dynamic> json) =>
    _$AboutBuffetImpl(
      buffetUuid: (json['buffet_uuid'] as num).toInt(),
      customerTypeUuid: (json['customer_type_uuid'] as num).toInt(),
      isCustomer: json['is_customer'] as bool,
      isDelay: json['is_delay'] as bool,
    );

Map<String, dynamic> _$$AboutBuffetImplToJson(_$AboutBuffetImpl instance) =>
    <String, dynamic>{
      'buffet_uuid': instance.buffetUuid,
      'customer_type_uuid': instance.customerTypeUuid,
      'is_customer': instance.isCustomer,
      'is_delay': instance.isDelay,
    };

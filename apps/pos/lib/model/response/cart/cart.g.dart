// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ResponseCartImpl _$$ResponseCartImplFromJson(Map<String, dynamic> json) =>
    _$ResponseCartImpl(
      saleBillUuid: (json['sale_bill_uuid'] as num?)?.toInt(),
      isDeskOrder: json['is_desk_order'] as bool,
      isLock: json['is_lock'] as bool? ?? false,
      diningMethod: (json['dining_method'] as num).toInt(),
      saleOrderList: (json['sale_order_list'] as List<dynamic>)
          .map((e) => ResponseCartSaleOrder.fromJson(e as Map<String, dynamic>))
          .toList(),
      buffet: json['buffet'] == null
          ? null
          : ResponseCartBuffet.fromJson(json['buffet'] as Map<String, dynamic>),
      desk: json['desk'] == null
          ? null
          : ResponseCartDesk.fromJson(json['desk'] as Map<String, dynamic>),
      mustPlans: json['must_plans'] == null
          ? null
          : BaseList<MustGoodsItem>.fromJson(
              json['must_plans'] as Map<String, dynamic>,
              (value) => MustGoodsItem.fromJson(value as Map<String, dynamic>)),
      takeout: json['takeout'] as bool? ?? false,
      updateTime: (json['update_time'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$$ResponseCartImplToJson(_$ResponseCartImpl instance) =>
    <String, dynamic>{
      'sale_bill_uuid': instance.saleBillUuid,
      'is_desk_order': instance.isDeskOrder,
      'is_lock': instance.isLock,
      'dining_method': instance.diningMethod,
      'sale_order_list': instance.saleOrderList,
      'buffet': instance.buffet,
      'desk': instance.desk,
      'must_plans': instance.mustPlans,
      'takeout': instance.takeout,
      'update_time': instance.updateTime,
    };

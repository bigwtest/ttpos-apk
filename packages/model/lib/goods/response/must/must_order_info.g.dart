// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'must_order_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GoodsMustOrderInfoImpl _$$GoodsMustOrderInfoImplFromJson(
        Map<String, dynamic> json) =>
    _$GoodsMustOrderInfoImpl(
      diningMethod: (json['dining_method'] as num).toInt(),
      saleBillUuid: (json['sale_bill_uuid'] as num).toInt(),
      saleOrderList: (json['sale_order_list'] as List<dynamic>)
          .map((e) => GoodsMustOrderList.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$GoodsMustOrderInfoImplToJson(
        _$GoodsMustOrderInfoImpl instance) =>
    <String, dynamic>{
      'dining_method': instance.diningMethod,
      'sale_bill_uuid': instance.saleBillUuid,
      'sale_order_list': instance.saleOrderList,
    };

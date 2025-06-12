// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'open.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ResponseDeskOpenImpl _$$ResponseDeskOpenImplFromJson(
        Map<String, dynamic> json) =>
    _$ResponseDeskOpenImpl(
      saleBillUuid: (json['sale_bill_uuid'] as num).toInt(),
      saleOrderUuid: (json['sale_order_uuid'] as num).toInt(),
    );

Map<String, dynamic> _$$ResponseDeskOpenImplToJson(
        _$ResponseDeskOpenImpl instance) =>
    <String, dynamic>{
      'sale_bill_uuid': instance.saleBillUuid,
      'sale_order_uuid': instance.saleOrderUuid,
    };

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_reverse_settle_details.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OrderReverseSettleDetailsImpl _$$OrderReverseSettleDetailsImplFromJson(
        Map<String, dynamic> json) =>
    _$OrderReverseSettleDetailsImpl(
      desks: json['desks'] == null
          ? null
          : Desks.fromJson(json['desks'] as Map<String, dynamic>),
      hasInstantOrder: json['has_instant_order'] as bool?,
      orderAmount: (json['order_amount'] as num).toDouble(),
      payMethods: (json['pay_methods'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      paymentAmount: (json['payment_amount'] as num).toDouble(),
      saleBillNo: json['sale_bill_no'] as String,
      saleBillType: (json['sale_bill_type'] as num).toInt(),
      saleBillUuid: (json['sale_bill_uuid'] as num).toInt(),
    );

Map<String, dynamic> _$$OrderReverseSettleDetailsImplToJson(
        _$OrderReverseSettleDetailsImpl instance) =>
    <String, dynamic>{
      'desks': instance.desks,
      'has_instant_order': instance.hasInstantOrder,
      'order_amount': instance.orderAmount,
      'pay_methods': instance.payMethods,
      'payment_amount': instance.paymentAmount,
      'sale_bill_no': instance.saleBillNo,
      'sale_bill_type': instance.saleBillType,
      'sale_bill_uuid': instance.saleBillUuid,
    };

_$DesksImpl _$$DesksImplFromJson(Map<String, dynamic> json) => _$DesksImpl(
      list: (json['list'] as List<dynamic>)
          .map((e) =>
              RespOrderReverseSettleDesk.fromJson(e as Map<String, dynamic>))
          .toList(),
      originDeskAvailable: json['origin_desk_available'] as bool,
    );

Map<String, dynamic> _$$DesksImplToJson(_$DesksImpl instance) =>
    <String, dynamic>{
      'list': instance.list,
      'origin_desk_available': instance.originDeskAvailable,
    };

_$RespOrderReverseSettleDeskImpl _$$RespOrderReverseSettleDeskImplFromJson(
        Map<String, dynamic> json) =>
    _$RespOrderReverseSettleDeskImpl(
      serialNo: json['serial_no'] as String,
      uuid: (json['uuid'] as num).toInt(),
    );

Map<String, dynamic> _$$RespOrderReverseSettleDeskImplToJson(
        _$RespOrderReverseSettleDeskImpl instance) =>
    <String, dynamic>{
      'serial_no': instance.serialNo,
      'uuid': instance.uuid,
    };

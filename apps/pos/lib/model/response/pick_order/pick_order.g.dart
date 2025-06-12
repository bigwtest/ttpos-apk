// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pick_order.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ResponsePickOrderImpl _$$ResponsePickOrderImplFromJson(
        Map<String, dynamic> json) =>
    _$ResponsePickOrderImpl(
      amount: (json['amount'] as num).toDouble(),
      hideBillTime: (json['hide_bill_time'] as num).toInt(),
      products: BaseList<ResponseCartProduct>.fromJson(
          json['products'] as Map<String, dynamic>,
          (value) =>
              ResponseCartProduct.fromJson(value as Map<String, dynamic>)),
      saleBillUuid: (json['sale_bill_uuid'] as num).toInt(),
      serialNo: json['serial_no'] as String,
    );

Map<String, dynamic> _$$ResponsePickOrderImplToJson(
        _$ResponsePickOrderImpl instance) =>
    <String, dynamic>{
      'amount': instance.amount,
      'hide_bill_time': instance.hideBillTime,
      'products': instance.products,
      'sale_bill_uuid': instance.saleBillUuid,
      'serial_no': instance.serialNo,
    };

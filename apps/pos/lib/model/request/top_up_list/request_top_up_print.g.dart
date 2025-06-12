// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'request_top_up_print.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RequestTopUpPrintImpl _$$RequestTopUpPrintImplFromJson(
        Map<String, dynamic> json) =>
    _$RequestTopUpPrintImpl(
      rechargeOrderUuid: (json['recharge_order_uuid'] as num).toInt(),
      printLang: json['print_lang'] as String,
    );

Map<String, dynamic> _$$RequestTopUpPrintImplToJson(
        _$RequestTopUpPrintImpl instance) =>
    <String, dynamic>{
      'recharge_order_uuid': instance.rechargeOrderUuid,
      'print_lang': instance.printLang,
    };

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'req_band.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ReqBandImpl _$$ReqBandImplFromJson(Map<String, dynamic> json) =>
    _$ReqBandImpl(
      brand: json['brand'] as String?,
      productPrinterUuid: (json['product_printer_uuid'] as num?)?.toInt(),
      remark: json['remark'] as String?,
    );

Map<String, dynamic> _$$ReqBandImplToJson(_$ReqBandImpl instance) =>
    <String, dynamic>{
      'brand': instance.brand,
      'product_printer_uuid': instance.productPrinterUuid,
      'remark': instance.remark,
    };

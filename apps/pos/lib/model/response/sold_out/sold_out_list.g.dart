// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sold_out_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ResponseSoldOutListImpl _$$ResponseSoldOutListImplFromJson(
        Map<String, dynamic> json) =>
    _$ResponseSoldOutListImpl(
      localeProductBomName: LocaleName.fromJson(
          json['locale_product_bom_name'] as Map<String, dynamic>),
      localeProductName: LocaleName.fromJson(
          json['locale_product_name'] as Map<String, dynamic>),
      productBomUuid: (json['product_bom_uuid'] as num).toInt(),
    );

Map<String, dynamic> _$$ResponseSoldOutListImplToJson(
        _$ResponseSoldOutListImpl instance) =>
    <String, dynamic>{
      'locale_product_bom_name': instance.localeProductBomName,
      'locale_product_name': instance.localeProductName,
      'product_bom_uuid': instance.productBomUuid,
    };

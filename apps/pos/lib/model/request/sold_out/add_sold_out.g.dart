// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_sold_out.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RequestAddSoldOutImpl _$$RequestAddSoldOutImplFromJson(
        Map<String, dynamic> json) =>
    _$RequestAddSoldOutImpl(
      soldOutData: (json['sold_out_data'] as List<dynamic>)
          .map((e) => RequestAddSoldOutItem.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$RequestAddSoldOutImplToJson(
        _$RequestAddSoldOutImpl instance) =>
    <String, dynamic>{
      'sold_out_data': instance.soldOutData,
    };

_$RequestAddSoldOutItemImpl _$$RequestAddSoldOutItemImplFromJson(
        Map<String, dynamic> json) =>
    _$RequestAddSoldOutItemImpl(
      isSoldOut: json['is_sold_out'] as bool,
      productBomUuid: (json['product_bom_uuid'] as num).toInt(),
    );

Map<String, dynamic> _$$RequestAddSoldOutItemImplToJson(
        _$RequestAddSoldOutItemImpl instance) =>
    <String, dynamic>{
      'is_sold_out': instance.isSoldOut,
      'product_bom_uuid': instance.productBomUuid,
    };

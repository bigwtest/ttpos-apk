// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'un_send_product.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ResponseUnSendProductImpl _$$ResponseUnSendProductImplFromJson(
        Map<String, dynamic> json) =>
    _$ResponseUnSendProductImpl(
      productNameText: json['product_name_text'] as String?,
      kitchenStatus: (json['kitchen_status'] as num?)?.toInt(),
      consumptionTaxPayPrice: json['consumption_tax_pay_price'],
      totalConsumptionTaxPayPrice: json['total_consumption_tax_pay_price'],
      totalConsumptionTaxOrderPrice: json['total_consumption_tax_order_price'],
      productSkuId: (json['product_sku_id'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$ResponseUnSendProductImplToJson(
        _$ResponseUnSendProductImpl instance) =>
    <String, dynamic>{
      'product_name_text': instance.productNameText,
      'kitchen_status': instance.kitchenStatus,
      'consumption_tax_pay_price': instance.consumptionTaxPayPrice,
      'total_consumption_tax_pay_price': instance.totalConsumptionTaxPayPrice,
      'total_consumption_tax_order_price':
          instance.totalConsumptionTaxOrderPrice,
      'product_sku_id': instance.productSkuId,
    };

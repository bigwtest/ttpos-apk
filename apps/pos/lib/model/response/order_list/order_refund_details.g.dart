// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_refund_details.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OrderRefundDetailsImpl _$$OrderRefundDetailsImplFromJson(
        Map<String, dynamic> json) =>
    _$OrderRefundDetailsImpl(
      canReturnAmount: (json['can_return_amount'] as num).toDouble(),
      paymentRecords: (json['payment_records'] as List<dynamic>)
          .map((e) =>
              RespOrderReturnPaymentRecord.fromJson(e as Map<String, dynamic>))
          .toList(),
      products: (json['products'] as List<dynamic>)
          .map(
              (e) => RespOrderReturnProduct.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$OrderRefundDetailsImplToJson(
        _$OrderRefundDetailsImpl instance) =>
    <String, dynamic>{
      'can_return_amount': instance.canReturnAmount,
      'payment_records': instance.paymentRecords,
      'products': instance.products,
    };

_$RespOrderReturnPaymentRecordImpl _$$RespOrderReturnPaymentRecordImplFromJson(
        Map<String, dynamic> json) =>
    _$RespOrderReturnPaymentRecordImpl(
      canReturnAmount: (json['can_return_amount'] as num).toDouble(),
      currencyUnit: json['currency_unit'] as String,
      paymentAmount: (json['payment_amount'] as num).toDouble(),
      paymentMethodName: json['payment_method_name'] as String,
      paymentOrderUuid: (json['payment_order_uuid'] as num).toInt(),
    );

Map<String, dynamic> _$$RespOrderReturnPaymentRecordImplToJson(
        _$RespOrderReturnPaymentRecordImpl instance) =>
    <String, dynamic>{
      'can_return_amount': instance.canReturnAmount,
      'currency_unit': instance.currencyUnit,
      'payment_amount': instance.paymentAmount,
      'payment_method_name': instance.paymentMethodName,
      'payment_order_uuid': instance.paymentOrderUuid,
    };

_$RespOrderReturnProductImpl _$$RespOrderReturnProductImplFromJson(
        Map<String, dynamic> json) =>
    _$RespOrderReturnProductImpl(
      canReturnAmount: (json['can_return_amount'] as num).toDouble(),
      currencyUnit: json['currency_unit'] as String,
      localeAttributeName: LocaleName.fromJson(
          json['locale_attribute_name'] as Map<String, dynamic>),
      localeName:
          LocaleName.fromJson(json['locale_name'] as Map<String, dynamic>),
      num: (json['num'] as num).toInt(),
      price: (json['price'] as num).toDouble(),
      saleOrderProductUuid: (json['sale_order_product_uuid'] as num).toInt(),
    );

Map<String, dynamic> _$$RespOrderReturnProductImplToJson(
        _$RespOrderReturnProductImpl instance) =>
    <String, dynamic>{
      'can_return_amount': instance.canReturnAmount,
      'currency_unit': instance.currencyUnit,
      'locale_attribute_name': instance.localeAttributeName,
      'locale_name': instance.localeName,
      'num': instance.num,
      'price': instance.price,
      'sale_order_product_uuid': instance.saleOrderProductUuid,
    };

_$OrderReturnProductListImpl _$$OrderReturnProductListImplFromJson(
        Map<String, dynamic> json) =>
    _$OrderReturnProductListImpl(
      canReturnAmount: (json['can_return_amount'] as num).toDouble(),
      currencyUnit: json['currency_unit'] as String,
      localeAttributeName: LocaleName.fromJson(
          json['locale_attribute_name'] as Map<String, dynamic>),
      localeName:
          LocaleName.fromJson(json['locale_name'] as Map<String, dynamic>),
      num: (json['num'] as num).toInt(),
      price: (json['price'] as num).toDouble(),
      saleOrderProductUuid: (json['sale_order_product_uuid'] as num).toInt(),
      refundNum: (json['refund_num'] as num).toInt(),
    );

Map<String, dynamic> _$$OrderReturnProductListImplToJson(
        _$OrderReturnProductListImpl instance) =>
    <String, dynamic>{
      'can_return_amount': instance.canReturnAmount,
      'currency_unit': instance.currencyUnit,
      'locale_attribute_name': instance.localeAttributeName,
      'locale_name': instance.localeName,
      'num': instance.num,
      'price': instance.price,
      'sale_order_product_uuid': instance.saleOrderProductUuid,
      'refund_num': instance.refundNum,
    };

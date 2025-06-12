// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'request_order_refund_sub.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RequestOrderRefundSubImpl _$$RequestOrderRefundSubImplFromJson(
        Map<String, dynamic> json) =>
    _$RequestOrderRefundSubImpl(
      accountName: json['account_name'] as String?,
      accountNo: json['account_no'] as String?,
      bankCode: json['bank_code'] as String?,
      products: (json['products'] as List<dynamic>)
          .map((e) => ReqOrderReturnProduct.fromJson(e as Map<String, dynamic>))
          .toList(),
      saleBillUuid: (json['sale_bill_uuid'] as num).toInt(),
      saleOrderUuid: (json['sale_order_uuid'] as num).toInt(),
    );

Map<String, dynamic> _$$RequestOrderRefundSubImplToJson(
        _$RequestOrderRefundSubImpl instance) =>
    <String, dynamic>{
      'account_name': instance.accountName,
      'account_no': instance.accountNo,
      'bank_code': instance.bankCode,
      'products': instance.products,
      'sale_bill_uuid': instance.saleBillUuid,
      'sale_order_uuid': instance.saleOrderUuid,
    };

_$ReqOrderReturnProductImpl _$$ReqOrderReturnProductImplFromJson(
        Map<String, dynamic> json) =>
    _$ReqOrderReturnProductImpl(
      num: (json['num'] as num).toInt(),
      saleOrderProductUuid: (json['sale_order_product_uuid'] as num).toInt(),
    );

Map<String, dynamic> _$$ReqOrderReturnProductImplToJson(
        _$ReqOrderReturnProductImpl instance) =>
    <String, dynamic>{
      'num': instance.num,
      'sale_order_product_uuid': instance.saleOrderProductUuid,
    };

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_sale_order.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ResponseCartSaleOrderImpl _$$ResponseCartSaleOrderImplFromJson(
        Map<String, dynamic> json) =>
    _$ResponseCartSaleOrderImpl(
      uuid: (json['uuid'] as num).toInt(),
      orderNo: json['order_no'] as String,
      status: (json['status'] as num).toInt(),
      isDiscount: json['is_discount'] as bool,
      isMemberDiscount: json['is_member_discount'] as bool?,
      customDiscountRate: (json['custom_discount_rate'] as num).toDouble(),
      zeroRule: (json['zero_rule'] as num).toInt(),
      productList: (json['product_list'] as List<dynamic>)
          .map((e) => ResponseCartProduct.fromJson(e as Map<String, dynamic>))
          .toList(),
      amountInfo: ResponseCartAmountInfo.fromJson(
          json['amount_info'] as Map<String, dynamic>),
      productNum: (json['product_num'] as num).toInt(),
      autoDiscountMessage: json['auto_discount_message'] as String?,
    );

Map<String, dynamic> _$$ResponseCartSaleOrderImplToJson(
        _$ResponseCartSaleOrderImpl instance) =>
    <String, dynamic>{
      'uuid': instance.uuid,
      'order_no': instance.orderNo,
      'status': instance.status,
      'is_discount': instance.isDiscount,
      'is_member_discount': instance.isMemberDiscount,
      'custom_discount_rate': instance.customDiscountRate,
      'zero_rule': instance.zeroRule,
      'product_list': instance.productList,
      'amount_info': instance.amountInfo,
      'product_num': instance.productNum,
      'auto_discount_message': instance.autoDiscountMessage,
    };

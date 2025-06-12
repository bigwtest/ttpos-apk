// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sent_kitchen.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SentKitchenImpl _$$SentKitchenImplFromJson(Map<String, dynamic> json) =>
    _$SentKitchenImpl(
      amountInfo: json['amount_info'] == null
          ? null
          : SentKitchenAmountInfo.fromJson(
              json['amount_info'] as Map<String, dynamic>),
      groups: BaseList<SentKitchenItem>.fromJson(
          json['groups'] as Map<String, dynamic>,
          (value) => SentKitchenItem.fromJson(value as Map<String, dynamic>)),
    );

Map<String, dynamic> _$$SentKitchenImplToJson(_$SentKitchenImpl instance) =>
    <String, dynamic>{
      'amount_info': instance.amountInfo,
      'groups': instance.groups,
    };

_$SentKitchenAmountInfoImpl _$$SentKitchenAmountInfoImplFromJson(
        Map<String, dynamic> json) =>
    _$SentKitchenAmountInfoImpl(
      amount: SafetyNumber.fromJson(json['amount']),
      discountAmount: SafetyNumber.fromJson(json['discount_amount']),
      memberDiscountAmount:
          SafetyNumber.fromJson(json['member_discount_amount']),
      productAmount: SafetyNumber.fromJson(json['product_amount']),
      productNum: (json['product_num'] as num).toInt(),
      productOriginAmount: SafetyNumber.fromJson(json['product_origin_amount']),
      serviceAmount: SafetyNumber.fromJson(json['service_amount']),
      taxAmount: SafetyNumber.fromJson(json['tax_amount']),
    );

Map<String, dynamic> _$$SentKitchenAmountInfoImplToJson(
        _$SentKitchenAmountInfoImpl instance) =>
    <String, dynamic>{
      'amount': instance.amount,
      'discount_amount': instance.discountAmount,
      'member_discount_amount': instance.memberDiscountAmount,
      'product_amount': instance.productAmount,
      'product_num': instance.productNum,
      'product_origin_amount': instance.productOriginAmount,
      'service_amount': instance.serviceAmount,
      'tax_amount': instance.taxAmount,
    };

_$SentKitchenItemImpl _$$SentKitchenItemImplFromJson(
        Map<String, dynamic> json) =>
    _$SentKitchenItemImpl(
      products: BaseList<Product>.fromJson(
          json['products'] as Map<String, dynamic>,
          (value) => Product.fromJson(value as Map<String, dynamic>)),
      sendKitchenTime: (json['send_kitchen_time'] as num).toInt(),
      acceptTime: (json['accept_time'] as num?)?.toInt(),
      isAccept: json['is_accept'] as bool?,
      h5OrderTime: (json['h5_order_time'] as num?)?.toInt(),
      isH5OrderNeedAudit: json['is_h5_order_need_audit'] as bool?,
    );

Map<String, dynamic> _$$SentKitchenItemImplToJson(
        _$SentKitchenItemImpl instance) =>
    <String, dynamic>{
      'products': instance.products,
      'send_kitchen_time': instance.sendKitchenTime,
      'accept_time': instance.acceptTime,
      'is_accept': instance.isAccept,
      'h5_order_time': instance.h5OrderTime,
      'is_h5_order_need_audit': instance.isH5OrderNeedAudit,
    };

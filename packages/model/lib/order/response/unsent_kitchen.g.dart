// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'unsent_kitchen.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UnsentKitchenImpl _$$UnsentKitchenImplFromJson(Map<String, dynamic> json) =>
    _$UnsentKitchenImpl(
      amountInfo: UnsentKitchenAmountInfo.fromJson(
          json['amount_info'] as Map<String, dynamic>),
      products: BaseList<Product>.fromJson(
          json['products'] as Map<String, dynamic>,
          (value) => Product.fromJson(value as Map<String, dynamic>)),
    );

Map<String, dynamic> _$$UnsentKitchenImplToJson(_$UnsentKitchenImpl instance) =>
    <String, dynamic>{
      'amount_info': instance.amountInfo,
      'products': instance.products,
    };

_$UnsentKitchenAmountInfoImpl _$$UnsentKitchenAmountInfoImplFromJson(
        Map<String, dynamic> json) =>
    _$UnsentKitchenAmountInfoImpl(
      productAmount: SafetyNumber.fromJson(json['product_amount']),
      productNum: (json['product_num'] as num).toInt(),
    );

Map<String, dynamic> _$$UnsentKitchenAmountInfoImplToJson(
        _$UnsentKitchenAmountInfoImpl instance) =>
    <String, dynamic>{
      'product_amount': instance.productAmount,
      'product_num': instance.productNum,
    };

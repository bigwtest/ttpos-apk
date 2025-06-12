// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'must_order_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GoodsMustOrderListImpl _$$GoodsMustOrderListImplFromJson(
        Map<String, dynamic> json) =>
    _$GoodsMustOrderListImpl(
      amountInfo: GoodsMustOrderAmountInfo.fromJson(
          json['amount_info'] as Map<String, dynamic>),
      orderNo: json['order_no'] as String,
      productList: (json['product_list'] as List<dynamic>)
          .map((e) =>
              GoodsMustOrderProductList.fromJson(e as Map<String, dynamic>))
          .toList(),
      productNum: (json['product_num'] as num).toInt(),
      uuid: (json['uuid'] as num).toInt(),
    );

Map<String, dynamic> _$$GoodsMustOrderListImplToJson(
        _$GoodsMustOrderListImpl instance) =>
    <String, dynamic>{
      'amount_info': instance.amountInfo,
      'order_no': instance.orderNo,
      'product_list': instance.productList,
      'product_num': instance.productNum,
      'uuid': instance.uuid,
    };

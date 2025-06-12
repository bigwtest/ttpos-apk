// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'resp_product_category_statistics.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RespProductCategoryStatisticsImpl
    _$$RespProductCategoryStatisticsImplFromJson(Map<String, dynamic> json) =>
        _$RespProductCategoryStatisticsImpl(
          categoryList: (json['category_list'] as List<dynamic>)
              .map((e) =>
                  BusinessDataRespCategory.fromJson(e as Map<String, dynamic>))
              .toList(),
          paymentMethodIncomes:
              (json['payment_method_incomes'] as List<dynamic>)
                  .map((e) => BusinessDataRespPaymentMethodIncome.fromJson(
                      e as Map<String, dynamic>))
                  .toList(),
          salesNum: (json['sales_num'] as num).toInt(),
          totalReceivedPrice: (json['total_received_price'] as num).toDouble(),
          totalRefundMoney: (json['total_refund_money'] as num).toDouble(),
        );

Map<String, dynamic> _$$RespProductCategoryStatisticsImplToJson(
        _$RespProductCategoryStatisticsImpl instance) =>
    <String, dynamic>{
      'category_list': instance.categoryList,
      'payment_method_incomes': instance.paymentMethodIncomes,
      'sales_num': instance.salesNum,
      'total_received_price': instance.totalReceivedPrice,
      'total_refund_money': instance.totalRefundMoney,
    };

_$BusinessDataRespCategoryImpl _$$BusinessDataRespCategoryImplFromJson(
        Map<String, dynamic> json) =>
    _$BusinessDataRespCategoryImpl(
      name: json['name'] as String,
      prices: (json['prices'] as num).toDouble(),
      salesNum: (json['sales_num'] as num).toInt(),
    );

Map<String, dynamic> _$$BusinessDataRespCategoryImplToJson(
        _$BusinessDataRespCategoryImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'prices': instance.prices,
      'sales_num': instance.salesNum,
    };

_$BusinessDataRespPaymentMethodIncomeImpl
    _$$BusinessDataRespPaymentMethodIncomeImplFromJson(
            Map<String, dynamic> json) =>
        _$BusinessDataRespPaymentMethodIncomeImpl(
          amount: (json['amount'] as num).toDouble(),
          code: (json['code'] as num).toInt(),
          name: json['name'] as String,
          orderNum: (json['order_num'] as num).toInt(),
        );

Map<String, dynamic> _$$BusinessDataRespPaymentMethodIncomeImplToJson(
        _$BusinessDataRespPaymentMethodIncomeImpl instance) =>
    <String, dynamic>{
      'amount': instance.amount,
      'code': instance.code,
      'name': instance.name,
      'order_num': instance.orderNum,
    };

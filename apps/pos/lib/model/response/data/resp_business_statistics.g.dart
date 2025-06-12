// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'resp_business_statistics.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RespBusinessStatisticsImpl _$$RespBusinessStatisticsImplFromJson(
        Map<String, dynamic> json) =>
    _$RespBusinessStatisticsImpl(
      abnormalData:
          AbnormalData.fromJson(json['abnormal_data'] as Map<String, dynamic>),
      allCashierAvgOrderPrice:
          (json['all_cashier_avg_order_price'] as num).toDouble(),
      allCashierMaxOrderPrice:
          (json['all_cashier_max_order_price'] as num).toDouble(),
      allCashierMinOrderPrice:
          (json['all_cashier_min_order_price'] as num).toDouble(),
      allCashierOrderNum: (json['all_cashier_order_num'] as num).toInt(),
      allTableAvgOrderPrice:
          (json['all_table_avg_order_price'] as num).toDouble(),
      allTableMaxOrderPrice:
          (json['all_table_max_order_price'] as num).toDouble(),
      allTableMinOrderPrice:
          (json['all_table_min_order_price'] as num).toDouble(),
      allTableOrderNum: (json['all_table_order_num'] as num).toInt(),
      allTablePeopleAvg: (json['all_table_people_avg'] as num).toDouble(),
      allTablePeopleNum: (json['all_table_people_num'] as num).toInt(),
      avgOrderPrice: (json['avg_order_price'] as num).toDouble(),
      categoryList: (json['category_list'] as List<dynamic>)
          .map((e) =>
              BusinessDataRespCategory.fromJson(e as Map<String, dynamic>))
          .toList(),
      maxOrderPrice: (json['max_order_price'] as num).toDouble(),
      memberData:
          MemberData.fromJson(json['member_data'] as Map<String, dynamic>),
      minOrderPrice: (json['min_order_price'] as num).toDouble(),
      paymentMethodIncomes: (json['payment_method_incomes'] as List<dynamic>)
          .map((e) => BusinessDataRespPaymentMethodIncome.fromJson(
              e as Map<String, dynamic>))
          .toList(),
      peakHourList: (json['peak_hour_list'] as List<dynamic>)
          .map((e) =>
              BusinessDataRespPeakHour.fromJson(e as Map<String, dynamic>))
          .toList(),
      percentageList: (json['percentage_list'] as List<dynamic>)
          .map((e) =>
              BusinessDataRespPercentage.fromJson(e as Map<String, dynamic>))
          .toList(),
      totalDiscountMoney: (json['total_discount_money'] as num).toDouble(),
      totalFreeOrderPrice: (json['total_free_order_price'] as num).toDouble(),
      totalOrderNum: (json['total_order_num'] as num).toInt(),
      totalPayFeeMoney: (json['total_pay_fee_money'] as num).toDouble(),
      totalPayPrice: (json['total_pay_price'] as num).toDouble(),
      totalPeopleNum: (json['total_people_num'] as num).toInt(),
      totalProductNum: (json['total_product_num'] as num).toInt(),
      totalProductPrice: (json['total_product_price'] as num).toDouble(),
      totalReceivedPrice: (json['total_received_price'] as num).toDouble(),
      totalRefundMoney: (json['total_refund_money'] as num).toDouble(),
      totalSales: (json['total_sales'] as num).toDouble(),
      totalServiceMoney: (json['total_service_money'] as num).toDouble(),
      totalTableNum: (json['total_table_num'] as num).toInt(),
      totalTaxMoney: (json['total_tax_money'] as num).toDouble(),
      totalUserDiscountMoney:
          (json['total_user_discount_money'] as num).toDouble(),
      unclosedTotalOrderNum: (json['unclosed_total_order_num'] as num).toInt(),
      unclosedTotalPrice: (json['unclosed_total_price'] as num).toDouble(),
    );

Map<String, dynamic> _$$RespBusinessStatisticsImplToJson(
        _$RespBusinessStatisticsImpl instance) =>
    <String, dynamic>{
      'abnormal_data': instance.abnormalData,
      'all_cashier_avg_order_price': instance.allCashierAvgOrderPrice,
      'all_cashier_max_order_price': instance.allCashierMaxOrderPrice,
      'all_cashier_min_order_price': instance.allCashierMinOrderPrice,
      'all_cashier_order_num': instance.allCashierOrderNum,
      'all_table_avg_order_price': instance.allTableAvgOrderPrice,
      'all_table_max_order_price': instance.allTableMaxOrderPrice,
      'all_table_min_order_price': instance.allTableMinOrderPrice,
      'all_table_order_num': instance.allTableOrderNum,
      'all_table_people_avg': instance.allTablePeopleAvg,
      'all_table_people_num': instance.allTablePeopleNum,
      'avg_order_price': instance.avgOrderPrice,
      'category_list': instance.categoryList,
      'max_order_price': instance.maxOrderPrice,
      'member_data': instance.memberData,
      'min_order_price': instance.minOrderPrice,
      'payment_method_incomes': instance.paymentMethodIncomes,
      'peak_hour_list': instance.peakHourList,
      'percentage_list': instance.percentageList,
      'total_discount_money': instance.totalDiscountMoney,
      'total_free_order_price': instance.totalFreeOrderPrice,
      'total_order_num': instance.totalOrderNum,
      'total_pay_fee_money': instance.totalPayFeeMoney,
      'total_pay_price': instance.totalPayPrice,
      'total_people_num': instance.totalPeopleNum,
      'total_product_num': instance.totalProductNum,
      'total_product_price': instance.totalProductPrice,
      'total_received_price': instance.totalReceivedPrice,
      'total_refund_money': instance.totalRefundMoney,
      'total_sales': instance.totalSales,
      'total_service_money': instance.totalServiceMoney,
      'total_table_num': instance.totalTableNum,
      'total_tax_money': instance.totalTaxMoney,
      'total_user_discount_money': instance.totalUserDiscountMoney,
      'unclosed_total_order_num': instance.unclosedTotalOrderNum,
      'unclosed_total_price': instance.unclosedTotalPrice,
    };

_$AbnormalDataImpl _$$AbnormalDataImplFromJson(Map<String, dynamic> json) =>
    _$AbnormalDataImpl(
      changeOrderPriceTimes: (json['change_order_price_times'] as num).toInt(),
      changePriceTimes: (json['change_price_times'] as num).toInt(),
      discountOrderTimes: (json['discount_order_times'] as num).toInt(),
      freeOrderTimes: (json['free_order_times'] as num).toInt(),
      productFreeTimes: (json['product_free_times'] as num).toInt(),
      productMoveTimes: (json['product_move_times'] as num).toInt(),
      refundProductTimes: (json['refund_product_times'] as num).toInt(),
      refundTimes: (json['refund_times'] as num).toInt(),
      reverseSettleTimes: (json['reverse_settle_times'] as num).toInt(),
      roundOrderTimes: (json['round_order_times'] as num).toInt(),
    );

Map<String, dynamic> _$$AbnormalDataImplToJson(_$AbnormalDataImpl instance) =>
    <String, dynamic>{
      'change_order_price_times': instance.changeOrderPriceTimes,
      'change_price_times': instance.changePriceTimes,
      'discount_order_times': instance.discountOrderTimes,
      'free_order_times': instance.freeOrderTimes,
      'product_free_times': instance.productFreeTimes,
      'product_move_times': instance.productMoveTimes,
      'refund_product_times': instance.refundProductTimes,
      'refund_times': instance.refundTimes,
      'reverse_settle_times': instance.reverseSettleTimes,
      'round_order_times': instance.roundOrderTimes,
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

_$MemberDataImpl _$$MemberDataImplFromJson(Map<String, dynamic> json) =>
    _$MemberDataImpl(
      giftMoney: (json['gift_money'] as num).toDouble(),
      giftPoints: (json['gift_points'] as num).toDouble(),
      rechargeAmount: (json['recharge_amount'] as num).toDouble(),
    );

Map<String, dynamic> _$$MemberDataImplToJson(_$MemberDataImpl instance) =>
    <String, dynamic>{
      'gift_money': instance.giftMoney,
      'gift_points': instance.giftPoints,
      'recharge_amount': instance.rechargeAmount,
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

_$BusinessDataRespPeakHourImpl _$$BusinessDataRespPeakHourImplFromJson(
        Map<String, dynamic> json) =>
    _$BusinessDataRespPeakHourImpl(
      amount: (json['amount'] as num).toDouble(),
      num: (json['num'] as num).toInt(),
      timePeriod: json['time_period'] as String,
    );

Map<String, dynamic> _$$BusinessDataRespPeakHourImplToJson(
        _$BusinessDataRespPeakHourImpl instance) =>
    <String, dynamic>{
      'amount': instance.amount,
      'num': instance.num,
      'time_period': instance.timePeriod,
    };

_$BusinessDataRespPercentageImpl _$$BusinessDataRespPercentageImplFromJson(
        Map<String, dynamic> json) =>
    _$BusinessDataRespPercentageImpl(
      consumptionTax: (json['consumption_tax'] as num).toDouble(),
      taxRate: (json['tax_rate'] as num).toDouble(),
      totalPrice: (json['total_price'] as num).toDouble(),
    );

Map<String, dynamic> _$$BusinessDataRespPercentageImplToJson(
        _$BusinessDataRespPercentageImpl instance) =>
    <String, dynamic>{
      'consumption_tax': instance.consumptionTax,
      'tax_rate': instance.taxRate,
      'total_price': instance.totalPrice,
    };

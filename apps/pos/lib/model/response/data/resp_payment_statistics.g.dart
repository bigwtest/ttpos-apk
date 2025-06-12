// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'resp_payment_statistics.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RespPaymentStatisticsImpl _$$RespPaymentStatisticsImplFromJson(
        Map<String, dynamic> json) =>
    _$RespPaymentStatisticsImpl(
      paymentMethodIncomes: (json['payment_method_incomes'] as List<dynamic>)
          .map((e) => BusinessDataRespPaymentMethodIncome.fromJson(
              e as Map<String, dynamic>))
          .toList(),
      totalReceivedPrice: (json['total_received_price'] as num).toDouble(),
    );

Map<String, dynamic> _$$RespPaymentStatisticsImplToJson(
        _$RespPaymentStatisticsImpl instance) =>
    <String, dynamic>{
      'payment_method_incomes': instance.paymentMethodIncomes,
      'total_received_price': instance.totalReceivedPrice,
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

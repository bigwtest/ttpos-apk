// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'handover.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RespGetHandoverInfoImpl _$$RespGetHandoverInfoImplFromJson(
        Map<String, dynamic> json) =>
    _$RespGetHandoverInfoImpl(
      currentCashTotal: SafetyNumber.fromJson(json['current_cash_total']),
      depositCash: SafetyNumber.fromJson(json['deposit_cash']),
      paymentMethodIncome: PaymentMethodIncome.fromJson(
          json['payment_method_income'] as Map<String, dynamic>),
      previousShiftCash: SafetyNumber.fromJson(json['previous_shift_cash']),
      refundAmount: SafetyNumber.fromJson(json['refund_amount']),
      withdrawCash: SafetyNumber.fromJson(json['withdraw_cash']),
    );

Map<String, dynamic> _$$RespGetHandoverInfoImplToJson(
        _$RespGetHandoverInfoImpl instance) =>
    <String, dynamic>{
      'current_cash_total': instance.currentCashTotal,
      'deposit_cash': instance.depositCash,
      'payment_method_income': instance.paymentMethodIncome,
      'previous_shift_cash': instance.previousShiftCash,
      'refund_amount': instance.refundAmount,
      'withdraw_cash': instance.withdrawCash,
    };

_$RespPostHandoverInfoImpl _$$RespPostHandoverInfoImplFromJson(
        Map<String, dynamic> json) =>
    _$RespPostHandoverInfoImpl(
      cashIncome: SafetyNumber.fromJson(json['cash_income']),
      cashLeft: SafetyNumber.fromJson(json['cash_left']),
      cashTakenOut: SafetyNumber.fromJson(json['cash_taken_out']),
      dutyNo: json['duty_no'] as String,
      printerData: RespPrinterData.fromJson(
          json['printer_data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$RespPostHandoverInfoImplToJson(
        _$RespPostHandoverInfoImpl instance) =>
    <String, dynamic>{
      'cash_income': instance.cashIncome,
      'cash_left': instance.cashLeft,
      'cash_taken_out': instance.cashTakenOut,
      'duty_no': instance.dutyNo,
      'printer_data': instance.printerData,
    };

_$PaymentMethodIncomeImpl _$$PaymentMethodIncomeImplFromJson(
        Map<String, dynamic> json) =>
    _$PaymentMethodIncomeImpl(
      list: (json['list'] as List<dynamic>)
          .map((e) =>
              RespPaymentMethodIncome.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$PaymentMethodIncomeImplToJson(
        _$PaymentMethodIncomeImpl instance) =>
    <String, dynamic>{
      'list': instance.list,
    };

_$RespPaymentMethodIncomeImpl _$$RespPaymentMethodIncomeImplFromJson(
        Map<String, dynamic> json) =>
    _$RespPaymentMethodIncomeImpl(
      amount: SafetyNumber.fromJson(json['amount']),
      name: json['name'] as String,
    );

Map<String, dynamic> _$$RespPaymentMethodIncomeImplToJson(
        _$RespPaymentMethodIncomeImpl instance) =>
    <String, dynamic>{
      'amount': instance.amount,
      'name': instance.name,
    };

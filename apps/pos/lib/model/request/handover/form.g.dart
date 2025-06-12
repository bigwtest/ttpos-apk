// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'form.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RequestHandoverFormImpl _$$RequestHandoverFormImplFromJson(
        Map<String, dynamic> json) =>
    _$RequestHandoverFormImpl(
      leaveCash: (json['leave_cash'] as num).toDouble(),
      withdrawCash: (json['withdraw_cash'] as num).toDouble(),
    );

Map<String, dynamic> _$$RequestHandoverFormImplToJson(
        _$RequestHandoverFormImpl instance) =>
    <String, dynamic>{
      'leave_cash': instance.leaveCash,
      'withdraw_cash': instance.withdrawCash,
    };

_$RequestHandoverPrintFormImpl _$$RequestHandoverPrintFormImplFromJson(
        Map<String, dynamic> json) =>
    _$RequestHandoverPrintFormImpl(
      leaveCash: (json['leave_cash'] as num).toDouble(),
      withdrawCash: (json['withdraw_cash'] as num).toDouble(),
      dutyNo: json['duty_no'] as String,
    );

Map<String, dynamic> _$$RequestHandoverPrintFormImplToJson(
        _$RequestHandoverPrintFormImpl instance) =>
    <String, dynamic>{
      'leave_cash': instance.leaveCash,
      'withdraw_cash': instance.withdrawCash,
      'duty_no': instance.dutyNo,
    };

_$RequestDepositCashFormImpl _$$RequestDepositCashFormImplFromJson(
        Map<String, dynamic> json) =>
    _$RequestDepositCashFormImpl(
      depositCash: (json['deposit_cash'] as num).toDouble(),
    );

Map<String, dynamic> _$$RequestDepositCashFormImplToJson(
        _$RequestDepositCashFormImpl instance) =>
    <String, dynamic>{
      'deposit_cash': instance.depositCash,
    };

_$RequestWithdrawCashFormImpl _$$RequestWithdrawCashFormImplFromJson(
        Map<String, dynamic> json) =>
    _$RequestWithdrawCashFormImpl(
      withdrawCash: (json['withdraw_cash'] as num).toDouble(),
    );

Map<String, dynamic> _$$RequestWithdrawCashFormImplToJson(
        _$RequestWithdrawCashFormImpl instance) =>
    <String, dynamic>{
      'withdraw_cash': instance.withdrawCash,
    };

_$RequestReportExceptionRemarkFormImpl
    _$$RequestReportExceptionRemarkFormImplFromJson(
            Map<String, dynamic> json) =>
        _$RequestReportExceptionRemarkFormImpl(
          remark: json['remark'] as String,
        );

Map<String, dynamic> _$$RequestReportExceptionRemarkFormImplToJson(
        _$RequestReportExceptionRemarkFormImpl instance) =>
    <String, dynamic>{
      'remark': instance.remark,
    };

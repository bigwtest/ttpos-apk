import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ttpos_model/number/safety_number.dart';
import 'package:ttpos_model/print/response/printer_data.dart';

part 'handover.freezed.dart';
part 'handover.g.dart';

@freezed
class RespGetHandoverInfo with _$RespGetHandoverInfo {
  const factory RespGetHandoverInfo({
    @JsonKey(name: "current_cash_total") required SafetyNumber currentCashTotal,
    @JsonKey(name: "deposit_cash") required SafetyNumber depositCash,
    @JsonKey(name: "payment_method_income") required PaymentMethodIncome paymentMethodIncome,
    @JsonKey(name: "previous_shift_cash") required SafetyNumber previousShiftCash,
    @JsonKey(name: "refund_amount") required SafetyNumber refundAmount,
    @JsonKey(name: "withdraw_cash") required SafetyNumber withdrawCash,
  }) = _RespGetHandoverInfo;

  factory RespGetHandoverInfo.fromJson(Map<String, dynamic> json) => _$RespGetHandoverInfoFromJson(json);
}

@freezed
class RespPostHandoverInfo with _$RespPostHandoverInfo {
  const factory RespPostHandoverInfo({
    @JsonKey(name: "cash_income") required SafetyNumber cashIncome,
    @JsonKey(name: "cash_left") required SafetyNumber cashLeft,
    @JsonKey(name: "cash_taken_out") required SafetyNumber cashTakenOut,
    @JsonKey(name: "duty_no") required String dutyNo,
    @JsonKey(name: "printer_data") required RespPrinterData printerData,
  }) = _RespPostHandoverInfo;

  factory RespPostHandoverInfo.fromJson(Map<String, dynamic> json) => _$RespPostHandoverInfoFromJson(json);
}

///支付方式收入
///
///resp.PaymentMethodIncomeList
@freezed
class PaymentMethodIncome with _$PaymentMethodIncome {
  const factory PaymentMethodIncome({
    @JsonKey(name: "list") required List<RespPaymentMethodIncome> list,
  }) = _PaymentMethodIncome;

  factory PaymentMethodIncome.fromJson(Map<String, dynamic> json) => _$PaymentMethodIncomeFromJson(json);
}

///resp.PaymentMethodIncome
@freezed
class RespPaymentMethodIncome with _$RespPaymentMethodIncome {
  const factory RespPaymentMethodIncome({
    @JsonKey(name: "amount") required SafetyNumber amount,
    @JsonKey(name: "name") required String name,
  }) = _RespPaymentMethodIncome;

  factory RespPaymentMethodIncome.fromJson(Map<String, dynamic> json) => _$RespPaymentMethodIncomeFromJson(json);
}

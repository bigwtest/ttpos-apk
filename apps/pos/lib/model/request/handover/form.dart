import 'package:freezed_annotation/freezed_annotation.dart';

part 'form.freezed.dart';
part 'form.g.dart';

@unfreezed
class RequestHandoverForm with _$RequestHandoverForm {
  factory RequestHandoverForm({
    @JsonKey(name: "leave_cash") required double leaveCash,
    @JsonKey(name: "withdraw_cash") required double withdrawCash,
  }) = _RequestHandoverForm;

  factory RequestHandoverForm.fromJson(Map<String, dynamic> json) => _$RequestHandoverFormFromJson(json);
}

@unfreezed
class RequestHandoverPrintForm with _$RequestHandoverPrintForm {
  factory RequestHandoverPrintForm({
    @JsonKey(name: "leave_cash") required double leaveCash,
    @JsonKey(name: "withdraw_cash") required double withdrawCash,
    @JsonKey(name: "duty_no") required String dutyNo,
  }) = _RequestHandoverPrintForm;

  factory RequestHandoverPrintForm.fromJson(Map<String, dynamic> json) => _$RequestHandoverPrintFormFromJson(json);
}

@unfreezed
class RequestDepositCashForm with _$RequestDepositCashForm {
  factory RequestDepositCashForm({
    @JsonKey(name: "deposit_cash") required double depositCash,
  }) = _RequestDepositCashForm;

  factory RequestDepositCashForm.fromJson(Map<String, dynamic> json) => _$RequestDepositCashFormFromJson(json);
}

@unfreezed
class RequestWithdrawCashForm with _$RequestWithdrawCashForm {
  factory RequestWithdrawCashForm({
    @JsonKey(name: "withdraw_cash") required double withdrawCash,
  }) = _RequestWithdrawCashForm;

  factory RequestWithdrawCashForm.fromJson(Map<String, dynamic> json) => _$RequestWithdrawCashFormFromJson(json);
}

@unfreezed
class RequestReportExceptionRemarkForm with _$RequestReportExceptionRemarkForm {
  factory RequestReportExceptionRemarkForm({
    required String remark,
  }) = _RequestReportExceptionRemarkForm;

  factory RequestReportExceptionRemarkForm.fromJson(Map<String, dynamic> json) =>
      _$RequestReportExceptionRemarkFormFromJson(json);
}

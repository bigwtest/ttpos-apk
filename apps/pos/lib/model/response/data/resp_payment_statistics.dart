import 'package:freezed_annotation/freezed_annotation.dart';

part 'resp_payment_statistics.freezed.dart';
part 'resp_payment_statistics.g.dart';

@freezed
class RespPaymentStatistics with _$RespPaymentStatistics {
  factory RespPaymentStatistics({
    @JsonKey(name: "payment_method_incomes") required List<BusinessDataRespPaymentMethodIncome> paymentMethodIncomes,
    @JsonKey(name: "total_received_price") required double totalReceivedPrice,
  }) = _RespPaymentStatistics;

  factory RespPaymentStatistics.fromJson(Map<String, dynamic> json) => _$RespPaymentStatisticsFromJson(json);
}

///business_data_resp.PaymentMethodIncome
@freezed
class BusinessDataRespPaymentMethodIncome with _$BusinessDataRespPaymentMethodIncome {
  const factory BusinessDataRespPaymentMethodIncome({
    @JsonKey(name: "amount") required double amount,
    @JsonKey(name: "code") required int code,
    @JsonKey(name: "name") required String name,
    @JsonKey(name: "order_num") required int orderNum,
  }) = _BusinessDataRespPaymentMethodIncome;

  factory BusinessDataRespPaymentMethodIncome.fromJson(Map<String, dynamic> json) =>
      _$BusinessDataRespPaymentMethodIncomeFromJson(json);
}

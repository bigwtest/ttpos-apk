import 'package:freezed_annotation/freezed_annotation.dart';

part 'resp_product_category_statistics.freezed.dart';
part 'resp_product_category_statistics.g.dart';

@freezed
class RespProductCategoryStatistics with _$RespProductCategoryStatistics {
  factory RespProductCategoryStatistics({
    @JsonKey(name: "category_list") required List<BusinessDataRespCategory> categoryList,
    @JsonKey(name: "payment_method_incomes") required List<BusinessDataRespPaymentMethodIncome> paymentMethodIncomes,
    @JsonKey(name: "sales_num") required int salesNum,
    @JsonKey(name: "total_received_price") required double totalReceivedPrice,
    @JsonKey(name: "total_refund_money") required double totalRefundMoney,
  }) = _RespProductCategoryStatistics;

  factory RespProductCategoryStatistics.fromJson(Map<String, dynamic> json) =>
      _$RespProductCategoryStatisticsFromJson(json);
}

///business_data_resp.Category
@freezed
class BusinessDataRespCategory with _$BusinessDataRespCategory {
  const factory BusinessDataRespCategory({
    @JsonKey(name: "name") required String name,
    @JsonKey(name: "prices") required double prices,
    @JsonKey(name: "sales_num") required int salesNum,
  }) = _BusinessDataRespCategory;

  factory BusinessDataRespCategory.fromJson(Map<String, dynamic> json) => _$BusinessDataRespCategoryFromJson(json);
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

import 'package:freezed_annotation/freezed_annotation.dart';

part 'resp_business_statistics.freezed.dart';
part 'resp_business_statistics.g.dart';

@freezed
class RespBusinessStatistics with _$RespBusinessStatistics {
  factory RespBusinessStatistics({
    @JsonKey(name: "abnormal_data") required AbnormalData abnormalData,
    @JsonKey(name: "all_cashier_avg_order_price") required double allCashierAvgOrderPrice,
    @JsonKey(name: "all_cashier_max_order_price") required double allCashierMaxOrderPrice,
    @JsonKey(name: "all_cashier_min_order_price") required double allCashierMinOrderPrice,
    @JsonKey(name: "all_cashier_order_num") required int allCashierOrderNum,
    @JsonKey(name: "all_table_avg_order_price") required double allTableAvgOrderPrice,
    @JsonKey(name: "all_table_max_order_price") required double allTableMaxOrderPrice,
    @JsonKey(name: "all_table_min_order_price") required double allTableMinOrderPrice,
    @JsonKey(name: "all_table_order_num") required int allTableOrderNum,
    @JsonKey(name: "all_table_people_avg") required double allTablePeopleAvg,
    @JsonKey(name: "all_table_people_num") required int allTablePeopleNum,
    @JsonKey(name: "avg_order_price") required double avgOrderPrice,
    @JsonKey(name: "category_list") required List<BusinessDataRespCategory> categoryList,
    @JsonKey(name: "max_order_price") required double maxOrderPrice,
    @JsonKey(name: "member_data") required MemberData memberData,
    @JsonKey(name: "min_order_price") required double minOrderPrice,
    @JsonKey(name: "payment_method_incomes") required List<BusinessDataRespPaymentMethodIncome> paymentMethodIncomes,
    @JsonKey(name: "peak_hour_list") required List<BusinessDataRespPeakHour> peakHourList,
    @JsonKey(name: "percentage_list") required List<BusinessDataRespPercentage> percentageList,
    @JsonKey(name: "total_discount_money") required double totalDiscountMoney,
    @JsonKey(name: "total_free_order_price") required double totalFreeOrderPrice,
    @JsonKey(name: "total_order_num") required int totalOrderNum,
    @JsonKey(name: "total_pay_fee_money") required double totalPayFeeMoney,
    @JsonKey(name: "total_pay_price") required double totalPayPrice,
    @JsonKey(name: "total_people_num") required int totalPeopleNum,
    @JsonKey(name: "total_product_num") required int totalProductNum,
    @JsonKey(name: "total_product_price") required double totalProductPrice,
    @JsonKey(name: "total_received_price") required double totalReceivedPrice,
    @JsonKey(name: "total_refund_money") required double totalRefundMoney,
    @JsonKey(name: "total_sales") required double totalSales,
    @JsonKey(name: "total_service_money") required double totalServiceMoney,
    @JsonKey(name: "total_table_num") required int totalTableNum,
    @JsonKey(name: "total_tax_money") required double totalTaxMoney,
    @JsonKey(name: "total_user_discount_money") required double totalUserDiscountMoney,
    @JsonKey(name: "unclosed_total_order_num") required int unclosedTotalOrderNum,
    @JsonKey(name: "unclosed_total_price") required double unclosedTotalPrice,
  }) = _RespBusinessStatistics;

  factory RespBusinessStatistics.fromJson(Map<String, dynamic> json) => _$RespBusinessStatisticsFromJson(json);
}

///异常数据
///
///business_data_resp.AbnormalData
@freezed
class AbnormalData with _$AbnormalData {
  const factory AbnormalData({
    @JsonKey(name: "change_order_price_times") required int changeOrderPriceTimes,
    @JsonKey(name: "change_price_times") required int changePriceTimes,
    @JsonKey(name: "discount_order_times") required int discountOrderTimes,
    @JsonKey(name: "free_order_times") required int freeOrderTimes,
    @JsonKey(name: "product_free_times") required int productFreeTimes,
    @JsonKey(name: "product_move_times") required int productMoveTimes,
    @JsonKey(name: "refund_product_times") required int refundProductTimes,
    @JsonKey(name: "refund_times") required int refundTimes,
    @JsonKey(name: "reverse_settle_times") required int reverseSettleTimes,
    @JsonKey(name: "round_order_times") required int roundOrderTimes,
  }) = _AbnormalData;

  factory AbnormalData.fromJson(Map<String, dynamic> json) => _$AbnormalDataFromJson(json);
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

///会员数据
///
///business_data_resp.MemberData
@freezed
class MemberData with _$MemberData {
  const factory MemberData({
    @JsonKey(name: "gift_money") required double giftMoney,
    @JsonKey(name: "gift_points") required double giftPoints,
    @JsonKey(name: "recharge_amount") required double rechargeAmount,
  }) = _MemberData;

  factory MemberData.fromJson(Map<String, dynamic> json) => _$MemberDataFromJson(json);
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

///business_data_resp.PeakHour
@freezed
class BusinessDataRespPeakHour with _$BusinessDataRespPeakHour {
  const factory BusinessDataRespPeakHour({
    @JsonKey(name: "amount") required double amount,
    @JsonKey(name: "num") required int num,
    @JsonKey(name: "time_period") required String timePeriod,
  }) = _BusinessDataRespPeakHour;

  factory BusinessDataRespPeakHour.fromJson(Map<String, dynamic> json) => _$BusinessDataRespPeakHourFromJson(json);
}

///business_data_resp.Percentage
@freezed
class BusinessDataRespPercentage with _$BusinessDataRespPercentage {
  const factory BusinessDataRespPercentage({
    @JsonKey(name: "consumption_tax") required double consumptionTax,
    @JsonKey(name: "tax_rate") required double taxRate,
    @JsonKey(name: "total_price") required double totalPrice,
  }) = _BusinessDataRespPercentage;

  factory BusinessDataRespPercentage.fromJson(Map<String, dynamic> json) => _$BusinessDataRespPercentageFromJson(json);
}

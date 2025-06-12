class PaymentResult {
  final String payPricePrimaryCurrency; // 应收金额
  final String payPriceSecondaryCurrency; // 应收金额
  final String actualPricePrimaryCurrency; // 实收金额
  final String actualPriceSecondaryCurrency; // 实收金额
  final String chargeDuePrimaryCurrency; // 找零金额
  final String chargeDueSecondaryCurrency; // 找零金额
  final List<String> paymentMethodNames; // 支付方式名称

  PaymentResult({
    this.payPricePrimaryCurrency = '',
    this.payPriceSecondaryCurrency = '',
    this.actualPricePrimaryCurrency = '',
    this.actualPriceSecondaryCurrency = '',
    this.chargeDuePrimaryCurrency = '',
    this.chargeDueSecondaryCurrency = '',
    this.paymentMethodNames = const [],
  });
}

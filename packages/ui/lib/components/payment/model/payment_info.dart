class PaymentInfoViewModel {
  PaymentInfoViewModel({
    this.paymentName = '',
    this.paymentCode = '',
    this.paymentId = 0,
    this.price = 0.0,
    this.disabledCancel = false,
  });

  final String paymentName;
  final String paymentCode;
  final int paymentId;
  final double price;
  final bool disabledCancel;
}

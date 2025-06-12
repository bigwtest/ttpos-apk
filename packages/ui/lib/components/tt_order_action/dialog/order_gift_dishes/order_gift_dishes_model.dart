class OrderGiftDishesViewModel {
  final String reason;
  final List<int> giftIds;

  OrderGiftDishesViewModel({
    this.reason = '',
    this.giftIds = const [],
  });

  factory OrderGiftDishesViewModel.fromJson(Map<String, dynamic> json) {
    return OrderGiftDishesViewModel(
      reason: json['reason'],
      giftIds: json['gift_ids'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'reason': reason,
      'gift_ids': giftIds,
    };
  }
}

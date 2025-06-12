class OrderReturnDishesModel {
  final String reason;
  final List<int> returnIds;
  final int num;

  OrderReturnDishesModel({
    this.reason = '',
    this.returnIds = const [],
    this.num = 0,
  });

  factory OrderReturnDishesModel.fromJson(Map<String, dynamic> json) {
    return OrderReturnDishesModel(
      reason: json['reason'],
      returnIds: json['return_ids'],
      num: json['num'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'reason': reason,
      'return_ids': returnIds,
      'num': num,
    };
  }
}

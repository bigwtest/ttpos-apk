class DiscountMethodModel {
  final String text;
  final int type;

  DiscountMethodModel({
    this.text = '',
    this.type = 0,
  });

  factory DiscountMethodModel.fromJson(Map<String, dynamic> json) {
    return DiscountMethodModel(
      text: json['text'],
      type: json['type'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'text': text,
      'type': type,
    };
  }
}

// 折扣确认参数模型
class DiscountConfirmParamsModel {
  // 折扣方式 1: 改价, 2: 折扣, 3: 抹零, 4: 免单
  int discountMethod;

  // 价格，用于改价类型
  String? priceStr;
  double? price;

  // 折扣值，用于折扣类型
  String? discountStr;
  double? discount;

  // 抹零类型 1: 抹分, 2: 抹角, 3: 四舍五入保留一位小数, 4: 四舍五入到整数
  int? zeroRule;

  // 免单原因ID列表
  List<int>? freeReasons;

  // 免单备注
  String? freeRemark;

  //
  DiscountConfirmParamsModel({
    required this.discountMethod,
    this.price,
    this.priceStr,
    this.discount,
    this.discountStr,
    this.zeroRule,
    this.freeReasons,
    this.freeRemark,
  });

  factory DiscountConfirmParamsModel.fromJson(Map<String, dynamic> json) {
    return DiscountConfirmParamsModel(
      discountMethod: json['discount_method'],
      price: json['price'],
      discount: json['discount'],
      zeroRule: json['zero_rule'],
      freeReasons: json['free_reasons'],
      freeRemark: json['free_remark'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'discount_method': discountMethod,
      'price': price,
      'discount': discount,
      'zero_rule': zeroRule,
      'free_reasons': freeReasons,
      'free_remark': freeRemark,
    };
  }
}

import 'package:ttpos_ui/components/tt_order_counter/tt_order_counter.dart';

class GoodsNumChangeModel {
  final int num; // 数量
  final int saleOrderProductUuid; // 销售订单商品ID
  final CounterType type;

  GoodsNumChangeModel({
    this.num = 0,
    this.saleOrderProductUuid = 0,
    this.type = CounterType.up,
  });

  factory GoodsNumChangeModel.fromJson(Map<String, dynamic> json) {
    return GoodsNumChangeModel(
      num: json['num'],
      saleOrderProductUuid: json['sale_order_product_uuid'],
      type: json['type'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'num': num,
      'sale_order_product_uuid': saleOrderProductUuid,
      'type': type,
    };
  }
}
